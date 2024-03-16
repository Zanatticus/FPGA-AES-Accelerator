#include "aes_hls.h"


void aes (
    AXI_STREAM *in,
    AXI_STREAM *out,
    AXI_STREAM *key,
    AXI_STREAM *size
) {
    #pragma HLS INTERFACE axis port=in
    #pragma HLS INTERFACE axis port=out
    #pragma HLS INTERFACE axis port=key
    #pragma HLS INTERFACE axis port=size
    #pragma HLS INTERFACE ap_ctrl_none port=return
    //#pragma HLS INTERFACE s_axilite port=return

    #pragma HLS DATAFLOW
    
    // unsigned char key[16] = {'k', 'k', 'k', 'k', 'e', 'e', 'e', 'e', 'y', 'y', 'y', 'y', '.', '.', '.', '.'};
    // unsigned char plaintext[16] = {'a', 'b', 'c', 'd', 'e', 'f', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0'};
    unsigned char plaintext[16];
    unsigned char ciphertext[16];
    unsigned char key[16];

    int i = 0;
    while (1) {
        if (in->last()) {
            break;
        }
        // Pipe AXI_STREAM *in to plaintext
        plaintext[i] = in->data;
        key[i] = key->data;
        i++;
    }
    i = 0;
    while (1) {
        if (key->last()) {
            break;
        }
        // Pipe AXI_STREAM *key to key
        key[i] = key->data;
        i++;
    }

    aes_encrypt(plaintext, ciphertext, key, size->data);

    // Pipe ciphertext to AXI_STREAM *out
    out->data = ciphertext[i];
    out->keep = in->keep;
    out->strb = in->strb;
    out->last = in->last;
    out->dest = in->dest;
    out->id = in->id;
    out->user = in->user;

} 