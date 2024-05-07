// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xaes.h"

extern XAes_Config XAes_ConfigTable[];

XAes_Config *XAes_LookupConfig(u16 DeviceId) {
	XAes_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XAES_NUM_INSTANCES; Index++) {
		if (XAes_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XAes_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XAes_Initialize(XAes *InstancePtr, u16 DeviceId) {
	XAes_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XAes_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XAes_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

