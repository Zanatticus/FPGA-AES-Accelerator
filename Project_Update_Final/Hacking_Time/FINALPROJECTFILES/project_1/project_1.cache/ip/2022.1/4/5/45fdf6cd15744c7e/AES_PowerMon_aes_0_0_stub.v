// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Thu Apr 25 13:02:41 2024
// Host        : WFXA4BB6DBB3E15 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ AES_PowerMon_aes_0_0_stub.v
// Design      : AES_PowerMon_aes_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "aes,Vivado 2022.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(s_axi_CTRL_BUS_AWADDR, 
  s_axi_CTRL_BUS_AWVALID, s_axi_CTRL_BUS_AWREADY, s_axi_CTRL_BUS_WDATA, 
  s_axi_CTRL_BUS_WSTRB, s_axi_CTRL_BUS_WVALID, s_axi_CTRL_BUS_WREADY, 
  s_axi_CTRL_BUS_BRESP, s_axi_CTRL_BUS_BVALID, s_axi_CTRL_BUS_BREADY, 
  s_axi_CTRL_BUS_ARADDR, s_axi_CTRL_BUS_ARVALID, s_axi_CTRL_BUS_ARREADY, 
  s_axi_CTRL_BUS_RDATA, s_axi_CTRL_BUS_RRESP, s_axi_CTRL_BUS_RVALID, 
  s_axi_CTRL_BUS_RREADY, s_axi_control_AWADDR, s_axi_control_AWVALID, 
  s_axi_control_AWREADY, s_axi_control_WDATA, s_axi_control_WSTRB, s_axi_control_WVALID, 
  s_axi_control_WREADY, s_axi_control_BRESP, s_axi_control_BVALID, s_axi_control_BREADY, 
  s_axi_control_ARADDR, s_axi_control_ARVALID, s_axi_control_ARREADY, 
  s_axi_control_RDATA, s_axi_control_RRESP, s_axi_control_RVALID, s_axi_control_RREADY, 
  ap_clk, ap_rst_n, interrupt, key_and_plaintext_TVALID, key_and_plaintext_TREADY, 
  key_and_plaintext_TDATA, key_and_plaintext_TDEST, key_and_plaintext_TKEEP, 
  key_and_plaintext_TSTRB, key_and_plaintext_TUSER, key_and_plaintext_TLAST, 
  key_and_plaintext_TID, ciphertext_and_decryptedtext_TVALID, 
  ciphertext_and_decryptedtext_TREADY, ciphertext_and_decryptedtext_TDATA, 
  ciphertext_and_decryptedtext_TDEST, ciphertext_and_decryptedtext_TKEEP, 
  ciphertext_and_decryptedtext_TSTRB, ciphertext_and_decryptedtext_TUSER, 
  ciphertext_and_decryptedtext_TLAST, ciphertext_and_decryptedtext_TID)
