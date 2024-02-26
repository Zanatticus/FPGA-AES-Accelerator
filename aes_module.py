from Crypto.Cipher import AES
from Crypto.Random import get_random_bytes
from Crypto.Util.Padding import pad, unpad
import base64

def encrypt_message(key, message):
    cipher = AES.new(key, AES.MODE_CBC)
    ct_bytes = cipher.encrypt(pad(message.encode(), AES.block_size))
    iv = base64.b64encode(cipher.iv).decode('utf-8')
    ct = base64.b64encode(ct_bytes).decode('utf-8')
    return iv, ct

def decrypt_message(key, iv, ct):
    iv = base64.b64decode(iv)
    ct = base64.b64decode(ct)
    cipher = AES.new(key, AES.MODE_CBC, iv)
    pt = unpad(cipher.decrypt(ct), AES.block_size)
    return pt.decode('utf-8')

if __name__ == "__main__":
    key = get_random_bytes(16)  # 128-bit key
    message = input("Enter the message to encrypt: ")

    iv, ciphertext = encrypt_message(key, message)
    print("Encrypted message:", ciphertext)

    decrypted_message = decrypt_message(key, iv, ciphertext)
    print("Decrypted message:", decrypted_message)
    print("test")