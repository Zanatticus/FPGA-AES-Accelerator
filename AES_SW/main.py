import AES
from AES import AES_encrypt
from Crypto.Random import get_random_bytes

# AES key
key = 'c6b286cf16590b5fce05833697a7ac8c1b49cb3186e6d42e629794bbfc795bf1'

plaintext = "Speed I am speed, faster than fast quicker than quick. LIGHTNING LIGHTNING LIGHTNING"

cyphertext = AES_encrypt(plaintext, key, 256)
