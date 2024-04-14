MAX_EXPANDED_KEY_SIZE = 240

sbox = [
    0x63, 0x7c, 0x77, 0x7b, 0xf2, 0x6b, 0x6f, 0xc5, 0x30, 0x01, 0x67, 0x2b, 0xfe, 0xd7, 0xab, 0x76,
    0xca, 0x82, 0xc9, 0x7d, 0xfa, 0x59, 0x47, 0xf0, 0xad, 0xd4, 0xa2, 0xaf, 0x9c, 0xa4, 0x72, 0xc0,
    0xb7, 0xfd, 0x93, 0x26, 0x36, 0x3f, 0xf7, 0xcc, 0x34, 0xa5, 0xe5, 0xf1, 0x71, 0xd8, 0x31, 0x15,
    0x04, 0xc7, 0x23, 0xc3, 0x18, 0x96, 0x05, 0x9a, 0x07, 0x12, 0x80, 0xe2, 0xeb, 0x27, 0xb2, 0x75,
    0x09, 0x83, 0x2c, 0x1a, 0x1b, 0x6e, 0x5a, 0xa0, 0x52, 0x3b, 0xd6, 0xb3, 0x29, 0xe3, 0x2f, 0x84,
    0x53, 0xd1, 0x00, 0xed, 0x20, 0xfc, 0xb1, 0x5b, 0x6a, 0xcb, 0xbe, 0x39, 0x4a, 0x4c, 0x58, 0xcf,
    0xd0, 0xef, 0xaa, 0xfb, 0x43, 0x4d, 0x33, 0x85, 0x45, 0xf9, 0x02, 0x7f, 0x50, 0x3c, 0x9f, 0xa8,
    0x51, 0xa3, 0x40, 0x8f, 0x92, 0x9d, 0x38, 0xf5, 0xbc, 0xb6, 0xda, 0x21, 0x10, 0xff, 0xf3, 0xd2,
    0xcd, 0x0c, 0x13, 0xec, 0x5f, 0x97, 0x44, 0x17, 0xc4, 0xa7, 0x7e, 0x3d, 0x64, 0x5d, 0x19, 0x73,
    0x60, 0x81, 0x4f, 0xdc, 0x22, 0x2a, 0x90, 0x88, 0x46, 0xee, 0xb8, 0x14, 0xde, 0x5e, 0x0b, 0xdb,
    0xe0, 0x32, 0x3a, 0x0a, 0x49, 0x06, 0x24, 0x5c, 0xc2, 0xd3, 0xac, 0x62, 0x91, 0x95, 0xe4, 0x79,
    0xe7, 0xc8, 0x37, 0x6d, 0x8d, 0xd5, 0x4e, 0xa9, 0x6c, 0x56, 0xf4, 0xea, 0x65, 0x7a, 0xae, 0x08,
    0xba, 0x78, 0x25, 0x2e, 0x1c, 0xa6, 0xb4, 0xc6, 0xe8, 0xdd, 0x74, 0x1f, 0x4b, 0xbd, 0x8b, 0x8a,
    0x70, 0x3e, 0xb5, 0x66, 0x48, 0x03, 0xf6, 0x0e, 0x61, 0x35, 0x57, 0xb9, 0x86, 0xc1, 0x1d, 0x9e,
    0xe1, 0xf8, 0x98, 0x11, 0x69, 0xd9, 0x8e, 0x94, 0x9b, 0x1e, 0x87, 0xe9, 0xce, 0x55, 0x28, 0xdf,
    0x8c, 0xa1, 0x89, 0x0d, 0xbf, 0xe6, 0x42, 0x68, 0x41, 0x99, 0x2d, 0x0f, 0xb0, 0x54, 0xbb, 0x16]

