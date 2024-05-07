set moduleName aes_invRound
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
set C_modelName {aes_invRound}
set C_modelType { void 0 }
set C_modelArgList {
	{ state int 8 regular {array 16 { 2 2 } 1 1 }  }
	{ roundKey int 8 regular {array 16 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "state", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "roundKey", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 31
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
	{ roundKey_address0 sc_out sc_lv 4 signal 1 } 
	{ roundKey_ce0 sc_out sc_logic 1 signal 1 } 
	{ roundKey_q0 sc_in sc_lv 8 signal 1 } 
	{ grp_galois_multiplication_fu_860_p_din1 sc_out sc_lv 8 signal -1 } 
	{ grp_galois_multiplication_fu_860_p_din2 sc_out sc_lv 4 signal -1 } 
	{ grp_galois_multiplication_fu_860_p_dout0 sc_in sc_lv 8 signal -1 } 
	{ grp_galois_multiplication_fu_860_p_ready sc_in sc_logic 1 signal -1 } 
	{ grp_galois_multiplication_fu_865_p_din1 sc_out sc_lv 8 signal -1 } 
	{ grp_galois_multiplication_fu_865_p_din2 sc_out sc_lv 4 signal -1 } 
	{ grp_galois_multiplication_fu_865_p_dout0 sc_in sc_lv 8 signal -1 } 
	{ grp_galois_multiplication_fu_865_p_ready sc_in sc_logic 1 signal -1 } 
	{ grp_galois_multiplication_fu_870_p_din1 sc_out sc_lv 8 signal -1 } 
	{ grp_galois_multiplication_fu_870_p_din2 sc_out sc_lv 4 signal -1 } 
	{ grp_galois_multiplication_fu_870_p_dout0 sc_in sc_lv 8 signal -1 } 
	{ grp_galois_multiplication_fu_870_p_ready sc_in sc_logic 1 signal -1 } 
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
 	{ "name": "roundKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "roundKey", "role": "address0" }} , 
 	{ "name": "roundKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "roundKey", "role": "ce0" }} , 
 	{ "name": "roundKey_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "roundKey", "role": "q0" }} , 
 	{ "name": "grp_galois_multiplication_fu_860_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "grp_galois_multiplication_fu_860_p_din1", "role": "default" }} , 
 	{ "name": "grp_galois_multiplication_fu_860_p_din2", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "grp_galois_multiplication_fu_860_p_din2", "role": "default" }} , 
 	{ "name": "grp_galois_multiplication_fu_860_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "grp_galois_multiplication_fu_860_p_dout0", "role": "default" }} , 
 	{ "name": "grp_galois_multiplication_fu_860_p_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_galois_multiplication_fu_860_p_ready", "role": "default" }} , 
 	{ "name": "grp_galois_multiplication_fu_865_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "grp_galois_multiplication_fu_865_p_din1", "role": "default" }} , 
 	{ "name": "grp_galois_multiplication_fu_865_p_din2", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "grp_galois_multiplication_fu_865_p_din2", "role": "default" }} , 
 	{ "name": "grp_galois_multiplication_fu_865_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "grp_galois_multiplication_fu_865_p_dout0", "role": "default" }} , 
 	{ "name": "grp_galois_multiplication_fu_865_p_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_galois_multiplication_fu_865_p_ready", "role": "default" }} , 
 	{ "name": "grp_galois_multiplication_fu_870_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "grp_galois_multiplication_fu_870_p_din1", "role": "default" }} , 
 	{ "name": "grp_galois_multiplication_fu_870_p_din2", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "grp_galois_multiplication_fu_870_p_din2", "role": "default" }} , 
 	{ "name": "grp_galois_multiplication_fu_870_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "grp_galois_multiplication_fu_870_p_dout0", "role": "default" }} , 
 	{ "name": "grp_galois_multiplication_fu_870_p_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_galois_multiplication_fu_870_p_ready", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "4", "6", "8"],
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
					{"ID" : "8", "SubInstance" : "grp_aes_invRound_Pipeline_invMixColumnsLoop_fu_135", "Port" : "state", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "6", "SubInstance" : "grp_aes_invRound_Pipeline_VITIS_LOOP_308_1_fu_127", "Port" : "state", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "1", "SubInstance" : "grp_aes_invRound_Pipeline_VITIS_LOOP_507_1_fu_104", "Port" : "state", "Inst_start_state" : "2", "Inst_end_state" : "8"}]},
			{"Name" : "roundKey", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_aes_invRound_Pipeline_VITIS_LOOP_308_1_fu_127", "Port" : "roundKey", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "rsbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_aes_invRound_Pipeline_VITIS_LOOP_507_1_fu_104", "Port" : "rsbox", "Inst_start_state" : "2", "Inst_end_state" : "8"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_515_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "12", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state8"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_invRound_Pipeline_VITIS_LOOP_507_1_fu_104", "Parent" : "0", "Child" : ["2", "3"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_invRound_Pipeline_VITIS_LOOP_507_1_fu_104.rsbox_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_invRound_Pipeline_VITIS_LOOP_507_1_fu_104.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_invRound_Pipeline_invShiftRowLoop_fu_112", "Parent" : "0", "Child" : ["5"],
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
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_invRound_Pipeline_invShiftRowLoop_fu_112.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_invRound_Pipeline_VITIS_LOOP_308_1_fu_127", "Parent" : "0", "Child" : ["7"],
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
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_invRound_Pipeline_VITIS_LOOP_308_1_fu_127.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_invRound_Pipeline_invMixColumnsLoop_fu_135", "Parent" : "0", "Child" : ["9", "10"],
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
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_invRound_Pipeline_invMixColumnsLoop_fu_135.grp_galois_multiplication_fu_94", "Parent" : "8",
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
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_invRound_Pipeline_invMixColumnsLoop_fu_135.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"}]}


set ArgLastReadFirstWriteLatency {
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
		b {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "81", "Max" : "117"}
	, {"Name" : "Interval", "Min" : "81", "Max" : "117"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	state { ap_memory {  { state_address0 mem_address 1 4 }  { state_ce0 mem_ce 1 1 }  { state_we0 mem_we 1 1 }  { state_d0 mem_din 1 8 }  { state_q0 mem_dout 0 8 }  { state_address1 MemPortADDR2 1 4 }  { state_ce1 MemPortCE2 1 1 }  { state_we1 MemPortWE2 1 1 }  { state_d1 MemPortDIN2 1 8 }  { state_q1 MemPortDOUT2 0 8 } } }
	roundKey { ap_memory {  { roundKey_address0 mem_address 1 4 }  { roundKey_ce0 mem_ce 1 1 }  { roundKey_q0 mem_dout 0 8 } } }
}
