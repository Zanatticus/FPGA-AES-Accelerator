#include "aes_axis.h"

void aes(AXI_STREAM plaintext, AXI_STREAM ciphertext, AXI_STREAM key, unsigned int key_size, AXI_STREAM decryptedtext);

int main () {
    int ret = 0;
    int i;
    int data_size = 16;
    unsigned char key[data_size] = {'k', 'k', 'k', 'k', 'e', 'e', 'e', 'e', 'y', 'y', 'y', 'y', '.', '.', '.', '.'};
    unsigned char plaintext[data_size] = {'a', 'b', 'c', 'd', 'e', 'f', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0'};
    unsigned char ciphertext[data_size], decryptedtext[data_size];
    AXI_STREAM plaintext_stream, ciphertext_stream, key_stream, decryptedtext_stream;
    AXI_STREAM tmp1, tmp2, tmp3, tmp4;

    printf("\nCipher Key (HEX format):\n");
    for (i = 0; i < data_size; i++)
    {
        // Print characters in HEX format, [data_size] chars per line
        printf("%2.2x%c", key[i], ((i + 1) % data_size) ? ' ' : '\n');

        // Write the key to the key_stream
        tmp1.data = key[i];
        tmp1.keep = 1;
        tmp1.strb = 1;
        tmp1.user = 1;

        if (i == data_size - 1) {
            tmp1.last = 1;
        }
        else {
            tmp1.last = 0;
        }
        tmp1.id = 0;
        tmp1.dest = 1;
        key_stream.write(tmp1);
    }

    printf("\nPlaintext (HEX format):\n");
    for (i = 0; i < data_size; i++)
    {
        // Print characters in HEX format, [data_size] chars per line
        printf("%2.2x%c", plaintext[i], ((i + 1) % data_size) ? ' ' : '\n');

        // Write the plaintext to the plaintext_stream
        tmp2.data = plaintext[i];
        tmp2.keep = 1;
        tmp2.strb = 1;
        tmp2.user = 1;

        if (i == data_size - 1) {
            tmp2.last = 1;
        }
        else {
            tmp2.last = 0;
        }
        tmp2.id = 0;
        tmp2.dest = 1;
        plaintext_stream.write(tmp2);
    }   

    aes(plaintext_stream, ciphertext_stream, key_stream, SIZE_16, decryptedtext_stream);

    printf("\nCiphertext (HEX format):\n");
    for (i = 0; i < data_size - 1; i++)
    {
        ciphertext.stream.read(tmp2);
        ciphertext[i] = tmp3.data;
        printf("%2.2x%c", ciphertext[i], ((i + 1) % data_size) ? ' ' : '\n');
    }

    // Capture the output results of the function, write to a file
    FILE *fp = fopen("output.dat", "w");
    for (i = 0; i < data_size; i++) {
        fprintf(fp, "%02x ", ciphertext[i]);
    }
    fclose(fp);

    // Compare the results of the function against expected results
    ret = system("diff -w output.dat output.golden.dat");

    if (ret != 0) {
        printf("Encryption Test Failed !!!\n");
        ret = 1;
    }
    else {
        printf("Encryption Test Passed !!!\n");
    }

    printf("\nDecrypted text (HEX format):\n");
    for (i = 0; i < data_size; i++)
    {
        decryptedtext_stream.read(tmp4);
        decryptedtext[i] = tmp4.data;
        printf("%2.2x%c", decryptedtext[i], ((i + 1) % data_size) ? ' ' : '\n');
    }

    // Capture the output results of the function, write to a file
    fp = fopen("output2.dat", "w");
    for (i = 0; i < data_size; i++) {
        fprintf(fp, "%02x ", decryptedtext[i]);
    }
    fclose(fp);

    // Compare the results of the function against expected results
    ret = system("diff -w output2.dat output2.golden.dat");

    if (ret != 0) {
        printf("Decryption Test Failed !!!\n");
        ret = 1;
    }
    else {
        printf("Decryption Test Passed !!!\n");
    }


    return ret;
}