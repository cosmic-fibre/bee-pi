const char crypto_scalarmult_lua[] =
"local ffi = require \"ffi\"\n"
"local lib = ffi.load \"sodium\"\n"
"\n"
"ffi.cdef [[\n"
"size_t crypto_scalarmult_curve25519_bytes(void);\n"
"size_t crypto_scalarmult_curve25519_scalarbytes(void);\n"
"int crypto_scalarmult_curve25519(unsigned char *,const unsigned char *,const unsigned char *);\n"
"int crypto_scalarmult_curve25519_base(unsigned char *,const unsigned char *);\n"
"size_t crypto_scalarmult_bytes(void);\n"
"size_t crypto_scalarmult_scalarbytes(void);\n"
"const char *crypto_scalarmult_primitive(void);\n"
"int crypto_scalarmult_base(unsigned char *q, const unsigned char *n);\n"
"int crypto_scalarmult(unsigned char *q, const unsigned char *n,\n"
"                      const unsigned char *p);\n"
"]]\n"
"\n"
"local _M = { }\n"
"\n"
"_M.bytes = function() return tonumber(lib.crypto_scalarmult_bytes()) end\n"
"_M.scalarbytes = function() return tonumber(lib.crypto_scalarmult_scalarbytes()) end\n"
"_M.primitive = function() return ffi.string(lib.crypto_scalarmult_primitive()) end\n"
"_M.base = function(q, n)\n"
"\tassert(lib.crypto_scalarmult_base(q, n) == 0, \"crypto_scalarmult_base returned non-zero\")\n"
"\treturn q\n"
"end\n"
"_M.scalarmult = function(q, n, p)\n"
"\tq = q or ffi.new(\"unsigned char[?]\", _M.bytes())\n"
"\tassert(lib.crypto_scalarmult(q, n, p) == 0, \"crypto_scalarmult returned non-zero\")\n"
"\treturn q\n"
"end\n"
"\n"
"return setmetatable ( _M , { __call = function(_M, ...) return _M.scalarmult(...) end } )\n"
""
;