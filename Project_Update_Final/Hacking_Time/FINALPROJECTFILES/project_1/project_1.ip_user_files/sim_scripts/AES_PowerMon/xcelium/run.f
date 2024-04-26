-makelib xcelium_lib/xilinx_vip -sv \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xpm -sv \
  "C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/lib_pkg_v1_0_2 \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/lib_fifo_v1_0_16 \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/6c82/hdl/lib_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_srl_fifo_v1_0_2 \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_datamover_v5_1_28 \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/1bb8/hdl/axi_datamover_v5_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_sg_v4_1_15 \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/751a/hdl/axi_sg_v4_1_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_dma_v7_1_27 \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/7b0b/hdl/axi_dma_v7_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/AES_PowerMon/ip/AES_PowerMon_axi_dma_0/sim/AES_PowerMon_axi_dma_0.vhd" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_12 -sv \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/1033/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_14 -sv \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/5765/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/AES_PowerMon/ip/AES_PowerMon_processing_system7_0_0/sim/AES_PowerMon_processing_system7_0_0.v" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/AES_PowerMon/ip/AES_PowerMon_rst_ps7_0_100M_0/sim/AES_PowerMon_rst_ps7_0_100M_0.vhd" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_26 \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_25 \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/5390/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_27 \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/3fa0/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/AES_PowerMon/ip/AES_PowerMon_xbar_0/sim/AES_PowerMon_xbar_0.v" \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/fff7/hdl/verilog/aes_aes_invMain.v" \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/fff7/hdl/verilog/aes_aes_invMain_Pipeline_addRoundKeyLoop.v" \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/fff7/hdl/verilog/aes_aes_invMain_Pipeline_addRoundKeyLoop6.v" \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/fff7/hdl/verilog/aes_aes_invMain_Pipeline_aesInvMainLoop.v" \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/fff7/hdl/verilog/aes_aes_invMain_Pipeline_createRoundKeyLoop1_createRoundKeyLoop2.v" \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/fff7/hdl/verilog/aes_aes_invMain_Pipeline_createRoundKeyLoop1_createRoundKeyLoop24.v" \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/fff7/hdl/verilog/aes_aes_invMain_Pipeline_invShiftRowLoop1.v" \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/fff7/hdl/verilog/aes_aes_invMain_Pipeline_invShiftRowLoop15.v" \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/fff7/hdl/verilog/aes_aes_invMain_roundKey_RAM_AUTO_1R1W.v" \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/fff7/hdl/verilog/aes_aes_invRound.v" \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/fff7/hdl/verilog/aes_aes_invRound_rsbox_ROM_2P_AUTO_1R.v" \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/fff7/hdl/verilog/aes_aes_main.v" \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/fff7/hdl/verilog/aes_aes_main_Pipeline_addRoundKeyLoop.v" \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/fff7/hdl/verilog/aes_aes_main_Pipeline_addRoundKeyLoop3.v" \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/fff7/hdl/verilog/aes_aes_main_Pipeline_aesMainLoop.v" \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/fff7/hdl/verilog/aes_aes_main_Pipeline_createRoundKeyLoop1_createRoundKeyLoop2.v" \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/fff7/hdl/verilog/aes_aes_main_Pipeline_createRoundKeyLoop1_createRoundKeyLoop21.v" \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/fff7/hdl/verilog/aes_aes_main_Pipeline_shiftRowLoop1.v" \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/fff7/hdl/verilog/aes_aes_main_Pipeline_shiftRowLoop12.v" \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/fff7/hdl/verilog/aes_aes_main_roundKey_RAM_AUTO_1R1W.v" \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/fff7/hdl/verilog/aes_aes_Pipeline_1.v" \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/fff7/hdl/verilog/aes_aes_Pipeline_2.v" \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/fff7/hdl/verilog/aes_aes_Pipeline_3.v" \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/fff7/hdl/verilog/aes_aes_Pipeline_aesDecryptLoop1_aesDecryptLoop2.v" \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/fff7/hdl/verilog/aes_aes_Pipeline_aesDecryptLoop3_aesDecryptLoop4.v" \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/fff7/hdl/verilog/aes_aes_Pipeline_aesEncryptLoop1_aesEncryptLoop2.v" \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/fff7/hdl/verilog/aes_aes_Pipeline_aesEncryptLoop3_aesEncryptLoop4.v" \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/fff7/hdl/verilog/aes_aes_Pipeline_cipherkeyLoop.v" \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/fff7/hdl/verilog/aes_aes_Pipeline_ciphertextLoop.v" \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/fff7/hdl/verilog/aes_aes_Pipeline_decryptedTextLoop.v" \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/fff7/hdl/verilog/aes_aes_Pipeline_plaintextLoop.v" \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/fff7/hdl/verilog/aes_aes_round.v" \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/fff7/hdl/verilog/aes_block_RAM_AUTO_1R1W.v" \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/fff7/hdl/verilog/aes_control_s_axi.v" \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/fff7/hdl/verilog/aes_CTRL_BUS_s_axi.v" \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/fff7/hdl/verilog/aes_expandedKey_RAM_AUTO_1R1W.v" \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/fff7/hdl/verilog/aes_expandKey.v" \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/fff7/hdl/verilog/aes_expandKey_Pipeline_expandKeyLoop1.v" \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/fff7/hdl/verilog/aes_expandKey_Pipeline_expandKeyLoop2.v" \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/fff7/hdl/verilog/aes_expandKey_Pipeline_expandKeyLoop2_Rcon_ROM_2P_AUTO_1R.v" \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/fff7/hdl/verilog/aes_expandKey_Pipeline_expandKeyLoop2_sbox_ROM_2P_AUTO_1R.v" \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/fff7/hdl/verilog/aes_flow_control_loop_pipe_sequential_init.v" \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/fff7/hdl/verilog/aes_galois_multiplication.v" \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/fff7/hdl/verilog/aes_hls_deadlock_idx0_monitor.v" \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/fff7/hdl/verilog/aes_key_array128_RAM_1WNR_AUTO_1R1W.v" \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/fff7/hdl/verilog/aes_mux_21_8_1_1.v" \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/fff7/hdl/verilog/aes_plaintext_array_RAM_AUTO_1R1W.v" \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/fff7/hdl/verilog/aes_regslice_both.v" \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/fff7/hdl/verilog/aes_srem_32ns_7ns_6_36_1.v" \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/fff7/hdl/verilog/aes.v" \
  "../../../bd/AES_PowerMon/ip/AES_PowerMon_aes_0_0/sim/AES_PowerMon_aes_0_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/AES_PowerMon/ipshared/f1d1/Power_Monitor/Power_Monitor.srcs/sources_1/new/Power_Monitor.sv" \
  "../../../bd/AES_PowerMon/ip/AES_PowerMon_Power_Monitor_0_0/sim/AES_PowerMon_Power_Monitor_0_0.sv" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_26 \
  "../../../../project_1.gen/sources_1/bd/AES_PowerMon/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/AES_PowerMon/ip/AES_PowerMon_auto_pc_0/sim/AES_PowerMon_auto_pc_0.v" \
  "../../../bd/AES_PowerMon/ip/AES_PowerMon_auto_pc_1/sim/AES_PowerMon_auto_pc_1.v" \
  "../../../bd/AES_PowerMon/ip/AES_PowerMon_auto_pc_2/sim/AES_PowerMon_auto_pc_2.v" \
  "../../../bd/AES_PowerMon/sim/AES_PowerMon.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

