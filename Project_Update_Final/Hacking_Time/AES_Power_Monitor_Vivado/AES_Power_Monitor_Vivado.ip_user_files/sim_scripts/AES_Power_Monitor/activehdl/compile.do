vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/lib_pkg_v1_0_2
vlib activehdl/fifo_generator_v13_2_7
vlib activehdl/lib_fifo_v1_0_16
vlib activehdl/lib_srl_fifo_v1_0_2
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/axi_datamover_v5_1_28
vlib activehdl/axi_sg_v4_1_15
vlib activehdl/axi_dma_v7_1_27
vlib activehdl/xil_defaultlib
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_12
vlib activehdl/processing_system7_vip_v1_0_14
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_register_slice_v2_1_26
vlib activehdl/axi_data_fifo_v2_1_25
vlib activehdl/axi_crossbar_v2_1_27

vmap xilinx_vip activehdl/xilinx_vip
vmap lib_pkg_v1_0_2 activehdl/lib_pkg_v1_0_2
vmap fifo_generator_v13_2_7 activehdl/fifo_generator_v13_2_7
vmap lib_fifo_v1_0_16 activehdl/lib_fifo_v1_0_16
vmap lib_srl_fifo_v1_0_2 activehdl/lib_srl_fifo_v1_0_2
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap axi_datamover_v5_1_28 activehdl/axi_datamover_v5_1_28
vmap axi_sg_v4_1_15 activehdl/axi_sg_v4_1_15
vmap axi_dma_v7_1_27 activehdl/axi_dma_v7_1_27
vmap xil_defaultlib activehdl/xil_defaultlib
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_12 activehdl/axi_vip_v1_1_12
vmap processing_system7_vip_v1_0_14 activehdl/processing_system7_vip_v1_0_14
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_26 activehdl/axi_register_slice_v2_1_26
vmap axi_data_fifo_v2_1_25 activehdl/axi_data_fifo_v2_1_25
vmap axi_crossbar_v2_1_27 activehdl/axi_crossbar_v2_1_27

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/ec67/hdl" "+incdir+../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/5765/hdl" "+incdir+../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/b5f3/hdl/verilog" "+incdir+../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ip/AES_Power_Monitor_aes_0_2/drivers/aes_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7 -93 \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/ec67/hdl" "+incdir+../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/5765/hdl" "+incdir+../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/b5f3/hdl/verilog" "+incdir+../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ip/AES_Power_Monitor_aes_0_2/drivers/aes_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_16 -93 \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/6c82/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_28 -93 \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/1bb8/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_15 -93 \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/751a/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_27 -93 \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/7b0b/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/AES_Power_Monitor/ip/AES_Power_Monitor_axi_dma_1/sim/AES_Power_Monitor_axi_dma_1.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/ec67/hdl" "+incdir+../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/5765/hdl" "+incdir+../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/b5f3/hdl/verilog" "+incdir+../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ip/AES_Power_Monitor_aes_0_2/drivers/aes_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_12  -sv2k12 "+incdir+../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/ec67/hdl" "+incdir+../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/5765/hdl" "+incdir+../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/b5f3/hdl/verilog" "+incdir+../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ip/AES_Power_Monitor_aes_0_2/drivers/aes_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/1033/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_14  -sv2k12 "+incdir+../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/ec67/hdl" "+incdir+../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/5765/hdl" "+incdir+../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/b5f3/hdl/verilog" "+incdir+../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ip/AES_Power_Monitor_aes_0_2/drivers/aes_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/5765/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/ec67/hdl" "+incdir+../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/5765/hdl" "+incdir+../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/b5f3/hdl/verilog" "+incdir+../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ip/AES_Power_Monitor_aes_0_2/drivers/aes_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/AES_Power_Monitor/ip/AES_Power_Monitor_processing_system7_0_1/sim/AES_Power_Monitor_processing_system7_0_1.v" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/AES_Power_Monitor/ip/AES_Power_Monitor_rst_ps7_0_100M_0/sim/AES_Power_Monitor_rst_ps7_0_100M_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/ec67/hdl" "+incdir+../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/5765/hdl" "+incdir+../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/b5f3/hdl/verilog" "+incdir+../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ip/AES_Power_Monitor_aes_0_2/drivers/aes_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_26  -v2k5 "+incdir+../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/ec67/hdl" "+incdir+../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/5765/hdl" "+incdir+../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/b5f3/hdl/verilog" "+incdir+../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ip/AES_Power_Monitor_aes_0_2/drivers/aes_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_25  -v2k5 "+incdir+../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/ec67/hdl" "+incdir+../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/5765/hdl" "+incdir+../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/b5f3/hdl/verilog" "+incdir+../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ip/AES_Power_Monitor_aes_0_2/drivers/aes_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/5390/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_27  -v2k5 "+incdir+../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/ec67/hdl" "+incdir+../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/5765/hdl" "+incdir+../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/b5f3/hdl/verilog" "+incdir+../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ip/AES_Power_Monitor_aes_0_2/drivers/aes_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/3fa0/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/ec67/hdl" "+incdir+../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/5765/hdl" "+incdir+../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/b5f3/hdl/verilog" "+incdir+../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ip/AES_Power_Monitor_aes_0_2/drivers/aes_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/AES_Power_Monitor/ip/AES_Power_Monitor_xbar_1/sim/AES_Power_Monitor_xbar_1.v" \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/b5f3/hdl/verilog/aes_aes_invMain.v" \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/b5f3/hdl/verilog/aes_aes_invMain_Pipeline_invShiftRowLoop.v" \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/b5f3/hdl/verilog/aes_aes_invMain_Pipeline_VITIS_LOOP_308_1.v" \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/b5f3/hdl/verilog/aes_aes_invMain_Pipeline_VITIS_LOOP_398_1_VITIS_LOOP_401_2.v" \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/b5f3/hdl/verilog/aes_aes_invMain_Pipeline_VITIS_LOOP_507_1.v" \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/b5f3/hdl/verilog/aes_aes_invRound.v" \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/b5f3/hdl/verilog/aes_aes_invRound_Pipeline_invMixColumnsLoop.v" \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/b5f3/hdl/verilog/aes_aes_invRound_Pipeline_invShiftRowLoop.v" \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/b5f3/hdl/verilog/aes_aes_invRound_Pipeline_VITIS_LOOP_308_1.v" \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/b5f3/hdl/verilog/aes_aes_invRound_Pipeline_VITIS_LOOP_507_1.v" \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/b5f3/hdl/verilog/aes_aes_invRound_Pipeline_VITIS_LOOP_507_1_rsbox_ROM_AUTO_1R.v" \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/b5f3/hdl/verilog/aes_aes_main.v" \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/b5f3/hdl/verilog/aes_aes_main_Pipeline_VITIS_LOOP_276_1.v" \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/b5f3/hdl/verilog/aes_aes_main_Pipeline_VITIS_LOOP_308_1.v" \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/b5f3/hdl/verilog/aes_aes_main_Pipeline_VITIS_LOOP_308_12.v" \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/b5f3/hdl/verilog/aes_aes_main_Pipeline_VITIS_LOOP_398_1_VITIS_LOOP_401_2.v" \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/b5f3/hdl/verilog/aes_aes_main_Pipeline_VITIS_LOOP_398_1_VITIS_LOOP_401_21.v" \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/b5f3/hdl/verilog/aes_aes_main_roundKey_RAM_AUTO_1R1W.v" \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/b5f3/hdl/verilog/aes_aes_Pipeline_1.v" \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/b5f3/hdl/verilog/aes_aes_Pipeline_2.v" \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/b5f3/hdl/verilog/aes_aes_Pipeline_3.v" \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/b5f3/hdl/verilog/aes_aes_Pipeline_VITIS_LOOP_70_2.v" \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/b5f3/hdl/verilog/aes_aes_Pipeline_VITIS_LOOP_75_3.v" \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/b5f3/hdl/verilog/aes_aes_Pipeline_VITIS_LOOP_85_4.v" \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/b5f3/hdl/verilog/aes_aes_Pipeline_VITIS_LOOP_94_5.v" \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/b5f3/hdl/verilog/aes_aes_Pipeline_VITIS_LOOP_475_1_VITIS_LOOP_478_2.v" \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/b5f3/hdl/verilog/aes_aes_Pipeline_VITIS_LOOP_489_3_VITIS_LOOP_492_4.v" \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/b5f3/hdl/verilog/aes_aes_Pipeline_VITIS_LOOP_665_1_VITIS_LOOP_668_2.v" \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/b5f3/hdl/verilog/aes_aes_Pipeline_VITIS_LOOP_679_3_VITIS_LOOP_682_4.v" \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/b5f3/hdl/verilog/aes_aes_round.v" \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/b5f3/hdl/verilog/aes_aes_round_Pipeline_mixColumnsLoop.v" \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/b5f3/hdl/verilog/aes_aes_round_Pipeline_VITIS_LOOP_276_1.v" \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/b5f3/hdl/verilog/aes_aes_round_Pipeline_VITIS_LOOP_308_1.v" \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/b5f3/hdl/verilog/aes_block_RAM_AUTO_1R1W.v" \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/b5f3/hdl/verilog/aes_control_s_axi.v" \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/b5f3/hdl/verilog/aes_CTRL_BUS_s_axi.v" \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/b5f3/hdl/verilog/aes_expandedKey_RAM_AUTO_1R1W.v" \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/b5f3/hdl/verilog/aes_expandKey.v" \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/b5f3/hdl/verilog/aes_expandKey_Pipeline_expandKeyLoop.v" \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/b5f3/hdl/verilog/aes_expandKey_Pipeline_expandKeyLoop_Rcon_ROM_AUTO_1R.v" \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/b5f3/hdl/verilog/aes_expandKey_Pipeline_expandKeyLoop_sbox_ROM_AUTO_1R.v" \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/b5f3/hdl/verilog/aes_expandKey_Pipeline_VITIS_LOOP_227_1.v" \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/b5f3/hdl/verilog/aes_flow_control_loop_pipe_sequential_init.v" \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/b5f3/hdl/verilog/aes_galois_multiplication.v" \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/b5f3/hdl/verilog/aes_hls_deadlock_idx0_monitor.v" \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/b5f3/hdl/verilog/aes_key_array128_RAM_AUTO_1R1W.v" \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/b5f3/hdl/verilog/aes_regslice_both.v" \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/b5f3/hdl/verilog/aes_urem_8ns_6ns_5_12_1.v" \
"../../../../AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ipshared/b5f3/hdl/verilog/aes.v" \
"../../../bd/AES_Power_Monitor/ip/AES_Power_Monitor_aes_0_2/sim/AES_Power_Monitor_aes_0_2.v" \
"z:/Users/hiqbal/AES_Power_Monitor_Vivado/AES_Power_Monitor_Vivado.gen/sources_1/bd/AES_Power_Monitor/ip/AES_Power_Monitor_Power_Monitor_0_1/AES_Power_Monitor_Power_Monitor_0_1_sim_netlist.v" \
"../../../bd/AES_Power_Monitor/ip/AES_Power_Monitor_auto_pc_0/AES_Power_Monitor_auto_pc_0_sim_netlist.v" \
"../../../bd/AES_Power_Monitor/ip/AES_Power_Monitor_auto_pc_1/AES_Power_Monitor_auto_pc_1_sim_netlist.v" \
"../../../bd/AES_Power_Monitor/ip/AES_Power_Monitor_auto_pc_2/AES_Power_Monitor_auto_pc_2_sim_netlist.v" \

vlog -work xil_defaultlib \
"glbl.v"

