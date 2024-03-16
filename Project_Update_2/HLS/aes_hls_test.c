#include "aes_hls.h"

int main () {
    int ret = 0;

    unsigned char plaintext[16] = {'a', 'b', 'c', 'd', 'e', 'f', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0'};
    unsigned char ciphertext[16];
    unsigned char key[16] = {'k', 'k', 'k', 'k', 'e', 'e', 'e', 'e', 'y', 'y', 'y', 'y', '.', '.', '.', '.'};

    printf("Plaintext: %.*s\n", SIZE_16, plaintext);
    printf("Key: %.*s\n", SIZE_16, key);

    aes(plaintext, ciphertext, key, SIZE_16);

    printf("Ciphertext: %.*s\n", SIZE_16, ciphertext);

    // Capture the output results of the function, write to a file
    FILE *fp = fopen("output.dat", "w");
    for (int i = 0; i < 16; i++) {
        fprintf(fp, "%02x ", ciphertext[i]);
    }

    // Compare the results of the function against expected results
    ret = system("diff --brief -w output.dat output.golden.dat");

    if (ret != 0) {
        printf("Encrpytion Test Failed !!!\n");
        ret = 1;
    }
    else {
        printf("Encryption Test Passed !!!\n");
    }

    return ret;
}