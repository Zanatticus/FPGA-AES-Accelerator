# AES Encryption in C

The following files within this folder are used to compile a test input that gets encrypted and then decrypted with AES. `make` will automatically compile the code into an executable binary that runs a benchmark to validate that the encryption and decryption worked properly. This C implementation works for AES-128, AES-192, and AES-256. To test a different mode, simply change the `int mode` variable within the `main()` function and recompile/rerun.

This binary (`./aes`) has already been created for your convenience (compiled to test for AES-256).
