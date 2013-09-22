# -marm compiler flag *must* be passed when compiling anything which will be linked with
# the ARM NEON assembly files, otherwise the linking is incorrect and all NEON based crypto
# implementations crash
add_definitions(-marm)

set(PLAN_IMPLEMENTATIONS
"crypto_sign/edwards25519sha512batch/ref"
"crypto_box/curve25519xsalsa20poly1305/ref"
"crypto_stream/salsa20/armneon6"
"crypto_scalarmult/curve25519/neon2"
"crypto_core/salsa208/ref"
"crypto_verify/16/ref"
"crypto_onetimeauth/poly1305/neon2"
"crypto_hashblocks/sha512/ref"
"crypto_stream/salsa208/ref"
"crypto_core/salsa20/ref"
"crypto_stream/aes128ctr/portable"
"crypto_core/salsa2012/ref"
"crypto_hash/sha256/ref"
"crypto_stream/salsa2012/ref"
"crypto_core/hsalsa20/ref"
"crypto_auth/hmacsha512256/ref"
"crypto_secretbox/xsalsa20poly1305/ref"
"crypto_stream/xsalsa20/ref"
"crypto_verify/32/ref"
"crypto_hashblocks/sha256/inplace"
"crypto_hash/sha512/ref"
"crypto_auth/hmacsha256/ref"
)
set(PLAN_TYPES
"typedef signed char crypto_int8;"
"typedef unsigned int crypto_uint32;"
"typedef short crypto_int16;"
"typedef unsigned char crypto_uint8;"
"typedef unsigned long long crypto_uint64;"
"typedef unsigned short crypto_uint16;"
)
