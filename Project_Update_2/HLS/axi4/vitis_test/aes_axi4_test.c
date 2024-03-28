#include "aes_axi4.h"

int main () {
    int ret = 0;
    int i;

    unsigned char key[16] = {'k', 'k', 'k', 'k', 'e', 'e', 'e', 'e', 'y', 'y', 'y', 'y', '.', '.', '.', '.'};
    unsigned char plaintext[16] = {'a', 'b', 'c', 'd', 'e', 'f', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0'};
    unsigned char ciphertext[16], decryptedtext[16];

    printf("\n\n*****AES_AXI4_TEST STARTED*****\n\n");


    printf("\nCipher Key (HEX format):\n");
    for (i = 0; i < 16; i++) {
        // Print characters in HEX format, 16 chars per line
        printf("%2.2x%c", key[i], ((i + 1) % 16) ? ' ' : '\n');
    }

    printf("\nPlaintext (HEX format):\n");
    for (i = 0; i < 16; i++) {
        printf("%2.2x%c", plaintext[i], ((i + 1) % 16) ? ' ' : '\n');
    }   

    aes(SIZE_16, key, plaintext, ciphertext, decryptedtext);

    printf("\nCiphertext (HEX format):\n");
    for (i = 0; i < 16; i++) {
        printf("%2.2x%c", ciphertext[i], ((i + 1) % 16) ? ' ' : '\n');
    }

    // Capture the output results of the function, write to a file
    FILE *fp = fopen("output.dat", "w");
    for (i = 0; i < 16; i++) {
        fprintf(fp, "%02x ", ciphertext[i]);
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
    for (i = 0; i < 16; i++) {
        printf("%2.2x%c", decryptedtext[i], ((i + 1) % 16) ? ' ' : '\n');
    }

    // Capture the output results of the function, write to a file
    fp = fopen("output2.dat", "w");
    for (i = 0; i < 16; i++) {
        fprintf(fp, "%02x ", decryptedtext[i]);
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

    printf("\n\n*****AES_AXI4_TEST FINISHED*****\n\n");

    return ret;
}