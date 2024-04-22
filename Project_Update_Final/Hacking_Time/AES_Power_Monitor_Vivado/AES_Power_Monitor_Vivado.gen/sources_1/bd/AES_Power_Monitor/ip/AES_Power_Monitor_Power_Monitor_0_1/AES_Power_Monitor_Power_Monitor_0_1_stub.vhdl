-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Mon Apr 22 18:29:09 2024
-- Host        : X22-08 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               z:/Users/hiqbal/AES_Power_Monitor_Vivado/AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ip/AES_Power_Monitor_Power_Monitor_0_1/AES_Power_Monitor_Power_Monitor_0_1_stub.vhdl
-- Design      : AES_Power_Monitor_Power_Monitor_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AES_Power_Monitor_Power_Monitor_0_1 is
  Port ( 
    clk : in STD_LOGIC;
    enable : in STD_LOGIC;
    avg_ro_freq : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end AES_Power_Monitor_Power_Monitor_0_1;

architecture stub of AES_Power_Monitor_Power_Monitor_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,enable,avg_ro_freq[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "Power_Monitor,Vivado 2022.1";
begin
end;
