const char log_lua[] =
"-- log.lua\n"
"--\n"
"local ffi = require('ffi')\n"
"ffi.cdef[[\n"
"    typedef void (*sayfunc_t)(int level, const char *filename, int line,\n"
"               const char *error, const char *format, ...);\n"
"\n"
"    extern sayfunc_t _say;\n"
"    extern void say_logrotate(int);\n"
"\n"
"    enum say_level {\n"
"        S_FATAL,\n"
"        S_SYSERROR,\n"
"        S_ERROR,\n"
"        S_CRIT,\n"
"        S_WARN,\n"
"        S_INFO,\n"
"        S_DEBUG\n"
"    };\n"
"\n"
"    pid_t logger_pid;\n"
"]]\n"
"\n"
"local function say(level, fmt, ...)\n"
"    local debug = require('debug')\n"
"    local str = string.format(tostring(fmt), ...)\n"
"    local frame = debug.getinfo(3, \"Sl\")\n"
"    local line = 0\n"
"    local file = 'eval'\n"
"    if type(frame) == 'table' then\n"
"        line = frame.currentline\n"
"        if not line then\n"
"            line = 0\n"
"        end\n"
"        file = frame.short_src\n"
"        if not file then\n"
"            file = frame.src\n"
"        end\n"
"        if not file then\n"
"            file = 'eval'\n"
"        end\n"
"    end\n"
"    ffi.C._say(level, file, line, nil, \"%s\", str)\n"
"end\n"
"\n"
"return {\n"
"    warn = function (fmt, ...)\n"
"        say(ffi.C.S_WARN, fmt, ...)\n"
"    end,\n"
"\n"
"    info = function (fmt, ...)\n"
"        say(ffi.C.S_INFO, fmt, ...)\n"
"    end,\n"
"\n"
"    debug = function (fmt, ...)\n"
"        say(ffi.C.S_DEBUG, fmt, ...)\n"
"    end,\n"
"\n"
"    error = function (fmt, ...)\n"
"        say(ffi.C.S_ERROR, fmt, ...)\n"
"    end,\n"
"    rotate = function()\n"
"        ffi.C.say_logrotate(0)\n"
"    end,\n"
"\n"
"    logger_pid = function()\n"
"        return tonumber(ffi.C.logger_pid)\n"
"    end\n"
"}\n"
""
;
