set moduleName Keccak_HashInitializ
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {Keccak_HashInitializ}
set C_modelType { void 0 }
set C_modelArgList {
	{ instance_sponge_state int 8 regular {array 200 { 0 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "instance_sponge_state", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ instance_sponge_state_address0 sc_out sc_lv 8 signal 0 } 
	{ instance_sponge_state_ce0 sc_out sc_logic 1 signal 0 } 
	{ instance_sponge_state_we0 sc_out sc_logic 1 signal 0 } 
	{ instance_sponge_state_d0 sc_out sc_lv 8 signal 0 } 
	{ instance_sponge_state_address1 sc_out sc_lv 8 signal 0 } 
	{ instance_sponge_state_ce1 sc_out sc_logic 1 signal 0 } 
	{ instance_sponge_state_we1 sc_out sc_logic 1 signal 0 } 
	{ instance_sponge_state_d1 sc_out sc_lv 8 signal 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "instance_sponge_state_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "instance_sponge_state", "role": "address0" }} , 
 	{ "name": "instance_sponge_state_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "instance_sponge_state", "role": "ce0" }} , 
 	{ "name": "instance_sponge_state_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "instance_sponge_state", "role": "we0" }} , 
 	{ "name": "instance_sponge_state_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "instance_sponge_state", "role": "d0" }} , 
 	{ "name": "instance_sponge_state_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "instance_sponge_state", "role": "address1" }} , 
 	{ "name": "instance_sponge_state_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "instance_sponge_state", "role": "ce1" }} , 
 	{ "name": "instance_sponge_state_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "instance_sponge_state", "role": "we1" }} , 
 	{ "name": "instance_sponge_state_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "instance_sponge_state", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "Keccak_HashInitializ",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "102", "EstimateLatencyMax" : "102",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "instance_sponge_state", "Type" : "Memory", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	Keccak_HashInitializ {
		instance_sponge_state {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "102", "Max" : "102"}
	, {"Name" : "Interval", "Min" : "102", "Max" : "102"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	instance_sponge_state { ap_memory {  { instance_sponge_state_address0 mem_address 1 8 }  { instance_sponge_state_ce0 mem_ce 1 1 }  { instance_sponge_state_we0 mem_we 1 1 }  { instance_sponge_state_d0 mem_din 1 8 }  { instance_sponge_state_address1 mem_address 1 8 }  { instance_sponge_state_ce1 mem_ce 1 1 }  { instance_sponge_state_we1 mem_we 1 1 }  { instance_sponge_state_d1 mem_din 1 8 } } }
}
