set moduleName aes_invMain_Pipeline_invShiftRowLoop1
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
set C_modelName {aes_invMain_Pipeline_invShiftRowLoop1}
set C_modelType { void 0 }
set C_modelArgList {
	{ state_load_49 int 8 regular  }
	{ state_load_29 int 8 regular  }
	{ state_load_28 int 8 regular  }
	{ state_load_27 int 8 regular  }
	{ num_assign_62_out int 8 regular {pointer 1}  }
	{ num_assign_63_out int 8 regular {pointer 1}  }
	{ num_assign_64_out int 8 regular {pointer 1}  }
	{ tmp_127_out int 8 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "state_load_49", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "state_load_29", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "state_load_28", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "state_load_27", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "num_assign_62_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "num_assign_63_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "num_assign_64_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp_127_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ state_load_49 sc_in sc_lv 8 signal 0 } 
	{ state_load_29 sc_in sc_lv 8 signal 1 } 
	{ state_load_28 sc_in sc_lv 8 signal 2 } 
	{ state_load_27 sc_in sc_lv 8 signal 3 } 
	{ num_assign_62_out sc_out sc_lv 8 signal 4 } 
	{ num_assign_62_out_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ num_assign_63_out sc_out sc_lv 8 signal 5 } 
	{ num_assign_63_out_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ num_assign_64_out sc_out sc_lv 8 signal 6 } 
	{ num_assign_64_out_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ tmp_127_out sc_out sc_lv 8 signal 7 } 
	{ tmp_127_out_ap_vld sc_out sc_logic 1 outvld 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "state_load_49", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "state_load_49", "role": "default" }} , 
 	{ "name": "state_load_29", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "state_load_29", "role": "default" }} , 
 	{ "name": "state_load_28", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "state_load_28", "role": "default" }} , 
 	{ "name": "state_load_27", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "state_load_27", "role": "default" }} , 
 	{ "name": "num_assign_62_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "num_assign_62_out", "role": "default" }} , 
 	{ "name": "num_assign_62_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "num_assign_62_out", "role": "ap_vld" }} , 
 	{ "name": "num_assign_63_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "num_assign_63_out", "role": "default" }} , 
 	{ "name": "num_assign_63_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "num_assign_63_out", "role": "ap_vld" }} , 
 	{ "name": "num_assign_64_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "num_assign_64_out", "role": "default" }} , 
 	{ "name": "num_assign_64_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "num_assign_64_out", "role": "ap_vld" }} , 
 	{ "name": "tmp_127_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tmp_127_out", "role": "default" }} , 
 	{ "name": "tmp_127_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp_127_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	aes_invMain_Pipeline_invShiftRowLoop1 {
		state_load_49 {Type I LastRead 0 FirstWrite -1}
		state_load_29 {Type I LastRead 0 FirstWrite -1}
		state_load_28 {Type I LastRead 0 FirstWrite -1}
		state_load_27 {Type I LastRead 0 FirstWrite -1}
		num_assign_62_out {Type O LastRead -1 FirstWrite 1}
		num_assign_63_out {Type O LastRead -1 FirstWrite 1}
		num_assign_64_out {Type O LastRead -1 FirstWrite 1}
		tmp_127_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "4"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "4"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	state_load_49 { ap_none {  { state_load_49 in_data 0 8 } } }
	state_load_29 { ap_none {  { state_load_29 in_data 0 8 } } }
	state_load_28 { ap_none {  { state_load_28 in_data 0 8 } } }
	state_load_27 { ap_none {  { state_load_27 in_data 0 8 } } }
	num_assign_62_out { ap_vld {  { num_assign_62_out out_data 1 8 }  { num_assign_62_out_ap_vld out_vld 1 1 } } }
	num_assign_63_out { ap_vld {  { num_assign_63_out out_data 1 8 }  { num_assign_63_out_ap_vld out_vld 1 1 } } }
	num_assign_64_out { ap_vld {  { num_assign_64_out out_data 1 8 }  { num_assign_64_out_ap_vld out_vld 1 1 } } }
	tmp_127_out { ap_vld {  { tmp_127_out out_data 1 8 }  { tmp_127_out_ap_vld out_vld 1 1 } } }
}
