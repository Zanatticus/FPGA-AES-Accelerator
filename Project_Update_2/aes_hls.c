// Modify and prepare the entire file (aes.c) to be viable for AXI-STREAM High Level Synthesis

#include "aes.h"
#include <hls_stream.h>
#include <ap_axi_sdata.h>

typedef ap_axis<32, 1, 1, 1> AXI_STREAM;
void aes(
    AXI_STREAM *in,
    AXI_STREAM *out,
    AXI_STREAM *key
) {
    #pragma HLS INTERFACE axis port=in
    #pragma HLS INTERFACE axis port=out
    #pragma HLS INTERFACE axis port=key
    #pragma HLS INTERFACE ap_ctrl_none port=return

    #pragma HLS DATAFLOW
    
    // unsigned char key[16] = {'k', 'k', 'k', 'k', 'e', 'e', 'e', 'e', 'y', 'y', 'y', 'y', '.', '.', '.', '.'};
    // unsigned char plaintext[16] = {'a', 'b', 'c', 'd', 'e', 'f', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0'};
    unsigned char plaintext[16];
    unsigned char ciphertext[16];
    unsigned char key[16];

    for (int i = 0; i < 16; i++) {
        #pragma HLS PIPELINE II=1
        in >> plaintext[i];
    }
    for (int i = 0; i < 16; i++) {
        #pragma HLS PIPELINE II=1
        key >> key[i];
    }

    aes_encrypt(plaintext, ciphertext, key, SIZE_16);

    for (int i = 0; i < 16; i++) {
        #pragma HLS PIPELINE II=1
        out << ciphertext[i];
    }

} 