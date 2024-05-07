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

#define CTRL_BUS_ADDR_MODE_DATA              0x10
#define CTRL_BUS_BITS_MODE_DATA              32
#define CTRL_BUS_ADDR_ENABLE_IN_DATA         0x18
#define CTRL_BUS_BITS_ENABLE_IN_DATA         8
#define CTRL_BUS_ADDR_POWER_READING_OUT_DATA 0x20
#define CTRL_BUS_BITS_POWER_READING_OUT_DATA 32