rsbox = [0x52, 0x09, 0x6a, 0xd5, 0x30, 0x36, 0xa5, 0x38, 0xbf, 0x40, 0xa3, 0x9e, 0x81, 0xf3, 0xd7, 0xfb, 0x7c, 0xe3, 0x39, 0x82, 0x9b, 0x2f, 0xff, 0x87, 0x34, 0x8e, 0x43, 0x44, 0xc4, 0xde, 0xe9, 0xcb, 0x54, 0x7b, 0x94, 0x32, 0xa6, 0xc2, 0x23, 0x3d, 0xee, 0x4c, 0x95, 0x0b, 0x42, 0xfa, 0xc3, 0x4e, 0x08, 0x2e, 0xa1, 0x66, 0x28, 0xd9, 0x24, 0xb2, 0x76, 0x5b, 0xa2, 0x49, 0x6d, 0x8b, 0xd1, 0x25, 0x72, 0xf8, 0xf6, 0x64, 0x86, 0x68, 0x98, 0x16, 0xd4, 0xa4, 0x5c, 0xcc, 0x5d, 0x65, 0xb6, 0x92, 0x6c, 0x70, 0x48, 0x50, 0xfd, 0xed, 0xb9, 0xda, 0x5e, 0x15, 0x46, 0x57, 0xa7, 0x8d, 0x9d, 0x84, 0x90, 0xd8, 0xab, 0x00, 0x8c, 0xbc, 0xd3, 0x0a, 0xf7, 0xe4, 0x58, 0x05, 0xb8, 0xb3, 0x45, 0x06, 0xd0, 0x2c, 0x1e, 0x8f, 0xca, 0x3f, 0x0f, 0x02, 0xc1, 0xaf, 0xbd, 0x03, 0x01, 0x13, 0x8a, 0x6b, 0x3a, 0x91, 0x11, 0x41, 0x4f, 0x67, 0xdc, 0xea, 0x97, 0xf2, 0xcf, 0xce, 0xf0, 0xb4, 0xe6, 0x73, 0x96, 0xac, 0x74, 0x22, 0xe7, 0xad, 0x35, 0x85, 0xe2, 0xf9, 0x37, 0xe8, 0x1c, 0x75, 0xdf, 0x6e, 0x47, 0xf1, 0x1a, 0x71, 0x1d, 0x29, 0xc5, 0x89, 0x6f, 0xb7, 0x62, 0x0e, 0xaa, 0x18, 0xbe, 0x1b, 0xfc, 0x56, 0x3e, 0x4b, 0xc6, 0xd2, 0x79, 0x20, 0x9a, 0xdb, 0xc0, 0xfe, 0x78, 0xcd, 0x5a, 0xf4, 0x1f, 0xdd, 0xa8, 0x33, 0x88, 0x07, 0xc7, 0x31, 0xb1, 0x12, 0x10, 0x59, 0x27, 0x80, 0xec, 0x5f, 0x60, 0x51, 0x7f, 0xa9, 0x19, 0xb5, 0x4a, 0x0d, 0x2d, 0xe5, 0x7a, 0x9f, 0x93, 0xc9, 0x9c, 0xef, 0xa0, 0xe0, 0x3b, 0x4d, 0xae, 0x2a, 0xf5, 0xb0, 0xc8, 0xeb, 0xbb, 0x3c, 0x83, 0x53, 0x99, 0x61, 0x17, 0x2b, 0x04, 0x7e, 0xba, 0x77, 0xd6, 0x26, 0xe1, 0x69, 0x14, 0x63, 0x55, 0x21, 0x0c, 0x7d]

