const char crypto_stream_lua[] =
"local ffi = require \"ffi\"\n"
"local lib = ffi.load \"sodium\"\n"
"\n"
"ffi.cdef [[\n"
"size_t crypto_stream_xsalsa20_keybytes(void);\n"
"size_t crypto_stream_xsalsa20_noncebytes(void);\n"
"const char * crypto_stream_xsalsa20_primitive(void);\n"
"int crypto_stream_xsalsa20(unsigned char *,unsigned long long,const unsigned char *,const unsigned char *);\n"
"int crypto_stream_xsalsa20_xor(unsigned char *,const unsigned char *,unsigned long long,const unsigned char *,const unsigned char *);\n"
"size_t crypto_stream_keybytes(void);\n"
"size_t crypto_stream_noncebytes(void);\n"
"const char *crypto_stream_primitive(void);\n"
"int crypto_stream(unsigned char *c, unsigned long long clen,\n"
"                  const unsigned char *n, const unsigned char *k);\n"
"int crypto_stream_xor(unsigned char *c, const unsigned char *m,\n"
"                      unsigned long long mlen, const unsigned char *n,\n"
"                      const unsigned char *k);\n"
"size_t crypto_stream_aes128ctr_keybytes(void);\n"
"size_t crypto_stream_aes128ctr_noncebytes(void);\n"
"size_t crypto_stream_aes128ctr_beforenmbytes(void);\n"
"const char * crypto_stream_aes128ctr_primitive(void);\n"
"int crypto_stream_aes128ctr(unsigned char *,unsigned long long,const unsigned char *,const unsigned char *);\n"
"int crypto_stream_aes128ctr_xor(unsigned char *,const unsigned char *,unsigned long long,const unsigned char *,const unsigned char *);\n"
"int crypto_stream_aes128ctr_beforenm(unsigned char *,const unsigned char *);\n"
"int crypto_stream_aes128ctr_afternm(unsigned char *,unsigned long long,const unsigned char *,const unsigned char *);\n"
"int crypto_stream_aes128ctr_xor_afternm(unsigned char *,const unsigned char *,unsigned long long,const unsigned char *,const unsigned char *);\n"
"size_t crypto_stream_aes256estream_keybytes(void);\n"
"size_t crypto_stream_aes256estream_noncebytes(void);\n"
"size_t crypto_stream_aes256estream_beforenmbytes(void);\n"
"const char * crypto_stream_aes256estream_primitive(void);\n"
"int crypto_stream_aes256estream(unsigned char *,unsigned long long,const unsigned char *,const unsigned char *);\n"
"int crypto_stream_aes256estream_xor(unsigned char *,const unsigned char *,unsigned long long,const unsigned char *,const unsigned char *);\n"
"int crypto_stream_aes256estream_beforenm(unsigned char *,const unsigned char *);\n"
"int crypto_stream_aes256estream_afternm(unsigned char *,unsigned long long,const unsigned char *,const unsigned char *);\n"
"int crypto_stream_aes256estream_xor_afternm(unsigned char *,const unsigned char *,unsigned long long,const unsigned char *,const unsigned char *);\n"
"size_t crypto_stream_salsa20_keybytes(void);\n"
"size_t crypto_stream_salsa20_noncebytes(void);\n"
"const char * crypto_stream_salsa20_primitive(void);\n"
"int crypto_stream_salsa20(unsigned char *,unsigned long long,const unsigned char *,const unsigned char *);\n"
"int crypto_stream_salsa20_xor(unsigned char *,const unsigned char *,unsigned long long,const unsigned char *,const unsigned char *);\n"
"size_t crypto_stream_salsa2012_keybytes(void);\n"
"size_t crypto_stream_salsa2012_noncebytes(void);\n"
"const char * crypto_stream_salsa2012_primitive(void);\n"
"int crypto_stream_salsa2012(unsigned char *,unsigned long long,const unsigned char *,const unsigned char *);\n"
"int crypto_stream_salsa2012_xor(unsigned char *,const unsigned char *,unsigned long long,const unsigned char *,const unsigned char *);\n"
"size_t crypto_stream_salsa208_keybytes(void);\n"
"size_t crypto_stream_salsa208_noncebytes(void);\n"
"const char * crypto_stream_salsa208_primitive(void);\n"
"int crypto_stream_salsa208(unsigned char *,unsigned long long,const unsigned char *,const unsigned char *);\n"
"int crypto_stream_salsa208_xor(unsigned char *,const unsigned char *,unsigned long long,const unsigned char *,const unsigned char *);\n"
"]]\n"
"\n"
"local _M = { }\n"
"\n"
"_M.keybytes = function() return tonumber(lib.crypto_stream_keybytes()) end\n"
"_M.noncebytes = function() return tonumber(lib.crypto_stream_noncebytes()) end\n"
"_M.primitive = function() return ffi.string(lib.crypto_stream_primitive()) end\n"
"_M.stream = function(c, clen, n, k)\n"
"\tc = c or ffi.new(\"unsigned char[?]\", clen)\n"
"\tassert(lib.crypto_stream(c, clen, n, k) == 0, \"crypto_stream returned non-zero\")\n"
"\treturn c, clen\n"
"end\n"
"_M.xor = function(c, m, mlen, n, k)\n"
"\tmlen = mlen or #m\n"
"\tc = c or ffi.new(\"unsigned char[?]\", mlen)\n"
"\tassert(lib.crypto_stream_xor(c, m, mlen, n, k) == 0, \"crypto_stream_xor returned non-zero\")\n"
"\treturn c, mlen\n"
"end\n"
"\n"
"return setmetatable ( _M , { __call = function(_M, ...) return _M.stream(...) end } )\n"
""
;
