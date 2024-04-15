#include "aes.h"
#include "time.h"

int main(int argc, char *argv[])
{
    // Which AES Cipher to use? AES128 (128), AES192 (192), or AES256 (256)
    int mode = 256;

    // Initialize AES keys 
    unsigned char key_128[16] = {'k', 'k', 'k', 'k', 'e', 'e', 'e', 'e', 'y', 'y', 'y', 'y', '.', '.', '.', '.'};
    unsigned char key_192[24] = {'k', 'k', 'k', 'k', 'e', 'e', 'e', 'e', 'y', 'y', 'y', 'y', '.', '.', '.', '.','1','2','3','4','5','6','7','8'};
    unsigned char key_256[32] = {'k', 'k', 'k', 'k', 'e', 'e', 'e', 'e', 'y', 'y', 'y', 'y', '.', '.', '.', '.','1','2','3','4','5','6','7','8','A','B','C','D','E','F','G','H'};
    
    int cipherkey_size, expandedKeySize;
    unsigned char *key;
    unsigned char *encrypted_golden;

    switch (mode)
    {
        case 128:
            key = key_128;
            cipherkey_size = 16; // Bytes
            expandedKeySize = 176; // Bytes
            encrypted_golden = "encrypted128.golden.dat";
            break;
        case 192:
            key = key_192;
            cipherkey_size = 24; // Bytes
            expandedKeySize = 208; // Bytes
            encrypted_golden = "encrypted192.golden.dat";
            break;
        case 256:
            key = key_256;
            cipherkey_size = 32; // Bytes
            expandedKeySize = 240; // Bytes
            encrypted_golden = "encrypted256.golden.dat";
            break;
        default:
            printf("Invalid mode\n");
            return 1;
    }

    // AES-128 (176 bytes), AES-192 (208 bytes), AES-256 (240 bytes)
    unsigned char expandedKey[expandedKeySize];

    // Text size
    int text_size = 16;
    unsigned char plaintext[16] = {'a', 'b', 'c', 'd', 'e', 'f', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0'};
    unsigned char ciphertext[16];
    unsigned char decryptedtext[16];

    int i;

    printf("**************************************************\n");
    printf("*   Basic implementation of AES algorithm in C   *\n");
    printf("**************************************************\n");

    printf("\nCipher Key (HEX format):\n");

    for (i = 0; i < text_size; i++)
    {
        // Print characters in HEX format, 16 chars per line
        printf("%2.2x%c", key[i], ((i + 1) % text_size) ? ' ' : '\n');
    }

    // Test the Key Expansion
    expandKey(expandedKey, key, cipherkey_size, expandedKeySize);

    printf("\nExpanded Key (HEX format):\n");

    for (i = 0; i < expandedKeySize; i++)
    {
        printf("%2.2x%c", expandedKey[i], ((i + 1) % text_size) ? ' ' : '\n');
    }

    printf("\nPlaintext (HEX format):\n");

    for (i = 0; i < text_size; i++)
    {
        printf("%2.2x%c", plaintext[i], ((i + 1) % text_size) ? ' ' : '\n');
    }

    // set a start time and end time around these two encryp/decrypt functions
    clock_t start, end;
    double cpu_time_used;
    start = clock();
    // AES Encryption
    aes_encrypt(plaintext, ciphertext, key, cipherkey_size);
    // AES Decryption
    aes_decrypt(ciphertext, decryptedtext, key, cipherkey_size);
    end = clock();
    cpu_time_used = ((double) (end - start)) / CLOCKS_PER_SEC;

    printf("\nCiphertext (HEX format):\n");

    for (i = 0; i < text_size; i++)
    {
        printf("%2.2x%c", ciphertext[i], ((i + 1) % text_size) ? ' ' : '\n');
    }

    FILE *fp = fopen("encrypted.dat", "w");
    for (int i = 0; i < text_size; i++) {
        fprintf(fp, "%02x ", ciphertext[i]);
    }
    fclose(fp);
    
    char command[100];
    sprintf(command, "diff -w encrypted.dat %s >/dev/null 2>&1", encrypted_golden);
    int ret = system(command);
    
    if (ret != 0) {
        printf("Encryption Test Failed !!! err=%d\n", ret);
        ret = 1;
    }
    else {
        printf("Encryption Test Passed !!!\n");
    }

    printf("\nDecrypted text (HEX format):\n");

    for (i = 0; i < text_size; i++)
    {
        printf("%2.2x%c", decryptedtext[i], ((i + 1) % text_size) ? ' ' : '\n');
    }

    // Capture the output results of the function, write to a file
    fp = fopen("decrypted.dat", "w");
    for (i = 0; i < text_size; i++) {
        fprintf(fp, "%02x ", decryptedtext[i]);
    }
    fclose(fp);

    ret = system("diff -w decrypted.dat decrypted.golden.dat >/dev/null 2>&1");

    if (ret != 0) {
        printf("Decryption Test Failed !!! err=%d\n", ret);
        ret = 1;
    }
    else {
        printf("Decryption Test Passed !!!\n");
    }

    printf("Time taken: %f\n", cpu_time_used);

    return 0;
}

unsigned char getSBoxValue(unsigned char num)
{
    return sbox[num];
}

unsigned char getSBoxInvert(unsigned char num)
{
    return rsbox[num];
}

/*
Rijndael's key schedule rotate operation

rotate the word eight bits (1 byte) to the left
e.g. rotate(1a2b3c4d) = 2b3c4d1a
word is a char array of size 4 (32 bit)
*/
void rotate(unsigned char *word)
{
    unsigned char c;
    int i;

    c = word[0];
    for (i = 0; i < 3; i++)
        word[i] = word[i + 1];
    word[3] = c;
}

unsigned char getRconValue(unsigned char num)
{
    return Rcon[num];
}

void core(unsigned char *word, int iteration)
{
    int i;

    // rotate the 32-bit word 8 bits to the left
    rotate(word);

    // apply S-Box substitution on all 4 parts of the 32-bit word
    for (i = 0; i < 4; ++i)
    {
        word[i] = getSBoxValue(word[i]);
    }

    // XOR the output of the rcon operation with i to the first part (leftmost) only
    word[0] = word[0] ^ getRconValue(iteration);
}

/*
Rijndael's key expansion
expands a 128,192,256 key into an 176,208,240 bytes key
expandedKey is a pointer to an char array of large enough size
key is a pointer to a non-expanded key
*/
void expandKey(unsigned char *expandedKey,
               unsigned char *key,
               int size,
               size_t expandedKeySize)
{
    // current expanded keySize, in bytes
    int currentSize = 0;
    int rconIteration = 1;
    int i;
    unsigned char t[4] = {0}; // temporary 4-byte variable

    // set the 16, 24, 32 bytes of the expanded key to the input key
    for (i = 0; i < size; i++)
        expandedKey[i] = key[i];
    currentSize += size;

    while (currentSize < expandedKeySize)
    {
        // assign the previous 4 bytes to the temporary value t
        for (i = 0; i < 4; i++)
        {
            t[i] = expandedKey[(currentSize - 4) + i];
        }

        /* every 16, 24, 32 bytes we apply the core schedule to t
         * and increment rconIteration afterwards
         */
        if (currentSize % size == 0)
        {
            core(t, rconIteration++);
        }

        // For 256-bit keys, we add an extra sbox to the calculation
        if (size == 32 && ((currentSize % size) == 16))
        {
            for (i = 0; i < 4; i++)
                t[i] = getSBoxValue(t[i]);
        }

        /* 
        We XOR t with the four-byte block 16,24,32 bytes before the new expanded key.
        This becomes the next four bytes in the expanded key.
        */
        for (i = 0; i < 4; i++)
        {
            expandedKey[currentSize] = expandedKey[currentSize - size] ^ t[i];
            currentSize++;
        }
    }
}

void subBytes(unsigned char *state)
{
    int i;
    /* 
    substitute all the values from the state with the value in the SBox
    using the state value as index for the SBox
     */
    for (i = 0; i < 16; i++)
        state[i] = getSBoxValue(state[i]);
}

void shiftRows(unsigned char *state)
{
    int i;
    // iterate over the 4 rows and call shiftRow() with that row
    for (i = 0; i < 4; i++)
        shiftRow(state + i * 4, i);
}

void shiftRow(unsigned char *state, unsigned char nbr)
{
    int i, j;
    unsigned char tmp;
    // shift the row to the left by 1 for each iteration
    for (i = 0; i < nbr; i++)
    {
        tmp = state[0];
        for (j = 0; j < 3; j++)
            state[j] = state[j + 1];
        state[3] = tmp;
    }
}

void addRoundKey(unsigned char *state, unsigned char *roundKey)
{
    int i;
    for (i = 0; i < 16; i++)
        state[i] = state[i] ^ roundKey[i];
}

unsigned char galois_multiplication(unsigned char a, unsigned char b)
{
    unsigned char p = 0;
    unsigned char counter;
    unsigned char hi_bit_set;
    for (counter = 0; counter < 8; counter++)
    {
        if ((b & 1) == 1)
            p ^= a;
        hi_bit_set = (a & 0x80);
        a <<= 1;
        if (hi_bit_set == 0x80)
            a ^= 0x1b;
        b >>= 1;
    }
    return p;
}

void mixColumns(unsigned char *state)
{
    int i, j;
    unsigned char column[4];

    // iterate over the 4 columns
    for (i = 0; i < 4; i++)
    {
        // construct one column by iterating over the 4 rows
        for (j = 0; j < 4; j++)
        {
            column[j] = state[(j * 4) + i];
        }

        // apply the mixColumn on one column
        mixColumn(column);

        // put the values back into the state
        for (j = 0; j < 4; j++)
        {
            state[(j * 4) + i] = column[j];
        }
    }
}

void mixColumn(unsigned char *column)
{
    unsigned char cpy[4];
    int i;
    for (i = 0; i < 4; i++)
    {
        cpy[i] = column[i];
    }
    column[0] = galois_multiplication(cpy[0], 2) ^
                galois_multiplication(cpy[3], 1) ^
                galois_multiplication(cpy[2], 1) ^
                galois_multiplication(cpy[1], 3);

    column[1] = galois_multiplication(cpy[1], 2) ^
                galois_multiplication(cpy[0], 1) ^
                galois_multiplication(cpy[3], 1) ^
                galois_multiplication(cpy[2], 3);

    column[2] = galois_multiplication(cpy[2], 2) ^
                galois_multiplication(cpy[1], 1) ^
                galois_multiplication(cpy[0], 1) ^
                galois_multiplication(cpy[3], 3);

    column[3] = galois_multiplication(cpy[3], 2) ^
                galois_multiplication(cpy[2], 1) ^
                galois_multiplication(cpy[1], 1) ^
                galois_multiplication(cpy[0], 3);
}

void aes_round(unsigned char *state, unsigned char *roundKey)
{
    subBytes(state);
    shiftRows(state);
    mixColumns(state);
    addRoundKey(state, roundKey);
}

void createRoundKey(unsigned char *expandedKey, unsigned char *roundKey)
{
    int i, j;
    // iterate over the columns
    for (i = 0; i < 4; i++)
    {
        // iterate over the rows
        for (j = 0; j < 4; j++)
            roundKey[(i + (j * 4))] = expandedKey[(i * 4) + j];
    }
}

void aes_main(unsigned char *state, unsigned char *expandedKey, int nbrRounds)
{
    int i = 0;

    unsigned char roundKey[16];

    createRoundKey(expandedKey, roundKey);
    addRoundKey(state, roundKey);

    for (i = 1; i < nbrRounds; i++)
    {
        createRoundKey(expandedKey + 16 * i, roundKey);
        aes_round(state, roundKey);
    }

    createRoundKey(expandedKey + 16 * nbrRounds, roundKey);
    subBytes(state);
    shiftRows(state);
    addRoundKey(state, roundKey);
}

char aes_encrypt(unsigned char *input,
                 unsigned char *output,
                 unsigned char *key,
                 int size)
{
    // the expanded keySize
    int expandedKeySize;

    // the number of rounds
    int nbrRounds;

    // the expanded key
    unsigned char *expandedKey;

    // the 128 bit block to encode
    unsigned char block[16];

    int i, j;

    // set the number of rounds
    switch (size)
    {
    case 16:
        nbrRounds = 10;
        break;
    case 24:
        nbrRounds = 12;
        break;
    case 32:
        nbrRounds = 14;
        break;
    default:
        return ERROR_AES_UNKNOWN_KEYSIZE;
        break;
    }

    expandedKeySize = (16 * (nbrRounds + 1));

    expandedKey = (unsigned char *)malloc(expandedKeySize * sizeof(unsigned char));

    if (expandedKey == NULL)
    {
        return ERROR_MEMORY_ALLOCATION_FAILED;
    }
    else
    {
        /*
        Set the block values, for the block:
            a0,0 a0,1 a0,2 a0,3
            a1,0 a1,1 a1,2 a1,3
            a2,0 a2,1 a2,2 a2,3
            a3,0 a3,1 a3,2 a3,3
        the mapping order is a0,0 a1,0 a2,0 a3,0 a0,1 a1,1 ... a2,3 a3,3
        */

        // iterate over the columns
        for (i = 0; i < 4; i++)
        {
            // iterate over the rows
            for (j = 0; j < 4; j++)
                block[(i + (j * 4))] = input[(i * 4) + j];
        }

        // expand the key into an 176, 208, 240 bytes key
        expandKey(expandedKey, key, size, expandedKeySize);

        // encrypt the block using the expandedKey
        aes_main(block, expandedKey, nbrRounds);

        // unmap the block again into the output
        for (i = 0; i < 4; i++)
        {
            // iterate over the rows
            for (j = 0; j < 4; j++)
                output[(i * 4) + j] = block[(i + (j * 4))];
        }

        // de-allocate/free memory for expandedKey
        free(expandedKey);
        expandedKey = NULL;
    }

    return SUCCESS;
}

void invSubBytes(unsigned char *state)
{
    int i;
    
    /*
    substitute all the values from the state with the value in the SBox
    using the state value as index for the SBox
    */
    for (i = 0; i < 16; i++)
        state[i] = getSBoxInvert(state[i]);
}

void invShiftRows(unsigned char *state)
{
    int i;
    // iterate over the 4 rows and call invShiftRow() with that row
    for (i = 0; i < 4; i++)
        invShiftRow(state + i * 4, i);
}

void invShiftRow(unsigned char *state, unsigned char nbr)
{
    int i, j;
    unsigned char tmp;
    // each iteration shifts the row to the right by 1
    for (i = 0; i < nbr; i++)
    {
        tmp = state[3];
        for (j = 3; j > 0; j--)
            state[j] = state[j - 1];
        state[0] = tmp;
    }
}

void invMixColumns(unsigned char *state)
{
    int i, j;
    unsigned char column[4];

    // iterate over the 4 columns
    for (i = 0; i < 4; i++)
    {
        // construct one column by iterating over the 4 rows
        for (j = 0; j < 4; j++)
        {
            column[j] = state[(j * 4) + i];
        }

        // apply the invMixColumn on one column
        invMixColumn(column);

        // put the values back into the state
        for (j = 0; j < 4; j++)
        {
            state[(j * 4) + i] = column[j];
        }
    }
}

void invMixColumn(unsigned char *column)
{
    unsigned char cpy[4];
    int i;
    for (i = 0; i < 4; i++)
    {
        cpy[i] = column[i];
    }
    column[0] = galois_multiplication(cpy[0], 14) ^
                galois_multiplication(cpy[3], 9) ^
                galois_multiplication(cpy[2], 13) ^
                galois_multiplication(cpy[1], 11);
    column[1] = galois_multiplication(cpy[1], 14) ^
                galois_multiplication(cpy[0], 9) ^
                galois_multiplication(cpy[3], 13) ^
                galois_multiplication(cpy[2], 11);
    column[2] = galois_multiplication(cpy[2], 14) ^
                galois_multiplication(cpy[1], 9) ^
                galois_multiplication(cpy[0], 13) ^
                galois_multiplication(cpy[3], 11);
    column[3] = galois_multiplication(cpy[3], 14) ^
                galois_multiplication(cpy[2], 9) ^
                galois_multiplication(cpy[1], 13) ^
                galois_multiplication(cpy[0], 11);
}

void aes_invRound(unsigned char *state, unsigned char *roundKey)
{
    invShiftRows(state);
    invSubBytes(state);
    addRoundKey(state, roundKey);
    invMixColumns(state);
}

void aes_invMain(unsigned char *state, unsigned char *expandedKey, int nbrRounds)
{
    int i = 0;

    unsigned char roundKey[16];

    createRoundKey(expandedKey + 16 * nbrRounds, roundKey);
    addRoundKey(state, roundKey);

    for (i = nbrRounds - 1; i > 0; i--)
    {
        createRoundKey(expandedKey + 16 * i, roundKey);
        aes_invRound(state, roundKey);
    }

    createRoundKey(expandedKey, roundKey);
    invShiftRows(state);
    invSubBytes(state);
    addRoundKey(state, roundKey);
}

char aes_decrypt(unsigned char *input,
                 unsigned char *output,
                 unsigned char *key,
                 int size)
{
    // the expanded keySize
    int expandedKeySize;

    // the number of rounds
    int nbrRounds;

    // the expanded key
    unsigned char *expandedKey;

    // the 128 bit block to decode
    unsigned char block[16];

    int i, j;

    // set the number of rounds
    switch (size)
    {
    case 16:
        nbrRounds = 10;
        break;
    case 24:
        nbrRounds = 12;
        break;
    case 32:
        nbrRounds = 14;
        break;
    default:
        return ERROR_AES_UNKNOWN_KEYSIZE;
        break;
    }

    expandedKeySize = (16 * (nbrRounds + 1));

    expandedKey = (unsigned char *)malloc(expandedKeySize * sizeof(unsigned char));

    if (expandedKey == NULL)
    {
        return ERROR_MEMORY_ALLOCATION_FAILED;
    }
    else
    {
        /*
        Set the block values, for the block:
            a0,0 a0,1 a0,2 a0,3
            a1,0 a1,1 a1,2 a1,3
            a2,0 a2,1 a2,2 a2,3
            a3,0 a3,1 a3,2 a3,3
        the mapping order is a0,0 a1,0 a2,0 a3,0 a0,1 a1,1 ... a2,3 a3,3
        */

        // iterate over the columns
        for (i = 0; i < 4; i++)
        {
            // iterate over the rows
            for (j = 0; j < 4; j++)
                block[(i + (j * 4))] = input[(i * 4) + j];
        }

        // expand the key into an 176, 208, 240 bytes key
        expandKey(expandedKey, key, size, expandedKeySize);

        // decrypt the block using the expandedKey
        aes_invMain(block, expandedKey, nbrRounds);

        // unmap the block again into the output
        for (i = 0; i < 4; i++)
        {
            // iterate over the rows
            for (j = 0; j < 4; j++)
                output[(i * 4) + j] = block[(i + (j * 4))];
        }

        // de-allocate/free memory for expandedKey
        free(expandedKey);
        expandedKey = NULL;
    }

    return SUCCESS;
}