Rcon = [
    0x8d, 0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80, 0x1b, 0x36, 0x6c, 0xd8,
    0xab, 0x4d, 0x9a, 0x2f, 0x5e, 0xbc, 0x63, 0xc6, 0x97, 0x35, 0x6a, 0xd4, 0xb3,
    0x7d, 0xfa, 0xef, 0xc5, 0x91, 0x39, 0x72, 0xe4, 0xd3, 0xbd, 0x61, 0xc2, 0x9f,
    0x25, 0x4a, 0x94, 0x33, 0x66, 0xcc, 0x83, 0x1d, 0x3a, 0x74, 0xe8, 0xcb, 0x8d,
    0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80, 0x1b, 0x36, 0x6c, 0xd8, 0xab,
    0x4d, 0x9a, 0x2f, 0x5e, 0xbc, 0x63, 0xc6, 0x97, 0x35, 0x6a, 0xd4, 0xb3, 0x7d,
    0xfa, 0xef, 0xc5, 0x91, 0x39, 0x72, 0xe4, 0xd3, 0xbd, 0x61, 0xc2, 0x9f, 0x25,
    0x4a, 0x94, 0x33, 0x66, 0xcc, 0x83, 0x1d, 0x3a, 0x74, 0xe8, 0xcb, 0x8d, 0x01,
    0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80, 0x1b, 0x36, 0x6c, 0xd8, 0xab, 0x4d,
    0x9a, 0x2f, 0x5e, 0xbc, 0x63, 0xc6, 0x97, 0x35, 0x6a, 0xd4, 0xb3, 0x7d, 0xfa,
    0xef, 0xc5, 0x91, 0x39, 0x72, 0xe4, 0xd3, 0xbd, 0x61, 0xc2, 0x9f, 0x25, 0x4a,
    0x94, 0x33, 0x66, 0xcc, 0x83, 0x1d, 0x3a, 0x74, 0xe8, 0xcb, 0x8d, 0x01, 0x02,
    0x04, 0x08, 0x10, 0x20, 0x40, 0x80, 0x1b, 0x36, 0x6c, 0xd8, 0xab, 0x4d, 0x9a,
    0x2f, 0x5e, 0xbc, 0x63, 0xc6, 0x97, 0x35, 0x6a, 0xd4, 0xb3, 0x7d, 0xfa, 0xef,
    0xc5, 0x91, 0x39, 0x72, 0xe4, 0xd3, 0xbd, 0x61, 0xc2, 0x9f, 0x25, 0x4a, 0x94,
    0x33, 0x66, 0xcc, 0x83, 0x1d, 0x3a, 0x74, 0xe8, 0xcb, 0x8d, 0x01, 0x02, 0x04,
    0x08, 0x10, 0x20, 0x40, 0x80, 0x1b, 0x36, 0x6c, 0xd8, 0xab, 0x4d, 0x9a, 0x2f,
    0x5e, 0xbc, 0x63, 0xc6, 0x97, 0x35, 0x6a, 0xd4, 0xb3, 0x7d, 0xfa, 0xef, 0xc5,
    0x91, 0x39, 0x72, 0xe4, 0xd3, 0xbd, 0x61, 0xc2, 0x9f, 0x25, 0x4a, 0x94, 0x33,
    0x66, 0xcc, 0x83, 0x1d, 0x3a, 0x74, 0xe8, 0xcb]

def rotate(word):
    """
    Rotates a list of 4 bytes (characters) to the left by one position.
    Example: rotate([0x1a, 0x2b, 0x3c, 0x4d]) returns [0x2b, 0x3c, 0x4d, 0x1a]
    """
    c = word[0]
    for i in range(3):
        word[i] = word[i + 1]
    word[3] = c
    
def core(word, iteration):
    """
    Performs a core operation for Rijndael's key schedule.

    Args:
    word: A list of four bytes (as integers), representing a 32-bit word.
    iteration: An integer representing the current iteration number.

    The function:
    - Rotates the 32-bit word 8 bits to the left.
    - Applies S-Box substitution on all 4 parts of the 32-bit word.
    - Performs an XOR operation with the output of the rcon operation on the first part of the word.
    """
    # Rotate the word
    rotate(word)

    # Apply S-Box substitution
    for i in range(4):
        word[i] = sbox[word[i]]

    # XOR with Rcon value
    word[0] = word[0] ^ Rcon[iteration]
    
def expand_key(expanded_key, key, size, expanded_key_size):
    """
    Expands a 128, 192, or 256-bit key into an 176, 208, or 240 bytes key.

    Args:
    key: A list of bytes (integers) representing the initial key.
    size: The size of the initial key in bytes (16, 24, or 32).

    Returns:
    A list of bytes representing the expanded key.
    """
    current_size = 0
    rcon_iteration = 1
    # Temporary storage
    t = [None] * 4
    
    # Initialize the expanded key with the initial key
    for i in range(size):
        expanded_key[i] = key[i]
    current_size += size

    # Key expansion loop
    while current_size < expanded_key_size:
        # Read the last 4 bytes for processing
        for i in range(4):
            t[i] = expanded_key[current_size - 4 + i]

        # Perform transformations every "size" bytes and update the rcon iteration
        if current_size % size == 0:
            core(t, rcon_iteration)
            rcon_iteration += 1

        # Extra S-Box calculation for 256-bit keys
        if size == 32 and ((current_size % size) == 16):
            for i in range(4):
                t[i] = sbox[t[i]]

        # XOR t with a block `size` bytes ago and add to expanded key
        for i in range(4):
            expanded_key[current_size] = expanded_key[current_size - size] ^ t[i]
            current_size += 1
            
def sub_bytes(state):
    """
    Substitutes all values in the 'state' array with values from the S-box.

    Args:
    state: A list of 16 byte values (integers) which represents the state to be substituted.

    The function updates the 'state' in-place, substituting each byte with its corresponding S-box value.
    """
    for i in range(16):
        state[i] = sbox[state[i]]
        
