from aes import aes_encrypt, aes_decrypt

# ONLY CHANGE THIS VARIABLE TO TEST DIFFERENT AES MODES
mode = 256

if mode == 128:
    key = [ord(i) for i in "kkkkeeeeyyyy...."]
    size = 16
elif mode == 192:
    key = [ord(i) for i in "kkkkeeeeyyyy....12345678"]
    size = 24
elif mode == 256:
    key = [ord(i) for i in "kkkkeeeeyyyy....12345678ABCDEFGH"]
    size = 32

plaintext = [ord(i) for i in "abcdef1234567890"]
ciphertext = [None] * 16
decryptedtext = [None] * 16

aes_encrypt(plaintext, ciphertext, key, size)
aes_decrypt(ciphertext, decryptedtext, key, size)

print(f"\nPerforming AES-{mode} encryption and decryption:")
print("\nPlaintext:")
[print(f"{plaintext[i]:02x}", end='\n' if i==15 else ' ') for i in range(16)]
print("\nCiphertext:")
[print(f"{ciphertext[i]:02x}", end='\n' if i==15 else ' ') for i in range(16)]
print("\nDecryptedtext:")
[print(f"{decryptedtext[i]:02x}", end='\n' if i==15 else ' ') for i in range(16)]