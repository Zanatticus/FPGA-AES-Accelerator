-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Thu Apr 25 13:02:06 2024
-- Host        : WFXA4BB6DBB3E15 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ AES_PowerMon_Power_Monitor_0_0_sim_netlist.vhdl
-- Design      : AES_PowerMon_Power_Monitor_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    enable : in STD_LOGIC;
    avg_ro_freq : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "AES_PowerMon_Power_Monitor_0_0,Power_Monitor,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Power_Monitor,Vivado 2022.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN AES_PowerMon_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
begin
  avg_ro_freq(31) <= \<const0>\;
  avg_ro_freq(30) <= \<const0>\;
  avg_ro_freq(29) <= \<const0>\;
  avg_ro_freq(28) <= \<const0>\;
  avg_ro_freq(27) <= \<const0>\;
  avg_ro_freq(26) <= \<const0>\;
  avg_ro_freq(25) <= \<const0>\;
  avg_ro_freq(24) <= \<const0>\;
  avg_ro_freq(23) <= \<const0>\;
  avg_ro_freq(22) <= \<const0>\;
  avg_ro_freq(21) <= \<const0>\;
  avg_ro_freq(20) <= \<const0>\;
  avg_ro_freq(19) <= \<const0>\;
  avg_ro_freq(18) <= \<const0>\;
  avg_ro_freq(17) <= \<const0>\;
  avg_ro_freq(16) <= \<const0>\;
  avg_ro_freq(15) <= \<const0>\;
  avg_ro_freq(14) <= \<const0>\;
  avg_ro_freq(13) <= \<const0>\;
  avg_ro_freq(12) <= \<const0>\;
  avg_ro_freq(11) <= \<const0>\;
  avg_ro_freq(10) <= \<const0>\;
  avg_ro_freq(9) <= \<const0>\;
  avg_ro_freq(8) <= \<const0>\;
  avg_ro_freq(7) <= \<const0>\;
  avg_ro_freq(6) <= \<const0>\;
  avg_ro_freq(5) <= \<const0>\;
  avg_ro_freq(4) <= \<const0>\;
  avg_ro_freq(3) <= \<const0>\;
  avg_ro_freq(2) <= \<const0>\;
  avg_ro_freq(1) <= \<const0>\;
  avg_ro_freq(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
