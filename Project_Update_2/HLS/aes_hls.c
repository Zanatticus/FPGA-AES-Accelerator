#include "aes_hls.h"


void aes (
    unsigned char *in,
    unsigned char *out,
    unsigned char *key,
    unsigned int size
) {
    aes_encrypt(in, out, key, size);
} 