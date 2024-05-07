# This script segment is generated automatically by AutoPilot

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
    id 53 \
    name expandedKey_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename expandedKey_0 \
    op interface \
    ports { expandedKey_0_address0 { O 7 vector } expandedKey_0_ce0 { O 1 bit } expandedKey_0_we0 { O 1 bit } expandedKey_0_d0 { O 8 vector } expandedKey_0_q0 { I 8 vector } expandedKey_0_address1 { O 7 vector } expandedKey_0_ce1 { O 1 bit } expandedKey_0_we1 { O 1 bit } expandedKey_0_d1 { O 8 vector } expandedKey_0_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'expandedKey_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 54 \
    name expandedKey_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename expandedKey_1 \
    op interface \
    ports { expandedKey_1_address0 { O 7 vector } expandedKey_1_ce0 { O 1 bit } expandedKey_1_we0 { O 1 bit } expandedKey_1_d0 { O 8 vector } expandedKey_1_q0 { I 8 vector } expandedKey_1_address1 { O 7 vector } expandedKey_1_ce1 { O 1 bit } expandedKey_1_we1 { O 1 bit } expandedKey_1_d1 { O 8 vector } expandedKey_1_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'expandedKey_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 55 \
    name key_array128 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename key_array128 \
    op interface \
    ports { key_array128_address0 { O 11 vector } key_array128_ce0 { O 1 bit } key_array128_q0 { I 8 vector } key_array128_address1 { O 11 vector } key_array128_ce1 { O 1 bit } key_array128_q1 { I 8 vector } key_array128_address2 { O 11 vector } key_array128_ce2 { O 1 bit } key_array128_q2 { I 8 vector } key_array128_address3 { O 11 vector } key_array128_ce3 { O 1 bit } key_array128_q3 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'key_array128'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name key \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_key \
    op interface \
    ports { key { I 11 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name size \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_size \
    op interface \
    ports { size { I 6 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
    name expandedKeySize \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_expandedKeySize \
    op interface \
    ports { expandedKeySize { I 8 vector } } \
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

