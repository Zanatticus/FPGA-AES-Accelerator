# This script segment is generated automatically by AutoPilot

set name aes_srem_32ns_7ns_6_36_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {srem} IMPL {auto} LATENCY 35 ALLOW_PRAGMA 1
}


set id 36
set name aes_mux_21_8_1_1
set corename simcore_mux
set op mux
set stage_num 1
set din0_width 8
set din0_signed 0
set din1_width 8
set din1_signed 0
set din2_width 1
set din2_signed 0
set dout_width 8
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mux} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set op mux
set corename Multiplexer
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


# Memory (RAM/ROM)  definition:
set ID 44
set hasByteEnable 0
set MemName aes_expandKey_Pipeline_expandKeyLoop2_sbox_ROM_2P_AUTO_1R
set CoreName ap_simcore_mem
set PortList { 1 1 }
set DataWd 8
set AddrRange 256
set AddrWd 8
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "01100011" "01111100" "01110111" "01111011" "11110010" "01101011" "01101111" "11000101" "00110000" "00000001" "01100111" "00101011" "11111110" "11010111" "10101011" "01110110" "11001010" "10000010" "11001001" "01111101" "11111010" "01011001" "01000111" "11110000" "10101101" "11010100" "10100010" "10101111" "10011100" "10100100" "01110010" "11000000" "10110111" "11111101" "10010011" "00100110" "00110110" "00111111" "11110111" "11001100" "00110100" "10100101" "11100101" "11110001" "01110001" "11011000" "00110001" "00010101" "00000100" "11000111" "00100011" "11000011" "00011000" "10010110" "00000101" "10011010" "00000111" "00010010" "10000000" "11100010" "11101011" "00100111" "10110010" "01110101" "00001001" "10000011" "00101100" "00011010" "00011011" "01101110" "01011010" "10100000" "01010010" "00111011" "11010110" "10110011" "00101001" "11100011" "00101111" "10000100" "01010011" "11010001" "00000000" "11101101" "00100000" "11111100" "10110001" "01011011" "01101010" "11001011" "10111110" "00111001" "01001010" "01001100" "01011000" "11001111" "11010000" "11101111" "10101010" "11111011" "01000011" "01001101" "00110011" "10000101" "01000101" "11111001" "00000010" "01111111" "01010000" "00111100" "10011111" "10101000" "01010001" "10100011" "01000000" "10001111" "10010010" "10011101" "00111000" "11110101" "10111100" "10110110" "11011010" "00100001" "00010000" "11111111" "11110011" "11010010" "11001101" "00001100" "00010011" "11101100" "01011111" "10010111" "01000100" "00010111" "11000100" "10100111" "01111110" "00111101" "01100100" "01011101" "00011001" "01110011" "01100000" "10000001" "01001111" "11011100" "00100010" "00101010" "10010000" "10001000" "01000110" "11101110" "10111000" "00010100" "11011110" "01011110" "00001011" "11011011" "11100000" "00110010" "00111010" "00001010" "01001001" "00000110" "00100100" "01011100" "11000010" "11010011" "10101100" "01100010" "10010001" "10010101" "11100100" "01111001" "11100111" "11001000" "00110111" "01101101" "10001101" "11010101" "01001110" "10101001" "01101100" "01010110" "11110100" "11101010" "01100101" "01111010" "10101110" "00001000" "10111010" "01111000" "00100101" "00101110" "00011100" "10100110" "10110100" "11000110" "11101000" "11011101" "01110100" "00011111" "01001011" "10111101" "10001011" "10001010" "01110000" "00111110" "10110101" "01100110" "01001000" "00000011" "11110110" "00001110" "01100001" "00110101" "01010111" "10111001" "10000110" "11000001" "00011101" "10011110" "11100001" "11111000" "10011000" "00010001" "01101001" "11011001" "10001110" "10010100" "10011011" "00011110" "10000111" "11101001" "11001110" "01010101" "00101000" "11011111" "10001100" "10100001" "10001001" "00001101" "10111111" "11100110" "01000010" "01101000" "01000001" "10011001" "00101101" "00001111" "10110000" "01010100" "10111011" "00010110" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set DelayBudget 3.254
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem  \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $MemName BINDTYPE {storage} TYPE {rom_2p} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


