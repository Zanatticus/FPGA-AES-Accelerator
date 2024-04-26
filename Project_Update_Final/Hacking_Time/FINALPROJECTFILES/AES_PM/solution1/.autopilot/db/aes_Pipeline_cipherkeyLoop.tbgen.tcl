set moduleName aes_Pipeline_cipherkeyLoop
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {aes_Pipeline_cipherkeyLoop}
set C_modelType { void 0 }
set C_modelArgList {
	{ cipherkey_size int 6 regular  }
	{ key_and_plaintext_V_data_V int 8 regular {axi_s 0 volatile  { key_and_plaintext Data } }  }
	{ key_and_plaintext_V_keep_V int 1 regular {axi_s 0 volatile  { key_and_plaintext Keep } }  }
	{ key_and_plaintext_V_strb_V int 1 regular {axi_s 0 volatile  { key_and_plaintext Strb } }  }
	{ key_and_plaintext_V_user_V int 1 regular {axi_s 0 volatile  { key_and_plaintext User } }  }
	{ key_and_plaintext_V_last_V int 1 regular {axi_s 0 volatile  { key_and_plaintext Last } }  }
	{ key_and_plaintext_V_id_V int 1 regular {axi_s 0 volatile  { key_and_plaintext ID } }  }
	{ key_and_plaintext_V_dest_V int 1 regular {axi_s 0 volatile  { key_and_plaintext Dest } }  }
	{ key_array int 11 regular  }
	{ key_array128 int 8 regular {array 1056 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "cipherkey_size", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "key_and_plaintext_V_data_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "key_and_plaintext_V_keep_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "key_and_plaintext_V_strb_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "key_and_plaintext_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "key_and_plaintext_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "key_and_plaintext_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "key_and_plaintext_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "key_array", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "key_array128", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ key_and_plaintext_TVALID sc_in sc_logic 1 invld 1 } 
	{ cipherkey_size sc_in sc_lv 6 signal 0 } 
	{ key_and_plaintext_TDATA sc_in sc_lv 8 signal 1 } 
	{ key_and_plaintext_TREADY sc_out sc_logic 1 inacc 7 } 
	{ key_and_plaintext_TKEEP sc_in sc_lv 1 signal 2 } 
	{ key_and_plaintext_TSTRB sc_in sc_lv 1 signal 3 } 
	{ key_and_plaintext_TUSER sc_in sc_lv 1 signal 4 } 
	{ key_and_plaintext_TLAST sc_in sc_lv 1 signal 5 } 
	{ key_and_plaintext_TID sc_in sc_lv 1 signal 6 } 
	{ key_and_plaintext_TDEST sc_in sc_lv 1 signal 7 } 
	{ key_array sc_in sc_lv 11 signal 8 } 
	{ key_array128_address0 sc_out sc_lv 11 signal 9 } 
	{ key_array128_ce0 sc_out sc_logic 1 signal 9 } 
	{ key_array128_we0 sc_out sc_logic 1 signal 9 } 
	{ key_array128_d0 sc_out sc_lv 8 signal 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "key_and_plaintext_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "key_and_plaintext_V_data_V", "role": "default" }} , 
 	{ "name": "cipherkey_size", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "cipherkey_size", "role": "default" }} , 
 	{ "name": "key_and_plaintext_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "key_and_plaintext_V_data_V", "role": "default" }} , 
 	{ "name": "key_and_plaintext_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "key_and_plaintext_V_dest_V", "role": "default" }} , 
 	{ "name": "key_and_plaintext_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "key_and_plaintext_V_keep_V", "role": "default" }} , 
 	{ "name": "key_and_plaintext_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "key_and_plaintext_V_strb_V", "role": "default" }} , 
 	{ "name": "key_and_plaintext_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "key_and_plaintext_V_user_V", "role": "default" }} , 
 	{ "name": "key_and_plaintext_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "key_and_plaintext_V_last_V", "role": "default" }} , 
 	{ "name": "key_and_plaintext_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "key_and_plaintext_V_id_V", "role": "default" }} , 
 	{ "name": "key_and_plaintext_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "key_and_plaintext_V_dest_V", "role": "default" }} , 
 	{ "name": "key_array", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "key_array", "role": "default" }} , 
 	{ "name": "key_array128_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "key_array128", "role": "address0" }} , 
 	{ "name": "key_array128_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "key_array128", "role": "ce0" }} , 
 	{ "name": "key_array128_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "key_array128", "role": "we0" }} , 
 	{ "name": "key_array128_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "key_array128", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		key_array128 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "18", "Max" : "34"}
	, {"Name" : "Interval", "Min" : "18", "Max" : "34"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	cipherkey_size { ap_none {  { cipherkey_size in_data 0 6 } } }
	key_and_plaintext_V_data_V { axis {  { key_and_plaintext_TVALID in_vld 0 1 }  { key_and_plaintext_TDATA in_data 0 8 } } }
	key_and_plaintext_V_keep_V { axis {  { key_and_plaintext_TKEEP in_data 0 1 } } }
	key_and_plaintext_V_strb_V { axis {  { key_and_plaintext_TSTRB in_data 0 1 } } }
	key_and_plaintext_V_user_V { axis {  { key_and_plaintext_TUSER in_data 0 1 } } }
	key_and_plaintext_V_last_V { axis {  { key_and_plaintext_TLAST in_data 0 1 } } }
	key_and_plaintext_V_id_V { axis {  { key_and_plaintext_TID in_data 0 1 } } }
	key_and_plaintext_V_dest_V { axis {  { key_and_plaintext_TREADY in_acc 1 1 }  { key_and_plaintext_TDEST in_data 0 1 } } }
	key_array { ap_none {  { key_array in_data 0 11 } } }
	key_array128 { ap_memory {  { key_array128_address0 mem_address 1 11 }  { key_array128_ce0 mem_ce 1 1 }  { key_array128_we0 mem_we 1 1 }  { key_array128_d0 mem_din 1 8 } } }
}
