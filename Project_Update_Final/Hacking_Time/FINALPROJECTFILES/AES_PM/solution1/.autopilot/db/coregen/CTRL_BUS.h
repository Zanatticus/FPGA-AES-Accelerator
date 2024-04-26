// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/COR)
//        bit 0 - ap_done (Read/COR)
//        bit 1 - ap_ready (Read/COR)
//        others - reserved
// 0x10 : Data signal of enable_in
//        bit 7~0 - enable_in[7:0] (Read/Write)
//        others  - reserved
// 0x14 : reserved
// 0x18 : Data signal of power_reading_out
//        bit 31~0 - power_reading_out[31:0] (Read/Write)
// 0x1c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CTRL_BUS_ADDR_AP_CTRL                0x00
#define CTRL_BUS_ADDR_GIE                    0x04
#define CTRL_BUS_ADDR_IER                    0x08
#define CTRL_BUS_ADDR_ISR                    0x0c
#define CTRL_BUS_ADDR_ENABLE_IN_DATA         0x10
#define CTRL_BUS_BITS_ENABLE_IN_DATA         8
#define CTRL_BUS_ADDR_POWER_READING_OUT_DATA 0x18
#define CTRL_BUS_BITS_POWER_READING_OUT_DATA 32
