import AES
from AES import AES_encrypt
from Crypto.Random import get_random_bytes

# AES key
key = 'kwnfy4ncketndjiltjebbgkechtkvhjk'
print(len(key))
plaintext = "Speed I am speed, faster than fast quicker than quick. LIGHTNING LIGHTNING LIGHTNING"

cyphertext = AES_encrypt(plaintext, key, 256)

print(cyphertext)