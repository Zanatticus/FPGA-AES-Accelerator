#include <iostream>
#include "ap_axi_sdata.h"
#include "hls_stream.h"
using namespace std;

void aes(hls::stream< ap_axis<32,2,5,6> > &key_and_plaintext, hls::stream< ap_axis<32,2,5,6> > &ciphertext_and_decryptedtext, unsigned int key_size);

int main () {
    int ret = 0;
    int i;
    int data_size = 16;
    unsigned char key_array[data_size] = {'k', 'k', 'k', 'k', 'e', 'e', 'e', 'e', 'y', 'y', 'y', 'y', '.', '.', '.', '.'};
    unsigned char plaintext_array[data_size] = {'a', 'b', 'c', 'd', 'e', 'f', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0'};
    unsigned char ciphertext_array[data_size], decryptedtext_array[data_size];
    hls::stream< ap_axis<32,2,5,6> > key_and_plaintext_stream, ciphertext_and_decryptedtext_stream;
    ap_axis<32,2,5,6> key, plaintext, ciphertext, decryptedtext;

    printf("\n\n*****AES_AXIS_TEST STARTED*****\n\n");

    int j = 0;
    printf("\nCipher Key (HEX format):\n");
    for (i = 0; i < 2*data_size; i++)
    {
    	if (i < data_size) {
            // Print characters in HEX format, [data_size] chars per line
            printf("%2.2x%c", key_array[i], ((i + 1) % data_size) ? ' ' : '\n');

            // Write the key to the key_stream
            key.data = key_array[i];
            key.keep = 1;
            key.strb = 1;
            key.user = 1;
            key.last = 0;
            key.id = 0;
            key.dest = 1;
            key_and_plaintext_stream.write(key);
    	}
    	else {
    		if (i == data_size) printf("\nPlaintext (HEX format):\n");

            // Print characters in HEX format, [data_size] chars per line
            printf("%2.2x%c", plaintext_array[j], ((j + 1) % data_size) ? ' ' : '\n');

            // Write the plaintext to the plaintext_stream
            plaintext.data = plaintext_array[j];
            plaintext.keep = 1;
            plaintext.strb = 1;
            plaintext.user = 1;

            if (j == data_size - 1) {
            	plaintext.last = 1;
            }
            else {
            	plaintext.last = 0;
            }
            plaintext.id = 0;
            plaintext.dest = 1;
            key_and_plaintext_stream.write(plaintext);
            j++;
    	}
    }

    aes(key_and_plaintext_stream, ciphertext_and_decryptedtext_stream, 16);

    printf("\nCiphertext (HEX format):\n");
    for (i = 0; i < data_size; i++)
    {
    	ciphertext_and_decryptedtext_stream.read(ciphertext);
        ciphertext_array[i] = ciphertext.data;
        printf("%2.2x%c", ciphertext_array[i], ((i + 1) % data_size) ? ' ' : '\n');
    }

    // Capture the output results of the function, write to a file
    FILE *fp = fopen("output.dat", "w");
    for (i = 0; i < data_size; i++) {
        fprintf(fp, "%02x ", ciphertext_array[i]);
    }
    fclose(fp);

    // Compare the results of the function against expected results
    ret = system("diff -w output.dat output.golden.dat");

    if (ret != 0) {
        printf("\nEncryption Test Failed !!!\n");
        ret = 1;
    }
    else {
        printf("\nEncryption Test Passed !!!\n");
    }

    printf("\nDecrypted text (HEX format):\n");
    for (i = 0; i < data_size; i++)
    {
    	ciphertext_and_decryptedtext_stream.read(decryptedtext);
        decryptedtext_array[i] = decryptedtext.data;
        printf("%2.2x%c", decryptedtext_array[i], ((i + 1) % data_size) ? ' ' : '\n');
    }

    // Capture the output results of the function, write to a file
    fp = fopen("output2.dat", "w");
    for (i = 0; i < data_size; i++) {
        fprintf(fp, "%02x ", decryptedtext_array[i]);
    }
    fclose(fp);

    // Compare the results of the function against expected results
    ret = system("diff -w output2.dat output2.golden.dat");

    if (ret != 0) {
        printf("\nDecryption Test Failed !!!\n");
        ret = 1;
    }
    else {
        printf("\nDecryption Test Passed !!!\n");
    }

    printf("\n\n*****AES_AXIS_TEST FINISHED*****\n\n");
    return ret;
}
