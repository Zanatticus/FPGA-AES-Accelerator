// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Thu Apr 25 16:01:35 2024
// Host        : WFXA4BB6DBB3E15 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/iqbal.ha/project_1/project_1.gen/sources_1/bd/AES_PowerMon/ip/AES_PowerMon_Power_Monitor_0_0/AES_PowerMon_Power_Monitor_0_0_stub.v
// Design      : AES_PowerMon_Power_Monitor_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "Power_Monitor,Vivado 2022.1" *)
module AES_PowerMon_Power_Monitor_0_0(clk, enable, avg_ro_freq)
/* synthesis syn_black_box black_box_pad_pin="clk,enable,avg_ro_freq[31:0]" */;
  input clk;
  input enable;
  output [31:0]avg_ro_freq;
endmodule
