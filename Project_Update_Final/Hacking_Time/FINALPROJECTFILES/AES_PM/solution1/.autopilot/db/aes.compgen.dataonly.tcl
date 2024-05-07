# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_CTRL_BUS {
enable_in { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
power_reading_out { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict CTRL_BUS $port_CTRL_BUS


set port_control {
mode { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
enable_out { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
power_reading_in { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
}
dict set axilite_register_dict control $port_control


