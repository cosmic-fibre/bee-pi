const char shard_lua[] =
"\n"
"\n"
"local fiber = require('fiber')\n"
"local log = require('log')\n"
"local digest = require('digest')\n"
"local msgpack = require('msgpack')\n"
"local remote = require('net.db')\n"
"local yaml = require('yaml')\n"
"local uuid = require('uuid')\n"
"local json = require('json')\n"
"\n"
"local shards = {}\n"
"local shards_n\n"
"local redundancy = 3\n"
"\n"
"local REMOTE_TIMEOUT = 500\n"
"local HEARTBEAT_TIMEOUT = 500\n"
"local DEAD_TIMEOUT = 10\n"
"local INFINITY_MIN = -1\n"
"local RECONNECT_AFTER = msgpack.NULL\n"
"\n"
"local self_server\n"
"heartbeat_state = {}\n"
"\n"
"local STATE_NEW = 0\n"
"local STATE_INPROGRESS = 1\n"
"local STATE_HANDLED = 2\n"
"\n"
"local init_complete = false\n"
"local epoch_counter = 1\n"
"local configuration = {}\n"
"local shard_obj\n"
"\n"
"\n"
"--queue implementation\n"
"local function queue_handler(self, fun)\n"
"    fiber.name('queue/handler')\n"
"    while true do\n"
"        local task = self.ch:get()\n"
"        if not task then\n"
"            break\n"
"        end\n"
"        local status, reason = pcall(fun, task)\n"
"        if not status then\n"
"            if not self.error then\n"
"                self.error = reason\n"
"                -- stop fiber queue\n"
"                self.ch:close()\n"
"            else\n"
"                self.error = self.error..\"\\n\"..reason\n"
"            end\n"
"            if task.server then\n"
"                self.error = task.server.uri..\": \"..self.error\n"
"            end\n"
"            break\n"
"        end\n"
"    end\n"
"    self.chj:put(true)\n"
"end\n"
"\n"
"local queue_mt\n"
"local function queue(fun, workers)\n"
"    -- Start fiber queue to processes transactions in parallel\n"
"    local channel_size = math.min(workers, redundancy)\n"
"    local ch = fiber.channel(workers)\n"
"    local chj = fiber.channel(workers)\n"
"    local self = setmetatable({ ch = ch, chj = chj, workers = workers }, queue_mt)\n"
"    for i=1,workers do\n"
"        fiber.create(queue_handler, self, fun)\n"
"    end\n"
"    return self\n"
"end\n"
"\n"
"local function queue_join(self)\n"
"    log.debug(\"queue.join(%s)\", self)\n"
"    -- stop fiber queue\n"
"    while self.ch:is_closed() ~= true and self.ch:is_empty() ~= true do\n"
"        fiber.sleep(0)\n"
"    end\n"
"    self.ch:close()\n"
"    -- wait until fibers stop\n"
"\n"
"    for i = 1, self.workers do\n"
"        self.chj:get()\n"
"    end\n"
"    log.debug(\"queue.join(%s): done\", self)\n"
"    if self.error then\n"
"        return error(self.error) -- re-throw error\n"
"    end\n"
"end\n"
"\n"
"local function queue_put(self, arg)\n"
"    self.ch:put(arg)\n"
"end\n"
"\n"
"queue_mt = {\n"
"    __index = {\n"
"        join = queue_join;\n"
"        put = queue_put;\n"
"    }\n"
"}\n"
"\n"
"-- sharding heartbeat monitoring function\n"
"function heartbeat()\n"
"    log.debug('ping')\n"
"    return heartbeat_state\n"
"end\n"
"\n"
"local function server_is_ok(srv)\n"
"    return not srv.ignore and srv.conn:is_connected()\n"
"end\n"
"\n"
"-- main shards search function\n"
"local function shard(key, include_dead)\n"
"    local num\n"
"    if type(key) == 'number' then\n"
"        num = key\n"
"    else\n"
"        num = digest.crc32(key)\n"
"    end\n"
"    local shard = shards[1 + digest.guava(num, shards_n)]\n"
"    local res = {}\n"
"    local k = 1\n"
"    for i = 1, redundancy do\n"
"        local srv = shard[i]\n"
"        if server_is_ok(srv) or include_dead then\n"
"            res[k] = srv\n"
"            k = k + 1\n"
"        end\n"
"    end\n"
"    return res\n"
"end\n"
"\n"
"-- shard monitoring fiber\n"
"local function monitor_fiber()\n"
"    fiber.name(\"monitor\")\n"
"    local i = 0\n"
"    while true do\n"
"        i = i + 1\n"
"        local servers = shard(i, true)\n"
"        local server = servers[math.random(#servers)]\n"
"        local uri = server.uri\n"
"        local dead = false\n"
"        for k, v in pairs(heartbeat_state) do\n"
"            -- true only if there is stuff in heartbeat_state\n"
"            if k ~= uri then\n"
"                dead = true\n"
"                log.debug(\"monitoring: %s\", uri)\n"
"                break\n"
"            end\n"
"        end\n"
"        for k, v in pairs(heartbeat_state) do\n"
"            -- kill only if DEAD_TIMEOUT become in all servers\n"
"            if k ~= uri and (v[uri] == nil or v[uri].try < DEAD_TIMEOUT) then\n"
"                log.debug(\"%s is alive\", uri)\n"
"                dead = false\n"
"                break\n"
"            end\n"
"        end\n"
"\n"
"        if dead then\n"
"            log.info(\"kill %s by dead timeout\", uri)\n"
"            server.conn:close()\n"
"            server.ignore = true\n"
"            heartbeat_state[uri] = nil\n"
"            epoch_counter = epoch_counter + 1\n"
"        end\n"
"        fiber.sleep(math.random(100)/1000)\n"
"    end\n"
"end\n"
"\n"
"-- merge node response data with local table by fiber time\n"
"local function merge_tables(response)\n"
"    if response == nil then\n"
"        return\n"
"    end\n"
"    for seen_by_uri, node_data in pairs(heartbeat_state) do\n"
"        local node_table = response[seen_by_uri]\n"
"        if node_table ~= nil then\n"
"            for uri, data in pairs(node_table) do\n"
"                if data.ts > node_data[uri].ts then\n"
"                    log.debug('merged heartbeat from ' .. seen_by_uri .. ' with ' .. uri)\n"
"                    node_data[uri] = data\n"
"                end\n"
"            end\n"
"        end\n"
"    end\n"
"end\n"
"\n"
"-- heartbeat table and opinions management\n"
"local function update_heartbeat(uri, response, status)\n"
"    -- set or update opinions and timestamp\n"
"    local opinion = heartbeat_state[self_server.uri]\n"
"    if not status then\n"
"        opinion[uri].try = opinion[uri].try + 1\n"
"    else\n"
"        opinion[uri].try = 0\n"
"    end\n"
"    opinion[uri].ts = fiber.time()\n"
"    -- update local heartbeat table\n"
"    merge_tables(response)\n"
"end\n"
"\n"
"-- heartbeat worker\n"
"local function heartbeat_fiber()\n"
"    fiber.name(\"heartbeat\")\n"
"    local i = 0\n"
"    while true do\n"
"        i = i + 1\n"
"        -- random select node to check\n"
"        local servers = shard(i, true)\n"
"        local server = servers[math.random(#servers)]\n"
"        local uri = server.uri\n"
"        log.debug(\"checking %s\", uri)\n"
"\n"
"        -- get heartbeat from node\n"
"        local response\n"
"        local status, err_state = pcall(function()\n"
"            response = server.conn:timeout(\n"
"                HEARTBEAT_TIMEOUT):eval(\"return heartbeat()\")\n"
"        end)\n"
"        -- update local heartbeat table\n"
"        update_heartbeat(uri, response, status)\n"
"        log.debug(\"%s\", yaml.encode(heartbeat_state))\n"
"        -- randomized wait for next check\n"
"        fiber.sleep(math.random(1000)/1000)\n"
"    end\n"
"end\n"
"\n"
"-- base remote operation call\n"
"local function single_call(self, space, server, operation, ...)\n"
"    result = nil\n"
"    local status, reason = pcall(function(...)\n"
"        self = server.conn:timeout(5 * REMOTE_TIMEOUT).space[space]\n"
"        result = self[operation](self, ...)\n"
"    end, ...)\n"
"    if not status then\n"
"        log.error('failed to %s on %s: %s', operation, server.uri, reason)\n"
"        if not server.conn:is_connected() then\n"
"            log.error(\"server %s is offline\", server.uri)\n"
"        end\n"
"    end\n"
"    return result\n"
"end\n"
"\n"
"-- shards request function\n"
"local function request(self, space, operation, tuple_id, ...)\n"
"    local result = {}\n"
"    k = 1\n"
"    for i, server in ipairs(shard(tuple_id)) do\n"
"        result[k] = single_call(self, space, server, operation, ...)\n"
"        k = k + 1\n"
"    end\n"
"    return result\n"
"end\n"
"\n"
"local function broadcast_select(task)\n"
"    local c = task.server.conn\n"
"    local index = c:timeout(REMOTE_TIMEOUT).space[task.space].index[task.index]\n"
"    local key = task.args[1]\n"
"    local offset =  task.args[2]\n"
"    local limit = task.args[3]\n"
"    local tuples = index:select(key, { offset = offset, limit = limit })\n"
"    for _, v in ipairs(tuples) do\n"
"        table.insert(task.result, v)\n"
"    end\n"
"end\n"
"\n"
"local function find_server_in_shard(shard, hint)\n"
"    local srv = shard[hint]\n"
"    if server_is_ok(srv) then\n"
"        return srv\n"
"    end\n"
"    for i=1,redundancy do\n"
"        srv = shard[i]\n"
"        if server_is_ok(srv) then\n"
"           return srv\n"
"        end\n"
"    end\n"
"    return nil\n"
"end\n"
"\n"
"local function q_select(self, space, index, args)\n"
"    local sk = db.space[space].index[index]\n"
"    local pk = db.space[space].index[0]\n"
"    if sk == pk or sk.parts[1].fieldno == pk.parts[1].fieldno then\n"
"        local key = args[1]\n"
"        if type(key) == 'table' then\n"
"            key = key[1]\n"
"        end\n"
"        local offset = args[2]\n"
"        local limit = args[3]\n"
"        local srv = shard(key)[1]\n"
"        local i = srv.conn:timeout(REMOTE_TIMEOUT).space[space].index[index]\n"
"        log.info('%s.space.%s.index.%s:select{%s, {offset = %s, limit = %s}',\n"
"            srv.uri, space, index, json.encode(key), offset, limit)\n"
"        local tuples = i:select(key, { offset = offset, limit = limit })\n"
"        if tuples == nil then\n"
"            tuples = {}\n"
"        end\n"
"        return tuples\n"
"    else\n"
"        log.info(\"%s.%s.id = %d\",\n"
"            space, index, db.space[space].index[index].id)\n"
"    end\n"
"    local zone = math.floor(math.random() * redundancy) + 1\n"
"    local tuples = {}\n"
"        local q = queue(broadcast_select, shards_n)\n"
"    for i=1,shards_n do\n"
"        local srv = find_server_in_shard(shards[i], zone)\n"
"        local task = {server = srv, space = space, index = index,\n"
"                      args = args, result = tuples }\n"
"        q:put(task)\n"
"    end\n"
"    q:join()\n"
"    return tuples\n"
"end\n"
"\n"
"local function broadcast_call(task)\n"
"    local c = task.server.conn\n"
"    local tuples = c:timeout(REMOTE_TIMEOUT):call(task.proc, unpack(task.args))\n"
"    for _, v in ipairs(tuples) do\n"
"        table.insert(task.result, v)\n"
"    end\n"
"end\n"
"\n"
"local function q_call(proc, args)\n"
"        local q = queue(broadcast_call, shards_n)\n"
"    local tuples = {}\n"
"    local zone = math.floor(math.random() * redundancy) + 1\n"
"    for i=1,shards_n do\n"
"        local srv = find_server_in_shard(shards[i], zone)\n"
"        local task = { server = srv, proc = proc, args = args,\n"
"                      result = tuples }\n"
"        q:put(task)\n"
"    end\n"
"    q:join()\n"
"    return tuples\n"
"end\n"
"\n"
"-- execute operation, call from remote node\n"
"function execute_operation(operation_id)\n"
"    log.debug('EXEC_OP')\n"
"    -- execute batch\n"
"    db.begin()\n"
"    local tuple = db.space.operations:update(\n"
"        operation_id, {{'=', 2, STATE_INPROGRESS}}\n"
"    )\n"
"    local batch = tuple[3]\n"
"    for _, operation in ipairs(batch) do    \n"
"        local space = operation[1]\n"
"        local func_name = operation[2]\n"
"        local args = operation[3]\n"
"        local self = db.space[space]\n"
"        self[func_name](self, unpack(args))\n"
"    end\n"
"    db.space.operations:update(operation_id, {{'=', 2, STATE_HANDLED}})\n"
"    db.commit()\n"
"end\n"
"\n"
"-- process operation in queue\n"
"local function push_operation(task)\n"
"    local server = task.server\n"
"    local tuple = task.tuple\n"
"    log.debug('PUSH_OP')\n"
"    server.conn:timeout(REMOTE_TIMEOUT).space.operations:insert(tuple)\n"
"end\n"
"\n"
"local function ack_operation(task)\n"
"    log.debug('ACK_OP')\n"
"    local server = task.server\n"
"    local operation_id = task.id\n"
"    server.conn:timeout(REMOTE_TIMEOUT):call(\n"
"        'execute_operation', operation_id\n"
"    )\n"
"end\n"
"\n"
"local function push_queue(obj)\n"
"    for server, data in pairs(obj.batch) do\n"
"        local tuple = {\n"
"            obj.batch_operation_id;\n"
"            STATE_NEW;\n"
"            data;\n"
"        }\n"
"        local task = {tuple = tuple, server = server}\n"
"        obj.q:put(task)\n"
"    end\n"
"    obj.q:join()\n"
"    -- all shards ready - start workers\n"
"    obj.q = queue(ack_operation, redundancy)\n"
"    for server, _ in pairs(obj.batch) do\n"
"        obj.q:put({id=obj.batch_operation_id, server=server})\n"
"    end\n"
"    -- fix for memory leaks\n"
"    obj.q:join()\n"
"\n"
"    obj.batch = {}\n"
"    obj.batch_mode = false\n"
"end\n"
"\n"
"local function q_end(self)\n"
"    -- check begin/end order\n"
"    if not self.batch_mode then\n"
"        log.error('Cannot run q_end without q_begin')\n"
"        return\n"
"    end\n"
"    push_queue(self)\n"
"end\n"
"\n"
"-- fast request with queue\n"
"local function queue_request(self, space, operation, operation_id, tuple_id, ...)\n"
"    -- queued push operation in shards\n"
"    local batch\n"
"    local batch_mode = type(self.q_end) == 'function'\n"
"    if batch_mode then\n"
"        batch = self.batch\n"
"        self.batch_operation_id = tostring(operation_id)\n"
"    else\n"
"        batch = {}\n"
"    end\n"
"\n"
"    for _, server in ipairs(shard(tuple_id)) do\n"
"        if batch[server] == nil then\n"
"            batch[server] = {}\n"
"        end\n"
"        local data = { db.space[space].id; operation; {...}; }\n"
"        batch[server][#batch[server] + 1] = data\n"
"    end\n"
"    if not batch_mode then\n"
"        local obj = {\n"
"            q = queue(push_operation, redundancy),\n"
"            batch_operation_id = tostring(operation_id),\n"
"            batch = batch,\n"
"        }\n"
"        push_queue(obj)\n"
"    end\n"
"end\n"
"\n"
"function find_operation(id)\n"
"    log.debug('FIND_OP')\n"
"    return db.space.operations:get(id)[2]\n"
"end\n"
"\n"
"local function check_operation(self, space, operation_id, tuple_id)\n"
"    local delay = 0.001\n"
"    operation_id = tostring(operation_id)\n"
"    for i=1,100 do\n"
"        local failed = nil\n"
"        local task_status = nil\n"
"        for _, server in pairs(shard(tuple_id)) do\n"
"            -- check that transaction is queued to all hosts\n"
"            local status, reason = pcall(function()\n"
"                task_status = server.conn:timeout(REMOTE_TIMEOUT):call(\n"
"                    'find_operation', operation_id\n"
"                )[1][1]\n"
"            end)\n"
"            if not status or task_status == nil then\n"
"                -- wait until transaction will be queued on all hosts\n"
"                failed = server.uri\n"
"                break\n"
"            end\n"
"        end\n"
"        if failed == nil then\n"
"            if task_status == STATE_INPROGRESS then\n"
"                q = queue(ack_operation, redundancy)\n"
"                for _, server in ipairs(shard(tuple_id)) do\n"
"                    q:put({id=operation_id, server=server})\n"
"                end\n"
"                q:join()\n"
"            end\n"
"            return true\n"
"        end\n"
"        -- operation does not exist\n"
"        if task_status == nil then\n"
"            break\n"
"        end\n"
"        log.debug('FAIL')\n"
"        fiber.sleep(delay)\n"
"        delay = math.min(delay * 2, 5)\n"
"    end\n"
"    return false\n"
"end\n"
"\n"
"local function next_id(space)\n"
"    local server_id = self_server.id\n"
"    local s = db.space[space]\n"
"    if s == nil then\n"
"        db.error(db.error.NO_SUCH_SPACE, tostring(space))\n"
"    end\n"
"    if s.index[0].parts[1].type == 'STR' then\n"
"        return uuid.str()\n"
"    end\n"
"    local key = s.name .. '_max_id'\n"
"    local _schema = db.space._schema\n"
"    local tuple = _schema:get{key}\n"
"    local next_id\n"
"    if tuple == nil then\n"
"        tuple = db.space[space].index[0]:max()\n"
"        if tuple == nil then\n"
"            next_id = server_id\n"
"        else\n"
"            next_id = math.floor((tuple[1]+ 2 * servers_n+1)/servers_n)*servers_n + server_id\n"
"        end\n"
"        _schema:insert{key, next_id}\n"
"    else\n"
"        next_id = tuple[2] + servers_n\n"
"        tuple = _schema:update({key}, {{'=', 2, next_id}})\n"
"    end\n"
"    return next_id\n"
"end\n"
"\n"
"-- default request wrappers for db operations\n"
"local function insert(self, space, data)\n"
"    tuple_id = data[1]\n"
"    return request(self, space, 'insert', tuple_id, data)\n"
"end\n"
"\n"
"local function auto_increment(self, space, data)\n"
"    local id = next_id(space)\n"
"    table.insert(data, 1, id)\n"
"    return request(self, space, 'insert', id, data)\n"
"end\n"
"\n"
"local function select(self, space, tuple_id)\n"
"    return request(self, space, 'select', tuple_id, tuple_id)\n"
"end\n"
"\n"
"local function replace(self, space, data)\n"
"    tuple_id = data[1]\n"
"    return request(self, space, 'replace', tuple_id, data)\n"
"end\n"
"\n"
"local function delete(self, space, tuple_id)\n"
"    return request(self, space, 'delete', tuple_id, tuple_id)\n"
"end\n"
"\n"
"local function update(self, space, key, data)\n"
"    return request(self, space, 'update', key, key, data)\n"
"end\n"
"\n"
"local function q_insert(self, space, operation_id, data)\n"
"    tuple_id = data[1]\n"
"    queue_request(self, space, 'insert', operation_id, tuple_id, data)\n"
"    return db.tuple.new(data)\n"
"end\n"
"\n"
"local function q_auto_increment(self, space, operation_id, data)\n"
"    local id = next_id(space)\n"
"    table.insert(data, 1, id)\n"
"    queue_request(self, space, 'insert', operation_id, id, data)\n"
"    return db.tuple.new(data)\n"
"end\n"
"\n"
"local function q_replace(self, space, operation_id, data)\n"
"    tuple_id = data[1]\n"
"    queue_request(self, space, 'replace', operation_id, tuple_id, data)\n"
"    return db.tuple.new(data)\n"
"end\n"
"\n"
"local function q_delete(self, space, operation_id, tuple_id)\n"
"    return queue_request(self, space, 'delete', operation_id, tuple_id, tuple_id)\n"
"end\n"
"\n"
"local function q_update(self, space, operation_id, key, data)\n"
"    return queue_request(self, space, 'update', operation_id, key, key, data)\n"
"end\n"
"\n"
"-- function for shard checking after init\n"
"local function check_shard(conn)\n"
"    return true\n"
"end\n"
"\n"
"local function q_begin()\n"
"    local batch_obj = {\n"
"        batch = {},\n"
"        q = queue(push_operation, redundancy),\n"
"        batch_mode = true,\n"
"        q_insert = q_insert,\n"
"        q_auto_increment = q_auto_increment,\n"
"        q_replace = q_replace,\n"
"        q_update = q_update,\n"
"        q_delete = q_delete,\n"
"        q_end = q_end,\n"
"    }\n"
"    setmetatable(batch_obj, {\n"
"        __index = function (self, space)\n"
"            return {\n"
"                q_auto_increment = function(this, ...)\n"
"                    return self.q_auto_increment(self, space, ...)\n"
"                end,\n"
"                q_insert = function(this, ...)\n"
"                    return self.q_insert(self, space, ...)\n"
"                end,\n"
"                q_replace = function(this, ...)\n"
"                    return self.q_replace(self, space, ...)\n"
"                end,\n"
"                q_delete = function(this, ...)\n"
"                    return self.q_delete(self, space, ...)\n"
"                end,\n"
"                q_update = function(this, ...)\n"
"                    return self.q_update(self, space, ...)\n"
"                end\n"
"        }\n"
"    end\n"
"    })\n"
"    return batch_obj\n"
"end\n"
"\n"
"-- function to check a connection after it's established\n"
"local function check_connection(conn)\n"
"    return true\n"
"end\n"
"\n"
"local function is_table_filled()\n"
"    local result = true\n"
"    for _, server in pairs(configuration.servers) do\n"
"        if heartbeat_state[server.uri] == nil then\n"
"            result = false\n"
"            break\n"
"        end\n"
"        for _, lserver in pairs(configuration.servers) do\n"
"            local srv = heartbeat_state[server.uri][lserver.uri]\n"
"            if srv == nil then\n"
"                result = false\n"
"                break\n"
"            end\n"
"        end\n"
"    end\n"
"    return result\n"
"end\n"
"\n"
"local function wait_table_fill()\n"
"    while not is_table_filled() do\n"
"        fiber.sleep(0.01)\n"
"    end\n"
"end\n"
"\n"
"local function create_spaces(cfg)\n"
"    if not db.space.operations then\n"
"        local operations = db.schema.create_space('operations')\n"
"        operations:create_index('primary', {type = 'hash', parts = {1, 'str'}})\n"
"        operations:create_index('queue', {type = 'tree', parts = {2, 'num', 1, 'str'}})\n"
"    end\n"
"    configuration = cfg\n"
"end\n"
"\n"
"local function shard_mapping(zones)\n"
"    -- fill shard table with start values\n"
"    for _, server in pairs(configuration.servers) do\n"
"        heartbeat_state[server.uri] = {}\n"
"        for _, lserver in pairs(configuration.servers) do\n"
"            heartbeat_state[server.uri][lserver.uri] = {\n"
"                try= 0,         \n"
"                ts=INFINITY_MIN\n"
"            }\n"
"        end\n"
"    end\n"
"\n"
"    -- iterate over all zones, and build shards, aka replica set\n"
"    -- each replica set has 'redundancy' servers from different\n"
"    -- zones\n"
"    local server_id = 1\n"
"    shards_n = 1\n"
"    local prev_shards_n = 0\n"
"    while shards_n ~= prev_shards_n do\n"
"        prev_shards_n = shards_n\n"
"        for _, zone in pairs(zones) do\n"
"            if shards[shards_n] == nil then\n"
"                shards[shards_n] = {}\n"
"            end\n"
"            local shard = shards[shards_n]\n"
"            local srv = zone[server_id]\n"
"            -- we must double check that the same\n"
"            for _, v in pairs(shard) do\n"
"                if srv == nil then\n"
"                    break\n"
"                end\n"
"                if v.zone == srv.zone then\n"
"                    log.error('not using server %s', srv.uri)\n"
"                    srv = nil\n"
"                end\n"
"            end\n"
"            if srv ~= nil then\n"
"                log.info(\"Adding %s to shard %d\", srv.uri, shards_n)\n"
"                table.insert(shards[shards_n], srv)\n"
"                if #shards[shards_n] == redundancy then\n"
"                    shards_n = shards_n + 1\n"
"                end\n"
"            end\n"
"        end\n"
"        server_id = server_id + 1\n"
"    end\n"
"    if shards[shards_n] == nil or #shards[shards_n] < redundancy then\n"
"        if shards[shards_n] ~= nil then\n"
"            for _, srv in pairs(shards[shards_n]) do\n"
"                log.error('not using server %s', srv.uri)\n"
"            end\n"
"        end\n"
"        shards[shards_n] = nil\n"
"        shards_n = shards_n - 1\n"
"    end\n"
"    log.info(\"shards = %d\", shards_n)\n"
"end\n"
"\n"
"local function get_heartbeat()\n"
"    return heartbeat_state\n"
"end\n"
"\n"
"local function enable_operations()\n"
"    -- set base operations\n"
"    shard_obj.single_call = single_call\n"
"    shard_obj.request = request\n"
"    shard_obj.queue_request = queue_request\n"
"\n"
"    -- set 1-phase operations\n"
"    shard_obj.insert = insert\n"
"    shard_obj.auto_increment = auto_increment\n"
"    shard_obj.select = select\n"
"    shard_obj.replace = replace\n"
"    shard_obj.update = update\n"
"    shard_obj.delete = delete\n"
"\n"
"    -- set 2-phase operations\n"
"    shard_obj.q_insert = q_insert\n"
"    shard_obj.q_auto_increment = q_auto_increment\n"
"    shard_obj.q_replace = q_replace\n"
"    shard_obj.q_update = q_update\n"
"    shard_obj.q_delete = q_delete\n"
"    shard_obj.q_begin = q_begin\n"
"    shard_obj.q_select = q_select\n"
"    shard_obj.q_call = q_call\n"
"\n"
"    -- set helpers\n"
"    shard_obj.check_operation = check_operation\n"
"    shard_obj.get_heartbeat = get_heartbeat\n"
" \n"
"    -- enable easy spaces access\n"
"    setmetatable(shard_obj, {\n"
"        __index = function (self, space)\n"
"            return {\n"
"                auto_increment = function(this, ...)\n"
"                    return self.auto_increment(self, space, ...)\n"
"                end,\n"
"                insert = function(this, ...)\n"
"                    return self.insert(self, space, ...)\n"
"                end,\n"
"                select = function(this, ...)\n"
"                    return self.select(self, space, ...)\n"
"                end,\n"
"                replace = function(this, ...)\n"
"                    return self.replace(self, space, ...)\n"
"                end,\n"
"                delete = function(this, ...)\n"
"                    return self.delete(self, space, ...)\n"
"                end,\n"
"                update = function(this, ...)\n"
"                    return self.update(self, space, ...)\n"
"                end,\n"
"\n"
"                q_auto_increment = function(this, ...)\n"
"                    return self.q_auto_increment(self, space, ...)\n"
"                end,\n"
"                q_insert = function(this, ...)\n"
"                    return self.q_insert(self, space, ...)\n"
"                end,\n"
"                q_replace = function(this, ...)\n"
"                    return self.q_replace(self, space, ...)\n"
"                end,\n"
"                q_delete = function(this, ...)\n"
"                    return self.q_delete(self, space, ...)\n"
"                end,\n"
"                q_update = function(this, ...)\n"
"                    return self.q_update(self, space, ...)\n"
"                end,\n"
"                q_select = function(this, ...)\n"
"                    return self.q_select(self, space, ...)\n"
"                end,\n"
"                check_operation = function(this, ...)\n"
"                    return self.check_operation(self, space, ...)\n"
"                end,\n"
"                single_call = function(this, ...)\n"
"                    return self.single_call(self, space, ...)\n"
"                end\n"
"            }\n"
"        end\n"
"    })\n"
"end\n"
"\n"
"-- init shard, connect with servers\n"
"local function init(cfg, callback)\n"
"    create_spaces(cfg)\n"
"    log.info('establishing connection to cluster servers...')\n"
"\n"
"    -- math.randomseed(os.time())\n"
"    servers_n = 0\n"
"    local zones = {}\n"
"    local zones_n = 0\n"
"    for id, server in pairs(cfg.servers) do\n"
"        servers_n = servers_n + 1\n"
"        if zones[server.zone] == nil then\n"
"            zones_n = zones_n + 1\n"
"            zones[server.zone] = { id = zones_n, n = 0 }\n"
"        end\n"
"        local zone = zones[server.zone]\n"
"        local conn\n"
"        log.info(' - %s - connecting...', server.uri)\n"
"        while true do\n"
"            local uri = cfg.login..':'..cfg.password..'@'..server.uri\n"
"            conn = remote:new(uri, { reconnect_after = RECONNECT_AFTER })\n"
"            if conn:ping() and check_connection(conn) then\n"
"                local srv = {\n"
"                    uri = server.uri, conn = conn,\n"
"                    login=cfg.login, password=cfg.password,\n"
"                    id = id, zone = zone.id\n"
"                }\n"
"                zone.n = zone.n + 1\n"
"                zone[zone.n] = srv\n"
"                if callback ~= nil then\n"
"                    callback(srv)\n"
"                end\n"
"                if conn:eval(\"return db.info.server.uuid\") == db.info.server.uuid then\n"
"                    self_server = srv\n"
"                end\n"
"                break\n"
"            end\n"
"            conn:close()\n"
"            log.warn(\" - %s - shard check failure\", server.uri)\n"
"            fiber.sleep(1)\n"
"        end\n"
"        log.info(' - %s - connected', server.uri)\n"
"    end\n"
"    log.info('connected to all servers')\n"
"    redundancy = cfg.redundancy or zones_n\n"
"    if redundancy > zones_n then\n"
"        log.error(\"the number of zones (%d) must be greater than %d\",\n"
"                  zones_n, redundancy)\n"
"        error(\"the number of zones must be greater than redundancy\")\n"
"    end\n"
"    log.info(\"redundancy = %d\", redundancy)\n"
"    shard_mapping(zones)\n"
"    -- run monitoring and heartbeat fibers by default\n"
"    if cfg.monitor == nil or cfg.monitor then\n"
"        fiber.create(heartbeat_fiber)\n"
"        fiber.create(monitor_fiber)\n"
"    end\n"
"    enable_operations()\n"
"    log.info('started')\n"
"    init_complete = true\n"
"    return true\n"
"end\n"
"\n"
"local function len()\n"
"    return shards_n\n"
"end\n"
"\n"
"local function is_connected()\n"
"    return init_complete\n"
"end\n"
"\n"
"local function wait_connection()\n"
"    while not is_connected() do\n"
"        fiber.sleep(0.01)\n"
"    end\n"
"end\n"
"\n"
"local function has_unfinished_operations()\n"
"    local tuple = db.space.operations.index.queue:min()\n"
"    return tuple ~= nil and tuple[2] ~= STATE_HANDLED\n"
"end\n"
"\n"
"local function wait_operations()\n"
"    while has_unfinished_operations() do\n"
"        fiber.sleep(0.01)\n"
"    end\n"
"end\n"
"\n"
"local function get_epoch()\n"
"    return epoch_counter\n"
"end\n"
"\n"
"local function wait_epoch(epoch)\n"
"    while get_epoch() < epoch do\n"
"        fiber.sleep(0.01)\n"
"    end\n"
"end\n"
"\n"
"shard_obj = {\n"
"    REMOTE_TIMEOUT = REMOTE_TIMEOUT,\n"
"    HEARTBEAT_TIMEOUT = HEARTBEAT_TIMEOUT,\n"
"    DEAD_TIMEOUT = DEAD_TIMEOUT,\n"
"    RECONNECT_AFTER = RECONNECT_AFTER,\n"
"\n"
"    shards = shards,\n"
"    shards_n = shards_n,\n"
"    servers_n = servers_n,\n"
"    len = len,\n"
"    redundancy = redundancy,\n"
"    is_connected = is_connected,\n"
"    wait_connection = wait_connection,\n"
"    wait_operations = wait_operations,\n"
"    get_epoch = get_epoch,\n"
"    wait_epoch = wait_epoch,\n"
"    is_table_filled = is_table_filled,\n"
"    wait_table_fill = wait_table_fill,\n"
"    queue = queue,\n"
"    init = init,\n"
"    shard = shard,\n"
"    check_shard = check_shard,\n"
"}\n"
"\n"
"return shard_obj\n"
"-- vim: ts=4:sw=4:sts=4:et\n"
""
;
