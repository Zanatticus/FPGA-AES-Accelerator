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

void XAes_Set_mode(XAes *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAes_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XAES_CTRL_BUS_ADDR_MODE_DATA, Data);
}

u32 XAes_Get_mode(XAes *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAes_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XAES_CTRL_BUS_ADDR_MODE_DATA);
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

