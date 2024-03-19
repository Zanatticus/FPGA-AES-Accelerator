// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// control
// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of plaintext
//        bit 31~0 - plaintext[31:0] (Read/Write)
// 0x14 : Data signal of plaintext
//        bit 31~0 - plaintext[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of ciphertext
//        bit 31~0 - ciphertext[31:0] (Read/Write)
// 0x20 : Data signal of ciphertext
//        bit 31~0 - ciphertext[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of key
//        bit 31~0 - key[31:0] (Read/Write)
// 0x2c : Data signal of key
//        bit 31~0 - key[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of key_size
//        bit 31~0 - key_size[31:0] (Read/Write)
// 0x38 : reserved
// 0x3c : Data signal of decryptedtext
//        bit 31~0 - decryptedtext[31:0] (Read/Write)
// 0x40 : Data signal of decryptedtext
//        bit 31~0 - decryptedtext[63:32] (Read/Write)
// 0x44 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XAES_CONTROL_ADDR_PLAINTEXT_DATA     0x10
#define XAES_CONTROL_BITS_PLAINTEXT_DATA     64
#define XAES_CONTROL_ADDR_CIPHERTEXT_DATA    0x1c
#define XAES_CONTROL_BITS_CIPHERTEXT_DATA    64
#define XAES_CONTROL_ADDR_KEY_DATA           0x28
#define XAES_CONTROL_BITS_KEY_DATA           64
#define XAES_CONTROL_ADDR_KEY_SIZE_DATA      0x34
#define XAES_CONTROL_BITS_KEY_SIZE_DATA      32
#define XAES_CONTROL_ADDR_DECRYPTEDTEXT_DATA 0x3c
#define XAES_CONTROL_BITS_DECRYPTEDTEXT_DATA 64

