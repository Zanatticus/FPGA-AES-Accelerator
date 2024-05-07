set moduleName aes_Pipeline_ciphertextLoop
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
set C_modelName {aes_Pipeline_ciphertextLoop}
set C_modelType { void 0 }
set C_modelArgList {
	{ ciphertext_array int 8 regular {array 16 { 1 3 } 1 1 }  }
	{ tmp_keep_V_reload int 1 regular  }
	{ tmp_strb_V_reload int 1 regular  }
	{ tmp_user_V_reload int 1 regular  }
	{ tmp_id_V_reload int 1 regular  }
	{ tmp_dest_V_reload int 1 regular  }
	{ ciphertext_and_decryptedtext_V_data_V int 8 regular {axi_s 1 volatile  { ciphertext_and_decryptedtext Data } }  }
	{ ciphertext_and_decryptedtext_V_keep_V int 1 regular {axi_s 1 volatile  { ciphertext_and_decryptedtext Keep } }  }
	{ ciphertext_and_decryptedtext_V_strb_V int 1 regular {axi_s 1 volatile  { ciphertext_and_decryptedtext Strb } }  }
	{ ciphertext_and_decryptedtext_V_user_V int 1 regular {axi_s 1 volatile  { ciphertext_and_decryptedtext User } }  }
	{ ciphertext_and_decryptedtext_V_last_V int 1 regular {axi_s 1 volatile  { ciphertext_and_decryptedtext Last } }  }
	{ ciphertext_and_decryptedtext_V_id_V int 1 regular {axi_s 1 volatile  { ciphertext_and_decryptedtext ID } }  }
	{ ciphertext_and_decryptedtext_V_dest_V int 1 regular {axi_s 1 volatile  { ciphertext_and_decryptedtext Dest } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ciphertext_array", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_keep_V_reload", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_strb_V_reload", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_user_V_reload", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_id_V_reload", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_dest_V_reload", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "ciphertext_and_decryptedtext_V_data_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ciphertext_and_decryptedtext_V_keep_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ciphertext_and_decryptedtext_V_strb_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ciphertext_and_decryptedtext_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ciphertext_and_decryptedtext_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ciphertext_and_decryptedtext_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ciphertext_and_decryptedtext_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ciphertext_and_decryptedtext_TREADY sc_in sc_logic 1 outacc 6 } 
	{ ciphertext_array_address0 sc_out sc_lv 4 signal 0 } 
	{ ciphertext_array_ce0 sc_out sc_logic 1 signal 0 } 
	{ ciphertext_array_q0 sc_in sc_lv 8 signal 0 } 
	{ tmp_keep_V_reload sc_in sc_lv 1 signal 1 } 
	{ tmp_strb_V_reload sc_in sc_lv 1 signal 2 } 
	{ tmp_user_V_reload sc_in sc_lv 1 signal 3 } 
	{ tmp_id_V_reload sc_in sc_lv 1 signal 4 } 
	{ tmp_dest_V_reload sc_in sc_lv 1 signal 5 } 
	{ ciphertext_and_decryptedtext_TDATA sc_out sc_lv 8 signal 6 } 
	{ ciphertext_and_decryptedtext_TVALID sc_out sc_logic 1 outvld 12 } 
	{ ciphertext_and_decryptedtext_TKEEP sc_out sc_lv 1 signal 7 } 
	{ ciphertext_and_decryptedtext_TSTRB sc_out sc_lv 1 signal 8 } 
	{ ciphertext_and_decryptedtext_TUSER sc_out sc_lv 1 signal 9 } 
	{ ciphertext_and_decryptedtext_TLAST sc_out sc_lv 1 signal 10 } 
	{ ciphertext_and_decryptedtext_TID sc_out sc_lv 1 signal 11 } 
	{ ciphertext_and_decryptedtext_TDEST sc_out sc_lv 1 signal 12 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ciphertext_and_decryptedtext_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "ciphertext_and_decryptedtext_V_data_V", "role": "default" }} , 
 	{ "name": "ciphertext_array_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ciphertext_array", "role": "address0" }} , 
 	{ "name": "ciphertext_array_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ciphertext_array", "role": "ce0" }} , 
 	{ "name": "ciphertext_array_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ciphertext_array", "role": "q0" }} , 
 	{ "name": "tmp_keep_V_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_keep_V_reload", "role": "default" }} , 
 	{ "name": "tmp_strb_V_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_strb_V_reload", "role": "default" }} , 
 	{ "name": "tmp_user_V_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_user_V_reload", "role": "default" }} , 
 	{ "name": "tmp_id_V_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_id_V_reload", "role": "default" }} , 
 	{ "name": "tmp_dest_V_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dest_V_reload", "role": "default" }} , 
 	{ "name": "ciphertext_and_decryptedtext_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ciphertext_and_decryptedtext_V_data_V", "role": "default" }} , 
 	{ "name": "ciphertext_and_decryptedtext_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "ciphertext_and_decryptedtext_V_dest_V", "role": "default" }} , 
 	{ "name": "ciphertext_and_decryptedtext_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ciphertext_and_decryptedtext_V_keep_V", "role": "default" }} , 
 	{ "name": "ciphertext_and_decryptedtext_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ciphertext_and_decryptedtext_V_strb_V", "role": "default" }} , 
 	{ "name": "ciphertext_and_decryptedtext_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ciphertext_and_decryptedtext_V_user_V", "role": "default" }} , 
 	{ "name": "ciphertext_and_decryptedtext_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ciphertext_and_decryptedtext_V_last_V", "role": "default" }} , 
 	{ "name": "ciphertext_and_decryptedtext_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ciphertext_and_decryptedtext_V_id_V", "role": "default" }} , 
 	{ "name": "ciphertext_and_decryptedtext_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ciphertext_and_decryptedtext_V_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		ciphertext_and_decryptedtext_V_dest_V {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "18", "Max" : "18"}
	, {"Name" : "Interval", "Min" : "18", "Max" : "18"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	ciphertext_array { ap_memory {  { ciphertext_array_address0 mem_address 1 4 }  { ciphertext_array_ce0 mem_ce 1 1 }  { ciphertext_array_q0 in_data 0 8 } } }
	tmp_keep_V_reload { ap_none {  { tmp_keep_V_reload in_data 0 1 } } }
	tmp_strb_V_reload { ap_none {  { tmp_strb_V_reload in_data 0 1 } } }
	tmp_user_V_reload { ap_none {  { tmp_user_V_reload in_data 0 1 } } }
	tmp_id_V_reload { ap_none {  { tmp_id_V_reload in_data 0 1 } } }
	tmp_dest_V_reload { ap_none {  { tmp_dest_V_reload in_data 0 1 } } }
	ciphertext_and_decryptedtext_V_data_V { axis {  { ciphertext_and_decryptedtext_TREADY out_acc 0 1 }  { ciphertext_and_decryptedtext_TDATA out_data 1 8 } } }
	ciphertext_and_decryptedtext_V_keep_V { axis {  { ciphertext_and_decryptedtext_TKEEP out_data 1 1 } } }
	ciphertext_and_decryptedtext_V_strb_V { axis {  { ciphertext_and_decryptedtext_TSTRB out_data 1 1 } } }
	ciphertext_and_decryptedtext_V_user_V { axis {  { ciphertext_and_decryptedtext_TUSER out_data 1 1 } } }
	ciphertext_and_decryptedtext_V_last_V { axis {  { ciphertext_and_decryptedtext_TLAST out_data 1 1 } } }
	ciphertext_and_decryptedtext_V_id_V { axis {  { ciphertext_and_decryptedtext_TID out_data 1 1 } } }
	ciphertext_and_decryptedtext_V_dest_V { axis {  { ciphertext_and_decryptedtext_TVALID out_vld 1 1 }  { ciphertext_and_decryptedtext_TDEST out_data 1 1 } } }
}
