# Python AES (128, 192, 256) Encryption Implementation

This folder contains the Python source code implementation for the AES encryption and decryption algorithm originally written in C (see `FPGA_AES_Accelerator/Project_Update_Final/AES_C`)

The source code is split into `aes.py` which contains all AES methods, and `main.py` which uses `aes.py` to encrypt preconfigured plaintext, decrypt the ciphertext back into the original string, and times the entire AES computation.

For timing results of the raw Python software implementation on the PYNQ-Z2 board, see the three Jupyter Notebook files for AES-128, AES-192, and AES-256 encryption/decryption.
