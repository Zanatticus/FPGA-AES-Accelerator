# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_CTRL_BUS {
mode { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
enable_in { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
power_reading_out { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
interrupt {
}
}
dict set axilite_register_dict CTRL_BUS $port_CTRL_BUS


set port_control {
enable_out { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
power_reading_in { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
}
dict set axilite_register_dict control $port_control