/* synthesis syn_black_box black_box_pad_pin="s_axi_CTRL_BUS_AWADDR[4:0],s_axi_CTRL_BUS_AWVALID,s_axi_CTRL_BUS_AWREADY,s_axi_CTRL_BUS_WDATA[31:0],s_axi_CTRL_BUS_WSTRB[3:0],s_axi_CTRL_BUS_WVALID,s_axi_CTRL_BUS_WREADY,s_axi_CTRL_BUS_BRESP[1:0],s_axi_CTRL_BUS_BVALID,s_axi_CTRL_BUS_BREADY,s_axi_CTRL_BUS_ARADDR[4:0],s_axi_CTRL_BUS_ARVALID,s_axi_CTRL_BUS_ARREADY,s_axi_CTRL_BUS_RDATA[31:0],s_axi_CTRL_BUS_RRESP[1:0],s_axi_CTRL_BUS_RVALID,s_axi_CTRL_BUS_RREADY,s_axi_control_AWADDR[5:0],s_axi_control_AWVALID,s_axi_control_AWREADY,s_axi_control_WDATA[31:0],s_axi_control_WSTRB[3:0],s_axi_control_WVALID,s_axi_control_WREADY,s_axi_control_BRESP[1:0],s_axi_control_BVALID,s_axi_control_BREADY,s_axi_control_ARADDR[5:0],s_axi_control_ARVALID,s_axi_control_ARREADY,s_axi_control_RDATA[31:0],s_axi_control_RRESP[1:0],s_axi_control_RVALID,s_axi_control_RREADY,ap_clk,ap_rst_n,interrupt,key_and_plaintext_TVALID,key_and_plaintext_TREADY,key_and_plaintext_TDATA[7:0],key_and_plaintext_TDEST[0:0],key_and_plaintext_TKEEP[0:0],key_and_plaintext_TSTRB[0:0],key_and_plaintext_TUSER[0:0],key_and_plaintext_TLAST[0:0],key_and_plaintext_TID[0:0],ciphertext_and_decryptedtext_TVALID,ciphertext_and_decryptedtext_TREADY,ciphertext_and_decryptedtext_TDATA[7:0],ciphertext_and_decryptedtext_TDEST[0:0],ciphertext_and_decryptedtext_TKEEP[0:0],ciphertext_and_decryptedtext_TSTRB[0:0],ciphertext_and_decryptedtext_TUSER[0:0],ciphertext_and_decryptedtext_TLAST[0:0],ciphertext_and_decryptedtext_TID[0:0]" */;
  input [4:0]s_axi_CTRL_BUS_AWADDR;
  input s_axi_CTRL_BUS_AWVALID;
  output s_axi_CTRL_BUS_AWREADY;
  input [31:0]s_axi_CTRL_BUS_WDATA;
  input [3:0]s_axi_CTRL_BUS_WSTRB;
  input s_axi_CTRL_BUS_WVALID;
  output s_axi_CTRL_BUS_WREADY;
  output [1:0]s_axi_CTRL_BUS_BRESP;
  output s_axi_CTRL_BUS_BVALID;
  input s_axi_CTRL_BUS_BREADY;
  input [4:0]s_axi_CTRL_BUS_ARADDR;
  input s_axi_CTRL_BUS_ARVALID;
  output s_axi_CTRL_BUS_ARREADY;
  output [31:0]s_axi_CTRL_BUS_RDATA;
  output [1:0]s_axi_CTRL_BUS_RRESP;
  output s_axi_CTRL_BUS_RVALID;
  input s_axi_CTRL_BUS_RREADY;
  input [5:0]s_axi_control_AWADDR;
  input s_axi_control_AWVALID;
  output s_axi_control_AWREADY;
  input [31:0]s_axi_control_WDATA;
  input [3:0]s_axi_control_WSTRB;
  input s_axi_control_WVALID;
  output s_axi_control_WREADY;
  output [1:0]s_axi_control_BRESP;
  output s_axi_control_BVALID;
  input s_axi_control_BREADY;
  input [5:0]s_axi_control_ARADDR;
  input s_axi_control_ARVALID;
  output s_axi_control_ARREADY;
  output [31:0]s_axi_control_RDATA;
  output [1:0]s_axi_control_RRESP;
  output s_axi_control_RVALID;
  input s_axi_control_RREADY;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  input key_and_plaintext_TVALID;
  output key_and_plaintext_TREADY;
  input [7:0]key_and_plaintext_TDATA;
  input [0:0]key_and_plaintext_TDEST;
  input [0:0]key_and_plaintext_TKEEP;
  input [0:0]key_and_plaintext_TSTRB;
  input [0:0]key_and_plaintext_TUSER;
  input [0:0]key_and_plaintext_TLAST;
  input [0:0]key_and_plaintext_TID;
  output ciphertext_and_decryptedtext_TVALID;
  input ciphertext_and_decryptedtext_TREADY;
  output [7:0]ciphertext_and_decryptedtext_TDATA;
  output [0:0]ciphertext_and_decryptedtext_TDEST;
  output [0:0]ciphertext_and_decryptedtext_TKEEP;
  output [0:0]ciphertext_and_decryptedtext_TSTRB;
  output [0:0]ciphertext_and_decryptedtext_TUSER;
  output [0:0]ciphertext_and_decryptedtext_TLAST;
  output [0:0]ciphertext_and_decryptedtext_TID;
endmodule
