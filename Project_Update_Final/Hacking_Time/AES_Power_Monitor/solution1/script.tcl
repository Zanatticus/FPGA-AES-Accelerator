############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project AES_Power_Monitor
set_top aes
add_files AES_AXIS_HLS/vitis/vitis_source/aes_axis.cpp
add_files AES_AXIS_HLS/vitis/vitis_source/aes_axis.h
add_files -tb AES_AXIS_HLS/vitis/vitis_test/aes_axis_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb AES_AXIS_HLS/vitis/vitis_test/decrypted.golden.dat -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb AES_AXIS_HLS/vitis/vitis_test/encrypted128.golden.dat -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb AES_AXIS_HLS/vitis/vitis_test/encrypted192.golden.dat -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb AES_AXIS_HLS/vitis/vitis_test/encrypted256.golden.dat -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7z020clg400-1}
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog -vivado_clock 10
source "./AES_Power_Monitor/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
