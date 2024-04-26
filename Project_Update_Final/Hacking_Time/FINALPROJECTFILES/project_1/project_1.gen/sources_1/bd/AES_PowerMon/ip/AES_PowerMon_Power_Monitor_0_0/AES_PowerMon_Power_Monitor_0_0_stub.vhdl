-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Thu Apr 25 16:01:35 2024
-- Host        : WFXA4BB6DBB3E15 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/iqbal.ha/project_1/project_1.gen/sources_1/bd/AES_PowerMon/ip/AES_PowerMon_Power_Monitor_0_0/AES_PowerMon_Power_Monitor_0_0_stub.vhdl
-- Design      : AES_PowerMon_Power_Monitor_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AES_PowerMon_Power_Monitor_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    enable : in STD_LOGIC;
    avg_ro_freq : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end AES_PowerMon_Power_Monitor_0_0;

architecture stub of AES_PowerMon_Power_Monitor_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,enable,avg_ro_freq[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "Power_Monitor,Vivado 2022.1";
begin
end;
