const char console_lua[] =
"-- console.lua -- internal file\n"
"\n"
"local internal = require('console')\n"
"local fiber = require('fiber')\n"
"local socket = require('socket')\n"
"local log = require('log')\n"
"local errno = require('errno')\n"
"local urilib = require('uri')\n"
"local ffi = require('ffi')\n"
"\n"
"-- admin formatter must be able to encode any Lua variable\n"
"local formatter = require('yaml').new()\n"
"formatter.cfg{\n"
"    encode_invalid_numbers = true;\n"
"    encode_load_metatables = true;\n"
"    encode_use_tostring    = true;\n"
"    encode_invalid_as_nil  = true;\n"
"}\n"
"\n"
"local function format(status, ...)\n"
"    -- When storing a nil in a Lua table, there is no way to\n"
"    -- distinguish nil value from no value. This is a trick to\n"
"    -- make sure yaml converter correctly\n"
"    local function wrapnull(v)\n"
"        return v == nil and formatter.NULL or v\n"
"    end\n"
"    local err\n"
"    if status then\n"
"        local count = select('#', ...)\n"
"        if count == 0 then\n"
"            return \"---\\n...\\n\"\n"
"        end\n"
"        local res = {}\n"
"        for i=1,count,1 do\n"
"            table.insert(res, wrapnull(select(i, ...)))\n"
"        end\n"
"        -- serializer can raise an exception\n"
"        status, err = pcall(formatter.encode, res)\n"
"        if status then\n"
"            return err\n"
"        else\n"
"            err = 'console: an exception occurred when formatting the output: '..\n"
"                tostring(err)\n"
"        end\n"
"    else\n"
"        err = wrapnull(...)\n"
"    end\n"
"    return formatter.encode({{error = err }})\n"
"end\n"
"\n"
"function local_format(status, ...)\n"
"    if not status and type(db.cfg) == 'table' then\n"
"        db.rollback()\n"
"    end\n"
"    return format(status, ...)\n"
"end\n"
"\n"
"--\n"
"-- Evaluate command on local server\n"
"--\n"
"local function local_eval(self, line)\n"
"    if not line then\n"
"        return nil\n"
"    end\n"
"    --\n"
"    -- Attempt to append 'return ' before the chunk: if the chunk is\n"
"    -- an expression, this pushes results of the expression onto the\n"
"    -- stack. If the chunk is a statement, it won't compile. In that\n"
"    -- case try to run the original string.\n"
"    --\n"
"    local fun, errmsg = loadstring(\"return \"..line)\n"
"    if not fun then\n"
"        fun, errmsg = loadstring(line)\n"
"    end\n"
"    if not fun then\n"
"        return format(false, errmsg)\n"
"    end\n"
"    return local_format(pcall(fun))\n"
"end\n"
"\n"
"local function eval(line)\n"
"    return local_eval(nil, line)\n"
"end\n"
"\n"
"--\n"
"-- Evaluate command on remote server\n"
"--\n"
"local function remote_eval(self, line)\n"
"    if not line then\n"
"        if type(self.on_client_disconnect) == 'function' then\n"
"            self:on_client_disconnect()\n"
"        end\n"
"        pcall(self.remote.close, self.remote)\n"
"        self.remote = nil\n"
"        self.eval = nil\n"
"        self.prompt = nil\n"
"        return \"\"\n"
"    end\n"
"    --\n"
"    -- console connection: execute line as is\n"
"    --\n"
"    if self.remote.console then\n"
"        return self.remote:console(line)\n"
"    end\n"
"    --\n"
"    -- binary connection: call remote 'console.eval' function\n"
"    --\n"
"    local status, res = pcall(self.remote.eval, self.remote,\n"
"        \"return require('console').eval(...)\", line)\n"
"    if not status then\n"
"        -- remote request failed\n"
"        return format(status, res)\n"
"    end\n"
"    -- return formatted output from remote\n"
"    return res\n"
"end\n"
"\n"
"--\n"
"-- Read command from stdin\n"
"--\n"
"local function local_read(self)\n"
"    local buf = \"\"\n"
"    local prompt = self.prompt\n"
"    while true do\n"
"        local delim = self.delimiter\n"
"        local line = internal.readline(prompt.. \"> \")\n"
"        if not line then\n"
"            return nil\n"
"        end\n"
"        buf = buf..line\n"
"        if #buf >= #delim and buf:sub(#buf - #delim + 1) == delim then\n"
"            buf = buf:sub(0, #buf - #delim)\n"
"            break\n"
"        end\n"
"        buf = buf..\"\\n\"\n"
"        prompt = string.rep(' ', #self.prompt)\n"
"    end\n"
"    internal.add_history(buf)\n"
"    return buf\n"
"end\n"
"\n"
"--\n"
"-- Print result to stdout\n"
"--\n"
"local function local_print(self, output)\n"
"    if output == nil then\n"
"        self.running = nil\n"
"        return\n"
"    end\n"
"    print(output)\n"
"end\n"
"\n"
"--\n"
"-- Read command from connected client console.listen()\n"
"--\n"
"local function client_read(self)\n"
"    local delim = self.delimiter..\"\\n\"\n"
"    local buf = self.client:read(delim)\n"
"    if buf == nil then\n"
"        return nil\n"
"    elseif buf == \"\" then\n"
"        return nil -- EOF\n"
"    elseif buf == \"~.\\n\" then\n"
"        -- Escape sequence to close current connection (like SSH)\n"
"        return nil\n"
"    end\n"
"    -- remove trailing delimiter\n"
"    return buf:sub(1, -#delim-1)\n"
"end\n"
"\n"
"--\n"
"-- Print result to connected client from console.listen()\n"
"--\n"
"local function client_print(self, output)\n"
"    if not self.client then\n"
"        return\n"
"    elseif not output then\n"
"        -- disconnect peer\n"
"        self.client = nil -- socket will be closed by tcp_server() function\n"
"        self.running = nil\n"
"        return\n"
"    end\n"
"    self.client:write(output)\n"
"end\n"
"\n"
"--\n"
"-- REPL state\n"
"--\n"
"local repl_mt = {\n"
"    __index = {\n"
"        running = false;\n"
"        delimiter = \"\";\n"
"        prompt = \"bee\";\n"
"        read = local_read;\n"
"        eval = local_eval;\n"
"        print = local_print;\n"
"    };\n"
"}\n"
"\n"
"--\n"
"-- REPL = read-eval-print-loop\n"
"--\n"
"local function repl(self)\n"
"    \n"
"    fiber.self().storage.console = self\n"
"    if type(self.on_start) == 'function' then\n"
"        self:on_start()\n"
"    end\n"
"\n"
"    while self.running do\n"
"        local command = self:read()\n"
"        local output = self:eval(command)\n"
"        self:print(output)\n"
"    end\n"
"    fiber.self().storage.console = nil\n"
"end\n"
"\n"
"local function on_start(foo)\n"
"    if foo == nil or type(foo) == 'function' then\n"
"        repl_mt.__index.on_start = foo \n"
"        return\n"
"    end\n"
"    error('Wrong type of on_start hook: ' .. type(foo))\n"
"end\n"
"\n"
"local function on_client_disconnect(foo)\n"
"    if foo == nil or type(foo) == 'function' then\n"
"        repl_mt.__index.on_client_disconnect = foo \n"
"        return\n"
"    end\n"
"    error('Wrong type of on_client_disconnect hook: ' .. type(foo))\n"
"end\n"
"\n"
"--\n"
"-- Set delimiter\n"
"--\n"
"local function delimiter(delim)\n"
"    local self = fiber.self().storage.console\n"
"    if self == nil then\n"
"        error(\"console.delimiter(): need existing console\")\n"
"    end\n"
"    if delim == nil then\n"
"        return self.delimiter\n"
"    elseif type(delim) == 'string' then\n"
"        self.delimiter = delim\n"
"    else\n"
"        error('invalid delimiter')\n"
"    end\n"
"end\n"
"\n"
"--\n"
"-- Start REPL on stdin\n"
"--\n"
"local started = false\n"
"local function start()\n"
"    if started then\n"
"        error(\"console is already started\")\n"
"    end\n"
"    started = true\n"
"    local self = setmetatable({ running = true }, repl_mt)\n"
"    repl(self)\n"
"    started = false\n"
"end\n"
"\n"
"--\n"
"-- Connect to remove server\n"
"--\n"
"local function connect(uri)\n"
"    local self = fiber.self().storage.console\n"
"    if self == nil then\n"
"        error(\"console.connect() need existing console\")\n"
"    end\n"
"\n"
"    local u\n"
"    if uri then\n"
"        u = urilib.parse(tostring(uri))\n"
"    end\n"
"    if u == nil or u.service == nil then\n"
"        error('Usage: console.connect(\"[login:password@][host:]port\")')\n"
"    end\n"
"\n"
"    -- connect to remote host\n"
"    local remote = require('net.db'):new(u.host, u.service,\n"
"        { user = u.login, password = u.password })\n"
"\n"
"    -- run disconnect trigger\n"
"    if remote.state == 'closed' then\n"
"        if type(self.on_client_disconnect) == 'function' then\n"
"            self:on_client_disconnect()\n"
"        end\n"
"    end\n"
"\n"
"    -- check connection && permissions\n"
"    if remote.console then\n"
"        remote:console('return true')\n"
"    else\n"
"        remote:eval('return true')\n"
"    end\n"
"    -- override methods\n"
"    self.remote = remote\n"
"    self.eval = remote_eval\n"
"    self.prompt = string.format(\"%s:%s\", self.remote.host, self.remote.port)\n"
"    log.info(\"connected to %s:%s\", self.remote.host, self.remote.port)\n"
"    return true\n"
"end\n"
"\n"
"local function client_handler(client, peer)\n"
"    log.info(\"client %s:%s connected\", peer.host, peer.port)\n"
"    local state = setmetatable({\n"
"        running = true;\n"
"        read = client_read;\n"
"        print = client_print;\n"
"        client = client;\n"
"    }, repl_mt)\n"
"    local version = ffi.string(_BEE)\n"
"    state:print(string.format(\"%-63s\\n%-63s\\n\",\n"
"        \"Bee \",\n"
"        \"Laa ghaliba illallah\"))\n"
"    repl(state)\n"
"    log.info(\"client %s:%s disconnected\", peer.host, peer.port)\n"
"end\n"
"\n"
"--\n"
"-- Start admin server\n"
"--\n"
"local function listen(uri)\n"
"    local host, port\n"
"    if uri == nil then\n"
"        host = 'unix/'\n"
"        port = '/tmp/bee-console.sock'\n"
"    else\n"
"        local u = urilib.parse(tostring(uri))\n"
"        if u == nil or u.service == nil then\n"
"            error('Usage: console.listen(\"[host:]port\")')\n"
"        end\n"
"        host = u.host\n"
"        port = u.service or 3313\n"
"    end\n"
"    local s, addr = socket.tcp_server(host, port, { handler = client_handler,\n"
"        name = 'console'})\n"
"    if not s then\n"
"        error(string.format('failed to create server %s:%s: %s',\n"
"            host, port, errno.strerror()))\n"
"    end\n"
"    return s\n"
"end\n"
"\n"
"return {\n"
"    start = start;\n"
"    eval = eval;\n"
"    delimiter = delimiter;\n"
"    connect = connect;\n"
"    listen = listen;\n"
"    on_start = on_start;\n"
"    on_client_disconnect = on_client_disconnect;\n"
"}\n"
""
;