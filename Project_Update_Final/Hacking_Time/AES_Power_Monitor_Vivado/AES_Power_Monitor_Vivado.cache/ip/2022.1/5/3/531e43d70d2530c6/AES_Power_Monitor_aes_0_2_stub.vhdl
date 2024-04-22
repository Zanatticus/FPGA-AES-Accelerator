-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Mon Apr 22 18:11:49 2024
-- Host        : X22-08 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ AES_Power_Monitor_aes_0_2_stub.vhdl
-- Design      : AES_Power_Monitor_aes_0_2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    s_axi_CTRL_BUS_AWADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_CTRL_BUS_AWVALID : in STD_LOGIC;
    s_axi_CTRL_BUS_AWREADY : out STD_LOGIC;
    s_axi_CTRL_BUS_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_BUS_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_BUS_WVALID : in STD_LOGIC;
    s_axi_CTRL_BUS_WREADY : out STD_LOGIC;
    s_axi_CTRL_BUS_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_BUS_BVALID : out STD_LOGIC;
    s_axi_CTRL_BUS_BREADY : in STD_LOGIC;
    s_axi_CTRL_BUS_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_CTRL_BUS_ARVALID : in STD_LOGIC;
    s_axi_CTRL_BUS_ARREADY : out STD_LOGIC;
    s_axi_CTRL_BUS_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_BUS_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_BUS_RVALID : out STD_LOGIC;
    s_axi_CTRL_BUS_RREADY : in STD_LOGIC;
    s_axi_control_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_control_AWVALID : in STD_LOGIC;
    s_axi_control_AWREADY : out STD_LOGIC;
    s_axi_control_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_control_WVALID : in STD_LOGIC;
    s_axi_control_WREADY : out STD_LOGIC;
    s_axi_control_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_BVALID : out STD_LOGIC;
    s_axi_control_BREADY : in STD_LOGIC;
    s_axi_control_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_control_ARVALID : in STD_LOGIC;
    s_axi_control_ARREADY : out STD_LOGIC;
    s_axi_control_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_RVALID : out STD_LOGIC;
    s_axi_control_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    key_and_plaintext_TVALID : in STD_LOGIC;
    key_and_plaintext_TREADY : out STD_LOGIC;
    key_and_plaintext_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    key_and_plaintext_TDEST : in STD_LOGIC_VECTOR ( 0 to 0 );
    key_and_plaintext_TKEEP : in STD_LOGIC_VECTOR ( 0 to 0 );
    key_and_plaintext_TSTRB : in STD_LOGIC_VECTOR ( 0 to 0 );
    key_and_plaintext_TUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    key_and_plaintext_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    key_and_plaintext_TID : in STD_LOGIC_VECTOR ( 0 to 0 );
    ciphertext_and_decryptedtext_TVALID : out STD_LOGIC;
    ciphertext_and_decryptedtext_TREADY : in STD_LOGIC;
    ciphertext_and_decryptedtext_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ciphertext_and_decryptedtext_TDEST : out STD_LOGIC_VECTOR ( 0 to 0 );
    ciphertext_and_decryptedtext_TKEEP : out STD_LOGIC_VECTOR ( 0 to 0 );
    ciphertext_and_decryptedtext_TSTRB : out STD_LOGIC_VECTOR ( 0 to 0 );
    ciphertext_and_decryptedtext_TUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    ciphertext_and_decryptedtext_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    ciphertext_and_decryptedtext_TID : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_CTRL_BUS_AWADDR[5:0],s_axi_CTRL_BUS_AWVALID,s_axi_CTRL_BUS_AWREADY,s_axi_CTRL_BUS_WDATA[31:0],s_axi_CTRL_BUS_WSTRB[3:0],s_axi_CTRL_BUS_WVALID,s_axi_CTRL_BUS_WREADY,s_axi_CTRL_BUS_BRESP[1:0],s_axi_CTRL_BUS_BVALID,s_axi_CTRL_BUS_BREADY,s_axi_CTRL_BUS_ARADDR[5:0],s_axi_CTRL_BUS_ARVALID,s_axi_CTRL_BUS_ARREADY,s_axi_CTRL_BUS_RDATA[31:0],s_axi_CTRL_BUS_RRESP[1:0],s_axi_CTRL_BUS_RVALID,s_axi_CTRL_BUS_RREADY,s_axi_control_AWADDR[4:0],s_axi_control_AWVALID,s_axi_control_AWREADY,s_axi_control_WDATA[31:0],s_axi_control_WSTRB[3:0],s_axi_control_WVALID,s_axi_control_WREADY,s_axi_control_BRESP[1:0],s_axi_control_BVALID,s_axi_control_BREADY,s_axi_control_ARADDR[4:0],s_axi_control_ARVALID,s_axi_control_ARREADY,s_axi_control_RDATA[31:0],s_axi_control_RRESP[1:0],s_axi_control_RVALID,s_axi_control_RREADY,ap_clk,ap_rst_n,key_and_plaintext_TVALID,key_and_plaintext_TREADY,key_and_plaintext_TDATA[7:0],key_and_plaintext_TDEST[0:0],key_and_plaintext_TKEEP[0:0],key_and_plaintext_TSTRB[0:0],key_and_plaintext_TUSER[0:0],key_and_plaintext_TLAST[0:0],key_and_plaintext_TID[0:0],ciphertext_and_decryptedtext_TVALID,ciphertext_and_decryptedtext_TREADY,ciphertext_and_decryptedtext_TDATA[7:0],ciphertext_and_decryptedtext_TDEST[0:0],ciphertext_and_decryptedtext_TKEEP[0:0],ciphertext_and_decryptedtext_TSTRB[0:0],ciphertext_and_decryptedtext_TUSER[0:0],ciphertext_and_decryptedtext_TLAST[0:0],ciphertext_and_decryptedtext_TID[0:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "aes,Vivado 2022.1";
begin
end;
