set moduleName expandKey_Pipeline_expandKeyLoop1
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
set C_modelName {expandKey_Pipeline_expandKeyLoop1}
set C_modelType { void 0 }
set C_modelArgList {
	{ zext_ln241 int 6 regular  }
	{ key int 11 regular  }
	{ key_array128 int 8 regular {array 1056 { 1 1 1 1 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ expandedKey_1 int 8 regular {array 120 { 0 0 } 0 1 }  }
	{ expandedKey_0 int 8 regular {array 120 { 0 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "zext_ln241", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "key", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "key_array128", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "expandedKey_1", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "expandedKey_0", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 36
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ zext_ln241 sc_in sc_lv 6 signal 0 } 
	{ key sc_in sc_lv 11 signal 1 } 
	{ key_array128_address0 sc_out sc_lv 11 signal 2 } 
	{ key_array128_ce0 sc_out sc_logic 1 signal 2 } 
	{ key_array128_q0 sc_in sc_lv 8 signal 2 } 
	{ key_array128_address1 sc_out sc_lv 11 signal 2 } 
	{ key_array128_ce1 sc_out sc_logic 1 signal 2 } 
	{ key_array128_q1 sc_in sc_lv 8 signal 2 } 
	{ key_array128_address2 sc_out sc_lv 11 signal 2 } 
	{ key_array128_ce2 sc_out sc_logic 1 signal 2 } 
	{ key_array128_q2 sc_in sc_lv 8 signal 2 } 
	{ key_array128_address3 sc_out sc_lv 11 signal 2 } 
	{ key_array128_ce3 sc_out sc_logic 1 signal 2 } 
	{ key_array128_q3 sc_in sc_lv 8 signal 2 } 
	{ expandedKey_1_address0 sc_out sc_lv 7 signal 3 } 
	{ expandedKey_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ expandedKey_1_we0 sc_out sc_logic 1 signal 3 } 
	{ expandedKey_1_d0 sc_out sc_lv 8 signal 3 } 
	{ expandedKey_1_address1 sc_out sc_lv 7 signal 3 } 
	{ expandedKey_1_ce1 sc_out sc_logic 1 signal 3 } 
	{ expandedKey_1_we1 sc_out sc_logic 1 signal 3 } 
	{ expandedKey_1_d1 sc_out sc_lv 8 signal 3 } 
	{ expandedKey_0_address0 sc_out sc_lv 7 signal 4 } 
	{ expandedKey_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ expandedKey_0_we0 sc_out sc_logic 1 signal 4 } 
	{ expandedKey_0_d0 sc_out sc_lv 8 signal 4 } 
	{ expandedKey_0_address1 sc_out sc_lv 7 signal 4 } 
	{ expandedKey_0_ce1 sc_out sc_logic 1 signal 4 } 
	{ expandedKey_0_we1 sc_out sc_logic 1 signal 4 } 
	{ expandedKey_0_d1 sc_out sc_lv 8 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "zext_ln241", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "zext_ln241", "role": "default" }} , 
 	{ "name": "key", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "key", "role": "default" }} , 
 	{ "name": "key_array128_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "key_array128", "role": "address0" }} , 
 	{ "name": "key_array128_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "key_array128", "role": "ce0" }} , 
 	{ "name": "key_array128_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "key_array128", "role": "q0" }} , 
 	{ "name": "key_array128_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "key_array128", "role": "address1" }} , 
 	{ "name": "key_array128_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "key_array128", "role": "ce1" }} , 
 	{ "name": "key_array128_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "key_array128", "role": "q1" }} , 
 	{ "name": "key_array128_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "key_array128", "role": "address2" }} , 
 	{ "name": "key_array128_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "key_array128", "role": "ce2" }} , 
 	{ "name": "key_array128_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "key_array128", "role": "q2" }} , 
 	{ "name": "key_array128_address3", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "key_array128", "role": "address3" }} , 
 	{ "name": "key_array128_ce3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "key_array128", "role": "ce3" }} , 
 	{ "name": "key_array128_q3", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "key_array128", "role": "q3" }} , 
 	{ "name": "expandedKey_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "expandedKey_1", "role": "address0" }} , 
 	{ "name": "expandedKey_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "expandedKey_1", "role": "ce0" }} , 
 	{ "name": "expandedKey_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "expandedKey_1", "role": "we0" }} , 
 	{ "name": "expandedKey_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "expandedKey_1", "role": "d0" }} , 
 	{ "name": "expandedKey_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "expandedKey_1", "role": "address1" }} , 
 	{ "name": "expandedKey_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "expandedKey_1", "role": "ce1" }} , 
 	{ "name": "expandedKey_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "expandedKey_1", "role": "we1" }} , 
 	{ "name": "expandedKey_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "expandedKey_1", "role": "d1" }} , 
 	{ "name": "expandedKey_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "expandedKey_0", "role": "address0" }} , 
 	{ "name": "expandedKey_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "expandedKey_0", "role": "ce0" }} , 
 	{ "name": "expandedKey_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "expandedKey_0", "role": "we0" }} , 
 	{ "name": "expandedKey_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "expandedKey_0", "role": "d0" }} , 
 	{ "name": "expandedKey_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "expandedKey_0", "role": "address1" }} , 
 	{ "name": "expandedKey_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "expandedKey_0", "role": "ce1" }} , 
 	{ "name": "expandedKey_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "expandedKey_0", "role": "we1" }} , 
 	{ "name": "expandedKey_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "expandedKey_0", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	expandKey_Pipeline_expandKeyLoop1 {
		zext_ln241 {Type I LastRead 0 FirstWrite -1}
		key {Type I LastRead 0 FirstWrite -1}
		key_array128 {Type I LastRead 2 FirstWrite -1}
		expandedKey_1 {Type O LastRead -1 FirstWrite 2}
		expandedKey_0 {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "7", "Max" : "11"}
	, {"Name" : "Interval", "Min" : "7", "Max" : "11"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	zext_ln241 { ap_none {  { zext_ln241 in_data 0 6 } } }
	key { ap_none {  { key in_data 0 11 } } }
	key_array128 { ap_memory {  { key_array128_address0 mem_address 1 11 }  { key_array128_ce0 mem_ce 1 1 }  { key_array128_q0 in_data 0 8 }  { key_array128_address1 MemPortADDR2 1 11 }  { key_array128_ce1 MemPortCE2 1 1 }  { key_array128_q1 in_data 0 8 }  { key_array128_address2 MemPortADDR2 1 11 }  { key_array128_ce2 MemPortCE2 1 1 }  { key_array128_q2 in_data 0 8 }  { key_array128_address3 MemPortADDR2 1 11 }  { key_array128_ce3 MemPortCE2 1 1 }  { key_array128_q3 in_data 0 8 } } }
	expandedKey_1 { ap_memory {  { expandedKey_1_address0 mem_address 1 7 }  { expandedKey_1_ce0 mem_ce 1 1 }  { expandedKey_1_we0 mem_we 1 1 }  { expandedKey_1_d0 mem_din 1 8 }  { expandedKey_1_address1 MemPortADDR2 1 7 }  { expandedKey_1_ce1 MemPortCE2 1 1 }  { expandedKey_1_we1 MemPortWE2 1 1 }  { expandedKey_1_d1 MemPortDIN2 1 8 } } }
	expandedKey_0 { ap_memory {  { expandedKey_0_address0 mem_address 1 7 }  { expandedKey_0_ce0 mem_ce 1 1 }  { expandedKey_0_we0 mem_we 1 1 }  { expandedKey_0_d0 mem_din 1 8 }  { expandedKey_0_address1 MemPortADDR2 1 7 }  { expandedKey_0_ce1 MemPortCE2 1 1 }  { expandedKey_0_we1 MemPortWE2 1 1 }  { expandedKey_0_d1 MemPortDIN2 1 8 } } }
}
