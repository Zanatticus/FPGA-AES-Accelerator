set_property SRC_FILE_INFO {cfile:Z:/Users/hiqbal/FPGA_HWSW/FPGA_AES_Accelerator/Hacking_Time/Power_MonitorV2/Power_MonitorV2.srcs/constrs_1/new/constraints.xdc rfile:../../../Power_MonitorV2.srcs/constrs_1/new/constraints.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:6 export:INPUT save:INPUT read:READ} [current_design]
for {set i 0} {$i < 100} {incr i} {
set row [expr {$i / $osc_per_row}]
set col [expr {$i % $osc_per_row}]

set_instance_assignment -name LOC "{[format "%d" $row]}_{[format "%d" $col]}" -to RO_$i
}
