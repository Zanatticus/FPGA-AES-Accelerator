set moduleName aes_main_Pipeline_createRoundKeyLoop1_createRoundKeyLoop21
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
set C_modelName {aes_main_Pipeline_createRoundKeyLoop1_createRoundKeyLoop21}
set C_modelType { void 0 }
set C_modelArgList {
	{ nbrRounds int 4 regular  }
	{ expandedKey_0 int 8 regular {array 120 { 1 3 } 1 1 }  }
	{ expandedKey_1 int 8 regular {array 120 { 1 3 } 1 1 }  }
	{ roundKey int 8 regular {array 16 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "nbrRounds", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "expandedKey_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "expandedKey_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "roundKey", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ nbrRounds sc_in sc_lv 4 signal 0 } 
	{ expandedKey_0_address0 sc_out sc_lv 7 signal 1 } 
	{ expandedKey_0_ce0 sc_out sc_logic 1 signal 1 } 
	{ expandedKey_0_q0 sc_in sc_lv 8 signal 1 } 
	{ expandedKey_1_address0 sc_out sc_lv 7 signal 2 } 
	{ expandedKey_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ expandedKey_1_q0 sc_in sc_lv 8 signal 2 } 
	{ roundKey_address0 sc_out sc_lv 4 signal 3 } 
	{ roundKey_ce0 sc_out sc_logic 1 signal 3 } 
	{ roundKey_we0 sc_out sc_logic 1 signal 3 } 
	{ roundKey_d0 sc_out sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "nbrRounds", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "nbrRounds", "role": "default" }} , 
 	{ "name": "expandedKey_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "expandedKey_0", "role": "address0" }} , 
 	{ "name": "expandedKey_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "expandedKey_0", "role": "ce0" }} , 
 	{ "name": "expandedKey_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "expandedKey_0", "role": "q0" }} , 
 	{ "name": "expandedKey_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "expandedKey_1", "role": "address0" }} , 
 	{ "name": "expandedKey_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "expandedKey_1", "role": "ce0" }} , 
 	{ "name": "expandedKey_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "expandedKey_1", "role": "q0" }} , 
 	{ "name": "roundKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "roundKey", "role": "address0" }} , 
 	{ "name": "roundKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "roundKey", "role": "ce0" }} , 
 	{ "name": "roundKey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "roundKey", "role": "we0" }} , 
 	{ "name": "roundKey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "roundKey", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_8_1_1_U74", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	aes_main_Pipeline_createRoundKeyLoop1_createRoundKeyLoop21 {
		nbrRounds {Type I LastRead 0 FirstWrite -1}
		expandedKey_0 {Type I LastRead 0 FirstWrite -1}
		expandedKey_1 {Type I LastRead 0 FirstWrite -1}
		roundKey {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "18", "Max" : "18"}
	, {"Name" : "Interval", "Min" : "18", "Max" : "18"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	nbrRounds { ap_none {  { nbrRounds in_data 0 4 } } }
	expandedKey_0 { ap_memory {  { expandedKey_0_address0 mem_address 1 7 }  { expandedKey_0_ce0 mem_ce 1 1 }  { expandedKey_0_q0 in_data 0 8 } } }
	expandedKey_1 { ap_memory {  { expandedKey_1_address0 mem_address 1 7 }  { expandedKey_1_ce0 mem_ce 1 1 }  { expandedKey_1_q0 in_data 0 8 } } }
	roundKey { ap_memory {  { roundKey_address0 mem_address 1 4 }  { roundKey_ce0 mem_ce 1 1 }  { roundKey_we0 mem_we 1 1 }  { roundKey_d0 mem_din 1 8 } } }
}
