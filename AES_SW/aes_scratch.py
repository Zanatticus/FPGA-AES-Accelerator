import ipdb


s_box = (
            0x63, 0x7C, 0x77, 0x7B, 0xF2, 0x6B, 0x6F, 0xC5, 0x30, 0x01, 0x67, 0x2B, 0xFE, 0xD7, 0xAB, 0x76,
            0xCA, 0x82, 0xC9, 0x7D, 0xFA, 0x59, 0x47, 0xF0, 0xAD, 0xD4, 0xA2, 0xAF, 0x9C, 0xA4, 0x72, 0xC0,
            0xB7, 0xFD, 0x93, 0x26, 0x36, 0x3F, 0xF7, 0xCC, 0x34, 0xA5, 0xE5, 0xF1, 0x71, 0xD8, 0x31, 0x15,
            0x04, 0xC7, 0x23, 0xC3, 0x18, 0x96, 0x05, 0x9A, 0x07, 0x12, 0x80, 0xE2, 0xEB, 0x27, 0xB2, 0x75,
            0x09, 0x83, 0x2C, 0x1A, 0x1B, 0x6E, 0x5A, 0xA0, 0x52, 0x3B, 0xD6, 0xB3, 0x29, 0xE3, 0x2F, 0x84,
            0x53, 0xD1, 0x00, 0xED, 0x20, 0xFC, 0xB1, 0x5B, 0x6A, 0xCB, 0xBE, 0x39, 0x4A, 0x4C, 0x58, 0xCF,
            0xD0, 0xEF, 0xAA, 0xFB, 0x43, 0x4D, 0x33, 0x85, 0x45, 0xF9, 0x02, 0x7F, 0x50, 0x3C, 0x9F, 0xA8,
            0x51, 0xA3, 0x40, 0x8F, 0x92, 0x9D, 0x38, 0xF5, 0xBC, 0xB6, 0xDA, 0x21, 0x10, 0xFF, 0xF3, 0xD2,
            0xCD, 0x0C, 0x13, 0xEC, 0x5F, 0x97, 0x44, 0x17, 0xC4, 0xA7, 0x7E, 0x3D, 0x64, 0x5D, 0x19, 0x73,
            0x60, 0x81, 0x4F, 0xDC, 0x22, 0x2A, 0x90, 0x88, 0x46, 0xEE, 0xB8, 0x14, 0xDE, 0x5E, 0x0B, 0xDB,
            0xE0, 0x32, 0x3A, 0x0A, 0x49, 0x06, 0x24, 0x5C, 0xC2, 0xD3, 0xAC, 0x62, 0x91, 0x95, 0xE4, 0x79,
            0xE7, 0xC8, 0x37, 0x6D, 0x8D, 0xD5, 0x4E, 0xA9, 0x6C, 0x56, 0xF4, 0xEA, 0x65, 0x7A, 0xAE, 0x08,
            0xBA, 0x78, 0x25, 0x2E, 0x1C, 0xA6, 0xB4, 0xC6, 0xE8, 0xDD, 0x74, 0x1F, 0x4B, 0xBD, 0x8B, 0x8A,
            0x70, 0x3E, 0xB5, 0x66, 0x48, 0x03, 0xF6, 0x0E, 0x61, 0x35, 0x57, 0xB9, 0x86, 0xC1, 0x1D, 0x9E,
            0xE1, 0xF8, 0x98, 0x11, 0x69, 0xD9, 0x8E, 0x94, 0x9B, 0x1E, 0x87, 0xE9, 0xCE, 0x55, 0x28, 0xDF,
            0x8C, 0xA1, 0x89, 0x0D, 0xBF, 0xE6, 0x42, 0x68, 0x41, 0x99, 0x2D, 0x0F, 0xB0, 0x54, 0xBB, 0x16
            )

def substitute_bytes(state):
    # Substitute bytes using S-box
    for i in range(4):
        for j in range(4):
            state[i][j] = s_box[state[i][j]]

# write another substituet_bytes function that also specifies the parameter type
def substitute_bytes(state: list[list[int]]) -> None:
    # Substitute bytes using S-box
    for i in range(4):
        for j in range(4):
            state[i][j] = s_box[state[i][j]]

def shift_rows(state):
    # Shift rows in the state matrix
    state[1] = state[1][1:] + state[1][:1]
    state[2] = state[2][2:] + state[2][:2]
    state[3] = state[3][3:] + state[3][:3]


