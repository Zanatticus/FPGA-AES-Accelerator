set moduleName aes
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {aes}
set C_modelType { void 0 }
set C_modelArgList {
	{ key_and_plaintext_V_data_V int 8 regular {axi_s 0 volatile  { key_and_plaintext Data } }  }
	{ key_and_plaintext_V_keep_V int 1 regular {axi_s 0 volatile  { key_and_plaintext Keep } }  }
	{ key_and_plaintext_V_strb_V int 1 regular {axi_s 0 volatile  { key_and_plaintext Strb } }  }
	{ key_and_plaintext_V_user_V int 1 regular {axi_s 0 volatile  { key_and_plaintext User } }  }
	{ key_and_plaintext_V_last_V int 1 regular {axi_s 0 volatile  { key_and_plaintext Last } }  }
	{ key_and_plaintext_V_id_V int 1 regular {axi_s 0 volatile  { key_and_plaintext ID } }  }
	{ key_and_plaintext_V_dest_V int 1 regular {axi_s 0 volatile  { key_and_plaintext Dest } }  }
	{ ciphertext_and_decryptedtext_V_data_V int 8 regular {axi_s 1 volatile  { ciphertext_and_decryptedtext Data } }  }
	{ ciphertext_and_decryptedtext_V_keep_V int 1 regular {axi_s 1 volatile  { ciphertext_and_decryptedtext Keep } }  }
	{ ciphertext_and_decryptedtext_V_strb_V int 1 regular {axi_s 1 volatile  { ciphertext_and_decryptedtext Strb } }  }
	{ ciphertext_and_decryptedtext_V_user_V int 1 regular {axi_s 1 volatile  { ciphertext_and_decryptedtext User } }  }
	{ ciphertext_and_decryptedtext_V_last_V int 1 regular {axi_s 1 volatile  { ciphertext_and_decryptedtext Last } }  }
	{ ciphertext_and_decryptedtext_V_id_V int 1 regular {axi_s 1 volatile  { ciphertext_and_decryptedtext ID } }  }
	{ ciphertext_and_decryptedtext_V_dest_V int 1 regular {axi_s 1 volatile  { ciphertext_and_decryptedtext Dest } }  }
	{ mode int 32 regular {axi_slave 0}  }
	{ enable_in uint 8 unused {axi_slave 0}  }
	{ enable_out uint 8 unused {axi_slave 0}  }
	{ power_reading_in int 32 unused {axi_slave 0}  }
	{ power_reading_out int 32 unused {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "key_and_plaintext_V_data_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "key_and_plaintext_V_keep_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "key_and_plaintext_V_strb_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "key_and_plaintext_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "key_and_plaintext_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "key_and_plaintext_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "key_and_plaintext_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "ciphertext_and_decryptedtext_V_data_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ciphertext_and_decryptedtext_V_keep_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ciphertext_and_decryptedtext_V_strb_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ciphertext_and_decryptedtext_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ciphertext_and_decryptedtext_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ciphertext_and_decryptedtext_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ciphertext_and_decryptedtext_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mode", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "enable_in", "interface" : "axi_slave", "bundle":"CTRL_BUS","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "enable_out", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "power_reading_in", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "power_reading_out", "interface" : "axi_slave", "bundle":"CTRL_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} ]}
# RTL Port declarations: 
set portNum 55
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ key_and_plaintext_TDATA sc_in sc_lv 8 signal 0 } 
	{ key_and_plaintext_TVALID sc_in sc_logic 1 invld 6 } 
	{ key_and_plaintext_TREADY sc_out sc_logic 1 inacc 6 } 
	{ key_and_plaintext_TKEEP sc_in sc_lv 1 signal 1 } 
	{ key_and_plaintext_TSTRB sc_in sc_lv 1 signal 2 } 
	{ key_and_plaintext_TUSER sc_in sc_lv 1 signal 3 } 
	{ key_and_plaintext_TLAST sc_in sc_lv 1 signal 4 } 
	{ key_and_plaintext_TID sc_in sc_lv 1 signal 5 } 
	{ key_and_plaintext_TDEST sc_in sc_lv 1 signal 6 } 
	{ ciphertext_and_decryptedtext_TDATA sc_out sc_lv 8 signal 7 } 
	{ ciphertext_and_decryptedtext_TVALID sc_out sc_logic 1 outvld 13 } 
	{ ciphertext_and_decryptedtext_TREADY sc_in sc_logic 1 outacc 13 } 
	{ ciphertext_and_decryptedtext_TKEEP sc_out sc_lv 1 signal 8 } 
	{ ciphertext_and_decryptedtext_TSTRB sc_out sc_lv 1 signal 9 } 
	{ ciphertext_and_decryptedtext_TUSER sc_out sc_lv 1 signal 10 } 
	{ ciphertext_and_decryptedtext_TLAST sc_out sc_lv 1 signal 11 } 
	{ ciphertext_and_decryptedtext_TID sc_out sc_lv 1 signal 12 } 
	{ ciphertext_and_decryptedtext_TDEST sc_out sc_lv 1 signal 13 } 
	{ s_axi_CTRL_BUS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_AWADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_CTRL_BUS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CTRL_BUS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CTRL_BUS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_ARADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_CTRL_BUS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_CTRL_BUS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_CTRL_BUS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_CTRL_BUS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "AWADDR" },"address":[{"name":"aes","role":"start","value":"0","valid_bit":"0"},{"name":"aes","role":"continue","value":"0","valid_bit":"4"},{"name":"aes","role":"auto_start","value":"0","valid_bit":"7"},{"name":"enable_in","role":"data","value":"16"},{"name":"power_reading_out","role":"data","value":"24"}] },
	{ "name": "s_axi_CTRL_BUS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "AWVALID" } },
	{ "name": "s_axi_CTRL_BUS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "AWREADY" } },
	{ "name": "s_axi_CTRL_BUS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "WVALID" } },
	{ "name": "s_axi_CTRL_BUS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "WREADY" } },
	{ "name": "s_axi_CTRL_BUS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "WDATA" } },
	{ "name": "s_axi_CTRL_BUS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "WSTRB" } },
	{ "name": "s_axi_CTRL_BUS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "ARADDR" },"address":[{"name":"aes","role":"start","value":"0","valid_bit":"0"},{"name":"aes","role":"done","value":"0","valid_bit":"1"},{"name":"aes","role":"idle","value":"0","valid_bit":"2"},{"name":"aes","role":"ready","value":"0","valid_bit":"3"},{"name":"aes","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_CTRL_BUS_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "ARVALID" } },
	{ "name": "s_axi_CTRL_BUS_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "ARREADY" } },
	{ "name": "s_axi_CTRL_BUS_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "RVALID" } },
	{ "name": "s_axi_CTRL_BUS_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "RREADY" } },
	{ "name": "s_axi_CTRL_BUS_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "RDATA" } },
	{ "name": "s_axi_CTRL_BUS_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "RRESP" } },
	{ "name": "s_axi_CTRL_BUS_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "BVALID" } },
	{ "name": "s_axi_CTRL_BUS_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "BREADY" } },
	{ "name": "s_axi_CTRL_BUS_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "interrupt" } },
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"mode","role":"data","value":"16"},{"name":"enable_out","role":"data","value":"24"},{"name":"power_reading_in","role":"data","value":"32"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "key_and_plaintext_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "key_and_plaintext_V_data_V", "role": "default" }} , 
 	{ "name": "key_and_plaintext_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "key_and_plaintext_V_dest_V", "role": "default" }} , 
 	{ "name": "key_and_plaintext_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "key_and_plaintext_V_dest_V", "role": "default" }} , 
 	{ "name": "key_and_plaintext_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "key_and_plaintext_V_keep_V", "role": "default" }} , 
 	{ "name": "key_and_plaintext_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "key_and_plaintext_V_strb_V", "role": "default" }} , 
 	{ "name": "key_and_plaintext_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "key_and_plaintext_V_user_V", "role": "default" }} , 
 	{ "name": "key_and_plaintext_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "key_and_plaintext_V_last_V", "role": "default" }} , 
 	{ "name": "key_and_plaintext_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "key_and_plaintext_V_id_V", "role": "default" }} , 
 	{ "name": "key_and_plaintext_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "key_and_plaintext_V_dest_V", "role": "default" }} , 
 	{ "name": "ciphertext_and_decryptedtext_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ciphertext_and_decryptedtext_V_data_V", "role": "default" }} , 
 	{ "name": "ciphertext_and_decryptedtext_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "ciphertext_and_decryptedtext_V_dest_V", "role": "default" }} , 
 	{ "name": "ciphertext_and_decryptedtext_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "ciphertext_and_decryptedtext_V_dest_V", "role": "default" }} , 
 	{ "name": "ciphertext_and_decryptedtext_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ciphertext_and_decryptedtext_V_keep_V", "role": "default" }} , 
 	{ "name": "ciphertext_and_decryptedtext_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ciphertext_and_decryptedtext_V_strb_V", "role": "default" }} , 
 	{ "name": "ciphertext_and_decryptedtext_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ciphertext_and_decryptedtext_V_user_V", "role": "default" }} , 
 	{ "name": "ciphertext_and_decryptedtext_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ciphertext_and_decryptedtext_V_last_V", "role": "default" }} , 
 	{ "name": "ciphertext_and_decryptedtext_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ciphertext_and_decryptedtext_V_id_V", "role": "default" }} , 
 	{ "name": "ciphertext_and_decryptedtext_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ciphertext_and_decryptedtext_V_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "14", "16", "18", "20", "22", "24", "38", "60", "62", "64", "87", "89", "91", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108"],
		"CDFG" : "aes",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "84", "EstimateLatencyMax" : "7379",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "key_and_plaintext_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_aes_Pipeline_cipherkeyLoop_fu_297", "Port" : "key_and_plaintext_V_data_V", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "20", "SubInstance" : "grp_aes_Pipeline_plaintextLoop_fu_320", "Port" : "key_and_plaintext_V_data_V", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "key_and_plaintext_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_aes_Pipeline_cipherkeyLoop_fu_297", "Port" : "key_and_plaintext_V_keep_V", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "20", "SubInstance" : "grp_aes_Pipeline_plaintextLoop_fu_320", "Port" : "key_and_plaintext_V_keep_V", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "key_and_plaintext_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_aes_Pipeline_cipherkeyLoop_fu_297", "Port" : "key_and_plaintext_V_strb_V", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "20", "SubInstance" : "grp_aes_Pipeline_plaintextLoop_fu_320", "Port" : "key_and_plaintext_V_strb_V", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "key_and_plaintext_V_user_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_aes_Pipeline_cipherkeyLoop_fu_297", "Port" : "key_and_plaintext_V_user_V", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "20", "SubInstance" : "grp_aes_Pipeline_plaintextLoop_fu_320", "Port" : "key_and_plaintext_V_user_V", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "key_and_plaintext_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_aes_Pipeline_cipherkeyLoop_fu_297", "Port" : "key_and_plaintext_V_last_V", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "20", "SubInstance" : "grp_aes_Pipeline_plaintextLoop_fu_320", "Port" : "key_and_plaintext_V_last_V", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "key_and_plaintext_V_id_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_aes_Pipeline_cipherkeyLoop_fu_297", "Port" : "key_and_plaintext_V_id_V", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "20", "SubInstance" : "grp_aes_Pipeline_plaintextLoop_fu_320", "Port" : "key_and_plaintext_V_id_V", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "key_and_plaintext_V_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_aes_Pipeline_cipherkeyLoop_fu_297", "Port" : "key_and_plaintext_V_dest_V", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "20", "SubInstance" : "grp_aes_Pipeline_plaintextLoop_fu_320", "Port" : "key_and_plaintext_V_dest_V", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "ciphertext_and_decryptedtext_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_aes_Pipeline_ciphertextLoop_fu_407", "Port" : "ciphertext_and_decryptedtext_V_data_V", "Inst_start_state" : "23", "Inst_end_state" : "24"},
					{"ID" : "91", "SubInstance" : "grp_aes_Pipeline_decryptedTextLoop_fu_431", "Port" : "ciphertext_and_decryptedtext_V_data_V", "Inst_start_state" : "26", "Inst_end_state" : "27"}]},
			{"Name" : "ciphertext_and_decryptedtext_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_aes_Pipeline_ciphertextLoop_fu_407", "Port" : "ciphertext_and_decryptedtext_V_keep_V", "Inst_start_state" : "23", "Inst_end_state" : "24"},
					{"ID" : "91", "SubInstance" : "grp_aes_Pipeline_decryptedTextLoop_fu_431", "Port" : "ciphertext_and_decryptedtext_V_keep_V", "Inst_start_state" : "26", "Inst_end_state" : "27"}]},
			{"Name" : "ciphertext_and_decryptedtext_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_aes_Pipeline_ciphertextLoop_fu_407", "Port" : "ciphertext_and_decryptedtext_V_strb_V", "Inst_start_state" : "23", "Inst_end_state" : "24"},
					{"ID" : "91", "SubInstance" : "grp_aes_Pipeline_decryptedTextLoop_fu_431", "Port" : "ciphertext_and_decryptedtext_V_strb_V", "Inst_start_state" : "26", "Inst_end_state" : "27"}]},
			{"Name" : "ciphertext_and_decryptedtext_V_user_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_aes_Pipeline_ciphertextLoop_fu_407", "Port" : "ciphertext_and_decryptedtext_V_user_V", "Inst_start_state" : "23", "Inst_end_state" : "24"},
					{"ID" : "91", "SubInstance" : "grp_aes_Pipeline_decryptedTextLoop_fu_431", "Port" : "ciphertext_and_decryptedtext_V_user_V", "Inst_start_state" : "26", "Inst_end_state" : "27"}]},
			{"Name" : "ciphertext_and_decryptedtext_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_aes_Pipeline_ciphertextLoop_fu_407", "Port" : "ciphertext_and_decryptedtext_V_last_V", "Inst_start_state" : "23", "Inst_end_state" : "24"},
					{"ID" : "91", "SubInstance" : "grp_aes_Pipeline_decryptedTextLoop_fu_431", "Port" : "ciphertext_and_decryptedtext_V_last_V", "Inst_start_state" : "26", "Inst_end_state" : "27"}]},
			{"Name" : "ciphertext_and_decryptedtext_V_id_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_aes_Pipeline_ciphertextLoop_fu_407", "Port" : "ciphertext_and_decryptedtext_V_id_V", "Inst_start_state" : "23", "Inst_end_state" : "24"},
					{"ID" : "91", "SubInstance" : "grp_aes_Pipeline_decryptedTextLoop_fu_431", "Port" : "ciphertext_and_decryptedtext_V_id_V", "Inst_start_state" : "26", "Inst_end_state" : "27"}]},
			{"Name" : "ciphertext_and_decryptedtext_V_dest_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_aes_Pipeline_ciphertextLoop_fu_407", "Port" : "ciphertext_and_decryptedtext_V_dest_V", "Inst_start_state" : "23", "Inst_end_state" : "24"},
					{"ID" : "91", "SubInstance" : "grp_aes_Pipeline_decryptedTextLoop_fu_431", "Port" : "ciphertext_and_decryptedtext_V_dest_V", "Inst_start_state" : "26", "Inst_end_state" : "27"}]},
			{"Name" : "mode", "Type" : "None", "Direction" : "I"},
			{"Name" : "enable_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "enable_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "power_reading_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "power_reading_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_expandKey_fu_351", "Port" : "sbox", "Inst_start_state" : "18", "Inst_end_state" : "19"},
					{"ID" : "38", "SubInstance" : "grp_aes_main_fu_367", "Port" : "sbox", "Inst_start_state" : "14", "Inst_end_state" : "15"}]},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_expandKey_fu_351", "Port" : "Rcon", "Inst_start_state" : "18", "Inst_end_state" : "19"}]},
			{"Name" : "rsbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_aes_invMain_fu_390", "Port" : "rsbox", "Inst_start_state" : "20", "Inst_end_state" : "21"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_61_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "28", "FirstState" : "ap_ST_fsm_state7", "LastState" : ["ap_ST_fsm_state27"], "QuitState" : ["ap_ST_fsm_state27"], "PreState" : ["ap_ST_fsm_state6"], "PostState" : ["ap_ST_fsm_state28"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sbox_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.key_array128_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.expandedKey_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.expandedKey_1_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.expandedKey_2_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.expandedKey_3_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_1_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.plaintext_array_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ciphertext_array_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.decryptedtext_array_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_Pipeline_1_fu_281", "Parent" : "0", "Child" : ["13"],
		"CDFG" : "aes_Pipeline_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "key_array128", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "NotSupport"}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_Pipeline_1_fu_281.flow_control_loop_pipe_sequential_init_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_Pipeline_2_fu_287", "Parent" : "0", "Child" : ["15"],
		"CDFG" : "aes_Pipeline_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "26", "EstimateLatencyMax" : "26",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "key_array128", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "NotSupport"}]},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_Pipeline_2_fu_287.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_Pipeline_3_fu_292", "Parent" : "0", "Child" : ["17"],
		"CDFG" : "aes_Pipeline_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "key_array128", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "NotSupport"}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_Pipeline_3_fu_292.flow_control_loop_pipe_sequential_init_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_Pipeline_cipherkeyLoop_fu_297", "Parent" : "0", "Child" : ["19"],
		"CDFG" : "aes_Pipeline_cipherkeyLoop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "cipherkey_size", "Type" : "None", "Direction" : "I"},
			{"Name" : "key_and_plaintext_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "key_and_plaintext_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "key_and_plaintext_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "key_and_plaintext_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "key_and_plaintext_V_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "key_and_plaintext_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "key_and_plaintext_V_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "key_and_plaintext_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "key_array", "Type" : "None", "Direction" : "I"},
			{"Name" : "key_array128", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "cipherkeyLoop", "PipelineType" : "NotSupport"}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_Pipeline_cipherkeyLoop_fu_297.flow_control_loop_pipe_sequential_init_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_Pipeline_plaintextLoop_fu_320", "Parent" : "0", "Child" : ["21"],
		"CDFG" : "aes_Pipeline_plaintextLoop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "key_and_plaintext_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "key_and_plaintext_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "key_and_plaintext_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "key_and_plaintext_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "key_and_plaintext_V_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "key_and_plaintext_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "key_and_plaintext_V_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "key_and_plaintext_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "plaintext_array", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tmp_keep_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp_strb_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp_user_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_4_0_0_0115_phi_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp_id_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp_dest_V_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "plaintextLoop", "PipelineType" : "NotSupport"}]},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_Pipeline_plaintextLoop_fu_320.flow_control_loop_pipe_sequential_init_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_Pipeline_aesEncryptLoop1_aesEncryptLoop2_fu_345", "Parent" : "0", "Child" : ["23"],
		"CDFG" : "aes_Pipeline_aesEncryptLoop1_aesEncryptLoop2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "plaintext_array", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "block_1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "aesEncryptLoop1_aesEncryptLoop2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_Pipeline_aesEncryptLoop1_aesEncryptLoop2_fu_345.flow_control_loop_pipe_sequential_init_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_expandKey_fu_351", "Parent" : "0", "Child" : ["25", "27"],
		"CDFG" : "expandKey",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1579", "EstimateLatencyMax" : "2927",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "expandedKey_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_expandKey_Pipeline_expandKeyLoop2_fu_60", "Port" : "expandedKey_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "25", "SubInstance" : "grp_expandKey_Pipeline_expandKeyLoop1_fu_46", "Port" : "expandedKey_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "expandedKey_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_expandKey_Pipeline_expandKeyLoop2_fu_60", "Port" : "expandedKey_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "25", "SubInstance" : "grp_expandKey_Pipeline_expandKeyLoop1_fu_46", "Port" : "expandedKey_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "key_array128", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_expandKey_Pipeline_expandKeyLoop1_fu_46", "Port" : "key_array128", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "key", "Type" : "None", "Direction" : "I"},
			{"Name" : "size", "Type" : "None", "Direction" : "I"},
			{"Name" : "expandedKeySize", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_expandKey_Pipeline_expandKeyLoop2_fu_60", "Port" : "sbox", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_expandKey_Pipeline_expandKeyLoop2_fu_60", "Port" : "Rcon", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_expandKey_fu_351.grp_expandKey_Pipeline_expandKeyLoop1_fu_46", "Parent" : "24", "Child" : ["26"],
		"CDFG" : "expandKey_Pipeline_expandKeyLoop1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln241", "Type" : "None", "Direction" : "I"},
			{"Name" : "key", "Type" : "None", "Direction" : "I"},
			{"Name" : "key_array128", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "expandedKey_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "expandedKey_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "expandKeyLoop1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_expandKey_fu_351.grp_expandKey_Pipeline_expandKeyLoop1_fu_46.flow_control_loop_pipe_sequential_init_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_expandKey_fu_351.grp_expandKey_Pipeline_expandKeyLoop2_fu_60", "Parent" : "24", "Child" : ["28", "29", "30", "31", "32", "33", "34", "35", "36", "37"],
		"CDFG" : "expandKey_Pipeline_expandKeyLoop2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1569", "EstimateLatencyMax" : "2913",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln241", "Type" : "None", "Direction" : "I"},
			{"Name" : "expandedKey_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "expandedKey_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "expandedKeySize_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln241_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "size_cast7", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp17", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "expandKeyLoop2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "12", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage8", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage8_subdone", "QuitState" : "ap_ST_fsm_pp0_stage8", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage8_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_expandKey_fu_351.grp_expandKey_Pipeline_expandKeyLoop2_fu_60.sbox_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_expandKey_fu_351.grp_expandKey_Pipeline_expandKeyLoop2_fu_60.Rcon_U", "Parent" : "27"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_expandKey_fu_351.grp_expandKey_Pipeline_expandKeyLoop2_fu_60.srem_32ns_7ns_6_36_1_U35", "Parent" : "27"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_expandKey_fu_351.grp_expandKey_Pipeline_expandKeyLoop2_fu_60.mux_21_8_1_1_U36", "Parent" : "27"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_expandKey_fu_351.grp_expandKey_Pipeline_expandKeyLoop2_fu_60.mux_21_8_1_1_U37", "Parent" : "27"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_expandKey_fu_351.grp_expandKey_Pipeline_expandKeyLoop2_fu_60.mux_21_8_1_1_U38", "Parent" : "27"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_expandKey_fu_351.grp_expandKey_Pipeline_expandKeyLoop2_fu_60.mux_21_8_1_1_U39", "Parent" : "27"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_expandKey_fu_351.grp_expandKey_Pipeline_expandKeyLoop2_fu_60.mux_21_8_1_1_U40", "Parent" : "27"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_expandKey_fu_351.grp_expandKey_Pipeline_expandKeyLoop2_fu_60.mux_21_8_1_1_U41", "Parent" : "27"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_expandKey_fu_351.grp_expandKey_Pipeline_expandKeyLoop2_fu_60.flow_control_loop_pipe_sequential_init_U", "Parent" : "27"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_367", "Parent" : "0", "Child" : ["39", "40", "43", "45", "51", "54", "56", "58"],
		"CDFG" : "aes_main",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "430", "EstimateLatencyMax" : "578",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_aes_main_Pipeline_addRoundKeyLoop_fu_412", "Port" : "state", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "45", "SubInstance" : "grp_aes_main_Pipeline_aesMainLoop_fu_419", "Port" : "state", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "58", "SubInstance" : "grp_aes_main_Pipeline_addRoundKeyLoop3_fu_470", "Port" : "state", "Inst_start_state" : "23", "Inst_end_state" : "24"}]},
			{"Name" : "expandedKey_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_aes_main_Pipeline_aesMainLoop_fu_419", "Port" : "expandedKey_0", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "40", "SubInstance" : "grp_aes_main_Pipeline_createRoundKeyLoop1_createRoundKeyLoop2_fu_402", "Port" : "expandedKey_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "51", "SubInstance" : "grp_aes_main_Pipeline_createRoundKeyLoop1_createRoundKeyLoop21_fu_434", "Port" : "expandedKey_0", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "expandedKey_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_aes_main_Pipeline_aesMainLoop_fu_419", "Port" : "expandedKey_1", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "40", "SubInstance" : "grp_aes_main_Pipeline_createRoundKeyLoop1_createRoundKeyLoop2_fu_402", "Port" : "expandedKey_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "51", "SubInstance" : "grp_aes_main_Pipeline_createRoundKeyLoop1_createRoundKeyLoop21_fu_434", "Port" : "expandedKey_1", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "nbrRounds", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_aes_main_Pipeline_aesMainLoop_fu_419", "Port" : "sbox", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_367.roundKey_U", "Parent" : "38"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_367.grp_aes_main_Pipeline_createRoundKeyLoop1_createRoundKeyLoop2_fu_402", "Parent" : "38", "Child" : ["41", "42"],
		"CDFG" : "aes_main_Pipeline_createRoundKeyLoop1_createRoundKeyLoop2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "expandedKey_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "expandedKey_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "roundKey", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "createRoundKeyLoop1_createRoundKeyLoop2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_367.grp_aes_main_Pipeline_createRoundKeyLoop1_createRoundKeyLoop2_fu_402.mux_21_8_1_1_U59", "Parent" : "40"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_367.grp_aes_main_Pipeline_createRoundKeyLoop1_createRoundKeyLoop2_fu_402.flow_control_loop_pipe_sequential_init_U", "Parent" : "40"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_367.grp_aes_main_Pipeline_addRoundKeyLoop_fu_412", "Parent" : "38", "Child" : ["44"],
		"CDFG" : "aes_main_Pipeline_addRoundKeyLoop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "roundKey", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "addRoundKeyLoop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_367.grp_aes_main_Pipeline_addRoundKeyLoop_fu_412.flow_control_loop_pipe_sequential_init_U", "Parent" : "43"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_367.grp_aes_main_Pipeline_aesMainLoop_fu_419", "Parent" : "38", "Child" : ["46", "50"],
		"CDFG" : "aes_main_Pipeline_aesMainLoop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "335", "EstimateLatencyMax" : "483",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "roundKey", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_aes_round_fu_379", "Port" : "roundKey", "Inst_start_state" : "10", "Inst_end_state" : "37"}]},
			{"Name" : "nbrRounds", "Type" : "None", "Direction" : "I"},
			{"Name" : "expandedKey_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "expandedKey_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_aes_round_fu_379", "Port" : "state", "Inst_start_state" : "10", "Inst_end_state" : "37"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_aes_round_fu_379", "Port" : "sbox", "Inst_start_state" : "10", "Inst_end_state" : "37"}]}],
		"Loop" : [
			{"Name" : "aesMainLoop", "PipelineType" : "NotSupport"}]},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_367.grp_aes_main_Pipeline_aesMainLoop_fu_419.grp_aes_round_fu_379", "Parent" : "45", "Child" : ["47", "48", "49"],
		"CDFG" : "aes_round",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "28",
		"VariableLatency" : "0", "ExactLatency" : "27", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "27",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "roundKey", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "47", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_367.grp_aes_main_Pipeline_aesMainLoop_fu_419.grp_aes_round_fu_379.sbox_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_367.grp_aes_main_Pipeline_aesMainLoop_fu_419.grp_aes_round_fu_379.grp_galois_multiplication_fu_497", "Parent" : "46",
		"CDFG" : "galois_multiplication",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "49", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_367.grp_aes_main_Pipeline_aesMainLoop_fu_419.grp_aes_round_fu_379.grp_galois_multiplication_fu_504", "Parent" : "46",
		"CDFG" : "galois_multiplication",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_367.grp_aes_main_Pipeline_aesMainLoop_fu_419.flow_control_loop_pipe_sequential_init_U", "Parent" : "45"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_367.grp_aes_main_Pipeline_createRoundKeyLoop1_createRoundKeyLoop21_fu_434", "Parent" : "38", "Child" : ["52", "53"],
		"CDFG" : "aes_main_Pipeline_createRoundKeyLoop1_createRoundKeyLoop21",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nbrRounds", "Type" : "None", "Direction" : "I"},
			{"Name" : "expandedKey_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "expandedKey_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "roundKey", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "createRoundKeyLoop1_createRoundKeyLoop2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_367.grp_aes_main_Pipeline_createRoundKeyLoop1_createRoundKeyLoop21_fu_434.mux_21_8_1_1_U74", "Parent" : "51"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_367.grp_aes_main_Pipeline_createRoundKeyLoop1_createRoundKeyLoop21_fu_434.flow_control_loop_pipe_sequential_init_U", "Parent" : "51"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_367.grp_aes_main_Pipeline_shiftRowLoop1_fu_444", "Parent" : "38", "Child" : ["55"],
		"CDFG" : "aes_main_Pipeline_shiftRowLoop1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sbox_load_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox_load_32", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox_load_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox_load_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp_60_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "shiftRowLoop1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_367.grp_aes_main_Pipeline_shiftRowLoop1_fu_444.flow_control_loop_pipe_sequential_init_U", "Parent" : "54"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_367.grp_aes_main_Pipeline_shiftRowLoop12_fu_456", "Parent" : "38", "Child" : ["57"],
		"CDFG" : "aes_main_Pipeline_shiftRowLoop12",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sbox_load_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox_load_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox_load_35", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox_load_34", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp_61_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "shiftRowLoop1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_367.grp_aes_main_Pipeline_shiftRowLoop12_fu_456.flow_control_loop_pipe_sequential_init_U", "Parent" : "56"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_367.grp_aes_main_Pipeline_addRoundKeyLoop3_fu_470", "Parent" : "38", "Child" : ["59"],
		"CDFG" : "aes_main_Pipeline_addRoundKeyLoop3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "roundKey", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "addRoundKeyLoop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_367.grp_aes_main_Pipeline_addRoundKeyLoop3_fu_470.flow_control_loop_pipe_sequential_init_U", "Parent" : "58"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_Pipeline_aesEncryptLoop3_aesEncryptLoop4_fu_378", "Parent" : "0", "Child" : ["61"],
		"CDFG" : "aes_Pipeline_aesEncryptLoop3_aesEncryptLoop4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "block_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ciphertext_array", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "aesEncryptLoop3_aesEncryptLoop4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_Pipeline_aesEncryptLoop3_aesEncryptLoop4_fu_378.flow_control_loop_pipe_sequential_init_U", "Parent" : "60"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_Pipeline_aesDecryptLoop1_aesDecryptLoop2_fu_384", "Parent" : "0", "Child" : ["63"],
		"CDFG" : "aes_Pipeline_aesDecryptLoop1_aesDecryptLoop2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ciphertext_array", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "block_r", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "aesDecryptLoop1_aesDecryptLoop2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_Pipeline_aesDecryptLoop1_aesDecryptLoop2_fu_384.flow_control_loop_pipe_sequential_init_U", "Parent" : "62"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_invMain_fu_390", "Parent" : "0", "Child" : ["65", "66", "67", "70", "72", "78", "81", "83", "85"],
		"CDFG" : "aes_invMain",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "513", "EstimateLatencyMax" : "697",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_aes_invMain_Pipeline_aesInvMainLoop_fu_421", "Port" : "state", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "85", "SubInstance" : "grp_aes_invMain_Pipeline_addRoundKeyLoop6_fu_470", "Port" : "state", "Inst_start_state" : "25", "Inst_end_state" : "26"},
					{"ID" : "70", "SubInstance" : "grp_aes_invMain_Pipeline_addRoundKeyLoop_fu_414", "Port" : "state", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "expandedKey_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "grp_aes_invMain_Pipeline_createRoundKeyLoop1_createRoundKeyLoop2_fu_402", "Port" : "expandedKey_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "72", "SubInstance" : "grp_aes_invMain_Pipeline_aesInvMainLoop_fu_421", "Port" : "expandedKey_0", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "78", "SubInstance" : "grp_aes_invMain_Pipeline_createRoundKeyLoop1_createRoundKeyLoop24_fu_435", "Port" : "expandedKey_0", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "expandedKey_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "grp_aes_invMain_Pipeline_createRoundKeyLoop1_createRoundKeyLoop2_fu_402", "Port" : "expandedKey_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "72", "SubInstance" : "grp_aes_invMain_Pipeline_aesInvMainLoop_fu_421", "Port" : "expandedKey_1", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "78", "SubInstance" : "grp_aes_invMain_Pipeline_createRoundKeyLoop1_createRoundKeyLoop24_fu_435", "Port" : "expandedKey_1", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "nbrRounds", "Type" : "None", "Direction" : "I"},
			{"Name" : "rsbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_aes_invMain_Pipeline_aesInvMainLoop_fu_421", "Port" : "rsbox", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_invMain_fu_390.rsbox_U", "Parent" : "64"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_invMain_fu_390.roundKey_U", "Parent" : "64"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_invMain_fu_390.grp_aes_invMain_Pipeline_createRoundKeyLoop1_createRoundKeyLoop2_fu_402", "Parent" : "64", "Child" : ["68", "69"],
		"CDFG" : "aes_invMain_Pipeline_createRoundKeyLoop1_createRoundKeyLoop2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nbrRounds", "Type" : "None", "Direction" : "I"},
			{"Name" : "expandedKey_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "expandedKey_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "roundKey", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "createRoundKeyLoop1_createRoundKeyLoop2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes_invMain_fu_390.grp_aes_invMain_Pipeline_createRoundKeyLoop1_createRoundKeyLoop2_fu_402.mux_21_8_1_1_U107", "Parent" : "67"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes_invMain_fu_390.grp_aes_invMain_Pipeline_createRoundKeyLoop1_createRoundKeyLoop2_fu_402.flow_control_loop_pipe_sequential_init_U", "Parent" : "67"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_invMain_fu_390.grp_aes_invMain_Pipeline_addRoundKeyLoop_fu_414", "Parent" : "64", "Child" : ["71"],
		"CDFG" : "aes_invMain_Pipeline_addRoundKeyLoop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "roundKey", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "addRoundKeyLoop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes_invMain_fu_390.grp_aes_invMain_Pipeline_addRoundKeyLoop_fu_414.flow_control_loop_pipe_sequential_init_U", "Parent" : "70"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_invMain_fu_390.grp_aes_invMain_Pipeline_aesInvMainLoop_fu_421", "Parent" : "64", "Child" : ["73", "77"],
		"CDFG" : "aes_invMain_Pipeline_aesInvMainLoop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "416", "EstimateLatencyMax" : "600",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln442", "Type" : "None", "Direction" : "I"},
			{"Name" : "roundKey", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "73", "SubInstance" : "grp_aes_invRound_fu_381", "Port" : "roundKey", "Inst_start_state" : "10", "Inst_end_state" : "46"}]},
			{"Name" : "expandedKey_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "expandedKey_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "73", "SubInstance" : "grp_aes_invRound_fu_381", "Port" : "state", "Inst_start_state" : "10", "Inst_end_state" : "46"}]},
			{"Name" : "rsbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "73", "SubInstance" : "grp_aes_invRound_fu_381", "Port" : "rsbox", "Inst_start_state" : "10", "Inst_end_state" : "46"}]}],
		"Loop" : [
			{"Name" : "aesInvMainLoop", "PipelineType" : "NotSupport"}]},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes_invMain_fu_390.grp_aes_invMain_Pipeline_aesInvMainLoop_fu_421.grp_aes_invRound_fu_381", "Parent" : "72", "Child" : ["74", "75", "76"],
		"CDFG" : "aes_invRound",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "37",
		"VariableLatency" : "0", "ExactLatency" : "36", "EstimateLatencyMin" : "36", "EstimateLatencyMax" : "36",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "roundKey", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rsbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "74", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_aes_invMain_fu_390.grp_aes_invMain_Pipeline_aesInvMainLoop_fu_421.grp_aes_invRound_fu_381.rsbox_U", "Parent" : "73"},
	{"ID" : "75", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_aes_invMain_fu_390.grp_aes_invMain_Pipeline_aesInvMainLoop_fu_421.grp_aes_invRound_fu_381.grp_galois_multiplication_fu_499", "Parent" : "73",
		"CDFG" : "galois_multiplication",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "76", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_aes_invMain_fu_390.grp_aes_invMain_Pipeline_aesInvMainLoop_fu_421.grp_aes_invRound_fu_381.grp_galois_multiplication_fu_506", "Parent" : "73",
		"CDFG" : "galois_multiplication",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes_invMain_fu_390.grp_aes_invMain_Pipeline_aesInvMainLoop_fu_421.flow_control_loop_pipe_sequential_init_U", "Parent" : "72"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_invMain_fu_390.grp_aes_invMain_Pipeline_createRoundKeyLoop1_createRoundKeyLoop24_fu_435", "Parent" : "64", "Child" : ["79", "80"],
		"CDFG" : "aes_invMain_Pipeline_createRoundKeyLoop1_createRoundKeyLoop24",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "expandedKey_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "expandedKey_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "roundKey", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "createRoundKeyLoop1_createRoundKeyLoop2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes_invMain_fu_390.grp_aes_invMain_Pipeline_createRoundKeyLoop1_createRoundKeyLoop24_fu_435.mux_21_8_1_1_U122", "Parent" : "78"},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes_invMain_fu_390.grp_aes_invMain_Pipeline_createRoundKeyLoop1_createRoundKeyLoop24_fu_435.flow_control_loop_pipe_sequential_init_U", "Parent" : "78"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_invMain_fu_390.grp_aes_invMain_Pipeline_invShiftRowLoop1_fu_444", "Parent" : "64", "Child" : ["82"],
		"CDFG" : "aes_invMain_Pipeline_invShiftRowLoop1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "state_load_49", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_load_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_load_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_load_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_assign_62_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "num_assign_63_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "num_assign_64_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp_127_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "invShiftRowLoop1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes_invMain_fu_390.grp_aes_invMain_Pipeline_invShiftRowLoop1_fu_444.flow_control_loop_pipe_sequential_init_U", "Parent" : "81"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_invMain_fu_390.grp_aes_invMain_Pipeline_invShiftRowLoop15_fu_456", "Parent" : "64", "Child" : ["84"],
		"CDFG" : "aes_invMain_Pipeline_invShiftRowLoop15",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "state_load_50", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_load_32", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_load_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_load_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_assign_66_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "num_assign_67_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "num_assign_68_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp_128_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "invShiftRowLoop1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes_invMain_fu_390.grp_aes_invMain_Pipeline_invShiftRowLoop15_fu_456.flow_control_loop_pipe_sequential_init_U", "Parent" : "83"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_invMain_fu_390.grp_aes_invMain_Pipeline_addRoundKeyLoop6_fu_470", "Parent" : "64", "Child" : ["86"],
		"CDFG" : "aes_invMain_Pipeline_addRoundKeyLoop6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "roundKey", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "addRoundKeyLoop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes_invMain_fu_390.grp_aes_invMain_Pipeline_addRoundKeyLoop6_fu_470.flow_control_loop_pipe_sequential_init_U", "Parent" : "85"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_Pipeline_aesDecryptLoop3_aesDecryptLoop4_fu_401", "Parent" : "0", "Child" : ["88"],
		"CDFG" : "aes_Pipeline_aesDecryptLoop3_aesDecryptLoop4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "block_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "decryptedtext_array", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "aesDecryptLoop3_aesDecryptLoop4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_Pipeline_aesDecryptLoop3_aesDecryptLoop4_fu_401.flow_control_loop_pipe_sequential_init_U", "Parent" : "87"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_Pipeline_ciphertextLoop_fu_407", "Parent" : "0", "Child" : ["90"],
		"CDFG" : "aes_Pipeline_ciphertextLoop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ciphertext_array", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmp_keep_V_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_strb_V_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_user_V_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_id_V_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_dest_V_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "ciphertext_and_decryptedtext_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "ciphertext_and_decryptedtext_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ciphertext_and_decryptedtext_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "ciphertext_and_decryptedtext_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "ciphertext_and_decryptedtext_V_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "ciphertext_and_decryptedtext_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "ciphertext_and_decryptedtext_V_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "ciphertext_and_decryptedtext_V_dest_V", "Type" : "Axis", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "ciphertextLoop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_Pipeline_ciphertextLoop_fu_407.flow_control_loop_pipe_sequential_init_U", "Parent" : "89"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_Pipeline_decryptedTextLoop_fu_431", "Parent" : "0", "Child" : ["92"],
		"CDFG" : "aes_Pipeline_decryptedTextLoop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "decryptedtext_array", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmp_keep_V_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_strb_V_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_user_V_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_id_V_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_dest_V_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "ciphertext_and_decryptedtext_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "ciphertext_and_decryptedtext_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ciphertext_and_decryptedtext_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "ciphertext_and_decryptedtext_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "ciphertext_and_decryptedtext_V_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "ciphertext_and_decryptedtext_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "ciphertext_and_decryptedtext_V_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "ciphertext_and_decryptedtext_V_dest_V", "Type" : "Axis", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "decryptedTextLoop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_Pipeline_decryptedTextLoop_fu_431.flow_control_loop_pipe_sequential_init_U", "Parent" : "91"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CTRL_BUS_s_axi_U", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_key_and_plaintext_V_data_V_U", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_key_and_plaintext_V_keep_V_U", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_key_and_plaintext_V_strb_V_U", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_key_and_plaintext_V_user_V_U", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_key_and_plaintext_V_last_V_U", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_key_and_plaintext_V_id_V_U", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_key_and_plaintext_V_dest_V_U", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_ciphertext_and_decryptedtext_V_data_V_U", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_ciphertext_and_decryptedtext_V_keep_V_U", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_ciphertext_and_decryptedtext_V_strb_V_U", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_ciphertext_and_decryptedtext_V_user_V_U", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_ciphertext_and_decryptedtext_V_last_V_U", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_ciphertext_and_decryptedtext_V_id_V_U", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_ciphertext_and_decryptedtext_V_dest_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	aes {
		key_and_plaintext_V_data_V {Type I LastRead 0 FirstWrite -1}
		key_and_plaintext_V_keep_V {Type I LastRead 0 FirstWrite -1}
		key_and_plaintext_V_strb_V {Type I LastRead 0 FirstWrite -1}
		key_and_plaintext_V_user_V {Type I LastRead 0 FirstWrite -1}
		key_and_plaintext_V_last_V {Type I LastRead 0 FirstWrite -1}
		key_and_plaintext_V_id_V {Type I LastRead 0 FirstWrite -1}
		key_and_plaintext_V_dest_V {Type I LastRead 0 FirstWrite -1}
		ciphertext_and_decryptedtext_V_data_V {Type O LastRead -1 FirstWrite 1}
		ciphertext_and_decryptedtext_V_keep_V {Type O LastRead -1 FirstWrite 1}
		ciphertext_and_decryptedtext_V_strb_V {Type O LastRead -1 FirstWrite 1}
		ciphertext_and_decryptedtext_V_user_V {Type O LastRead -1 FirstWrite 1}
		ciphertext_and_decryptedtext_V_last_V {Type O LastRead -1 FirstWrite 1}
		ciphertext_and_decryptedtext_V_id_V {Type O LastRead -1 FirstWrite 1}
		ciphertext_and_decryptedtext_V_dest_V {Type O LastRead -1 FirstWrite 1}
		mode {Type I LastRead 5 FirstWrite -1}
		enable_in {Type I LastRead -1 FirstWrite -1}
		enable_out {Type I LastRead -1 FirstWrite -1}
		power_reading_in {Type I LastRead -1 FirstWrite -1}
		power_reading_out {Type I LastRead -1 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}
		rsbox {Type I LastRead -1 FirstWrite -1}}
	aes_Pipeline_1 {
		key_array128 {Type O LastRead -1 FirstWrite 0}}
	aes_Pipeline_2 {
		key_array128 {Type O LastRead -1 FirstWrite 0}}
	aes_Pipeline_3 {
		key_array128 {Type O LastRead -1 FirstWrite 0}}
	aes_Pipeline_cipherkeyLoop {
		cipherkey_size {Type I LastRead 0 FirstWrite -1}
		key_and_plaintext_V_data_V {Type I LastRead 0 FirstWrite -1}
		key_and_plaintext_V_keep_V {Type I LastRead 0 FirstWrite -1}
		key_and_plaintext_V_strb_V {Type I LastRead 0 FirstWrite -1}
		key_and_plaintext_V_user_V {Type I LastRead 0 FirstWrite -1}
		key_and_plaintext_V_last_V {Type I LastRead 0 FirstWrite -1}
		key_and_plaintext_V_id_V {Type I LastRead 0 FirstWrite -1}
		key_and_plaintext_V_dest_V {Type I LastRead 0 FirstWrite -1}
		key_array {Type I LastRead 0 FirstWrite -1}
		key_array128 {Type O LastRead -1 FirstWrite 0}}
	aes_Pipeline_plaintextLoop {
		key_and_plaintext_V_data_V {Type I LastRead 0 FirstWrite -1}
		key_and_plaintext_V_keep_V {Type I LastRead 0 FirstWrite -1}
		key_and_plaintext_V_strb_V {Type I LastRead 0 FirstWrite -1}
		key_and_plaintext_V_user_V {Type I LastRead 0 FirstWrite -1}
		key_and_plaintext_V_last_V {Type I LastRead 0 FirstWrite -1}
		key_and_plaintext_V_id_V {Type I LastRead 0 FirstWrite -1}
		key_and_plaintext_V_dest_V {Type I LastRead 0 FirstWrite -1}
		plaintext_array {Type O LastRead -1 FirstWrite 0}
		tmp_keep_V_out {Type O LastRead -1 FirstWrite 0}
		tmp_strb_V_out {Type O LastRead -1 FirstWrite 0}
		tmp_user_V_out {Type O LastRead -1 FirstWrite 0}
		p_4_0_0_0115_phi_out {Type O LastRead -1 FirstWrite 0}
		tmp_id_V_out {Type O LastRead -1 FirstWrite 0}
		tmp_dest_V_out {Type O LastRead -1 FirstWrite 0}}
	aes_Pipeline_aesEncryptLoop1_aesEncryptLoop2 {
		plaintext_array {Type I LastRead 0 FirstWrite -1}
		block_1 {Type O LastRead -1 FirstWrite 1}}
	expandKey {
		expandedKey_0 {Type IO LastRead 41 FirstWrite 2}
		expandedKey_1 {Type IO LastRead 43 FirstWrite 2}
		key_array128 {Type I LastRead 2 FirstWrite -1}
		key {Type I LastRead 0 FirstWrite -1}
		size {Type I LastRead 0 FirstWrite -1}
		expandedKeySize {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}}
	expandKey_Pipeline_expandKeyLoop1 {
		zext_ln241 {Type I LastRead 0 FirstWrite -1}
		key {Type I LastRead 0 FirstWrite -1}
		key_array128 {Type I LastRead 2 FirstWrite -1}
		expandedKey_1 {Type O LastRead -1 FirstWrite 2}
		expandedKey_0 {Type O LastRead -1 FirstWrite 2}}
	expandKey_Pipeline_expandKeyLoop2 {
		zext_ln241 {Type I LastRead 0 FirstWrite -1}
		expandedKey_1 {Type IO LastRead 43 FirstWrite 38}
		expandedKey_0 {Type IO LastRead 41 FirstWrite 38}
		expandedKeySize_cast {Type I LastRead 0 FirstWrite -1}
		zext_ln241_1 {Type I LastRead 0 FirstWrite -1}
		size_cast7 {Type I LastRead 0 FirstWrite -1}
		cmp17 {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}}
	aes_main {
		state {Type IO LastRead 14 FirstWrite 1}
		expandedKey_0 {Type I LastRead 4 FirstWrite -1}
		expandedKey_1 {Type I LastRead 4 FirstWrite -1}
		nbrRounds {Type I LastRead 4 FirstWrite -1}
		sbox {Type I LastRead 17 FirstWrite -1}}
	aes_main_Pipeline_createRoundKeyLoop1_createRoundKeyLoop2 {
		expandedKey_0 {Type I LastRead 0 FirstWrite -1}
		expandedKey_1 {Type I LastRead 0 FirstWrite -1}
		roundKey {Type O LastRead -1 FirstWrite 1}}
	aes_main_Pipeline_addRoundKeyLoop {
		state {Type IO LastRead 0 FirstWrite 1}
		roundKey {Type I LastRead 0 FirstWrite -1}}
	aes_main_Pipeline_aesMainLoop {
		roundKey {Type IO LastRead 8 FirstWrite -1}
		nbrRounds {Type I LastRead 0 FirstWrite -1}
		expandedKey_0 {Type I LastRead 4 FirstWrite -1}
		expandedKey_1 {Type I LastRead 4 FirstWrite -1}
		state {Type IO LastRead 8 FirstWrite 11}
		sbox {Type I LastRead -1 FirstWrite -1}}
	aes_round {
		state {Type IO LastRead 8 FirstWrite 11}
		roundKey {Type I LastRead 8 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	galois_multiplication {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	galois_multiplication {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	aes_main_Pipeline_createRoundKeyLoop1_createRoundKeyLoop21 {
		nbrRounds {Type I LastRead 0 FirstWrite -1}
		expandedKey_0 {Type I LastRead 0 FirstWrite -1}
		expandedKey_1 {Type I LastRead 0 FirstWrite -1}
		roundKey {Type O LastRead -1 FirstWrite 1}}
	aes_main_Pipeline_shiftRowLoop1 {
		sbox_load_33 {Type I LastRead 0 FirstWrite -1}
		sbox_load_32 {Type I LastRead 0 FirstWrite -1}
		sbox_load_31 {Type I LastRead 0 FirstWrite -1}
		sbox_load_30 {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 1}
		p_out1 {Type O LastRead -1 FirstWrite 1}
		p_out2 {Type O LastRead -1 FirstWrite 1}
		tmp_60_out {Type O LastRead -1 FirstWrite 1}}
	aes_main_Pipeline_shiftRowLoop12 {
		sbox_load_37 {Type I LastRead 0 FirstWrite -1}
		sbox_load_36 {Type I LastRead 0 FirstWrite -1}
		sbox_load_35 {Type I LastRead 0 FirstWrite -1}
		sbox_load_34 {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 1}
		p_out1 {Type O LastRead -1 FirstWrite 1}
		p_out2 {Type O LastRead -1 FirstWrite 1}
		tmp_61_out {Type O LastRead -1 FirstWrite 1}}
	aes_main_Pipeline_addRoundKeyLoop3 {
		state {Type IO LastRead 0 FirstWrite 1}
		roundKey {Type I LastRead 0 FirstWrite -1}}
	aes_Pipeline_aesEncryptLoop3_aesEncryptLoop4 {
		block_1 {Type I LastRead 0 FirstWrite -1}
		ciphertext_array {Type O LastRead -1 FirstWrite 1}}
	aes_Pipeline_aesDecryptLoop1_aesDecryptLoop2 {
		ciphertext_array {Type I LastRead 0 FirstWrite -1}
		block_r {Type O LastRead -1 FirstWrite 1}}
	aes_invMain {
		state {Type IO LastRead 16 FirstWrite 1}
		expandedKey_0 {Type I LastRead 4 FirstWrite -1}
		expandedKey_1 {Type I LastRead 4 FirstWrite -1}
		nbrRounds {Type I LastRead 0 FirstWrite -1}
		rsbox {Type I LastRead -1 FirstWrite -1}}
	aes_invMain_Pipeline_createRoundKeyLoop1_createRoundKeyLoop2 {
		nbrRounds {Type I LastRead 0 FirstWrite -1}
		expandedKey_0 {Type I LastRead 0 FirstWrite -1}
		expandedKey_1 {Type I LastRead 0 FirstWrite -1}
		roundKey {Type O LastRead -1 FirstWrite 1}}
	aes_invMain_Pipeline_addRoundKeyLoop {
		state {Type IO LastRead 0 FirstWrite 1}
		roundKey {Type I LastRead 0 FirstWrite -1}}
	aes_invMain_Pipeline_aesInvMainLoop {
		zext_ln442 {Type I LastRead 0 FirstWrite -1}
		roundKey {Type IO LastRead 8 FirstWrite -1}
		expandedKey_0 {Type I LastRead 4 FirstWrite -1}
		expandedKey_1 {Type I LastRead 4 FirstWrite -1}
		state {Type IO LastRead 8 FirstWrite 10}
		rsbox {Type I LastRead -1 FirstWrite -1}}
	aes_invRound {
		state {Type IO LastRead 8 FirstWrite 10}
		roundKey {Type I LastRead 8 FirstWrite -1}
		rsbox {Type I LastRead -1 FirstWrite -1}}
	galois_multiplication {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	galois_multiplication {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	aes_invMain_Pipeline_createRoundKeyLoop1_createRoundKeyLoop24 {
		expandedKey_0 {Type I LastRead 0 FirstWrite -1}
		expandedKey_1 {Type I LastRead 0 FirstWrite -1}
		roundKey {Type O LastRead -1 FirstWrite 1}}
	aes_invMain_Pipeline_invShiftRowLoop1 {
		state_load_49 {Type I LastRead 0 FirstWrite -1}
		state_load_29 {Type I LastRead 0 FirstWrite -1}
		state_load_28 {Type I LastRead 0 FirstWrite -1}
		state_load_27 {Type I LastRead 0 FirstWrite -1}
		num_assign_62_out {Type O LastRead -1 FirstWrite 1}
		num_assign_63_out {Type O LastRead -1 FirstWrite 1}
		num_assign_64_out {Type O LastRead -1 FirstWrite 1}
		tmp_127_out {Type O LastRead -1 FirstWrite 1}}
	aes_invMain_Pipeline_invShiftRowLoop15 {
		state_load_50 {Type I LastRead 0 FirstWrite -1}
		state_load_32 {Type I LastRead 0 FirstWrite -1}
		state_load_31 {Type I LastRead 0 FirstWrite -1}
		state_load_30 {Type I LastRead 0 FirstWrite -1}
		num_assign_66_out {Type O LastRead -1 FirstWrite 1}
		num_assign_67_out {Type O LastRead -1 FirstWrite 1}
		num_assign_68_out {Type O LastRead -1 FirstWrite 1}
		tmp_128_out {Type O LastRead -1 FirstWrite 1}}
	aes_invMain_Pipeline_addRoundKeyLoop6 {
		state {Type IO LastRead 0 FirstWrite 1}
		roundKey {Type I LastRead 0 FirstWrite -1}}
	aes_Pipeline_aesDecryptLoop3_aesDecryptLoop4 {
		block_r {Type I LastRead 0 FirstWrite -1}
		decryptedtext_array {Type O LastRead -1 FirstWrite 1}}
	aes_Pipeline_ciphertextLoop {
		ciphertext_array {Type I LastRead 0 FirstWrite -1}
		tmp_keep_V_reload {Type I LastRead 0 FirstWrite -1}
		tmp_strb_V_reload {Type I LastRead 0 FirstWrite -1}
		tmp_user_V_reload {Type I LastRead 0 FirstWrite -1}
		tmp_id_V_reload {Type I LastRead 0 FirstWrite -1}
		tmp_dest_V_reload {Type I LastRead 0 FirstWrite -1}
		ciphertext_and_decryptedtext_V_data_V {Type O LastRead -1 FirstWrite 1}
		ciphertext_and_decryptedtext_V_keep_V {Type O LastRead -1 FirstWrite 1}
		ciphertext_and_decryptedtext_V_strb_V {Type O LastRead -1 FirstWrite 1}
		ciphertext_and_decryptedtext_V_user_V {Type O LastRead -1 FirstWrite 1}
		ciphertext_and_decryptedtext_V_last_V {Type O LastRead -1 FirstWrite 1}
		ciphertext_and_decryptedtext_V_id_V {Type O LastRead -1 FirstWrite 1}
		ciphertext_and_decryptedtext_V_dest_V {Type O LastRead -1 FirstWrite 1}}
	aes_Pipeline_decryptedTextLoop {
		decryptedtext_array {Type I LastRead 0 FirstWrite -1}
		tmp_keep_V_reload {Type I LastRead 0 FirstWrite -1}
		tmp_strb_V_reload {Type I LastRead 0 FirstWrite -1}
		tmp_user_V_reload {Type I LastRead 0 FirstWrite -1}
		tmp_id_V_reload {Type I LastRead 0 FirstWrite -1}
		tmp_dest_V_reload {Type I LastRead 0 FirstWrite -1}
		ciphertext_and_decryptedtext_V_data_V {Type O LastRead -1 FirstWrite 1}
		ciphertext_and_decryptedtext_V_keep_V {Type O LastRead -1 FirstWrite 1}
		ciphertext_and_decryptedtext_V_strb_V {Type O LastRead -1 FirstWrite 1}
		ciphertext_and_decryptedtext_V_user_V {Type O LastRead -1 FirstWrite 1}
		ciphertext_and_decryptedtext_V_last_V {Type O LastRead -1 FirstWrite 1}
		ciphertext_and_decryptedtext_V_id_V {Type O LastRead -1 FirstWrite 1}
		ciphertext_and_decryptedtext_V_dest_V {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "84", "Max" : "7379"}
	, {"Name" : "Interval", "Min" : "85", "Max" : "7380"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	key_and_plaintext_V_data_V { axis {  { key_and_plaintext_TDATA in_data 0 8 } } }
	key_and_plaintext_V_keep_V { axis {  { key_and_plaintext_TKEEP in_data 0 1 } } }
	key_and_plaintext_V_strb_V { axis {  { key_and_plaintext_TSTRB in_data 0 1 } } }
	key_and_plaintext_V_user_V { axis {  { key_and_plaintext_TUSER in_data 0 1 } } }
	key_and_plaintext_V_last_V { axis {  { key_and_plaintext_TLAST in_data 0 1 } } }
	key_and_plaintext_V_id_V { axis {  { key_and_plaintext_TID in_data 0 1 } } }
	key_and_plaintext_V_dest_V { axis {  { key_and_plaintext_TVALID in_vld 0 1 }  { key_and_plaintext_TREADY in_acc 1 1 }  { key_and_plaintext_TDEST in_data 0 1 } } }
	ciphertext_and_decryptedtext_V_data_V { axis {  { ciphertext_and_decryptedtext_TDATA out_data 1 8 } } }
	ciphertext_and_decryptedtext_V_keep_V { axis {  { ciphertext_and_decryptedtext_TKEEP out_data 1 1 } } }
	ciphertext_and_decryptedtext_V_strb_V { axis {  { ciphertext_and_decryptedtext_TSTRB out_data 1 1 } } }
	ciphertext_and_decryptedtext_V_user_V { axis {  { ciphertext_and_decryptedtext_TUSER out_data 1 1 } } }
	ciphertext_and_decryptedtext_V_last_V { axis {  { ciphertext_and_decryptedtext_TLAST out_data 1 1 } } }
	ciphertext_and_decryptedtext_V_id_V { axis {  { ciphertext_and_decryptedtext_TID out_data 1 1 } } }
	ciphertext_and_decryptedtext_V_dest_V { axis {  { ciphertext_and_decryptedtext_TVALID out_vld 1 1 }  { ciphertext_and_decryptedtext_TREADY out_acc 0 1 }  { ciphertext_and_decryptedtext_TDEST out_data 1 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
