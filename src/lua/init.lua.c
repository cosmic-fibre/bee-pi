const char init_lua[] =
"-- init.lua -- internal file\n"
"\n"
"-- Override pcall to support Bee exceptions\n"
"\n"
"local ffi = require('ffi')\n"
"ffi.cdef[[\n"
"char *\n"
"bee_error_message(void);\n"
"double\n"
"bee_uptime(void);\n"
"typedef int32_t pid_t;\n"
"pid_t getpid(void);\n"
"]]\n"
"\n"
"local pcall_lua = pcall\n"
"\n"
"local function pcall_wrap(status, ...)\n"
"    if status == false and ... == 'C++ exception' then\n"
"        return false, ffi.string(ffi.C.bee_error_message())\n"
"    end\n"
"    return status, ...\n"
"end\n"
"pcall = function(fun, ...)\n"
"    return pcall_wrap(pcall_lua(fun, ...))\n"
"end\n"
"\n"
"dostring = function(s, ...)\n"
"    local chunk, message = loadstring(s)\n"
"    if chunk == nil then\n"
"        error(message, 2)\n"
"    end\n"
"    return chunk(...)\n"
"end\n"
"\n"
"local function uptime()\n"
"    return tonumber(ffi.C.bee_uptime());\n"
"end\n"
"\n"
"local function pid()\n"
"    return tonumber(ffi.C.getpid())\n"
"end\n"
"\n"
"return {\n"
"    uptime = uptime;\n"
"    pid = pid;\n"
"}\n"
""
;