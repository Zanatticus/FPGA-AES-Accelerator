set moduleName aes
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_none
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
 	{ "Name" : "mode", "interface" : "axi_slave", "bundle":"CTRL_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "enable_in", "interface" : "axi_slave", "bundle":"CTRL_BUS","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "enable_out", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "power_reading_in", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "power_reading_out", "interface" : "axi_slave", "bundle":"CTRL_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":32}, "offset_end" : {"in":39}} ]}
# RTL Port declarations: 
set portNum 54
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
	{ s_axi_CTRL_BUS_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_CTRL_BUS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CTRL_BUS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CTRL_BUS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_CTRL_BUS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_CTRL_BUS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_CTRL_BUS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_BRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_CTRL_BUS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "AWADDR" },"address":[{"name":"aes","role":"start","value":"0","valid_bit":"0"},{"name":"aes","role":"continue","value":"0","valid_bit":"4"},{"name":"aes","role":"auto_start","value":"0","valid_bit":"7"},{"name":"mode","role":"data","value":"16"},{"name":"enable_in","role":"data","value":"24"},{"name":"power_reading_out","role":"data","value":"32"}] },
	{ "name": "s_axi_CTRL_BUS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "AWVALID" } },
	{ "name": "s_axi_CTRL_BUS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "AWREADY" } },
	{ "name": "s_axi_CTRL_BUS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "WVALID" } },
	{ "name": "s_axi_CTRL_BUS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "WREADY" } },
	{ "name": "s_axi_CTRL_BUS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "WDATA" } },
	{ "name": "s_axi_CTRL_BUS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "WSTRB" } },
	{ "name": "s_axi_CTRL_BUS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "ARADDR" },"address":[{"name":"aes","role":"start","value":"0","valid_bit":"0"},{"name":"aes","role":"done","value":"0","valid_bit":"1"},{"name":"aes","role":"idle","value":"0","valid_bit":"2"},{"name":"aes","role":"ready","value":"0","valid_bit":"3"},{"name":"aes","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_CTRL_BUS_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "ARVALID" } },
	{ "name": "s_axi_CTRL_BUS_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "ARREADY" } },
	{ "name": "s_axi_CTRL_BUS_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "RVALID" } },
	{ "name": "s_axi_CTRL_BUS_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "RREADY" } },
	{ "name": "s_axi_CTRL_BUS_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "RDATA" } },
	{ "name": "s_axi_CTRL_BUS_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "RRESP" } },
	{ "name": "s_axi_CTRL_BUS_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "BVALID" } },
	{ "name": "s_axi_CTRL_BUS_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "BREADY" } },
	{ "name": "s_axi_CTRL_BUS_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "BRESP" } },
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"enable_out","role":"data","value":"16"},{"name":"power_reading_in","role":"data","value":"24"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[] },
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "11", "13", "15", "17", "19", "21", "29", "50", "52", "54", "76", "78", "80", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100"],
		"CDFG" : "aes",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "15", "SubInstance" : "grp_aes_Pipeline_VITIS_LOOP_70_2_fu_289", "Port" : "key_and_plaintext_V_data_V", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "17", "SubInstance" : "grp_aes_Pipeline_VITIS_LOOP_75_3_fu_312", "Port" : "key_and_plaintext_V_data_V", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "key_and_plaintext_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_aes_Pipeline_VITIS_LOOP_70_2_fu_289", "Port" : "key_and_plaintext_V_keep_V", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "17", "SubInstance" : "grp_aes_Pipeline_VITIS_LOOP_75_3_fu_312", "Port" : "key_and_plaintext_V_keep_V", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "key_and_plaintext_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_aes_Pipeline_VITIS_LOOP_70_2_fu_289", "Port" : "key_and_plaintext_V_strb_V", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "17", "SubInstance" : "grp_aes_Pipeline_VITIS_LOOP_75_3_fu_312", "Port" : "key_and_plaintext_V_strb_V", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "key_and_plaintext_V_user_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_aes_Pipeline_VITIS_LOOP_70_2_fu_289", "Port" : "key_and_plaintext_V_user_V", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "17", "SubInstance" : "grp_aes_Pipeline_VITIS_LOOP_75_3_fu_312", "Port" : "key_and_plaintext_V_user_V", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "key_and_plaintext_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_aes_Pipeline_VITIS_LOOP_70_2_fu_289", "Port" : "key_and_plaintext_V_last_V", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "17", "SubInstance" : "grp_aes_Pipeline_VITIS_LOOP_75_3_fu_312", "Port" : "key_and_plaintext_V_last_V", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "key_and_plaintext_V_id_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_aes_Pipeline_VITIS_LOOP_70_2_fu_289", "Port" : "key_and_plaintext_V_id_V", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "17", "SubInstance" : "grp_aes_Pipeline_VITIS_LOOP_75_3_fu_312", "Port" : "key_and_plaintext_V_id_V", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "key_and_plaintext_V_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_aes_Pipeline_VITIS_LOOP_70_2_fu_289", "Port" : "key_and_plaintext_V_dest_V", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "17", "SubInstance" : "grp_aes_Pipeline_VITIS_LOOP_75_3_fu_312", "Port" : "key_and_plaintext_V_dest_V", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "ciphertext_and_decryptedtext_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "grp_aes_Pipeline_VITIS_LOOP_94_5_fu_420", "Port" : "ciphertext_and_decryptedtext_V_data_V", "Inst_start_state" : "26", "Inst_end_state" : "27"},
					{"ID" : "78", "SubInstance" : "grp_aes_Pipeline_VITIS_LOOP_85_4_fu_396", "Port" : "ciphertext_and_decryptedtext_V_data_V", "Inst_start_state" : "23", "Inst_end_state" : "24"}]},
			{"Name" : "ciphertext_and_decryptedtext_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "grp_aes_Pipeline_VITIS_LOOP_94_5_fu_420", "Port" : "ciphertext_and_decryptedtext_V_keep_V", "Inst_start_state" : "26", "Inst_end_state" : "27"},
					{"ID" : "78", "SubInstance" : "grp_aes_Pipeline_VITIS_LOOP_85_4_fu_396", "Port" : "ciphertext_and_decryptedtext_V_keep_V", "Inst_start_state" : "23", "Inst_end_state" : "24"}]},
			{"Name" : "ciphertext_and_decryptedtext_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "grp_aes_Pipeline_VITIS_LOOP_94_5_fu_420", "Port" : "ciphertext_and_decryptedtext_V_strb_V", "Inst_start_state" : "26", "Inst_end_state" : "27"},
					{"ID" : "78", "SubInstance" : "grp_aes_Pipeline_VITIS_LOOP_85_4_fu_396", "Port" : "ciphertext_and_decryptedtext_V_strb_V", "Inst_start_state" : "23", "Inst_end_state" : "24"}]},
			{"Name" : "ciphertext_and_decryptedtext_V_user_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "grp_aes_Pipeline_VITIS_LOOP_94_5_fu_420", "Port" : "ciphertext_and_decryptedtext_V_user_V", "Inst_start_state" : "26", "Inst_end_state" : "27"},
					{"ID" : "78", "SubInstance" : "grp_aes_Pipeline_VITIS_LOOP_85_4_fu_396", "Port" : "ciphertext_and_decryptedtext_V_user_V", "Inst_start_state" : "23", "Inst_end_state" : "24"}]},
			{"Name" : "ciphertext_and_decryptedtext_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "grp_aes_Pipeline_VITIS_LOOP_94_5_fu_420", "Port" : "ciphertext_and_decryptedtext_V_last_V", "Inst_start_state" : "26", "Inst_end_state" : "27"},
					{"ID" : "78", "SubInstance" : "grp_aes_Pipeline_VITIS_LOOP_85_4_fu_396", "Port" : "ciphertext_and_decryptedtext_V_last_V", "Inst_start_state" : "23", "Inst_end_state" : "24"}]},
			{"Name" : "ciphertext_and_decryptedtext_V_id_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "grp_aes_Pipeline_VITIS_LOOP_94_5_fu_420", "Port" : "ciphertext_and_decryptedtext_V_id_V", "Inst_start_state" : "26", "Inst_end_state" : "27"},
					{"ID" : "78", "SubInstance" : "grp_aes_Pipeline_VITIS_LOOP_85_4_fu_396", "Port" : "ciphertext_and_decryptedtext_V_id_V", "Inst_start_state" : "23", "Inst_end_state" : "24"}]},
			{"Name" : "ciphertext_and_decryptedtext_V_dest_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "grp_aes_Pipeline_VITIS_LOOP_94_5_fu_420", "Port" : "ciphertext_and_decryptedtext_V_dest_V", "Inst_start_state" : "26", "Inst_end_state" : "27"},
					{"ID" : "78", "SubInstance" : "grp_aes_Pipeline_VITIS_LOOP_85_4_fu_396", "Port" : "ciphertext_and_decryptedtext_V_dest_V", "Inst_start_state" : "23", "Inst_end_state" : "24"}]},
			{"Name" : "mode", "Type" : "None", "Direction" : "I"},
			{"Name" : "enable_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "enable_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "power_reading_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "power_reading_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_expandKey_fu_343", "Port" : "sbox", "Inst_start_state" : "18", "Inst_end_state" : "19"},
					{"ID" : "29", "SubInstance" : "grp_aes_main_fu_358", "Port" : "sbox", "Inst_start_state" : "14", "Inst_end_state" : "15"}]},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_expandKey_fu_343", "Port" : "Rcon", "Inst_start_state" : "18", "Inst_end_state" : "19"}]},
			{"Name" : "rsbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_aes_invMain_fu_380", "Port" : "rsbox", "Inst_start_state" : "20", "Inst_end_state" : "21"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_64_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "28", "FirstState" : "ap_ST_fsm_state7", "LastState" : ["ap_ST_fsm_state27"], "QuitState" : ["ap_ST_fsm_state27"], "PreState" : ["ap_ST_fsm_state6"], "PostState" : ["ap_ST_fsm_state28"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.key_array128_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.expandedKey_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.expandedKey_1_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_1_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.plaintext_array_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ciphertext_array_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.decryptedtext_array_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_Pipeline_1_fu_273", "Parent" : "0", "Child" : ["10"],
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
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_Pipeline_1_fu_273.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_Pipeline_2_fu_279", "Parent" : "0", "Child" : ["12"],
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
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_Pipeline_2_fu_279.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_Pipeline_3_fu_284", "Parent" : "0", "Child" : ["14"],
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
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_Pipeline_3_fu_284.flow_control_loop_pipe_sequential_init_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_Pipeline_VITIS_LOOP_70_2_fu_289", "Parent" : "0", "Child" : ["16"],
		"CDFG" : "aes_Pipeline_VITIS_LOOP_70_2",
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
			{"Name" : "VITIS_LOOP_70_2", "PipelineType" : "NotSupport"}]},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_Pipeline_VITIS_LOOP_70_2_fu_289.flow_control_loop_pipe_sequential_init_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_Pipeline_VITIS_LOOP_75_3_fu_312", "Parent" : "0", "Child" : ["18"],
		"CDFG" : "aes_Pipeline_VITIS_LOOP_75_3",
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
			{"Name" : "VITIS_LOOP_75_3", "PipelineType" : "NotSupport"}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_Pipeline_VITIS_LOOP_75_3_fu_312.flow_control_loop_pipe_sequential_init_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_Pipeline_VITIS_LOOP_475_1_VITIS_LOOP_478_2_fu_337", "Parent" : "0", "Child" : ["20"],
		"CDFG" : "aes_Pipeline_VITIS_LOOP_475_1_VITIS_LOOP_478_2",
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
			{"Name" : "VITIS_LOOP_475_1_VITIS_LOOP_478_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_Pipeline_VITIS_LOOP_475_1_VITIS_LOOP_478_2_fu_337.flow_control_loop_pipe_sequential_init_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_expandKey_fu_343", "Parent" : "0", "Child" : ["22", "24"],
		"CDFG" : "expandKey",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "expandedKey", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_expandKey_Pipeline_expandKeyLoop_fu_56", "Port" : "expandedKey", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "22", "SubInstance" : "grp_expandKey_Pipeline_VITIS_LOOP_227_1_fu_44", "Port" : "expandedKey", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "key_array128", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_expandKey_Pipeline_VITIS_LOOP_227_1_fu_44", "Port" : "key_array128", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "key", "Type" : "None", "Direction" : "I"},
			{"Name" : "size", "Type" : "None", "Direction" : "I"},
			{"Name" : "expandedKeySize", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_expandKey_Pipeline_expandKeyLoop_fu_56", "Port" : "sbox", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_expandKey_Pipeline_expandKeyLoop_fu_56", "Port" : "Rcon", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_expandKey_fu_343.grp_expandKey_Pipeline_VITIS_LOOP_227_1_fu_44", "Parent" : "21", "Child" : ["23"],
		"CDFG" : "expandKey_Pipeline_VITIS_LOOP_227_1",
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
			{"Name" : "size", "Type" : "None", "Direction" : "I"},
			{"Name" : "key", "Type" : "None", "Direction" : "I"},
			{"Name" : "key_array128", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "expandedKey", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_227_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_expandKey_fu_343.grp_expandKey_Pipeline_VITIS_LOOP_227_1_fu_44.flow_control_loop_pipe_sequential_init_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_expandKey_fu_343.grp_expandKey_Pipeline_expandKeyLoop_fu_56", "Parent" : "21", "Child" : ["25", "26", "27", "28"],
		"CDFG" : "expandKey_Pipeline_expandKeyLoop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "size_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "expandedKeySize", "Type" : "None", "Direction" : "I"},
			{"Name" : "expandedKey", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cmp17", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "expandKeyLoop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage9", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage9_subdone", "QuitState" : "ap_ST_fsm_pp0_stage9", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage9_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_expandKey_fu_343.grp_expandKey_Pipeline_expandKeyLoop_fu_56.sbox_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_expandKey_fu_343.grp_expandKey_Pipeline_expandKeyLoop_fu_56.Rcon_U", "Parent" : "24"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_expandKey_fu_343.grp_expandKey_Pipeline_expandKeyLoop_fu_56.urem_8ns_6ns_5_12_1_U34", "Parent" : "24"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_expandKey_fu_343.grp_expandKey_Pipeline_expandKeyLoop_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "24"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_358", "Parent" : "0", "Child" : ["30", "31", "33", "35", "37", "40", "48"],
		"CDFG" : "aes_main",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1196", "EstimateLatencyMax" : "2024",
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
					{"ID" : "33", "SubInstance" : "grp_aes_main_Pipeline_VITIS_LOOP_308_1_fu_254", "Port" : "state", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "48", "SubInstance" : "grp_aes_main_Pipeline_VITIS_LOOP_308_12_fu_286", "Port" : "state", "Inst_start_state" : "11", "Inst_end_state" : "16"},
					{"ID" : "40", "SubInstance" : "grp_aes_round_fu_277", "Port" : "state", "Inst_start_state" : "6", "Inst_end_state" : "9"},
					{"ID" : "37", "SubInstance" : "grp_aes_main_Pipeline_VITIS_LOOP_276_1_fu_269", "Port" : "state", "Inst_start_state" : "5", "Inst_end_state" : "10"}]},
			{"Name" : "expandedKey", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_aes_main_Pipeline_VITIS_LOOP_398_1_VITIS_LOOP_401_2_fu_246", "Port" : "expandedKey", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "35", "SubInstance" : "grp_aes_main_Pipeline_VITIS_LOOP_398_1_VITIS_LOOP_401_21_fu_261", "Port" : "expandedKey", "Inst_start_state" : "5", "Inst_end_state" : "10"}]},
			{"Name" : "nbrRounds", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "grp_aes_round_fu_277", "Port" : "sbox", "Inst_start_state" : "6", "Inst_end_state" : "9"},
					{"ID" : "37", "SubInstance" : "grp_aes_main_Pipeline_VITIS_LOOP_276_1_fu_269", "Port" : "sbox", "Inst_start_state" : "5", "Inst_end_state" : "10"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_401_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_state7", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state7"], "PreState" : ["ap_ST_fsm_state6"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_398_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state5"], "PostState" : ["ap_ST_fsm_state9"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_415_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state10"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_296_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_state14", "LastState" : ["ap_ST_fsm_state14"], "QuitState" : ["ap_ST_fsm_state14"], "PreState" : ["ap_ST_fsm_state13"], "PostState" : ["ap_ST_fsm_state15"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state14_blk"}},
			{"Name" : "shiftRowsLoop", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_state11", "LastState" : ["ap_ST_fsm_state15"], "QuitState" : ["ap_ST_fsm_state11"], "PreState" : ["ap_ST_fsm_state10"], "PostState" : ["ap_ST_fsm_state16"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_358.roundKey_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_358.grp_aes_main_Pipeline_VITIS_LOOP_398_1_VITIS_LOOP_401_2_fu_246", "Parent" : "29", "Child" : ["32"],
		"CDFG" : "aes_main_Pipeline_VITIS_LOOP_398_1_VITIS_LOOP_401_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "19",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "expandedKey", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "roundKey", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_398_1_VITIS_LOOP_401_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_358.grp_aes_main_Pipeline_VITIS_LOOP_398_1_VITIS_LOOP_401_2_fu_246.flow_control_loop_pipe_sequential_init_U", "Parent" : "31"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_358.grp_aes_main_Pipeline_VITIS_LOOP_308_1_fu_254", "Parent" : "29", "Child" : ["34"],
		"CDFG" : "aes_main_Pipeline_VITIS_LOOP_308_1",
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
			{"Name" : "VITIS_LOOP_308_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_358.grp_aes_main_Pipeline_VITIS_LOOP_308_1_fu_254.flow_control_loop_pipe_sequential_init_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_358.grp_aes_main_Pipeline_VITIS_LOOP_398_1_VITIS_LOOP_401_21_fu_261", "Parent" : "29", "Child" : ["36"],
		"CDFG" : "aes_main_Pipeline_VITIS_LOOP_398_1_VITIS_LOOP_401_21",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "19",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nbrRounds", "Type" : "None", "Direction" : "I"},
			{"Name" : "expandedKey", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "roundKey", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_398_1_VITIS_LOOP_401_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_358.grp_aes_main_Pipeline_VITIS_LOOP_398_1_VITIS_LOOP_401_21_fu_261.flow_control_loop_pipe_sequential_init_U", "Parent" : "35"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_358.grp_aes_main_Pipeline_VITIS_LOOP_276_1_fu_269", "Parent" : "29", "Child" : ["38", "39"],
		"CDFG" : "aes_main_Pipeline_VITIS_LOOP_276_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "19",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_276_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_358.grp_aes_main_Pipeline_VITIS_LOOP_276_1_fu_269.sbox_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_358.grp_aes_main_Pipeline_VITIS_LOOP_276_1_fu_269.flow_control_loop_pipe_sequential_init_U", "Parent" : "37"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_358.grp_aes_round_fu_277", "Parent" : "29", "Child" : ["41", "44", "46"],
		"CDFG" : "aes_round",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "80", "EstimateLatencyMax" : "104",
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
					{"ID" : "44", "SubInstance" : "grp_aes_round_Pipeline_mixColumnsLoop_fu_166", "Port" : "state", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "46", "SubInstance" : "grp_aes_round_Pipeline_VITIS_LOOP_308_1_fu_172", "Port" : "state", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "41", "SubInstance" : "grp_aes_round_Pipeline_VITIS_LOOP_276_1_fu_158", "Port" : "state", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "roundKey", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_aes_round_Pipeline_VITIS_LOOP_308_1_fu_172", "Port" : "roundKey", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_aes_round_Pipeline_VITIS_LOOP_276_1_fu_158", "Port" : "sbox", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_296_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state5"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state6_blk"}},
			{"Name" : "shiftRowsLoop", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state8"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_358.grp_aes_round_fu_277.grp_aes_round_Pipeline_VITIS_LOOP_276_1_fu_158", "Parent" : "40", "Child" : ["42", "43"],
		"CDFG" : "aes_round_Pipeline_VITIS_LOOP_276_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "19",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_276_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_358.grp_aes_round_fu_277.grp_aes_round_Pipeline_VITIS_LOOP_276_1_fu_158.sbox_U", "Parent" : "41"},
	{"ID" : "43", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_358.grp_aes_round_fu_277.grp_aes_round_Pipeline_VITIS_LOOP_276_1_fu_158.flow_control_loop_pipe_sequential_init_U", "Parent" : "41"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_358.grp_aes_round_fu_277.grp_aes_round_Pipeline_mixColumnsLoop_fu_166", "Parent" : "40", "Child" : ["45"],
		"CDFG" : "aes_round_Pipeline_mixColumnsLoop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "30", "EstimateLatencyMax" : "30",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "mixColumnsLoop", "PipelineType" : "NotSupport"}]},
	{"ID" : "45", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_358.grp_aes_round_fu_277.grp_aes_round_Pipeline_mixColumnsLoop_fu_166.flow_control_loop_pipe_sequential_init_U", "Parent" : "44"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_358.grp_aes_round_fu_277.grp_aes_round_Pipeline_VITIS_LOOP_308_1_fu_172", "Parent" : "40", "Child" : ["47"],
		"CDFG" : "aes_round_Pipeline_VITIS_LOOP_308_1",
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
			{"Name" : "VITIS_LOOP_308_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "47", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_358.grp_aes_round_fu_277.grp_aes_round_Pipeline_VITIS_LOOP_308_1_fu_172.flow_control_loop_pipe_sequential_init_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_358.grp_aes_main_Pipeline_VITIS_LOOP_308_12_fu_286", "Parent" : "29", "Child" : ["49"],
		"CDFG" : "aes_main_Pipeline_VITIS_LOOP_308_12",
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
			{"Name" : "VITIS_LOOP_308_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_358.grp_aes_main_Pipeline_VITIS_LOOP_308_12_fu_286.flow_control_loop_pipe_sequential_init_U", "Parent" : "48"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_Pipeline_VITIS_LOOP_489_3_VITIS_LOOP_492_4_fu_368", "Parent" : "0", "Child" : ["51"],
		"CDFG" : "aes_Pipeline_VITIS_LOOP_489_3_VITIS_LOOP_492_4",
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
			{"Name" : "VITIS_LOOP_489_3_VITIS_LOOP_492_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_Pipeline_VITIS_LOOP_489_3_VITIS_LOOP_492_4_fu_368.flow_control_loop_pipe_sequential_init_U", "Parent" : "50"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_Pipeline_VITIS_LOOP_665_1_VITIS_LOOP_668_2_fu_374", "Parent" : "0", "Child" : ["53"],
		"CDFG" : "aes_Pipeline_VITIS_LOOP_665_1_VITIS_LOOP_668_2",
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
			{"Name" : "VITIS_LOOP_665_1_VITIS_LOOP_668_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_Pipeline_VITIS_LOOP_665_1_VITIS_LOOP_668_2_fu_374.flow_control_loop_pipe_sequential_init_U", "Parent" : "52"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_invMain_fu_380", "Parent" : "0", "Child" : ["55", "56", "57", "59", "70", "72", "74"],
		"CDFG" : "aes_invMain",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1260", "EstimateLatencyMax" : "2260",
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
					{"ID" : "74", "SubInstance" : "grp_aes_invMain_Pipeline_VITIS_LOOP_308_1_fu_288", "Port" : "state", "Inst_start_state" : "20", "Inst_end_state" : "21"},
					{"ID" : "59", "SubInstance" : "grp_aes_invRound_fu_256", "Port" : "state", "Inst_start_state" : "8", "Inst_end_state" : "11"},
					{"ID" : "70", "SubInstance" : "grp_aes_invMain_Pipeline_VITIS_LOOP_507_1_fu_265", "Port" : "state", "Inst_start_state" : "13", "Inst_end_state" : "19"}]},
			{"Name" : "expandedKey", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_aes_invMain_Pipeline_VITIS_LOOP_398_1_VITIS_LOOP_401_2_fu_249", "Port" : "expandedKey", "Inst_start_state" : "7", "Inst_end_state" : "12"}]},
			{"Name" : "nbrRounds", "Type" : "None", "Direction" : "I"},
			{"Name" : "rsbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_aes_invRound_fu_256", "Port" : "rsbox", "Inst_start_state" : "8", "Inst_end_state" : "11"},
					{"ID" : "70", "SubInstance" : "grp_aes_invMain_Pipeline_VITIS_LOOP_507_1_fu_265", "Port" : "rsbox", "Inst_start_state" : "13", "Inst_end_state" : "19"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_401_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "21", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_398_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "21", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state5"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_308_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "21", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_401_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "21", "FirstState" : "ap_ST_fsm_state9", "LastState" : ["ap_ST_fsm_state10"], "QuitState" : ["ap_ST_fsm_state9"], "PreState" : ["ap_ST_fsm_state8"], "PostState" : ["ap_ST_fsm_state8"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_398_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "21", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state7"], "PostState" : ["ap_ST_fsm_state11"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_605_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "21", "FirstState" : "ap_ST_fsm_state7", "LastState" : ["ap_ST_fsm_state11"], "QuitState" : ["ap_ST_fsm_state7"], "PreState" : ["ap_ST_fsm_state5"], "PostState" : ["ap_ST_fsm_state12"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_515_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "21", "FirstState" : "ap_ST_fsm_state13", "LastState" : ["ap_ST_fsm_state18"], "QuitState" : ["ap_ST_fsm_state13"], "PreState" : ["ap_ST_fsm_state12"], "PostState" : ["ap_ST_fsm_state19"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_invMain_fu_380.rsbox_U", "Parent" : "54"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_invMain_fu_380.roundKey_U", "Parent" : "54"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_invMain_fu_380.grp_aes_invMain_Pipeline_VITIS_LOOP_398_1_VITIS_LOOP_401_2_fu_249", "Parent" : "54", "Child" : ["58"],
		"CDFG" : "aes_invMain_Pipeline_VITIS_LOOP_398_1_VITIS_LOOP_401_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "19",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "expandedKey", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "roundKey", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_398_1_VITIS_LOOP_401_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes_invMain_fu_380.grp_aes_invMain_Pipeline_VITIS_LOOP_398_1_VITIS_LOOP_401_2_fu_249.flow_control_loop_pipe_sequential_init_U", "Parent" : "57"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_invMain_fu_380.grp_aes_invRound_fu_256", "Parent" : "54", "Child" : ["60", "63", "65", "67"],
		"CDFG" : "aes_invRound",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "81", "EstimateLatencyMax" : "117",
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
					{"ID" : "67", "SubInstance" : "grp_aes_invRound_Pipeline_invMixColumnsLoop_fu_135", "Port" : "state", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "65", "SubInstance" : "grp_aes_invRound_Pipeline_VITIS_LOOP_308_1_fu_127", "Port" : "state", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "60", "SubInstance" : "grp_aes_invRound_Pipeline_VITIS_LOOP_507_1_fu_104", "Port" : "state", "Inst_start_state" : "2", "Inst_end_state" : "8"}]},
			{"Name" : "roundKey", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_aes_invRound_Pipeline_VITIS_LOOP_308_1_fu_127", "Port" : "roundKey", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "rsbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "60", "SubInstance" : "grp_aes_invRound_Pipeline_VITIS_LOOP_507_1_fu_104", "Port" : "rsbox", "Inst_start_state" : "2", "Inst_end_state" : "8"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_515_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "12", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state8"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes_invMain_fu_380.grp_aes_invRound_fu_256.grp_aes_invRound_Pipeline_VITIS_LOOP_507_1_fu_104", "Parent" : "59", "Child" : ["61", "62"],
		"CDFG" : "aes_invRound_Pipeline_VITIS_LOOP_507_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "19",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "rsbox", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_507_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "61", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_aes_invMain_fu_380.grp_aes_invRound_fu_256.grp_aes_invRound_Pipeline_VITIS_LOOP_507_1_fu_104.rsbox_U", "Parent" : "60"},
	{"ID" : "62", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_aes_invMain_fu_380.grp_aes_invRound_fu_256.grp_aes_invRound_Pipeline_VITIS_LOOP_507_1_fu_104.flow_control_loop_pipe_sequential_init_U", "Parent" : "60"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes_invMain_fu_380.grp_aes_invRound_fu_256.grp_aes_invRound_Pipeline_invShiftRowLoop_fu_112", "Parent" : "59", "Child" : ["64"],
		"CDFG" : "aes_invRound_Pipeline_invShiftRowLoop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "state_load_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_load_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_load_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "i", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "invShiftRowLoop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "64", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_aes_invMain_fu_380.grp_aes_invRound_fu_256.grp_aes_invRound_Pipeline_invShiftRowLoop_fu_112.flow_control_loop_pipe_sequential_init_U", "Parent" : "63"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes_invMain_fu_380.grp_aes_invRound_fu_256.grp_aes_invRound_Pipeline_VITIS_LOOP_308_1_fu_127", "Parent" : "59", "Child" : ["66"],
		"CDFG" : "aes_invRound_Pipeline_VITIS_LOOP_308_1",
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
			{"Name" : "VITIS_LOOP_308_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "66", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_aes_invMain_fu_380.grp_aes_invRound_fu_256.grp_aes_invRound_Pipeline_VITIS_LOOP_308_1_fu_127.flow_control_loop_pipe_sequential_init_U", "Parent" : "65"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes_invMain_fu_380.grp_aes_invRound_fu_256.grp_aes_invRound_Pipeline_invMixColumnsLoop_fu_135", "Parent" : "59", "Child" : ["68", "69"],
		"CDFG" : "aes_invRound_Pipeline_invMixColumnsLoop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "30", "EstimateLatencyMax" : "30",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "invMixColumnsLoop", "PipelineType" : "NotSupport"}]},
	{"ID" : "68", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_aes_invMain_fu_380.grp_aes_invRound_fu_256.grp_aes_invRound_Pipeline_invMixColumnsLoop_fu_135.grp_galois_multiplication_fu_94", "Parent" : "67",
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
	{"ID" : "69", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_aes_invMain_fu_380.grp_aes_invRound_fu_256.grp_aes_invRound_Pipeline_invMixColumnsLoop_fu_135.flow_control_loop_pipe_sequential_init_U", "Parent" : "67"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_invMain_fu_380.grp_aes_invMain_Pipeline_VITIS_LOOP_507_1_fu_265", "Parent" : "54", "Child" : ["71"],
		"CDFG" : "aes_invMain_Pipeline_VITIS_LOOP_507_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "19",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "rsbox", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_507_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes_invMain_fu_380.grp_aes_invMain_Pipeline_VITIS_LOOP_507_1_fu_265.flow_control_loop_pipe_sequential_init_U", "Parent" : "70"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_invMain_fu_380.grp_aes_invMain_Pipeline_invShiftRowLoop_fu_273", "Parent" : "54", "Child" : ["73"],
		"CDFG" : "aes_invMain_Pipeline_invShiftRowLoop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "state_load_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_load_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_load_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_load_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "invShiftRowLoop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes_invMain_fu_380.grp_aes_invMain_Pipeline_invShiftRowLoop_fu_273.flow_control_loop_pipe_sequential_init_U", "Parent" : "72"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_invMain_fu_380.grp_aes_invMain_Pipeline_VITIS_LOOP_308_1_fu_288", "Parent" : "54", "Child" : ["75"],
		"CDFG" : "aes_invMain_Pipeline_VITIS_LOOP_308_1",
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
			{"Name" : "VITIS_LOOP_308_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes_invMain_fu_380.grp_aes_invMain_Pipeline_VITIS_LOOP_308_1_fu_288.flow_control_loop_pipe_sequential_init_U", "Parent" : "74"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_Pipeline_VITIS_LOOP_679_3_VITIS_LOOP_682_4_fu_390", "Parent" : "0", "Child" : ["77"],
		"CDFG" : "aes_Pipeline_VITIS_LOOP_679_3_VITIS_LOOP_682_4",
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
			{"Name" : "VITIS_LOOP_679_3_VITIS_LOOP_682_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_Pipeline_VITIS_LOOP_679_3_VITIS_LOOP_682_4_fu_390.flow_control_loop_pipe_sequential_init_U", "Parent" : "76"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_Pipeline_VITIS_LOOP_85_4_fu_396", "Parent" : "0", "Child" : ["79"],
		"CDFG" : "aes_Pipeline_VITIS_LOOP_85_4",
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
			{"Name" : "VITIS_LOOP_85_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_Pipeline_VITIS_LOOP_85_4_fu_396.flow_control_loop_pipe_sequential_init_U", "Parent" : "78"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_Pipeline_VITIS_LOOP_94_5_fu_420", "Parent" : "0", "Child" : ["81"],
		"CDFG" : "aes_Pipeline_VITIS_LOOP_94_5",
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
			{"Name" : "VITIS_LOOP_94_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_Pipeline_VITIS_LOOP_94_5_fu_420.flow_control_loop_pipe_sequential_init_U", "Parent" : "80"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_galois_multiplication_fu_560", "Parent" : "0",
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
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_galois_multiplication_fu_565", "Parent" : "0",
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
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_galois_multiplication_fu_570", "Parent" : "0",
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
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CTRL_BUS_s_axi_U", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_key_and_plaintext_V_data_V_U", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_key_and_plaintext_V_keep_V_U", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_key_and_plaintext_V_strb_V_U", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_key_and_plaintext_V_user_V_U", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_key_and_plaintext_V_last_V_U", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_key_and_plaintext_V_id_V_U", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_key_and_plaintext_V_dest_V_U", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_ciphertext_and_decryptedtext_V_data_V_U", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_ciphertext_and_decryptedtext_V_keep_V_U", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_ciphertext_and_decryptedtext_V_strb_V_U", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_ciphertext_and_decryptedtext_V_user_V_U", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_ciphertext_and_decryptedtext_V_last_V_U", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_ciphertext_and_decryptedtext_V_id_V_U", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_ciphertext_and_decryptedtext_V_dest_V_U", "Parent" : "0"}]}


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
	aes_Pipeline_VITIS_LOOP_70_2 {
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
	aes_Pipeline_VITIS_LOOP_75_3 {
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
	aes_Pipeline_VITIS_LOOP_475_1_VITIS_LOOP_478_2 {
		plaintext_array {Type I LastRead 0 FirstWrite -1}
		block_1 {Type O LastRead -1 FirstWrite 1}}
	expandKey {
		expandedKey {Type IO LastRead 22 FirstWrite 1}
		key_array128 {Type I LastRead 0 FirstWrite -1}
		key {Type I LastRead 0 FirstWrite -1}
		size {Type I LastRead 0 FirstWrite -1}
		expandedKeySize {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}}
	expandKey_Pipeline_VITIS_LOOP_227_1 {
		size {Type I LastRead 0 FirstWrite -1}
		key {Type I LastRead 0 FirstWrite -1}
		key_array128 {Type I LastRead 0 FirstWrite -1}
		expandedKey {Type O LastRead -1 FirstWrite 1}}
	expandKey_Pipeline_expandKeyLoop {
		size_cast {Type I LastRead 0 FirstWrite -1}
		expandedKeySize {Type I LastRead 0 FirstWrite -1}
		expandedKey {Type IO LastRead 22 FirstWrite 15}
		cmp17 {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}}
	aes_main {
		state {Type IO LastRead 8 FirstWrite 1}
		expandedKey {Type I LastRead 6 FirstWrite -1}
		nbrRounds {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	aes_main_Pipeline_VITIS_LOOP_398_1_VITIS_LOOP_401_2 {
		expandedKey {Type I LastRead 1 FirstWrite -1}
		roundKey {Type O LastRead -1 FirstWrite 2}}
	aes_main_Pipeline_VITIS_LOOP_308_1 {
		state {Type IO LastRead 0 FirstWrite 1}
		roundKey {Type I LastRead 0 FirstWrite -1}}
	aes_main_Pipeline_VITIS_LOOP_398_1_VITIS_LOOP_401_21 {
		nbrRounds {Type I LastRead 0 FirstWrite -1}
		expandedKey {Type I LastRead 1 FirstWrite -1}
		roundKey {Type O LastRead -1 FirstWrite 2}}
	aes_main_Pipeline_VITIS_LOOP_276_1 {
		state {Type IO LastRead 0 FirstWrite 2}
		sbox {Type I LastRead -1 FirstWrite -1}}
	aes_round {
		state {Type IO LastRead 4 FirstWrite 1}
		roundKey {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	aes_round_Pipeline_VITIS_LOOP_276_1 {
		state {Type IO LastRead 0 FirstWrite 2}
		sbox {Type I LastRead -1 FirstWrite -1}}
	aes_round_Pipeline_mixColumnsLoop {
		state {Type IO LastRead 2 FirstWrite 4}}
	aes_round_Pipeline_VITIS_LOOP_308_1 {
		state {Type IO LastRead 0 FirstWrite 1}
		roundKey {Type I LastRead 0 FirstWrite -1}}
	aes_main_Pipeline_VITIS_LOOP_308_12 {
		state {Type IO LastRead 0 FirstWrite 1}
		roundKey {Type I LastRead 0 FirstWrite -1}}
	aes_Pipeline_VITIS_LOOP_489_3_VITIS_LOOP_492_4 {
		block_1 {Type I LastRead 0 FirstWrite -1}
		ciphertext_array {Type O LastRead -1 FirstWrite 1}}
	aes_Pipeline_VITIS_LOOP_665_1_VITIS_LOOP_668_2 {
		ciphertext_array {Type I LastRead 0 FirstWrite -1}
		block_r {Type O LastRead -1 FirstWrite 1}}
	aes_invMain {
		state {Type IO LastRead 7 FirstWrite 1}
		expandedKey {Type I LastRead 5 FirstWrite -1}
		nbrRounds {Type I LastRead 0 FirstWrite -1}
		rsbox {Type I LastRead -1 FirstWrite -1}}
	aes_invMain_Pipeline_VITIS_LOOP_398_1_VITIS_LOOP_401_2 {
		expandedKey {Type I LastRead 1 FirstWrite -1}
		roundKey {Type O LastRead -1 FirstWrite 2}}
	aes_invRound {
		state {Type IO LastRead 3 FirstWrite 1}
		roundKey {Type I LastRead 0 FirstWrite -1}
		rsbox {Type I LastRead -1 FirstWrite -1}}
	aes_invRound_Pipeline_VITIS_LOOP_507_1 {
		state {Type IO LastRead 0 FirstWrite 2}
		rsbox {Type I LastRead -1 FirstWrite -1}}
	aes_invRound_Pipeline_invShiftRowLoop {
		state_load_15 {Type I LastRead 0 FirstWrite -1}
		state_load_14 {Type I LastRead 0 FirstWrite -1}
		state_load_13 {Type I LastRead 0 FirstWrite -1}
		state_load {Type I LastRead 0 FirstWrite -1}
		i {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 1}
		p_out1 {Type O LastRead -1 FirstWrite 1}
		p_out2 {Type O LastRead -1 FirstWrite 1}
		tmp_out {Type O LastRead -1 FirstWrite 1}}
	aes_invRound_Pipeline_VITIS_LOOP_308_1 {
		state {Type IO LastRead 0 FirstWrite 1}
		roundKey {Type I LastRead 0 FirstWrite -1}}
	aes_invRound_Pipeline_invMixColumnsLoop {
		state {Type IO LastRead 2 FirstWrite 4}}
	galois_multiplication {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	aes_invMain_Pipeline_VITIS_LOOP_507_1 {
		state {Type IO LastRead 0 FirstWrite 2}
		rsbox {Type I LastRead 1 FirstWrite -1}}
	aes_invMain_Pipeline_invShiftRowLoop {
		state_load_24 {Type I LastRead 0 FirstWrite -1}
		state_load_23 {Type I LastRead 0 FirstWrite -1}
		state_load_22 {Type I LastRead 0 FirstWrite -1}
		state_load_21 {Type I LastRead 0 FirstWrite -1}
		i_24 {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 1}
		p_out1 {Type O LastRead -1 FirstWrite 1}
		p_out2 {Type O LastRead -1 FirstWrite 1}
		tmp_out {Type O LastRead -1 FirstWrite 1}}
	aes_invMain_Pipeline_VITIS_LOOP_308_1 {
		state {Type IO LastRead 0 FirstWrite 1}
		roundKey {Type I LastRead 0 FirstWrite -1}}
	aes_Pipeline_VITIS_LOOP_679_3_VITIS_LOOP_682_4 {
		block_r {Type I LastRead 0 FirstWrite -1}
		decryptedtext_array {Type O LastRead -1 FirstWrite 1}}
	aes_Pipeline_VITIS_LOOP_85_4 {
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
	aes_Pipeline_VITIS_LOOP_94_5 {
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
		ciphertext_and_decryptedtext_V_dest_V {Type O LastRead -1 FirstWrite 1}}
	galois_multiplication {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	galois_multiplication {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	galois_multiplication {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
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