def mix_columns(state):
    # Mix columns using matrix multiplication
    for i in range(4):
        s0 = state[0][i]
        s1 = state[1][i]
        s2 = state[2][i]
        s3 = state[3][i]

        state[0][i] = (2 * s0) ^ (3 * s1) ^ s2 ^ s3
        state[1][i] = s0 ^ (2 * s1) ^ (3 * s2) ^ s3
        state[2][i] = s0 ^ s1 ^ (2 * s2) ^ (3 * s3)
        state[3][i] = (3 * s0) ^ s1 ^ s2 ^ (2 * s3)


def add_round_key(state, round_key):
    # Add round key to the state matrix
    for i in range(4):
        for j in range(4):
            state[i][j] ^= round_key[i][j]

# Generate round keys using the AES Key Schedule. AES requires a separate 128-bit round key for each round plus one more.
def key_expansion(key):
    rounds = [11, 13, 15] # Number of rounds for 128, 192, 256-bit keys, respectively
    # 32-bit word round constants for each round
    Rc = [0x01, 0x02, 0x04, 0x08, 0x10, 
            0x20, 0x40, 0x80, 0x1B, 0x36]
    Rcon = [[Rc[i],0,0,0] for i in range(0, 10)]

    key_size = len(key) # Key size in bytes
    Nk = key_size // 4 # Number of 32-bit words in the key
    Nr = rounds[Nk - 4] # Number of round keys needed
    
    # one-byte left circular shift/rotation 
    RotWord = lambda word: word[1:] + [word[0]]
    
    # application of the AES S-box to each of the four bytes of the word
    SubWord = lambda word: [s_box[b] for b in word]
    
    # lambda function for xoring two lists
    xor = lambda a, b: [a[i] ^ b[i] for i in range(4)]
    
    key_schedule = key.copy()
    ExpandedKeyWordList = []
    for i in range(0, (4*Nr) - 1):
        if i < Nk:
            newWord = key_schedule[i : i + 4]
        elif i % Nk == 0:
            # newWord = ExpandedKeyWordList[i-Nk] ^ SubWord(RotWord(ExpandedKeyWordList[i-1])) ^ Rcon[i//Nk]
            try:
                newWord = xor(xor(ExpandedKeyWordList[i-Nk], SubWord(RotWord(ExpandedKeyWordList[i-1]))), Rcon[(i//Nk) - 1])
            except:
                print('1')
                ipdb.set_trace()
        elif (Nk > 6) and (i % Nk == 4):
            # newWord = ExpandedKeyWordList[i-Nk] ^ SubWord(ExpandedKeyWordList[i-1])
            try:
                newWord = xor(ExpandedKeyWordList[i-Nk], SubWord(ExpandedKeyWordList[i-1]))
            except:
                print('2')
                ipdb.set_trace()
        else:
            # newWord = ExpandedKeyWordList[i-Nk] ^ ExpandedKeyWordList[i-1]
            try:
                newWord = xor(ExpandedKeyWordList[i-Nk], ExpandedKeyWordList[i-1])
            except:
                print('3')

                ipdb.set_trace()
        ExpandedKeyWordList.append(newWord)
    
    ipdb.set_trace()
    return round_keys

def encrypt_block(block, round_keys):
    # Encrypt a single block
    state = [[block[j + 4*i] for j in range(4)] for i in range(4)]
    add_round_key(state, round_keys[0])

    for round_key in round_keys[1:]:
        substitute_bytes(state)
        shift_rows(state)
        mix_columns(state)
        add_round_key(state, round_key)

    substitute_bytes(state)
    shift_rows(state)
    add_round_key(state, round_keys[-1])

    # Convert state matrix to a flat list
    encrypted_block = [state[i][j] for j in range(4) for i in range(4)]
    return encrypted_block


def aes_encrypt(plaintext, key):
    round_keys = key_expansion(key)
    ciphertext = []

    for block_start in range(0, len(plaintext), 16):
        block = plaintext[block_start:block_start+16]
        encrypted_block = encrypt_block(block, round_keys)
        ciphertext.extend(encrypted_block)

    return ciphertext


# Example usage:
plaintext = "This is a test message"
key = "abcdefghijklmnop"  # 16-byte key
plaintext_bytes = [ord(char) for char in plaintext]
key_bytes = [ord(char) for char in key]

# Ensure plaintext length is a multiple of block size (16)
if len(plaintext_bytes) % 16 != 0:
    plaintext_bytes += [0] * (16 - len(plaintext_bytes) % 16)

ciphertext = aes_encrypt(plaintext_bytes, key_bytes)
print("Encrypted ciphertext:", ciphertext)
