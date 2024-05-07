set moduleName aes_main
set isTopModule 0
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
set C_modelName {aes_main}
set C_modelType { void 0 }
set C_modelArgList {
	{ state int 8 regular {array 16 { 2 2 } 1 1 }  }
	{ expandedKey_0 int 8 regular {array 120 { 1 1 } 1 1 }  }
	{ expandedKey_1 int 8 regular {array 120 { 1 1 } 1 1 }  }
	{ nbrRounds int 4 regular  }
	{ sbox int 8 regular {array 256 { 1 1 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "state", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "expandedKey_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "expandedKey_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "nbrRounds", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "sbox", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 35
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ state_address0 sc_out sc_lv 4 signal 0 } 
	{ state_ce0 sc_out sc_logic 1 signal 0 } 
	{ state_we0 sc_out sc_logic 1 signal 0 } 
	{ state_d0 sc_out sc_lv 8 signal 0 } 
	{ state_q0 sc_in sc_lv 8 signal 0 } 
	{ state_address1 sc_out sc_lv 4 signal 0 } 
	{ state_ce1 sc_out sc_logic 1 signal 0 } 
	{ state_we1 sc_out sc_logic 1 signal 0 } 
	{ state_d1 sc_out sc_lv 8 signal 0 } 
	{ state_q1 sc_in sc_lv 8 signal 0 } 
	{ expandedKey_0_address0 sc_out sc_lv 7 signal 1 } 
	{ expandedKey_0_ce0 sc_out sc_logic 1 signal 1 } 
	{ expandedKey_0_q0 sc_in sc_lv 8 signal 1 } 
	{ expandedKey_0_address1 sc_out sc_lv 7 signal 1 } 
	{ expandedKey_0_ce1 sc_out sc_logic 1 signal 1 } 
	{ expandedKey_0_q1 sc_in sc_lv 8 signal 1 } 
	{ expandedKey_1_address0 sc_out sc_lv 7 signal 2 } 
	{ expandedKey_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ expandedKey_1_q0 sc_in sc_lv 8 signal 2 } 
	{ expandedKey_1_address1 sc_out sc_lv 7 signal 2 } 
	{ expandedKey_1_ce1 sc_out sc_logic 1 signal 2 } 
	{ expandedKey_1_q1 sc_in sc_lv 8 signal 2 } 
	{ nbrRounds sc_in sc_lv 4 signal 3 } 
	{ sbox_address0 sc_out sc_lv 8 signal 4 } 
	{ sbox_ce0 sc_out sc_logic 1 signal 4 } 
	{ sbox_q0 sc_in sc_lv 8 signal 4 } 
	{ sbox_address1 sc_out sc_lv 8 signal 4 } 
	{ sbox_ce1 sc_out sc_logic 1 signal 4 } 
	{ sbox_q1 sc_in sc_lv 8 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "state_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "state", "role": "address0" }} , 
 	{ "name": "state_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state", "role": "ce0" }} , 
 	{ "name": "state_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state", "role": "we0" }} , 
 	{ "name": "state_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "state", "role": "d0" }} , 
 	{ "name": "state_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "state", "role": "q0" }} , 
 	{ "name": "state_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "state", "role": "address1" }} , 
 	{ "name": "state_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state", "role": "ce1" }} , 
 	{ "name": "state_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state", "role": "we1" }} , 
 	{ "name": "state_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "state", "role": "d1" }} , 
 	{ "name": "state_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "state", "role": "q1" }} , 
 	{ "name": "expandedKey_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "expandedKey_0", "role": "address0" }} , 
 	{ "name": "expandedKey_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "expandedKey_0", "role": "ce0" }} , 
 	{ "name": "expandedKey_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "expandedKey_0", "role": "q0" }} , 
 	{ "name": "expandedKey_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "expandedKey_0", "role": "address1" }} , 
 	{ "name": "expandedKey_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "expandedKey_0", "role": "ce1" }} , 
 	{ "name": "expandedKey_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "expandedKey_0", "role": "q1" }} , 
 	{ "name": "expandedKey_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "expandedKey_1", "role": "address0" }} , 
 	{ "name": "expandedKey_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "expandedKey_1", "role": "ce0" }} , 
 	{ "name": "expandedKey_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "expandedKey_1", "role": "q0" }} , 
 	{ "name": "expandedKey_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "expandedKey_1", "role": "address1" }} , 
 	{ "name": "expandedKey_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "expandedKey_1", "role": "ce1" }} , 
 	{ "name": "expandedKey_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "expandedKey_1", "role": "q1" }} , 
 	{ "name": "nbrRounds", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "nbrRounds", "role": "default" }} , 
 	{ "name": "sbox_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sbox", "role": "address0" }} , 
 	{ "name": "sbox_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sbox", "role": "ce0" }} , 
 	{ "name": "sbox_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sbox", "role": "q0" }} , 
 	{ "name": "sbox_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sbox", "role": "address1" }} , 
 	{ "name": "sbox_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sbox", "role": "ce1" }} , 
 	{ "name": "sbox_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sbox", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "5", "7", "13", "16", "18", "20"],
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
					{"ID" : "5", "SubInstance" : "grp_aes_main_Pipeline_addRoundKeyLoop_fu_412", "Port" : "state", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "7", "SubInstance" : "grp_aes_main_Pipeline_aesMainLoop_fu_419", "Port" : "state", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "20", "SubInstance" : "grp_aes_main_Pipeline_addRoundKeyLoop3_fu_470", "Port" : "state", "Inst_start_state" : "23", "Inst_end_state" : "24"}]},
			{"Name" : "expandedKey_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_aes_main_Pipeline_aesMainLoop_fu_419", "Port" : "expandedKey_0", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "2", "SubInstance" : "grp_aes_main_Pipeline_createRoundKeyLoop1_createRoundKeyLoop2_fu_402", "Port" : "expandedKey_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "13", "SubInstance" : "grp_aes_main_Pipeline_createRoundKeyLoop1_createRoundKeyLoop21_fu_434", "Port" : "expandedKey_0", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "expandedKey_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_aes_main_Pipeline_aesMainLoop_fu_419", "Port" : "expandedKey_1", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "2", "SubInstance" : "grp_aes_main_Pipeline_createRoundKeyLoop1_createRoundKeyLoop2_fu_402", "Port" : "expandedKey_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "13", "SubInstance" : "grp_aes_main_Pipeline_createRoundKeyLoop1_createRoundKeyLoop21_fu_434", "Port" : "expandedKey_1", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "nbrRounds", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_aes_main_Pipeline_aesMainLoop_fu_419", "Port" : "sbox", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.roundKey_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_Pipeline_createRoundKeyLoop1_createRoundKeyLoop2_fu_402", "Parent" : "0", "Child" : ["3", "4"],
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
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_Pipeline_createRoundKeyLoop1_createRoundKeyLoop2_fu_402.mux_21_8_1_1_U59", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_Pipeline_createRoundKeyLoop1_createRoundKeyLoop2_fu_402.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_Pipeline_addRoundKeyLoop_fu_412", "Parent" : "0", "Child" : ["6"],
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
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_Pipeline_addRoundKeyLoop_fu_412.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_Pipeline_aesMainLoop_fu_419", "Parent" : "0", "Child" : ["8", "12"],
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
					{"ID" : "8", "SubInstance" : "grp_aes_round_fu_379", "Port" : "roundKey", "Inst_start_state" : "10", "Inst_end_state" : "37"}]},
			{"Name" : "nbrRounds", "Type" : "None", "Direction" : "I"},
			{"Name" : "expandedKey_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "expandedKey_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_aes_round_fu_379", "Port" : "state", "Inst_start_state" : "10", "Inst_end_state" : "37"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_aes_round_fu_379", "Port" : "sbox", "Inst_start_state" : "10", "Inst_end_state" : "37"}]}],
		"Loop" : [
			{"Name" : "aesMainLoop", "PipelineType" : "NotSupport"}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_Pipeline_aesMainLoop_fu_419.grp_aes_round_fu_379", "Parent" : "7", "Child" : ["9", "10", "11"],
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
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_Pipeline_aesMainLoop_fu_419.grp_aes_round_fu_379.sbox_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_Pipeline_aesMainLoop_fu_419.grp_aes_round_fu_379.grp_galois_multiplication_fu_497", "Parent" : "8",
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
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_Pipeline_aesMainLoop_fu_419.grp_aes_round_fu_379.grp_galois_multiplication_fu_504", "Parent" : "8",
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
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_Pipeline_aesMainLoop_fu_419.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_Pipeline_createRoundKeyLoop1_createRoundKeyLoop21_fu_434", "Parent" : "0", "Child" : ["14", "15"],
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
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_Pipeline_createRoundKeyLoop1_createRoundKeyLoop21_fu_434.mux_21_8_1_1_U74", "Parent" : "13"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_Pipeline_createRoundKeyLoop1_createRoundKeyLoop21_fu_434.flow_control_loop_pipe_sequential_init_U", "Parent" : "13"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_Pipeline_shiftRowLoop1_fu_444", "Parent" : "0", "Child" : ["17"],
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
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_Pipeline_shiftRowLoop1_fu_444.flow_control_loop_pipe_sequential_init_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_Pipeline_shiftRowLoop12_fu_456", "Parent" : "0", "Child" : ["19"],
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
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_Pipeline_shiftRowLoop12_fu_456.flow_control_loop_pipe_sequential_init_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_Pipeline_addRoundKeyLoop3_fu_470", "Parent" : "0", "Child" : ["21"],
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
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_Pipeline_addRoundKeyLoop3_fu_470.flow_control_loop_pipe_sequential_init_U", "Parent" : "20"}]}


set ArgLastReadFirstWriteLatency {
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
		roundKey {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "430", "Max" : "578"}
	, {"Name" : "Interval", "Min" : "430", "Max" : "578"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	state { ap_memory {  { state_address0 mem_address 1 4 }  { state_ce0 mem_ce 1 1 }  { state_we0 mem_we 1 1 }  { state_d0 mem_din 1 8 }  { state_q0 in_data 0 8 }  { state_address1 MemPortADDR2 1 4 }  { state_ce1 MemPortCE2 1 1 }  { state_we1 MemPortWE2 1 1 }  { state_d1 MemPortDIN2 1 8 }  { state_q1 in_data 0 8 } } }
	expandedKey_0 { ap_memory {  { expandedKey_0_address0 mem_address 1 7 }  { expandedKey_0_ce0 mem_ce 1 1 }  { expandedKey_0_q0 mem_dout 0 8 }  { expandedKey_0_address1 MemPortADDR2 1 7 }  { expandedKey_0_ce1 MemPortCE2 1 1 }  { expandedKey_0_q1 MemPortDOUT2 0 8 } } }
	expandedKey_1 { ap_memory {  { expandedKey_1_address0 mem_address 1 7 }  { expandedKey_1_ce0 mem_ce 1 1 }  { expandedKey_1_q0 mem_dout 0 8 }  { expandedKey_1_address1 MemPortADDR2 1 7 }  { expandedKey_1_ce1 MemPortCE2 1 1 }  { expandedKey_1_q1 MemPortDOUT2 0 8 } } }
	nbrRounds { ap_none {  { nbrRounds in_data 0 4 } } }
	sbox { ap_memory {  { sbox_address0 mem_address 1 8 }  { sbox_ce0 mem_ce 1 1 }  { sbox_q0 in_data 0 8 }  { sbox_address1 MemPortADDR2 1 8 }  { sbox_ce1 MemPortCE2 1 1 }  { sbox_q1 in_data 0 8 } } }
}