def shift_row(row, nbr):
    """
    Shifts the elements of 'row' to the left by 'nbr' positions.

    Args:
    row: A list representing the row to be shifted, containing 4 byte values.
    nbr: The number of positions to shift the row to the left.
    """
    return row[nbr:] + row[:nbr]  # Slicing to rotate the list to the left.

def shift_rows(state):
    """
    Applies the row shifting transformation to the state matrix in AES.

    Args:
    state: A list of 16 byte values representing the state in AES.
           This list is treated as a 4x4 matrix.
    """
    new_state = []
    for i in range(4):  # There are four rows in the state.
        row = state[i*4:(i+1)*4]  # Extract each row from the state.
        shifted_row = shift_row(row, i)  # Shift the row to the left by its index.
        new_state.extend(shifted_row)  # Append the shifted row back to the new state.
    state[:] = new_state  # Update the state with the new state.
    
def add_round_key(state, round_key):
    """
    Performs the AddRoundKey operation for AES encryption.

    Args:
    state: A list of 16 byte values (integers) representing the current state of AES.
    round_key: A list of 16 byte values (integers) representing the round key.

    The function modifies the 'state' in-place by XORing each element with the corresponding element from 'round_key'.
    """
    for i in range(16):
        state[i] = state[i] ^ round_key[i]
     
def galois_multiplication(a, b):
    """
    Performs Galois Field multiplication for two bytes a and b under GF(2^8) with the irreducible polynomial x^8 + x^4 + x^3 + x + 1 (0x1b).

    Args:
    a: An unsigned byte (integer between 0 and 255) representing the first multiplicand.
    b: An unsigned byte (integer between 0 and 255) representing the second multiplicand.

    Returns:
    p: The product of a and b in GF(2^8).
    """
    p = 0
    for counter in range(8):  # There are 8 bits to process
        if (b & 1) == 1:
            p ^= a  # Add a to p if the lowest bit of b is set
        hi_bit_set = (a & 0x80)  # Check the high bit of a
        a = a << 1  # Left shift a by 1
        if hi_bit_set == 0x80:
            a = a ^ 0x1b  # If high bit was set, perform modulo operation with the irreducible polynomial
        b = b >> 1  # Right shift b by 1
    return p

def mix_column(column):
    """
    Mixes one column of the state using AES's mixColumns step.
    """
    # Placeholder implementation, actual Galois multiplication needs to be defined.
    cpy = [None] * 4  # Make a copy to prevent modification during calculation
    for i in range(4):
        cpy[i] = 0xFF & (column[i])
        
    column[0] = 0xFF & (galois_multiplication(cpy[0], 2) ^ galois_multiplication(cpy[3], 1) ^ galois_multiplication(cpy[2], 1) ^ galois_multiplication(cpy[1], 3))
    column[1] = 0xFF & (galois_multiplication(cpy[1], 2) ^ galois_multiplication(cpy[0], 1) ^ galois_multiplication(cpy[3], 1) ^ galois_multiplication(cpy[2], 3))
    column[2] = 0xFF & (galois_multiplication(cpy[2], 2) ^ galois_multiplication(cpy[1], 1) ^ galois_multiplication(cpy[0], 1) ^ galois_multiplication(cpy[3], 3))
    column[3] = 0xFF & (galois_multiplication(cpy[3], 2) ^ galois_multiplication(cpy[2], 1) ^ galois_multiplication(cpy[1], 1) ^ galois_multiplication(cpy[0], 3))
      
def mix_columns(state):
    """
    Applies the mixColumns transformation to the state matrix in AES.

    Args:
    state: A list of 16 byte values representing the AES state, treated as a 4x4 matrix.

    This function modifies the 'state' in-place by applying mixColumn to each column.
    """
    column = [None] * 4  # Placeholder for the column values
    for i in range(4):  # Iterate over each column
        for j in range(4):
            column[j] = state[(j * 4) + i]
            
        mix_column(column)  # Apply mixColumn transformation
        
        for j in range(4):  # Write the transformed column back to the state
            state[(j * 4) + i] = column[j]
            