set CoreName ROM_2P
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem  \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 45
set hasByteEnable 0
set MemName aes_expandKey_Pipeline_expandKeyLoop2_Rcon_ROM_2P_AUTO_1R
set CoreName ap_simcore_mem
set PortList { 1 3 }
set DataWd 8
set AddrRange 255
set AddrWd 8
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "10001101" "00000001" "00000010" "00000100" "00001000" "00010000" "00100000" "01000000" "10000000" "00011011" "00110110" "01101100" "11011000" "10101011" "01001101" "10011010" "00101111" "01011110" "10111100" "01100011" "11000110" "10010111" "00110101" "01101010" "11010100" "10110011" "01111101" "11111010" "11101111" "11000101" "10010001" "00111001" "01110010" "11100100" "11010011" "10111101" "01100001" "11000010" "10011111" "00100101" "01001010" "10010100" "00110011" "01100110" "11001100" "10000011" "00011101" "00111010" "01110100" "11101000" "11001011" "10001101" "00000001" "00000010" "00000100" "00001000" "00010000" "00100000" "01000000" "10000000" "00011011" "00110110" "01101100" "11011000" "10101011" "01001101" "10011010" "00101111" "01011110" "10111100" "01100011" "11000110" "10010111" "00110101" "01101010" "11010100" "10110011" "01111101" "11111010" "11101111" "11000101" "10010001" "00111001" "01110010" "11100100" "11010011" "10111101" "01100001" "11000010" "10011111" "00100101" "01001010" "10010100" "00110011" "01100110" "11001100" "10000011" "00011101" "00111010" "01110100" "11101000" "11001011" "10001101" "00000001" "00000010" "00000100" "00001000" "00010000" "00100000" "01000000" "10000000" "00011011" "00110110" "01101100" "11011000" "10101011" "01001101" "10011010" "00101111" "01011110" "10111100" "01100011" "11000110" "10010111" "00110101" "01101010" "11010100" "10110011" "01111101" "11111010" "11101111" "11000101" "10010001" "00111001" "01110010" "11100100" "11010011" "10111101" "01100001" "11000010" "10011111" "00100101" "01001010" "10010100" "00110011" "01100110" "11001100" "10000011" "00011101" "00111010" "01110100" "11101000" "11001011" "10001101" "00000001" "00000010" "00000100" "00001000" "00010000" "00100000" "01000000" "10000000" "00011011" "00110110" "01101100" "11011000" "10101011" "01001101" "10011010" "00101111" "01011110" "10111100" "01100011" "11000110" "10010111" "00110101" "01101010" "11010100" "10110011" "01111101" "11111010" "11101111" "11000101" "10010001" "00111001" "01110010" "11100100" "11010011" "10111101" "01100001" "11000010" "10011111" "00100101" "01001010" "10010100" "00110011" "01100110" "11001100" "10000011" "00011101" "00111010" "01110100" "11101000" "11001011" "10001101" "00000001" "00000010" "00000100" "00001000" "00010000" "00100000" "01000000" "10000000" "00011011" "00110110" "01101100" "11011000" "10101011" "01001101" "10011010" "00101111" "01011110" "10111100" "01100011" "11000110" "10010111" "00110101" "01101010" "11010100" "10110011" "01111101" "11111010" "11101111" "11000101" "10010001" "00111001" "01110010" "11100100" "11010011" "10111101" "01100001" "11000010" "10011111" "00100101" "01001010" "10010100" "00110011" "01100110" "11001100" "10000011" "00011101" "00111010" "01110100" "11101000" "11001011" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set DelayBudget 3.254
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem  \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $MemName BINDTYPE {storage} TYPE {rom_2p} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


set CoreName ROM_2P
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem  \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 47 \
    name expandedKey_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename expandedKey_1 \
    op interface \
    ports { expandedKey_1_address0 { O 7 vector } expandedKey_1_ce0 { O 1 bit } expandedKey_1_we0 { O 1 bit } expandedKey_1_d0 { O 8 vector } expandedKey_1_q0 { I 8 vector } expandedKey_1_address1 { O 7 vector } expandedKey_1_ce1 { O 1 bit } expandedKey_1_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'expandedKey_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 48 \
    name expandedKey_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename expandedKey_0 \
    op interface \
    ports { expandedKey_0_address0 { O 7 vector } expandedKey_0_ce0 { O 1 bit } expandedKey_0_we0 { O 1 bit } expandedKey_0_d0 { O 8 vector } expandedKey_0_q0 { I 8 vector } expandedKey_0_address1 { O 7 vector } expandedKey_0_ce1 { O 1 bit } expandedKey_0_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'expandedKey_0'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name zext_ln241 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln241 \
    op interface \
    ports { zext_ln241 { I 6 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name expandedKeySize_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_expandedKeySize_cast \
    op interface \
    ports { expandedKeySize_cast { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name zext_ln241_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln241_1 \
    op interface \
    ports { zext_ln241_1 { I 6 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name size_cast7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_size_cast7 \
    op interface \
    ports { size_cast7 { I 6 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
    name cmp17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp17 \
    op interface \
    ports { cmp17 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName aes_flow_control_loop_pipe_sequential_init_U
set CompName aes_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix aes_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


