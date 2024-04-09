#include <iostream>
#include "ap_axi_sdata.h"
#include "hls_stream.h"
using namespace std;

typedef ap_axis<8,1,1,1> AXI_VAL;

void aes(hls::stream< AXI_VAL > &key_and_plaintext, hls::stream< AXI_VAL > &ciphertext_and_decryptedtext, int mode);

int main () {
    // Which AES Cipher to use? AES128 (128), AES192 (192), or AES256 (256)
    int mode = 128;

    // Initialize AES keys 
    unsigned char key_128[16] = {'k', 'k', 'k', 'k', 'e', 'e', 'e', 'e', 'y', 'y', 'y', 'y', '.', '.', '.', '.'};
    unsigned char key_192[24] = {'k', 'k', 'k', 'k', 'e', 'e', 'e', 'e', 'y', 'y', 'y', 'y', '.', '.', '.', '.','1','2','3','4','5','6','7','8'};
    unsigned char key_256[32] = {'k', 'k', 'k', 'k', 'e', 'e', 'e', 'e', 'y', 'y', 'y', 'y', '.', '.', '.', '.','1','2','3','4','5','6','7','8','A','B','C','D','E','F','G','H'};
    
    int cipherkey_size, expandedKeySize;
    unsigned char *key_array;
    char *encrypted_golden;

    switch (mode)
    {
        case 128:
            key_array = key_128;
            cipherkey_size = 16; // Bytes
            expandedKeySize = 176; // Bytes
            encrypted_golden = (char *)"encrypted128.golden.dat";
            break;
        case 192:
            key_array = key_192;
            cipherkey_size = 24; // Bytes
            expandedKeySize = 208; // Bytes
            encrypted_golden = (char *)"encrypted192.golden.dat";
            break;
        case 256:
            key_array = key_256;
            cipherkey_size = 32; // Bytes
            expandedKeySize = 240; // Bytes
            encrypted_golden = (char *)"encrypted256.golden.dat";
            break;
        default:
            printf("Invalid mode\n");
            return 1;
    }

    int text_size = 16;
    unsigned char plaintext_array[text_size] = {'a', 'b', 'c', 'd', 'e', 'f', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0'};
    unsigned char ciphertext_array[text_size], decryptedtext_array[text_size];
    
    int ret = 0, i;

    hls::stream< AXI_VAL > key_and_plaintext_stream, ciphertext_and_decryptedtext_stream;
    AXI_VAL key, plaintext, ciphertext, decryptedtext;

    printf("\n\n*****AES_AXIS_TEST STARTED*****\n\n");

	printf("AES Mode: AES-%i\n", mode);
    printf("\nCipher Key (HEX format):\n");
    for (i = 0; i < cipherkey_size; i++)
    {
        // Print characters in HEX format, [text_size] chars per line
        printf("%2.2x%c", key_array[i], ((i + 1) % cipherkey_size) ? ' ' : '\n');

        // Write the key to the key_stream
        key.data = key_array[i];
        key.keep = 1;
        key.strb = 1;
        key.dest = 1;
        key.id = 0;
        key.user = 1;
        key.last = 0;
        key_and_plaintext_stream.write(key);
    }
    printf("\nPlaintext (HEX format):\n");
    for (i = 0; i < text_size; i++)
    {
        // Print characters in HEX format, [text_size] chars per line
        printf("%2.2x%c", plaintext_array[i], ((i + 1) % text_size) ? ' ' : '\n');

        // Write the key to the key_stream
        plaintext.data = plaintext_array[i];
        plaintext.keep = 1;
        plaintext.strb = 1;
        plaintext.dest = 1;
        plaintext.id = 0;
        plaintext.user = 1;
        if (i == text_size - 1) {
        	plaintext.last = 1;
        }
        else {
        	plaintext.last = 0;
        }
        key_and_plaintext_stream.write(plaintext);
    }

    aes(key_and_plaintext_stream, ciphertext_and_decryptedtext_stream, mode);

    printf("\nCiphertext (HEX format):\n");
    for (i = 0; i < text_size; i++)
    {
    	ciphertext_and_decryptedtext_stream.read(ciphertext);
        ciphertext_array[i] = ciphertext.data;
        printf("%2.2x%c", ciphertext_array[i], ((i + 1) % text_size) ? ' ' : '\n');
    }

    // Capture the output results of the function, write to a file
    FILE *fp = fopen("encrypted.dat", "w");
    for (i = 0; i < text_size; i++) {
        fprintf(fp, "%02x ", ciphertext_array[i]);
    }
    fclose(fp);

    // Compare the results of the function against expected results
    char command[100];
    sprintf(command, "diff -w encrypted.dat %s", encrypted_golden);
    ret = system(command);
    if (ret != 0) {
        printf("\nEncryption Test Failed !!!\n");
        ret = 1;
    }
    else {
        printf("\nEncryption Test Passed !!!\n");
    }

    printf("\nDecrypted text (HEX format):\n");
    for (i = 0; i < text_size; i++)
    {
    	ciphertext_and_decryptedtext_stream.read(decryptedtext);
        decryptedtext_array[i] = decryptedtext.data;
        printf("%2.2x%c", decryptedtext_array[i], ((i + 1) % text_size) ? ' ' : '\n');
    }

    // Capture the output results of the function, write to a file
    fp = fopen("decrypted.dat", "w");
    for (i = 0; i < text_size; i++) {
        fprintf(fp, "%02x ", decryptedtext_array[i]);
    }
    fclose(fp);

    // Compare the results of the function against expected results

    ret = system("diff -w decrypted.dat decrypted.golden.dat");

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