def aes_round(state, round_key):
    """
    Performs one round of the AES encryption process on the state.

    Args:
    state: A list of 16 byte values (integers) representing the AES state.
    round_key: A list of 16 byte values (integers) representing the AES round key for this round.

    This function sequentially applies subBytes, shiftRows, mixColumns, and addRoundKey transformations to the state.
    """
    sub_bytes(state)  # Substitute bytes based on S-box
    shift_rows(state)  # Shift the rows of the state matrix
    mix_columns(state)  # Mix the columns of the state matrix
    add_round_key(state, round_key)  # Add the round key to the state
    
def create_round_key(expanded_key, round_key):
    """
    Copies and transposes a 4x4 block from the expanded key to the round key.

    Args:
    expanded_key: A list of bytes (integers) representing the expanded AES key.
    round_key: A list of bytes (integers) where the round key will be stored.
    """
    for i in range(4):  # Iterate over the columns
        for j in range(4):  # Iterate over the rows
            round_key[i + (j * 4)] = expanded_key[(i * 4) + j]
            
def aes_main(state, expanded_key, nbr_rounds):
    """
    The main AES encryption function.

    Args:
    state: A list of 16 byte values (integers) representing the AES state.
    expanded_key: A list of byte values representing the expanded key for all rounds.
    nbr_rounds: The number of rounds in the AES encryption process.
    """
    round_key = [None] * 16  # Placeholder for the current round key
    
    # Initial round key addition
    create_round_key(expanded_key, round_key)
    add_round_key(state, round_key)

    # Main rounds
    for i in range(1, nbr_rounds):
        create_round_key(expanded_key[16 * i: 16 * (i + 1)], round_key)
        aes_round(state, round_key)

    # Final round (no mixColumns)
    create_round_key(expanded_key[16 * nbr_rounds: 16 * (nbr_rounds + 1)], round_key)
    sub_bytes(state)
    shift_rows(state)
    add_round_key(state, round_key)
    
def aes_encrypt(input, output, key, size):
    if size == 16:
        nbr_rounds = 10
    elif size == 24:
        nbr_rounds = 12
    elif size == 32:
        nbr_rounds = 14
    else:
        raise ValueError("Unsupported key size")

    expanded_key_size = 16 * (nbr_rounds + 1)
    expanded_key = [None] * expanded_key_size  # Initialize expanded key array

    # The 128 bit block to encode
    block = [None] * 16

    # Set the block values from input, assuming input is column-major order
    for i in range(4):  # columns
        for j in range(4):  # rows
            block[i + (j * 4)] = input[(i * 4) + j]

    # Expand the key
    expand_key(expanded_key, key, size, expanded_key_size)

    # Encrypt the block using the expanded key
    aes_main(block, expanded_key, nbr_rounds)
    
    # Prepare output (convert block back to the appropriate order)
    for i in range(4):  # columns
        for j in range(4):  # rows
            output[(i * 4) + j] = block[i + (j * 4)]
            
def inv_sub_bytes(state):
    """
    Applies the inverse S-Box substitution to each byte in the state.

    Args:
    state: A list of 16 byte values (integers) representing the state of AES.

    This function modifies the 'state' in-place, substituting each byte with its corresponding inverse S-box value.
    """
    for i in range(16):
        state[i] = rsbox[state[i]]

def inv_shift_rows(state):
    """
    Applies the inverse shift rows operation to the AES state during decryption.

    Args:
    state: A list of 16 byte values (integers) representing the AES state.

    This function modifies the 'state' in-place, shifting rows to the right.
    """
    for i in range(4):  # There are 4 rows in the state
        # Extract each row from the state
        row_start = i * 4
        row = state[row_start:row_start + 4]
        # Perform the inverse shift operation
        state[row_start:row_start + 4] = inv_shift_row(row, i)

def inv_shift_row(row, nbr):
    """
    Performs a right circular shift on a row by 'nbr' positions.

    Args:
    row: A list of 4 bytes representing one row of the AES state.
    nbr: The number of positions to shift the row to the right.

    Returns:
    A list representing the shifted row.
    """
    return row[-nbr:] + row[:-nbr]  # Perform the shift using slicing

def inv_mix_columns(state):
    """
    Applies the inverse mix columns operation to the AES state during decryption.

    Args:
    state: A list of 16 byte values (integers) representing the AES state.

    This function modifies the 'state' in-place, transforming each column by the inverse mix columns transformation.
    """
    column = [None] * 4  # Placeholder for the column values
    for i in range(4):  # Iterate over the 4 columns
        for j in range(4):
            column[j] = state[(j * 4) + i]  # Extract the column from the state
            
        inv_mix_column(column)  # Apply the inverse mix column transformation
        
        for j in range(4):  # Place the transformed column back into the state
            state[(j * 4) + i] = column[j]

