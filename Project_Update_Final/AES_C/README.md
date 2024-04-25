# AES Encryption in C

The following files within this folder are used to compile a test input that gets encrypted and then decrypted with AES. `make` will automatically compile the code into an executable binary that runs a series of benchmarks against expected output data files (`*.golden.dat`) to validate that the encryption and decryption worked properly. This C implementation works for AES-128, AES-192, and AES-256. To test a different mode, simply change the `int mode` variable within the `main()` function and recompile/rerun.

This binary (`./aes`) has already been created for your convenience (compiled to test for AES-256).

Screenshots of each AES mode running on the PYNQ-Z2 board with timing results are also included (`./aes_c_128.png`, `./aes_c_192.png`, `./aes_c_256.png`)
