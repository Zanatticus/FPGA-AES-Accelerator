// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xaes.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XAes_CfgInitialize(XAes *InstancePtr, XAes_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->Ctrl_bus_BaseAddress = ConfigPtr->Ctrl_bus_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XAes_Start(XAes *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAes_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XAES_CTRL_BUS_ADDR_AP_CTRL) & 0x80;
    XAes_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XAES_CTRL_BUS_ADDR_AP_CTRL, Data | 0x01);
}

u32 XAes_IsDone(XAes *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAes_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XAES_CTRL_BUS_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XAes_IsIdle(XAes *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAes_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XAES_CTRL_BUS_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XAes_IsReady(XAes *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAes_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XAES_CTRL_BUS_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XAes_EnableAutoRestart(XAes *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAes_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XAES_CTRL_BUS_ADDR_AP_CTRL, 0x80);
}

void XAes_DisableAutoRestart(XAes *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAes_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XAES_CTRL_BUS_ADDR_AP_CTRL, 0);
}

void XAes_Set_mode(XAes *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAes_WriteReg(InstancePtr->Control_BaseAddress, XAES_CONTROL_ADDR_MODE_DATA, Data);
}

u32 XAes_Get_mode(XAes *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAes_ReadReg(InstancePtr->Control_BaseAddress, XAES_CONTROL_ADDR_MODE_DATA);
    return Data;
}

void XAes_Set_enable_out(XAes *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAes_WriteReg(InstancePtr->Control_BaseAddress, XAES_CONTROL_ADDR_ENABLE_OUT_DATA, Data);
}

u32 XAes_Get_enable_out(XAes *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAes_ReadReg(InstancePtr->Control_BaseAddress, XAES_CONTROL_ADDR_ENABLE_OUT_DATA);
    return Data;
}

void XAes_Set_power_reading_in(XAes *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAes_WriteReg(InstancePtr->Control_BaseAddress, XAES_CONTROL_ADDR_POWER_READING_IN_DATA, Data);
}

u32 XAes_Get_power_reading_in(XAes *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAes_ReadReg(InstancePtr->Control_BaseAddress, XAES_CONTROL_ADDR_POWER_READING_IN_DATA);
    return Data;
}

void XAes_Set_enable_in(XAes *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAes_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XAES_CTRL_BUS_ADDR_ENABLE_IN_DATA, Data);
}

u32 XAes_Get_enable_in(XAes *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAes_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XAES_CTRL_BUS_ADDR_ENABLE_IN_DATA);
    return Data;
}

void XAes_Set_power_reading_out(XAes *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAes_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XAES_CTRL_BUS_ADDR_POWER_READING_OUT_DATA, Data);
}

u32 XAes_Get_power_reading_out(XAes *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAes_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XAES_CTRL_BUS_ADDR_POWER_READING_OUT_DATA);
    return Data;
}

void XAes_InterruptGlobalEnable(XAes *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAes_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XAES_CTRL_BUS_ADDR_GIE, 1);
}

void XAes_InterruptGlobalDisable(XAes *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAes_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XAES_CTRL_BUS_ADDR_GIE, 0);
}

void XAes_InterruptEnable(XAes *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XAes_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XAES_CTRL_BUS_ADDR_IER);
    XAes_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XAES_CTRL_BUS_ADDR_IER, Register | Mask);
}

void XAes_InterruptDisable(XAes *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XAes_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XAES_CTRL_BUS_ADDR_IER);
    XAes_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XAES_CTRL_BUS_ADDR_IER, Register & (~Mask));
}

void XAes_InterruptClear(XAes *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    //XAes_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XAES_CTRL_BUS_ADDR_ISR, Mask);
}

u32 XAes_InterruptGetEnabled(XAes *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XAes_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XAES_CTRL_BUS_ADDR_IER);
}

u32 XAes_InterruptGetStatus(XAes *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    // Current Interrupt Clear Behavior is Clear on Read(COR).
    return XAes_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XAES_CTRL_BUS_ADDR_ISR);
}

