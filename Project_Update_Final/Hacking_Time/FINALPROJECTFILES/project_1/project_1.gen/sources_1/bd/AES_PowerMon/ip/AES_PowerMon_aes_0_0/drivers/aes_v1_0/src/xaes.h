// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XAES_H
#define XAES_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xaes_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Control_BaseAddress;
    u64 Ctrl_bus_BaseAddress;
} XAes_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u64 Ctrl_bus_BaseAddress;
    u32 IsReady;
} XAes;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XAes_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XAes_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XAes_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XAes_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XAes_Initialize(XAes *InstancePtr, u16 DeviceId);
XAes_Config* XAes_LookupConfig(u16 DeviceId);
int XAes_CfgInitialize(XAes *InstancePtr, XAes_Config *ConfigPtr);
#else
int XAes_Initialize(XAes *InstancePtr, const char* InstanceName);
int XAes_Release(XAes *InstancePtr);
#endif

void XAes_Start(XAes *InstancePtr);
u32 XAes_IsDone(XAes *InstancePtr);
u32 XAes_IsIdle(XAes *InstancePtr);
u32 XAes_IsReady(XAes *InstancePtr);
void XAes_EnableAutoRestart(XAes *InstancePtr);
void XAes_DisableAutoRestart(XAes *InstancePtr);

void XAes_Set_mode(XAes *InstancePtr, u32 Data);
u32 XAes_Get_mode(XAes *InstancePtr);
void XAes_Set_enable_out(XAes *InstancePtr, u32 Data);
u32 XAes_Get_enable_out(XAes *InstancePtr);
void XAes_Set_power_reading_in(XAes *InstancePtr, u32 Data);
u32 XAes_Get_power_reading_in(XAes *InstancePtr);
void XAes_Set_enable_in(XAes *InstancePtr, u32 Data);
u32 XAes_Get_enable_in(XAes *InstancePtr);
void XAes_Set_power_reading_out(XAes *InstancePtr, u32 Data);
u32 XAes_Get_power_reading_out(XAes *InstancePtr);

void XAes_InterruptGlobalEnable(XAes *InstancePtr);
void XAes_InterruptGlobalDisable(XAes *InstancePtr);
void XAes_InterruptEnable(XAes *InstancePtr, u32 Mask);
void XAes_InterruptDisable(XAes *InstancePtr, u32 Mask);
void XAes_InterruptClear(XAes *InstancePtr, u32 Mask);
u32 XAes_InterruptGetEnabled(XAes *InstancePtr);
u32 XAes_InterruptGetStatus(XAes *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