def inv_mix_column(column):
    """
    Applies the inverse mix column operation to a single column.

    Args:
    column: A list of 4 byte values (integers) from one column of the AES state.

    Returns:
    A list representing the transformed column after applying the inverse mix column transformation.
    """
    cpy = [None] * 4  # Make a copy to prevent modification during calculation
    for i in range(4):
        cpy[i] = 0xFF & (column[i])
    
    column[0] = 0xFF & (galois_multiplication(cpy[0], 14) ^ galois_multiplication(cpy[3], 9) ^ galois_multiplication(cpy[2], 13) ^ galois_multiplication(cpy[1], 11))
    column[1] = 0xFF & (galois_multiplication(cpy[1], 14) ^ galois_multiplication(cpy[0], 9) ^ galois_multiplication(cpy[3], 13) ^ galois_multiplication(cpy[2], 11))
    column[2] = 0xFF & (galois_multiplication(cpy[2], 14) ^ galois_multiplication(cpy[1], 9) ^ galois_multiplication(cpy[0], 13) ^ galois_multiplication(cpy[3], 11))
    column[3] = 0xFF & (galois_multiplication(cpy[3], 14) ^ galois_multiplication(cpy[2], 9) ^ galois_multiplication(cpy[1], 13) ^ galois_multiplication(cpy[0], 11))

def aes_inv_round(state, round_key):
    """
    Performs one round of the AES decryption process on the state.

    Args:
    state: A list of 16 byte values (integers) representing the AES state.
    round_key: A list of 16 byte values (integers) representing the AES round key for this round.

    This function sequentially applies invShiftRows, invSubBytes, addRoundKey,
    and invMixColumns transformations to the state.
    """
    inv_shift_rows(state)  # Inverse shift the rows of the state matrix
    inv_sub_bytes(state)  # Apply inverse S-box substitution to each byte of the state
    add_round_key(state, round_key)  # Add the round key to the state
    inv_mix_columns(state)  # Apply inverse mix columns transformation

def aes_inv_main(state, expanded_key, nbr_rounds):
    """
    The main AES decryption function.

    Args:
    state: A list of 16 byte values (integers) representing the AES state.
    expanded_key: A list of byte values representing the expanded key for all rounds.
    nbr_rounds: The number of rounds in the AES decryption process.
    """
    round_key = [None] * 16  # Placeholder for the current round key

    # Initial round key addition
    create_round_key(expanded_key[16 * nbr_rounds: 16 * (nbr_rounds + 1)], round_key)
    add_round_key(state, round_key)

    # Main rounds
    for i in range(nbr_rounds - 1, 0, -1):
        create_round_key(expanded_key[16 * i: 16 * (i + 1)], round_key)
        aes_inv_round(state, round_key)

    # Final round (no invMixColumns)
    create_round_key(expanded_key[0:16], round_key)
    inv_shift_rows(state)
    inv_sub_bytes(state)
    add_round_key(state, round_key)

def aes_decrypt(input, output, key, size):
    """
    Decrypts a 128-bit input block using the AES decryption standard.

    Args:
    input: A list of 16 byte values (integers) that represents the ciphertext to be decrypted.
    key: A list of byte values that represents the key to be used for decryption.

    Returns:
    output: A list of 16 byte values (integers) that represents the plaintext.

    Raises:
    ValueError: If the key size is not supported.
    """
    if size == 16:
        nbr_rounds = 10
    elif size == 24:
        nbr_rounds = 12
    elif size == 32:
        nbr_rounds = 14
    else:
        raise ValueError("Unsupported key size")

    expanded_key_size = 16 * (nbr_rounds + 1)
    expanded_key = [None] * expanded_key_size

    # Convert input to block for decryption
    block = [None] * 16
    for i in range(4):  # columns
        for j in range(4):  # rows
            block[i + (j * 4)] = input[(i * 4) + j]

    # Expand the key
    expand_key(expanded_key, key, size, expanded_key_size)

    # Decrypt the block using the expanded key
    aes_inv_main(block, expanded_key, nbr_rounds)

    # Map the decrypted block back to the output
    for i in range(4):  # columns
        for j in range(4):  # rows
            output[(i * 4) + j] = block[i + (j * 4)]
