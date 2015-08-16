const char session_lua[] =
"-- session.lua\n"
"\n"
"local session = db.session\n"
"\n"
"setmetatable(session, {\n"
"    __index = function(tbl, idx)\n"
"\n"
"        if idx ~= 'storage' then\n"
"            return\n"
"        end\n"
"\n"
"        local sid = session.id()\n"
"\n"
"        local mt = getmetatable(tbl)\n"
"\n"
"        if mt.aggregate_storage[ sid ] == nil then\n"
"            mt.aggregate_storage[ sid ] = {}\n"
"        end\n"
"        return mt.aggregate_storage[ sid ]\n"
"    end,\n"
"\n"
"    aggregate_storage = {}\n"
"})\n"
""
;