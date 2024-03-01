from AES import AES_encrypt


# AES-256 key
key = 'kwnfy4ncketndjiltjebbgkechtkvhjk'
plaintext = "Speed I am speed, faster than fast quicker than quick. LIGHTNING LIGHTNING LIGHTNING"
cyphertext = AES_encrypt(plaintext, key, 256)
print(f"Cyphertext: {cyphertext}")
