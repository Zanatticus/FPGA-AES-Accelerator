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
// 0x10 : Data signal of enable_out
//        bit 7~0 - enable_out[7:0] (Read/Write)
//        others  - reserved
// 0x14 : reserved
// 0x18 : Data signal of power_reading_in
//        bit 31~0 - power_reading_in[31:0] (Read/Write)
// 0x1c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XAES_CONTROL_ADDR_ENABLE_OUT_DATA       0x10
#define XAES_CONTROL_BITS_ENABLE_OUT_DATA       8
#define XAES_CONTROL_ADDR_POWER_READING_IN_DATA 0x18
#define XAES_CONTROL_BITS_POWER_READING_IN_DATA 32

// CTRL_BUS
// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of mode
//        bit 31~0 - mode[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of enable_in
//        bit 7~0 - enable_in[7:0] (Read/Write)
//        others  - reserved
// 0x1c : reserved
// 0x20 : Data signal of power_reading_out
//        bit 31~0 - power_reading_out[31:0] (Read/Write)
// 0x24 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XAES_CTRL_BUS_ADDR_MODE_DATA              0x10
#define XAES_CTRL_BUS_BITS_MODE_DATA              32
#define XAES_CTRL_BUS_ADDR_ENABLE_IN_DATA         0x18
#define XAES_CTRL_BUS_BITS_ENABLE_IN_DATA         8
#define XAES_CTRL_BUS_ADDR_POWER_READING_OUT_DATA 0x20
#define XAES_CTRL_BUS_BITS_POWER_READING_OUT_DATA 32

