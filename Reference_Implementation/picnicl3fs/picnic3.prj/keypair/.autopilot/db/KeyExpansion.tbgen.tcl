set moduleName KeyExpansion
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
set C_modelName {KeyExpansion}
set C_modelType { void 0 }
set C_modelArgList {
	{ RoundKey int 8 regular {array 240 { 2 2 } 1 1 }  }
	{ Key int 8 regular {array 32 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "RoundKey", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "Key", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ RoundKey_address0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q0 sc_in sc_lv 8 signal 0 } 
	{ RoundKey_address1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q1 sc_in sc_lv 8 signal 0 } 
	{ Key_address0 sc_out sc_lv 5 signal 1 } 
	{ Key_ce0 sc_out sc_logic 1 signal 1 } 
	{ Key_q0 sc_in sc_lv 8 signal 1 } 
	{ Key_address1 sc_out sc_lv 5 signal 1 } 
	{ Key_ce1 sc_out sc_logic 1 signal 1 } 
	{ Key_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "RoundKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address0" }} , 
 	{ "name": "RoundKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce0" }} , 
 	{ "name": "RoundKey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we0" }} , 
 	{ "name": "RoundKey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d0" }} , 
 	{ "name": "RoundKey_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q0" }} , 
 	{ "name": "RoundKey_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address1" }} , 
 	{ "name": "RoundKey_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce1" }} , 
 	{ "name": "RoundKey_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we1" }} , 
 	{ "name": "RoundKey_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d1" }} , 
 	{ "name": "RoundKey_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q1" }} , 
 	{ "name": "Key_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address0" }} , 
 	{ "name": "Key_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce0" }} , 
 	{ "name": "Key_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q0" }} , 
 	{ "name": "Key_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address1" }} , 
 	{ "name": "Key_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce1" }} , 
 	{ "name": "Key_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "KeyExpansion",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "332", "EstimateLatencyMax" : "332",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sbox_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Rcon_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	KeyExpansion {
		RoundKey {Type IO LastRead 25 FirstWrite 2}
		Key {Type I LastRead 9 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "332", "Max" : "332"}
	, {"Name" : "Interval", "Min" : "332", "Max" : "332"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	RoundKey { ap_memory {  { RoundKey_address0 mem_address 1 8 }  { RoundKey_ce0 mem_ce 1 1 }  { RoundKey_we0 mem_we 1 1 }  { RoundKey_d0 mem_din 1 8 }  { RoundKey_q0 mem_dout 0 8 }  { RoundKey_address1 mem_address 1 8 }  { RoundKey_ce1 mem_ce 1 1 }  { RoundKey_we1 mem_we 1 1 }  { RoundKey_d1 mem_din 1 8 }  { RoundKey_q1 mem_dout 0 8 } } }
	Key { ap_memory {  { Key_address0 mem_address 1 5 }  { Key_ce0 mem_ce 1 1 }  { Key_q0 mem_dout 0 8 }  { Key_address1 mem_address 1 5 }  { Key_ce1 mem_ce 1 1 }  { Key_q1 mem_dout 0 8 } } }
}
set moduleName KeyExpansion
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
set C_modelName {KeyExpansion}
set C_modelType { void 0 }
set C_modelArgList {
	{ RoundKey int 8 regular {array 240 { 2 2 } 1 1 }  }
	{ Key int 8 regular {array 32 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "RoundKey", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "Key", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ RoundKey_address0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q0 sc_in sc_lv 8 signal 0 } 
	{ RoundKey_address1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q1 sc_in sc_lv 8 signal 0 } 
	{ Key_address0 sc_out sc_lv 5 signal 1 } 
	{ Key_ce0 sc_out sc_logic 1 signal 1 } 
	{ Key_q0 sc_in sc_lv 8 signal 1 } 
	{ Key_address1 sc_out sc_lv 5 signal 1 } 
	{ Key_ce1 sc_out sc_logic 1 signal 1 } 
	{ Key_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "RoundKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address0" }} , 
 	{ "name": "RoundKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce0" }} , 
 	{ "name": "RoundKey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we0" }} , 
 	{ "name": "RoundKey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d0" }} , 
 	{ "name": "RoundKey_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q0" }} , 
 	{ "name": "RoundKey_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address1" }} , 
 	{ "name": "RoundKey_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce1" }} , 
 	{ "name": "RoundKey_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we1" }} , 
 	{ "name": "RoundKey_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d1" }} , 
 	{ "name": "RoundKey_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q1" }} , 
 	{ "name": "Key_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address0" }} , 
 	{ "name": "Key_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce0" }} , 
 	{ "name": "Key_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q0" }} , 
 	{ "name": "Key_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address1" }} , 
 	{ "name": "Key_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce1" }} , 
 	{ "name": "Key_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "KeyExpansion",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "338", "EstimateLatencyMax" : "338",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sbox_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Rcon_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	KeyExpansion {
		RoundKey {Type IO LastRead 6 FirstWrite 2}
		Key {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "338", "Max" : "338"}
	, {"Name" : "Interval", "Min" : "338", "Max" : "338"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	RoundKey { ap_memory {  { RoundKey_address0 mem_address 1 8 }  { RoundKey_ce0 mem_ce 1 1 }  { RoundKey_we0 mem_we 1 1 }  { RoundKey_d0 mem_din 1 8 }  { RoundKey_q0 mem_dout 0 8 }  { RoundKey_address1 mem_address 1 8 }  { RoundKey_ce1 mem_ce 1 1 }  { RoundKey_we1 mem_we 1 1 }  { RoundKey_d1 mem_din 1 8 }  { RoundKey_q1 mem_dout 0 8 } } }
	Key { ap_memory {  { Key_address0 mem_address 1 5 }  { Key_ce0 mem_ce 1 1 }  { Key_q0 mem_dout 0 8 }  { Key_address1 mem_address 1 5 }  { Key_ce1 mem_ce 1 1 }  { Key_q1 mem_dout 0 8 } } }
}
set moduleName KeyExpansion
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
set C_modelName {KeyExpansion}
set C_modelType { void 0 }
set C_modelArgList {
	{ RoundKey int 8 regular {array 240 { 2 2 } 1 1 }  }
	{ Key int 8 regular {array 32 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "RoundKey", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "Key", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ RoundKey_address0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q0 sc_in sc_lv 8 signal 0 } 
	{ RoundKey_address1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q1 sc_in sc_lv 8 signal 0 } 
	{ Key_address0 sc_out sc_lv 5 signal 1 } 
	{ Key_ce0 sc_out sc_logic 1 signal 1 } 
	{ Key_q0 sc_in sc_lv 8 signal 1 } 
	{ Key_address1 sc_out sc_lv 5 signal 1 } 
	{ Key_ce1 sc_out sc_logic 1 signal 1 } 
	{ Key_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "RoundKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address0" }} , 
 	{ "name": "RoundKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce0" }} , 
 	{ "name": "RoundKey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we0" }} , 
 	{ "name": "RoundKey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d0" }} , 
 	{ "name": "RoundKey_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q0" }} , 
 	{ "name": "RoundKey_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address1" }} , 
 	{ "name": "RoundKey_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce1" }} , 
 	{ "name": "RoundKey_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we1" }} , 
 	{ "name": "RoundKey_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d1" }} , 
 	{ "name": "RoundKey_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q1" }} , 
 	{ "name": "Key_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address0" }} , 
 	{ "name": "Key_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce0" }} , 
 	{ "name": "Key_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q0" }} , 
 	{ "name": "Key_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address1" }} , 
 	{ "name": "Key_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce1" }} , 
 	{ "name": "Key_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "KeyExpansion",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "334", "EstimateLatencyMax" : "334",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sbox_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Rcon_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	KeyExpansion {
		RoundKey {Type IO LastRead 12 FirstWrite 2}
		Key {Type I LastRead 5 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "334", "Max" : "334"}
	, {"Name" : "Interval", "Min" : "334", "Max" : "334"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	RoundKey { ap_memory {  { RoundKey_address0 mem_address 1 8 }  { RoundKey_ce0 mem_ce 1 1 }  { RoundKey_we0 mem_we 1 1 }  { RoundKey_d0 mem_din 1 8 }  { RoundKey_q0 mem_dout 0 8 }  { RoundKey_address1 mem_address 1 8 }  { RoundKey_ce1 mem_ce 1 1 }  { RoundKey_we1 mem_we 1 1 }  { RoundKey_d1 mem_din 1 8 }  { RoundKey_q1 mem_dout 0 8 } } }
	Key { ap_memory {  { Key_address0 mem_address 1 5 }  { Key_ce0 mem_ce 1 1 }  { Key_q0 mem_dout 0 8 }  { Key_address1 mem_address 1 5 }  { Key_ce1 mem_ce 1 1 }  { Key_q1 mem_dout 0 8 } } }
}
set moduleName KeyExpansion
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
set C_modelName {KeyExpansion}
set C_modelType { void 0 }
set C_modelArgList {
	{ RoundKey int 8 regular {array 240 { 2 2 } 1 1 }  }
	{ Key int 8 regular {array 32 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "RoundKey", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "Key", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ RoundKey_address0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q0 sc_in sc_lv 8 signal 0 } 
	{ RoundKey_address1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q1 sc_in sc_lv 8 signal 0 } 
	{ Key_address0 sc_out sc_lv 5 signal 1 } 
	{ Key_ce0 sc_out sc_logic 1 signal 1 } 
	{ Key_q0 sc_in sc_lv 8 signal 1 } 
	{ Key_address1 sc_out sc_lv 5 signal 1 } 
	{ Key_ce1 sc_out sc_logic 1 signal 1 } 
	{ Key_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "RoundKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address0" }} , 
 	{ "name": "RoundKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce0" }} , 
 	{ "name": "RoundKey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we0" }} , 
 	{ "name": "RoundKey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d0" }} , 
 	{ "name": "RoundKey_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q0" }} , 
 	{ "name": "RoundKey_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address1" }} , 
 	{ "name": "RoundKey_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce1" }} , 
 	{ "name": "RoundKey_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we1" }} , 
 	{ "name": "RoundKey_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d1" }} , 
 	{ "name": "RoundKey_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q1" }} , 
 	{ "name": "Key_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address0" }} , 
 	{ "name": "Key_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce0" }} , 
 	{ "name": "Key_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q0" }} , 
 	{ "name": "Key_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address1" }} , 
 	{ "name": "Key_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce1" }} , 
 	{ "name": "Key_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "KeyExpansion",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "345", "EstimateLatencyMax" : "345",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sbox_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Rcon_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	KeyExpansion {
		RoundKey {Type IO LastRead 25 FirstWrite 2}
		Key {Type I LastRead 9 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "345", "Max" : "345"}
	, {"Name" : "Interval", "Min" : "345", "Max" : "345"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	RoundKey { ap_memory {  { RoundKey_address0 mem_address 1 8 }  { RoundKey_ce0 mem_ce 1 1 }  { RoundKey_we0 mem_we 1 1 }  { RoundKey_d0 mem_din 1 8 }  { RoundKey_q0 mem_dout 0 8 }  { RoundKey_address1 mem_address 1 8 }  { RoundKey_ce1 mem_ce 1 1 }  { RoundKey_we1 mem_we 1 1 }  { RoundKey_d1 mem_din 1 8 }  { RoundKey_q1 mem_dout 0 8 } } }
	Key { ap_memory {  { Key_address0 mem_address 1 5 }  { Key_ce0 mem_ce 1 1 }  { Key_q0 mem_dout 0 8 }  { Key_address1 mem_address 1 5 }  { Key_ce1 mem_ce 1 1 }  { Key_q1 mem_dout 0 8 } } }
}
set moduleName KeyExpansion
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
set C_modelName {KeyExpansion}
set C_modelType { void 0 }
set C_modelArgList {
	{ RoundKey int 8 regular {array 240 { 2 2 } 1 1 }  }
	{ Key int 8 regular {array 32 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "RoundKey", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "Key", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ RoundKey_address0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q0 sc_in sc_lv 8 signal 0 } 
	{ RoundKey_address1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q1 sc_in sc_lv 8 signal 0 } 
	{ Key_address0 sc_out sc_lv 5 signal 1 } 
	{ Key_ce0 sc_out sc_logic 1 signal 1 } 
	{ Key_q0 sc_in sc_lv 8 signal 1 } 
	{ Key_address1 sc_out sc_lv 5 signal 1 } 
	{ Key_ce1 sc_out sc_logic 1 signal 1 } 
	{ Key_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "RoundKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address0" }} , 
 	{ "name": "RoundKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce0" }} , 
 	{ "name": "RoundKey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we0" }} , 
 	{ "name": "RoundKey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d0" }} , 
 	{ "name": "RoundKey_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q0" }} , 
 	{ "name": "RoundKey_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address1" }} , 
 	{ "name": "RoundKey_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce1" }} , 
 	{ "name": "RoundKey_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we1" }} , 
 	{ "name": "RoundKey_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d1" }} , 
 	{ "name": "RoundKey_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q1" }} , 
 	{ "name": "Key_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address0" }} , 
 	{ "name": "Key_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce0" }} , 
 	{ "name": "Key_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q0" }} , 
 	{ "name": "Key_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address1" }} , 
 	{ "name": "Key_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce1" }} , 
 	{ "name": "Key_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "KeyExpansion",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "353", "EstimateLatencyMax" : "377",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sbox_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Rcon_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	KeyExpansion {
		RoundKey {Type IO LastRead 63 FirstWrite 1}
		Key {Type I LastRead 16 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "353", "Max" : "377"}
	, {"Name" : "Interval", "Min" : "353", "Max" : "377"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	RoundKey { ap_memory {  { RoundKey_address0 mem_address 1 8 }  { RoundKey_ce0 mem_ce 1 1 }  { RoundKey_we0 mem_we 1 1 }  { RoundKey_d0 mem_din 1 8 }  { RoundKey_q0 mem_dout 0 8 }  { RoundKey_address1 mem_address 1 8 }  { RoundKey_ce1 mem_ce 1 1 }  { RoundKey_we1 mem_we 1 1 }  { RoundKey_d1 mem_din 1 8 }  { RoundKey_q1 mem_dout 0 8 } } }
	Key { ap_memory {  { Key_address0 mem_address 1 5 }  { Key_ce0 mem_ce 1 1 }  { Key_q0 mem_dout 0 8 }  { Key_address1 mem_address 1 5 }  { Key_ce1 mem_ce 1 1 }  { Key_q1 mem_dout 0 8 } } }
}
set moduleName KeyExpansion
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
set C_modelName {KeyExpansion}
set C_modelType { void 0 }
set C_modelArgList {
	{ RoundKey int 8 regular {array 240 { 2 2 } 1 1 }  }
	{ Key int 8 regular {array 32 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "RoundKey", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "Key", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ RoundKey_address0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q0 sc_in sc_lv 8 signal 0 } 
	{ RoundKey_address1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q1 sc_in sc_lv 8 signal 0 } 
	{ Key_address0 sc_out sc_lv 5 signal 1 } 
	{ Key_ce0 sc_out sc_logic 1 signal 1 } 
	{ Key_q0 sc_in sc_lv 8 signal 1 } 
	{ Key_address1 sc_out sc_lv 5 signal 1 } 
	{ Key_ce1 sc_out sc_logic 1 signal 1 } 
	{ Key_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "RoundKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address0" }} , 
 	{ "name": "RoundKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce0" }} , 
 	{ "name": "RoundKey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we0" }} , 
 	{ "name": "RoundKey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d0" }} , 
 	{ "name": "RoundKey_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q0" }} , 
 	{ "name": "RoundKey_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address1" }} , 
 	{ "name": "RoundKey_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce1" }} , 
 	{ "name": "RoundKey_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we1" }} , 
 	{ "name": "RoundKey_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d1" }} , 
 	{ "name": "RoundKey_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q1" }} , 
 	{ "name": "Key_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address0" }} , 
 	{ "name": "Key_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce0" }} , 
 	{ "name": "Key_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q0" }} , 
 	{ "name": "Key_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address1" }} , 
 	{ "name": "Key_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce1" }} , 
 	{ "name": "Key_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "KeyExpansion",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "402", "EstimateLatencyMax" : "491",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sbox_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Rcon_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	KeyExpansion {
		RoundKey {Type IO LastRead 111 FirstWrite 1}
		Key {Type I LastRead 16 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "402", "Max" : "491"}
	, {"Name" : "Interval", "Min" : "402", "Max" : "491"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	RoundKey { ap_memory {  { RoundKey_address0 mem_address 1 8 }  { RoundKey_ce0 mem_ce 1 1 }  { RoundKey_we0 mem_we 1 1 }  { RoundKey_d0 mem_din 1 8 }  { RoundKey_q0 mem_dout 0 8 }  { RoundKey_address1 mem_address 1 8 }  { RoundKey_ce1 mem_ce 1 1 }  { RoundKey_we1 mem_we 1 1 }  { RoundKey_d1 mem_din 1 8 }  { RoundKey_q1 mem_dout 0 8 } } }
	Key { ap_memory {  { Key_address0 mem_address 1 5 }  { Key_ce0 mem_ce 1 1 }  { Key_q0 mem_dout 0 8 }  { Key_address1 mem_address 1 5 }  { Key_ce1 mem_ce 1 1 }  { Key_q1 mem_dout 0 8 } } }
}
set moduleName KeyExpansion
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
set C_modelName {KeyExpansion}
set C_modelType { void 0 }
set C_modelArgList {
	{ RoundKey int 8 regular {array 240 { 2 2 } 1 1 }  }
	{ Key int 8 regular {array 32 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "RoundKey", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "Key", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ RoundKey_address0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q0 sc_in sc_lv 8 signal 0 } 
	{ RoundKey_address1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q1 sc_in sc_lv 8 signal 0 } 
	{ Key_address0 sc_out sc_lv 5 signal 1 } 
	{ Key_ce0 sc_out sc_logic 1 signal 1 } 
	{ Key_q0 sc_in sc_lv 8 signal 1 } 
	{ Key_address1 sc_out sc_lv 5 signal 1 } 
	{ Key_ce1 sc_out sc_logic 1 signal 1 } 
	{ Key_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "RoundKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address0" }} , 
 	{ "name": "RoundKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce0" }} , 
 	{ "name": "RoundKey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we0" }} , 
 	{ "name": "RoundKey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d0" }} , 
 	{ "name": "RoundKey_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q0" }} , 
 	{ "name": "RoundKey_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address1" }} , 
 	{ "name": "RoundKey_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce1" }} , 
 	{ "name": "RoundKey_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we1" }} , 
 	{ "name": "RoundKey_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d1" }} , 
 	{ "name": "RoundKey_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q1" }} , 
 	{ "name": "Key_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address0" }} , 
 	{ "name": "Key_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce0" }} , 
 	{ "name": "Key_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q0" }} , 
 	{ "name": "Key_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address1" }} , 
 	{ "name": "Key_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce1" }} , 
 	{ "name": "Key_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "KeyExpansion",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "402", "EstimateLatencyMax" : "587",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sbox_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Rcon_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	KeyExpansion {
		RoundKey {Type IO LastRead 207 FirstWrite 1}
		Key {Type I LastRead 16 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "402", "Max" : "587"}
	, {"Name" : "Interval", "Min" : "402", "Max" : "587"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	RoundKey { ap_memory {  { RoundKey_address0 mem_address 1 8 }  { RoundKey_ce0 mem_ce 1 1 }  { RoundKey_we0 mem_we 1 1 }  { RoundKey_d0 mem_din 1 8 }  { RoundKey_q0 mem_dout 0 8 }  { RoundKey_address1 mem_address 1 8 }  { RoundKey_ce1 mem_ce 1 1 }  { RoundKey_we1 mem_we 1 1 }  { RoundKey_d1 mem_din 1 8 }  { RoundKey_q1 mem_dout 0 8 } } }
	Key { ap_memory {  { Key_address0 mem_address 1 5 }  { Key_ce0 mem_ce 1 1 }  { Key_q0 mem_dout 0 8 }  { Key_address1 mem_address 1 5 }  { Key_ce1 mem_ce 1 1 }  { Key_q1 mem_dout 0 8 } } }
}
set moduleName KeyExpansion
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
set C_modelName {KeyExpansion}
set C_modelType { void 0 }
set C_modelArgList {
	{ RoundKey int 8 regular {array 240 { 0 0 } 0 1 }  }
	{ Key int 8 regular {array 32 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "RoundKey", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Key", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ RoundKey_address0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_address1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d1 sc_out sc_lv 8 signal 0 } 
	{ Key_address0 sc_out sc_lv 5 signal 1 } 
	{ Key_ce0 sc_out sc_logic 1 signal 1 } 
	{ Key_q0 sc_in sc_lv 8 signal 1 } 
	{ Key_address1 sc_out sc_lv 5 signal 1 } 
	{ Key_ce1 sc_out sc_logic 1 signal 1 } 
	{ Key_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "RoundKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address0" }} , 
 	{ "name": "RoundKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce0" }} , 
 	{ "name": "RoundKey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we0" }} , 
 	{ "name": "RoundKey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d0" }} , 
 	{ "name": "RoundKey_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address1" }} , 
 	{ "name": "RoundKey_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce1" }} , 
 	{ "name": "RoundKey_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we1" }} , 
 	{ "name": "RoundKey_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d1" }} , 
 	{ "name": "Key_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address0" }} , 
 	{ "name": "Key_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce0" }} , 
 	{ "name": "Key_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q0" }} , 
 	{ "name": "Key_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address1" }} , 
 	{ "name": "Key_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce1" }} , 
 	{ "name": "Key_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "KeyExpansion",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "120", "EstimateLatencyMax" : "120",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sbox_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	KeyExpansion {
		RoundKey {Type O LastRead -1 FirstWrite 1}
		Key {Type I LastRead 16 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "120", "Max" : "120"}
	, {"Name" : "Interval", "Min" : "120", "Max" : "120"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	RoundKey { ap_memory {  { RoundKey_address0 mem_address 1 8 }  { RoundKey_ce0 mem_ce 1 1 }  { RoundKey_we0 mem_we 1 1 }  { RoundKey_d0 mem_din 1 8 }  { RoundKey_address1 mem_address 1 8 }  { RoundKey_ce1 mem_ce 1 1 }  { RoundKey_we1 mem_we 1 1 }  { RoundKey_d1 mem_din 1 8 } } }
	Key { ap_memory {  { Key_address0 mem_address 1 5 }  { Key_ce0 mem_ce 1 1 }  { Key_q0 mem_dout 0 8 }  { Key_address1 mem_address 1 5 }  { Key_ce1 mem_ce 1 1 }  { Key_q1 mem_dout 0 8 } } }
}
set moduleName KeyExpansion
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
set C_modelName {KeyExpansion}
set C_modelType { void 0 }
set C_modelArgList {
	{ RoundKey int 8 regular {array 240 { 0 0 } 0 1 }  }
	{ Key int 8 regular {array 32 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "RoundKey", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Key", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ RoundKey_address0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_address1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d1 sc_out sc_lv 8 signal 0 } 
	{ Key_address0 sc_out sc_lv 5 signal 1 } 
	{ Key_ce0 sc_out sc_logic 1 signal 1 } 
	{ Key_q0 sc_in sc_lv 8 signal 1 } 
	{ Key_address1 sc_out sc_lv 5 signal 1 } 
	{ Key_ce1 sc_out sc_logic 1 signal 1 } 
	{ Key_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "RoundKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address0" }} , 
 	{ "name": "RoundKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce0" }} , 
 	{ "name": "RoundKey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we0" }} , 
 	{ "name": "RoundKey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d0" }} , 
 	{ "name": "RoundKey_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address1" }} , 
 	{ "name": "RoundKey_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce1" }} , 
 	{ "name": "RoundKey_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we1" }} , 
 	{ "name": "RoundKey_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d1" }} , 
 	{ "name": "Key_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address0" }} , 
 	{ "name": "Key_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce0" }} , 
 	{ "name": "Key_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q0" }} , 
 	{ "name": "Key_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address1" }} , 
 	{ "name": "Key_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce1" }} , 
 	{ "name": "Key_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "KeyExpansion",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "120", "EstimateLatencyMax" : "120",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sbox_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	KeyExpansion {
		RoundKey {Type O LastRead -1 FirstWrite 1}
		Key {Type I LastRead 16 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "120", "Max" : "120"}
	, {"Name" : "Interval", "Min" : "120", "Max" : "120"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	RoundKey { ap_memory {  { RoundKey_address0 mem_address 1 8 }  { RoundKey_ce0 mem_ce 1 1 }  { RoundKey_we0 mem_we 1 1 }  { RoundKey_d0 mem_din 1 8 }  { RoundKey_address1 mem_address 1 8 }  { RoundKey_ce1 mem_ce 1 1 }  { RoundKey_we1 mem_we 1 1 }  { RoundKey_d1 mem_din 1 8 } } }
	Key { ap_memory {  { Key_address0 mem_address 1 5 }  { Key_ce0 mem_ce 1 1 }  { Key_q0 mem_dout 0 8 }  { Key_address1 mem_address 1 5 }  { Key_ce1 mem_ce 1 1 }  { Key_q1 mem_dout 0 8 } } }
}
set moduleName KeyExpansion
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
set C_modelName {KeyExpansion}
set C_modelType { void 0 }
set C_modelArgList {
	{ RoundKey int 8 regular {array 240 { 2 2 } 1 1 }  }
	{ Key int 8 regular {array 32 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "RoundKey", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "Key", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ RoundKey_address0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q0 sc_in sc_lv 8 signal 0 } 
	{ RoundKey_address1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q1 sc_in sc_lv 8 signal 0 } 
	{ Key_address0 sc_out sc_lv 5 signal 1 } 
	{ Key_ce0 sc_out sc_logic 1 signal 1 } 
	{ Key_q0 sc_in sc_lv 8 signal 1 } 
	{ Key_address1 sc_out sc_lv 5 signal 1 } 
	{ Key_ce1 sc_out sc_logic 1 signal 1 } 
	{ Key_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "RoundKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address0" }} , 
 	{ "name": "RoundKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce0" }} , 
 	{ "name": "RoundKey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we0" }} , 
 	{ "name": "RoundKey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d0" }} , 
 	{ "name": "RoundKey_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q0" }} , 
 	{ "name": "RoundKey_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address1" }} , 
 	{ "name": "RoundKey_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce1" }} , 
 	{ "name": "RoundKey_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we1" }} , 
 	{ "name": "RoundKey_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d1" }} , 
 	{ "name": "RoundKey_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q1" }} , 
 	{ "name": "Key_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address0" }} , 
 	{ "name": "Key_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce0" }} , 
 	{ "name": "Key_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q0" }} , 
 	{ "name": "Key_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address1" }} , 
 	{ "name": "Key_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce1" }} , 
 	{ "name": "Key_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "KeyExpansion",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "332", "EstimateLatencyMax" : "332",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sbox_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Rcon_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	KeyExpansion {
		RoundKey {Type IO LastRead 7 FirstWrite 2}
		Key {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "332", "Max" : "332"}
	, {"Name" : "Interval", "Min" : "332", "Max" : "332"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	RoundKey { ap_memory {  { RoundKey_address0 mem_address 1 8 }  { RoundKey_ce0 mem_ce 1 1 }  { RoundKey_we0 mem_we 1 1 }  { RoundKey_d0 mem_din 1 8 }  { RoundKey_q0 mem_dout 0 8 }  { RoundKey_address1 mem_address 1 8 }  { RoundKey_ce1 mem_ce 1 1 }  { RoundKey_we1 mem_we 1 1 }  { RoundKey_d1 mem_din 1 8 }  { RoundKey_q1 mem_dout 0 8 } } }
	Key { ap_memory {  { Key_address0 mem_address 1 5 }  { Key_ce0 mem_ce 1 1 }  { Key_q0 mem_dout 0 8 }  { Key_address1 mem_address 1 5 }  { Key_ce1 mem_ce 1 1 }  { Key_q1 mem_dout 0 8 } } }
}
set moduleName KeyExpansion
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
set C_modelName {KeyExpansion}
set C_modelType { void 0 }
set C_modelArgList {
	{ RoundKey int 8 regular {array 240 { 2 2 } 1 1 }  }
	{ Key int 8 regular {array 32 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "RoundKey", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "Key", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ RoundKey_address0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q0 sc_in sc_lv 8 signal 0 } 
	{ RoundKey_address1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q1 sc_in sc_lv 8 signal 0 } 
	{ Key_address0 sc_out sc_lv 5 signal 1 } 
	{ Key_ce0 sc_out sc_logic 1 signal 1 } 
	{ Key_q0 sc_in sc_lv 8 signal 1 } 
	{ Key_address1 sc_out sc_lv 5 signal 1 } 
	{ Key_ce1 sc_out sc_logic 1 signal 1 } 
	{ Key_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "RoundKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address0" }} , 
 	{ "name": "RoundKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce0" }} , 
 	{ "name": "RoundKey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we0" }} , 
 	{ "name": "RoundKey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d0" }} , 
 	{ "name": "RoundKey_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q0" }} , 
 	{ "name": "RoundKey_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address1" }} , 
 	{ "name": "RoundKey_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce1" }} , 
 	{ "name": "RoundKey_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we1" }} , 
 	{ "name": "RoundKey_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d1" }} , 
 	{ "name": "RoundKey_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q1" }} , 
 	{ "name": "Key_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address0" }} , 
 	{ "name": "Key_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce0" }} , 
 	{ "name": "Key_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q0" }} , 
 	{ "name": "Key_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address1" }} , 
 	{ "name": "Key_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce1" }} , 
 	{ "name": "Key_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "KeyExpansion",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "332", "EstimateLatencyMax" : "332",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sbox_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Rcon_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	KeyExpansion {
		RoundKey {Type IO LastRead 13 FirstWrite 2}
		Key {Type I LastRead 5 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "332", "Max" : "332"}
	, {"Name" : "Interval", "Min" : "332", "Max" : "332"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	RoundKey { ap_memory {  { RoundKey_address0 mem_address 1 8 }  { RoundKey_ce0 mem_ce 1 1 }  { RoundKey_we0 mem_we 1 1 }  { RoundKey_d0 mem_din 1 8 }  { RoundKey_q0 mem_dout 0 8 }  { RoundKey_address1 mem_address 1 8 }  { RoundKey_ce1 mem_ce 1 1 }  { RoundKey_we1 mem_we 1 1 }  { RoundKey_d1 mem_din 1 8 }  { RoundKey_q1 mem_dout 0 8 } } }
	Key { ap_memory {  { Key_address0 mem_address 1 5 }  { Key_ce0 mem_ce 1 1 }  { Key_q0 mem_dout 0 8 }  { Key_address1 mem_address 1 5 }  { Key_ce1 mem_ce 1 1 }  { Key_q1 mem_dout 0 8 } } }
}
set moduleName KeyExpansion
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
set C_modelName {KeyExpansion}
set C_modelType { void 0 }
set C_modelArgList {
	{ RoundKey int 8 regular {array 240 { 2 2 } 1 1 }  }
	{ Key int 8 regular {array 32 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "RoundKey", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "Key", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ RoundKey_address0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q0 sc_in sc_lv 8 signal 0 } 
	{ RoundKey_address1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q1 sc_in sc_lv 8 signal 0 } 
	{ Key_address0 sc_out sc_lv 5 signal 1 } 
	{ Key_ce0 sc_out sc_logic 1 signal 1 } 
	{ Key_q0 sc_in sc_lv 8 signal 1 } 
	{ Key_address1 sc_out sc_lv 5 signal 1 } 
	{ Key_ce1 sc_out sc_logic 1 signal 1 } 
	{ Key_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "RoundKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address0" }} , 
 	{ "name": "RoundKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce0" }} , 
 	{ "name": "RoundKey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we0" }} , 
 	{ "name": "RoundKey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d0" }} , 
 	{ "name": "RoundKey_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q0" }} , 
 	{ "name": "RoundKey_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address1" }} , 
 	{ "name": "RoundKey_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce1" }} , 
 	{ "name": "RoundKey_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we1" }} , 
 	{ "name": "RoundKey_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d1" }} , 
 	{ "name": "RoundKey_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q1" }} , 
 	{ "name": "Key_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address0" }} , 
 	{ "name": "Key_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce0" }} , 
 	{ "name": "Key_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q0" }} , 
 	{ "name": "Key_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address1" }} , 
 	{ "name": "Key_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce1" }} , 
 	{ "name": "Key_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "KeyExpansion",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "332", "EstimateLatencyMax" : "332",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sbox_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Rcon_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	KeyExpansion {
		RoundKey {Type IO LastRead 25 FirstWrite 2}
		Key {Type I LastRead 9 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "332", "Max" : "332"}
	, {"Name" : "Interval", "Min" : "332", "Max" : "332"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	RoundKey { ap_memory {  { RoundKey_address0 mem_address 1 8 }  { RoundKey_ce0 mem_ce 1 1 }  { RoundKey_we0 mem_we 1 1 }  { RoundKey_d0 mem_din 1 8 }  { RoundKey_q0 mem_dout 0 8 }  { RoundKey_address1 mem_address 1 8 }  { RoundKey_ce1 mem_ce 1 1 }  { RoundKey_we1 mem_we 1 1 }  { RoundKey_d1 mem_din 1 8 }  { RoundKey_q1 mem_dout 0 8 } } }
	Key { ap_memory {  { Key_address0 mem_address 1 5 }  { Key_ce0 mem_ce 1 1 }  { Key_q0 mem_dout 0 8 }  { Key_address1 mem_address 1 5 }  { Key_ce1 mem_ce 1 1 }  { Key_q1 mem_dout 0 8 } } }
}
set moduleName KeyExpansion
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
set C_modelName {KeyExpansion}
set C_modelType { void 0 }
set C_modelArgList {
	{ RoundKey int 8 regular {array 240 { 2 2 } 1 1 }  }
	{ Key int 8 regular {array 32 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "RoundKey", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "Key", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ RoundKey_address0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q0 sc_in sc_lv 8 signal 0 } 
	{ RoundKey_address1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q1 sc_in sc_lv 8 signal 0 } 
	{ Key_address0 sc_out sc_lv 5 signal 1 } 
	{ Key_ce0 sc_out sc_logic 1 signal 1 } 
	{ Key_q0 sc_in sc_lv 8 signal 1 } 
	{ Key_address1 sc_out sc_lv 5 signal 1 } 
	{ Key_ce1 sc_out sc_logic 1 signal 1 } 
	{ Key_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "RoundKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address0" }} , 
 	{ "name": "RoundKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce0" }} , 
 	{ "name": "RoundKey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we0" }} , 
 	{ "name": "RoundKey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d0" }} , 
 	{ "name": "RoundKey_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q0" }} , 
 	{ "name": "RoundKey_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address1" }} , 
 	{ "name": "RoundKey_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce1" }} , 
 	{ "name": "RoundKey_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we1" }} , 
 	{ "name": "RoundKey_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d1" }} , 
 	{ "name": "RoundKey_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q1" }} , 
 	{ "name": "Key_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address0" }} , 
 	{ "name": "Key_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce0" }} , 
 	{ "name": "Key_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q0" }} , 
 	{ "name": "Key_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address1" }} , 
 	{ "name": "Key_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce1" }} , 
 	{ "name": "Key_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "KeyExpansion",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "377", "EstimateLatencyMax" : "377",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sbox_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Rcon_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	KeyExpansion {
		RoundKey {Type IO LastRead 63 FirstWrite 1}
		Key {Type I LastRead 16 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "377", "Max" : "377"}
	, {"Name" : "Interval", "Min" : "377", "Max" : "377"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	RoundKey { ap_memory {  { RoundKey_address0 mem_address 1 8 }  { RoundKey_ce0 mem_ce 1 1 }  { RoundKey_we0 mem_we 1 1 }  { RoundKey_d0 mem_din 1 8 }  { RoundKey_q0 mem_dout 0 8 }  { RoundKey_address1 mem_address 1 8 }  { RoundKey_ce1 mem_ce 1 1 }  { RoundKey_we1 mem_we 1 1 }  { RoundKey_d1 mem_din 1 8 }  { RoundKey_q1 mem_dout 0 8 } } }
	Key { ap_memory {  { Key_address0 mem_address 1 5 }  { Key_ce0 mem_ce 1 1 }  { Key_q0 mem_dout 0 8 }  { Key_address1 mem_address 1 5 }  { Key_ce1 mem_ce 1 1 }  { Key_q1 mem_dout 0 8 } } }
}
set moduleName KeyExpansion
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
set C_modelName {KeyExpansion}
set C_modelType { void 0 }
set C_modelArgList {
	{ RoundKey int 8 regular {array 240 { 2 2 } 1 1 }  }
	{ Key int 8 regular {array 32 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "RoundKey", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "Key", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ RoundKey_address0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q0 sc_in sc_lv 8 signal 0 } 
	{ RoundKey_address1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q1 sc_in sc_lv 8 signal 0 } 
	{ Key_address0 sc_out sc_lv 5 signal 1 } 
	{ Key_ce0 sc_out sc_logic 1 signal 1 } 
	{ Key_q0 sc_in sc_lv 8 signal 1 } 
	{ Key_address1 sc_out sc_lv 5 signal 1 } 
	{ Key_ce1 sc_out sc_logic 1 signal 1 } 
	{ Key_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "RoundKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address0" }} , 
 	{ "name": "RoundKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce0" }} , 
 	{ "name": "RoundKey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we0" }} , 
 	{ "name": "RoundKey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d0" }} , 
 	{ "name": "RoundKey_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q0" }} , 
 	{ "name": "RoundKey_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address1" }} , 
 	{ "name": "RoundKey_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce1" }} , 
 	{ "name": "RoundKey_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we1" }} , 
 	{ "name": "RoundKey_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d1" }} , 
 	{ "name": "RoundKey_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q1" }} , 
 	{ "name": "Key_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address0" }} , 
 	{ "name": "Key_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce0" }} , 
 	{ "name": "Key_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q0" }} , 
 	{ "name": "Key_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address1" }} , 
 	{ "name": "Key_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce1" }} , 
 	{ "name": "Key_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "KeyExpansion",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "491", "EstimateLatencyMax" : "491",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sbox_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Rcon_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	KeyExpansion {
		RoundKey {Type IO LastRead 111 FirstWrite 1}
		Key {Type I LastRead 16 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "491", "Max" : "491"}
	, {"Name" : "Interval", "Min" : "491", "Max" : "491"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	RoundKey { ap_memory {  { RoundKey_address0 mem_address 1 8 }  { RoundKey_ce0 mem_ce 1 1 }  { RoundKey_we0 mem_we 1 1 }  { RoundKey_d0 mem_din 1 8 }  { RoundKey_q0 mem_dout 0 8 }  { RoundKey_address1 mem_address 1 8 }  { RoundKey_ce1 mem_ce 1 1 }  { RoundKey_we1 mem_we 1 1 }  { RoundKey_d1 mem_din 1 8 }  { RoundKey_q1 mem_dout 0 8 } } }
	Key { ap_memory {  { Key_address0 mem_address 1 5 }  { Key_ce0 mem_ce 1 1 }  { Key_q0 mem_dout 0 8 }  { Key_address1 mem_address 1 5 }  { Key_ce1 mem_ce 1 1 }  { Key_q1 mem_dout 0 8 } } }
}
set moduleName KeyExpansion
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
set C_modelName {KeyExpansion}
set C_modelType { void 0 }
set C_modelArgList {
	{ RoundKey int 8 regular {array 240 { 2 2 } 1 1 }  }
	{ Key int 8 regular {array 32 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "RoundKey", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "Key", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ RoundKey_address0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q0 sc_in sc_lv 8 signal 0 } 
	{ RoundKey_address1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q1 sc_in sc_lv 8 signal 0 } 
	{ Key_address0 sc_out sc_lv 5 signal 1 } 
	{ Key_ce0 sc_out sc_logic 1 signal 1 } 
	{ Key_q0 sc_in sc_lv 8 signal 1 } 
	{ Key_address1 sc_out sc_lv 5 signal 1 } 
	{ Key_ce1 sc_out sc_logic 1 signal 1 } 
	{ Key_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "RoundKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address0" }} , 
 	{ "name": "RoundKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce0" }} , 
 	{ "name": "RoundKey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we0" }} , 
 	{ "name": "RoundKey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d0" }} , 
 	{ "name": "RoundKey_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q0" }} , 
 	{ "name": "RoundKey_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address1" }} , 
 	{ "name": "RoundKey_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce1" }} , 
 	{ "name": "RoundKey_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we1" }} , 
 	{ "name": "RoundKey_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d1" }} , 
 	{ "name": "RoundKey_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q1" }} , 
 	{ "name": "Key_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address0" }} , 
 	{ "name": "Key_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce0" }} , 
 	{ "name": "Key_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q0" }} , 
 	{ "name": "Key_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address1" }} , 
 	{ "name": "Key_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce1" }} , 
 	{ "name": "Key_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "KeyExpansion",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "587", "EstimateLatencyMax" : "587",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sbox_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Rcon_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	KeyExpansion {
		RoundKey {Type IO LastRead 207 FirstWrite 1}
		Key {Type I LastRead 16 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "587", "Max" : "587"}
	, {"Name" : "Interval", "Min" : "587", "Max" : "587"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	RoundKey { ap_memory {  { RoundKey_address0 mem_address 1 8 }  { RoundKey_ce0 mem_ce 1 1 }  { RoundKey_we0 mem_we 1 1 }  { RoundKey_d0 mem_din 1 8 }  { RoundKey_q0 mem_dout 0 8 }  { RoundKey_address1 mem_address 1 8 }  { RoundKey_ce1 mem_ce 1 1 }  { RoundKey_we1 mem_we 1 1 }  { RoundKey_d1 mem_din 1 8 }  { RoundKey_q1 mem_dout 0 8 } } }
	Key { ap_memory {  { Key_address0 mem_address 1 5 }  { Key_ce0 mem_ce 1 1 }  { Key_q0 mem_dout 0 8 }  { Key_address1 mem_address 1 5 }  { Key_ce1 mem_ce 1 1 }  { Key_q1 mem_dout 0 8 } } }
}
set moduleName KeyExpansion
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
set C_modelName {KeyExpansion}
set C_modelType { void 0 }
set C_modelArgList {
	{ RoundKey int 8 regular {array 240 { 0 0 } 0 1 }  }
	{ Key int 8 regular {array 32 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "RoundKey", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Key", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ RoundKey_address0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_address1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d1 sc_out sc_lv 8 signal 0 } 
	{ Key_address0 sc_out sc_lv 5 signal 1 } 
	{ Key_ce0 sc_out sc_logic 1 signal 1 } 
	{ Key_q0 sc_in sc_lv 8 signal 1 } 
	{ Key_address1 sc_out sc_lv 5 signal 1 } 
	{ Key_ce1 sc_out sc_logic 1 signal 1 } 
	{ Key_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "RoundKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address0" }} , 
 	{ "name": "RoundKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce0" }} , 
 	{ "name": "RoundKey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we0" }} , 
 	{ "name": "RoundKey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d0" }} , 
 	{ "name": "RoundKey_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address1" }} , 
 	{ "name": "RoundKey_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce1" }} , 
 	{ "name": "RoundKey_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we1" }} , 
 	{ "name": "RoundKey_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d1" }} , 
 	{ "name": "Key_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address0" }} , 
 	{ "name": "Key_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce0" }} , 
 	{ "name": "Key_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q0" }} , 
 	{ "name": "Key_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address1" }} , 
 	{ "name": "Key_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce1" }} , 
 	{ "name": "Key_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "KeyExpansion",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "120", "EstimateLatencyMax" : "120",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sbox_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	KeyExpansion {
		RoundKey {Type O LastRead -1 FirstWrite 1}
		Key {Type I LastRead 16 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "120", "Max" : "120"}
	, {"Name" : "Interval", "Min" : "120", "Max" : "120"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	RoundKey { ap_memory {  { RoundKey_address0 mem_address 1 8 }  { RoundKey_ce0 mem_ce 1 1 }  { RoundKey_we0 mem_we 1 1 }  { RoundKey_d0 mem_din 1 8 }  { RoundKey_address1 mem_address 1 8 }  { RoundKey_ce1 mem_ce 1 1 }  { RoundKey_we1 mem_we 1 1 }  { RoundKey_d1 mem_din 1 8 } } }
	Key { ap_memory {  { Key_address0 mem_address 1 5 }  { Key_ce0 mem_ce 1 1 }  { Key_q0 mem_dout 0 8 }  { Key_address1 mem_address 1 5 }  { Key_ce1 mem_ce 1 1 }  { Key_q1 mem_dout 0 8 } } }
}
set moduleName KeyExpansion
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
set C_modelName {KeyExpansion}
set C_modelType { void 0 }
set C_modelArgList {
	{ RoundKey int 8 regular {array 240 { 2 2 } 1 1 }  }
	{ Key int 8 regular {array 32 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "RoundKey", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "Key", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ RoundKey_address0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q0 sc_in sc_lv 8 signal 0 } 
	{ RoundKey_address1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q1 sc_in sc_lv 8 signal 0 } 
	{ Key_address0 sc_out sc_lv 5 signal 1 } 
	{ Key_ce0 sc_out sc_logic 1 signal 1 } 
	{ Key_q0 sc_in sc_lv 8 signal 1 } 
	{ Key_address1 sc_out sc_lv 5 signal 1 } 
	{ Key_ce1 sc_out sc_logic 1 signal 1 } 
	{ Key_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "RoundKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address0" }} , 
 	{ "name": "RoundKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce0" }} , 
 	{ "name": "RoundKey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we0" }} , 
 	{ "name": "RoundKey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d0" }} , 
 	{ "name": "RoundKey_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q0" }} , 
 	{ "name": "RoundKey_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address1" }} , 
 	{ "name": "RoundKey_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce1" }} , 
 	{ "name": "RoundKey_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we1" }} , 
 	{ "name": "RoundKey_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d1" }} , 
 	{ "name": "RoundKey_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q1" }} , 
 	{ "name": "Key_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address0" }} , 
 	{ "name": "Key_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce0" }} , 
 	{ "name": "Key_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q0" }} , 
 	{ "name": "Key_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address1" }} , 
 	{ "name": "Key_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce1" }} , 
 	{ "name": "Key_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "KeyExpansion",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "338", "EstimateLatencyMax" : "338",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sbox_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Rcon_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	KeyExpansion {
		RoundKey {Type IO LastRead 6 FirstWrite 2}
		Key {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "338", "Max" : "338"}
	, {"Name" : "Interval", "Min" : "338", "Max" : "338"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	RoundKey { ap_memory {  { RoundKey_address0 mem_address 1 8 }  { RoundKey_ce0 mem_ce 1 1 }  { RoundKey_we0 mem_we 1 1 }  { RoundKey_d0 mem_din 1 8 }  { RoundKey_q0 mem_dout 0 8 }  { RoundKey_address1 mem_address 1 8 }  { RoundKey_ce1 mem_ce 1 1 }  { RoundKey_we1 mem_we 1 1 }  { RoundKey_d1 mem_din 1 8 }  { RoundKey_q1 mem_dout 0 8 } } }
	Key { ap_memory {  { Key_address0 mem_address 1 5 }  { Key_ce0 mem_ce 1 1 }  { Key_q0 mem_dout 0 8 }  { Key_address1 mem_address 1 5 }  { Key_ce1 mem_ce 1 1 }  { Key_q1 mem_dout 0 8 } } }
}
set moduleName KeyExpansion
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
set C_modelName {KeyExpansion}
set C_modelType { void 0 }
set C_modelArgList {
	{ RoundKey int 8 regular {array 240 { 2 2 } 1 1 }  }
	{ Key int 8 regular {array 32 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "RoundKey", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "Key", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ RoundKey_address0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q0 sc_in sc_lv 8 signal 0 } 
	{ RoundKey_address1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q1 sc_in sc_lv 8 signal 0 } 
	{ Key_address0 sc_out sc_lv 5 signal 1 } 
	{ Key_ce0 sc_out sc_logic 1 signal 1 } 
	{ Key_q0 sc_in sc_lv 8 signal 1 } 
	{ Key_address1 sc_out sc_lv 5 signal 1 } 
	{ Key_ce1 sc_out sc_logic 1 signal 1 } 
	{ Key_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "RoundKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address0" }} , 
 	{ "name": "RoundKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce0" }} , 
 	{ "name": "RoundKey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we0" }} , 
 	{ "name": "RoundKey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d0" }} , 
 	{ "name": "RoundKey_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q0" }} , 
 	{ "name": "RoundKey_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address1" }} , 
 	{ "name": "RoundKey_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce1" }} , 
 	{ "name": "RoundKey_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we1" }} , 
 	{ "name": "RoundKey_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d1" }} , 
 	{ "name": "RoundKey_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q1" }} , 
 	{ "name": "Key_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address0" }} , 
 	{ "name": "Key_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce0" }} , 
 	{ "name": "Key_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q0" }} , 
 	{ "name": "Key_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address1" }} , 
 	{ "name": "Key_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce1" }} , 
 	{ "name": "Key_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "KeyExpansion",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "338", "EstimateLatencyMax" : "338",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sbox_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Rcon_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	KeyExpansion {
		RoundKey {Type IO LastRead 6 FirstWrite 2}
		Key {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "338", "Max" : "338"}
	, {"Name" : "Interval", "Min" : "338", "Max" : "338"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	RoundKey { ap_memory {  { RoundKey_address0 mem_address 1 8 }  { RoundKey_ce0 mem_ce 1 1 }  { RoundKey_we0 mem_we 1 1 }  { RoundKey_d0 mem_din 1 8 }  { RoundKey_q0 mem_dout 0 8 }  { RoundKey_address1 mem_address 1 8 }  { RoundKey_ce1 mem_ce 1 1 }  { RoundKey_we1 mem_we 1 1 }  { RoundKey_d1 mem_din 1 8 }  { RoundKey_q1 mem_dout 0 8 } } }
	Key { ap_memory {  { Key_address0 mem_address 1 5 }  { Key_ce0 mem_ce 1 1 }  { Key_q0 mem_dout 0 8 }  { Key_address1 mem_address 1 5 }  { Key_ce1 mem_ce 1 1 }  { Key_q1 mem_dout 0 8 } } }
}
set moduleName KeyExpansion
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
set C_modelName {KeyExpansion}
set C_modelType { void 0 }
set C_modelArgList {
	{ RoundKey int 8 regular {array 240 { 2 2 } 1 1 }  }
	{ Key int 8 regular {array 32 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "RoundKey", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "Key", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ RoundKey_address0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q0 sc_in sc_lv 8 signal 0 } 
	{ RoundKey_address1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q1 sc_in sc_lv 8 signal 0 } 
	{ Key_address0 sc_out sc_lv 5 signal 1 } 
	{ Key_ce0 sc_out sc_logic 1 signal 1 } 
	{ Key_q0 sc_in sc_lv 8 signal 1 } 
	{ Key_address1 sc_out sc_lv 5 signal 1 } 
	{ Key_ce1 sc_out sc_logic 1 signal 1 } 
	{ Key_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "RoundKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address0" }} , 
 	{ "name": "RoundKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce0" }} , 
 	{ "name": "RoundKey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we0" }} , 
 	{ "name": "RoundKey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d0" }} , 
 	{ "name": "RoundKey_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q0" }} , 
 	{ "name": "RoundKey_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address1" }} , 
 	{ "name": "RoundKey_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce1" }} , 
 	{ "name": "RoundKey_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we1" }} , 
 	{ "name": "RoundKey_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d1" }} , 
 	{ "name": "RoundKey_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q1" }} , 
 	{ "name": "Key_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address0" }} , 
 	{ "name": "Key_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce0" }} , 
 	{ "name": "Key_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q0" }} , 
 	{ "name": "Key_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address1" }} , 
 	{ "name": "Key_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce1" }} , 
 	{ "name": "Key_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "KeyExpansion",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "334", "EstimateLatencyMax" : "334",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sbox_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Rcon_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	KeyExpansion {
		RoundKey {Type IO LastRead 12 FirstWrite 2}
		Key {Type I LastRead 5 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "334", "Max" : "334"}
	, {"Name" : "Interval", "Min" : "334", "Max" : "334"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	RoundKey { ap_memory {  { RoundKey_address0 mem_address 1 8 }  { RoundKey_ce0 mem_ce 1 1 }  { RoundKey_we0 mem_we 1 1 }  { RoundKey_d0 mem_din 1 8 }  { RoundKey_q0 mem_dout 0 8 }  { RoundKey_address1 mem_address 1 8 }  { RoundKey_ce1 mem_ce 1 1 }  { RoundKey_we1 mem_we 1 1 }  { RoundKey_d1 mem_din 1 8 }  { RoundKey_q1 mem_dout 0 8 } } }
	Key { ap_memory {  { Key_address0 mem_address 1 5 }  { Key_ce0 mem_ce 1 1 }  { Key_q0 mem_dout 0 8 }  { Key_address1 mem_address 1 5 }  { Key_ce1 mem_ce 1 1 }  { Key_q1 mem_dout 0 8 } } }
}
set moduleName KeyExpansion
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
set C_modelName {KeyExpansion}
set C_modelType { void 0 }
set C_modelArgList {
	{ RoundKey int 8 regular {array 240 { 2 2 } 1 1 }  }
	{ Key int 8 regular {array 32 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "RoundKey", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "Key", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ RoundKey_address0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q0 sc_in sc_lv 8 signal 0 } 
	{ RoundKey_address1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q1 sc_in sc_lv 8 signal 0 } 
	{ Key_address0 sc_out sc_lv 5 signal 1 } 
	{ Key_ce0 sc_out sc_logic 1 signal 1 } 
	{ Key_q0 sc_in sc_lv 8 signal 1 } 
	{ Key_address1 sc_out sc_lv 5 signal 1 } 
	{ Key_ce1 sc_out sc_logic 1 signal 1 } 
	{ Key_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "RoundKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address0" }} , 
 	{ "name": "RoundKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce0" }} , 
 	{ "name": "RoundKey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we0" }} , 
 	{ "name": "RoundKey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d0" }} , 
 	{ "name": "RoundKey_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q0" }} , 
 	{ "name": "RoundKey_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address1" }} , 
 	{ "name": "RoundKey_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce1" }} , 
 	{ "name": "RoundKey_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we1" }} , 
 	{ "name": "RoundKey_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d1" }} , 
 	{ "name": "RoundKey_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q1" }} , 
 	{ "name": "Key_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address0" }} , 
 	{ "name": "Key_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce0" }} , 
 	{ "name": "Key_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q0" }} , 
 	{ "name": "Key_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address1" }} , 
 	{ "name": "Key_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce1" }} , 
 	{ "name": "Key_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "KeyExpansion",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "345", "EstimateLatencyMax" : "345",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sbox_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Rcon_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	KeyExpansion {
		RoundKey {Type IO LastRead 25 FirstWrite 2}
		Key {Type I LastRead 9 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "345", "Max" : "345"}
	, {"Name" : "Interval", "Min" : "345", "Max" : "345"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	RoundKey { ap_memory {  { RoundKey_address0 mem_address 1 8 }  { RoundKey_ce0 mem_ce 1 1 }  { RoundKey_we0 mem_we 1 1 }  { RoundKey_d0 mem_din 1 8 }  { RoundKey_q0 mem_dout 0 8 }  { RoundKey_address1 mem_address 1 8 }  { RoundKey_ce1 mem_ce 1 1 }  { RoundKey_we1 mem_we 1 1 }  { RoundKey_d1 mem_din 1 8 }  { RoundKey_q1 mem_dout 0 8 } } }
	Key { ap_memory {  { Key_address0 mem_address 1 5 }  { Key_ce0 mem_ce 1 1 }  { Key_q0 mem_dout 0 8 }  { Key_address1 mem_address 1 5 }  { Key_ce1 mem_ce 1 1 }  { Key_q1 mem_dout 0 8 } } }
}
set moduleName KeyExpansion
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
set C_modelName {KeyExpansion}
set C_modelType { void 0 }
set C_modelArgList {
	{ RoundKey int 8 regular {array 240 { 2 2 } 1 1 }  }
	{ Key int 8 regular {array 32 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "RoundKey", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "Key", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ RoundKey_address0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q0 sc_in sc_lv 8 signal 0 } 
	{ RoundKey_address1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q1 sc_in sc_lv 8 signal 0 } 
	{ Key_address0 sc_out sc_lv 5 signal 1 } 
	{ Key_ce0 sc_out sc_logic 1 signal 1 } 
	{ Key_q0 sc_in sc_lv 8 signal 1 } 
	{ Key_address1 sc_out sc_lv 5 signal 1 } 
	{ Key_ce1 sc_out sc_logic 1 signal 1 } 
	{ Key_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "RoundKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address0" }} , 
 	{ "name": "RoundKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce0" }} , 
 	{ "name": "RoundKey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we0" }} , 
 	{ "name": "RoundKey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d0" }} , 
 	{ "name": "RoundKey_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q0" }} , 
 	{ "name": "RoundKey_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address1" }} , 
 	{ "name": "RoundKey_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce1" }} , 
 	{ "name": "RoundKey_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we1" }} , 
 	{ "name": "RoundKey_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d1" }} , 
 	{ "name": "RoundKey_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q1" }} , 
 	{ "name": "Key_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address0" }} , 
 	{ "name": "Key_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce0" }} , 
 	{ "name": "Key_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q0" }} , 
 	{ "name": "Key_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address1" }} , 
 	{ "name": "Key_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce1" }} , 
 	{ "name": "Key_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "KeyExpansion",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "353", "EstimateLatencyMax" : "377",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sbox_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Rcon_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	KeyExpansion {
		RoundKey {Type IO LastRead 63 FirstWrite 1}
		Key {Type I LastRead 16 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "353", "Max" : "377"}
	, {"Name" : "Interval", "Min" : "353", "Max" : "377"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	RoundKey { ap_memory {  { RoundKey_address0 mem_address 1 8 }  { RoundKey_ce0 mem_ce 1 1 }  { RoundKey_we0 mem_we 1 1 }  { RoundKey_d0 mem_din 1 8 }  { RoundKey_q0 mem_dout 0 8 }  { RoundKey_address1 mem_address 1 8 }  { RoundKey_ce1 mem_ce 1 1 }  { RoundKey_we1 mem_we 1 1 }  { RoundKey_d1 mem_din 1 8 }  { RoundKey_q1 mem_dout 0 8 } } }
	Key { ap_memory {  { Key_address0 mem_address 1 5 }  { Key_ce0 mem_ce 1 1 }  { Key_q0 mem_dout 0 8 }  { Key_address1 mem_address 1 5 }  { Key_ce1 mem_ce 1 1 }  { Key_q1 mem_dout 0 8 } } }
}
set moduleName KeyExpansion
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
set C_modelName {KeyExpansion}
set C_modelType { void 0 }
set C_modelArgList {
	{ RoundKey int 8 regular {array 240 { 2 2 } 1 1 }  }
	{ Key int 8 regular {array 32 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "RoundKey", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "Key", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ RoundKey_address0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q0 sc_in sc_lv 8 signal 0 } 
	{ RoundKey_address1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q1 sc_in sc_lv 8 signal 0 } 
	{ Key_address0 sc_out sc_lv 5 signal 1 } 
	{ Key_ce0 sc_out sc_logic 1 signal 1 } 
	{ Key_q0 sc_in sc_lv 8 signal 1 } 
	{ Key_address1 sc_out sc_lv 5 signal 1 } 
	{ Key_ce1 sc_out sc_logic 1 signal 1 } 
	{ Key_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "RoundKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address0" }} , 
 	{ "name": "RoundKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce0" }} , 
 	{ "name": "RoundKey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we0" }} , 
 	{ "name": "RoundKey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d0" }} , 
 	{ "name": "RoundKey_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q0" }} , 
 	{ "name": "RoundKey_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address1" }} , 
 	{ "name": "RoundKey_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce1" }} , 
 	{ "name": "RoundKey_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we1" }} , 
 	{ "name": "RoundKey_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d1" }} , 
 	{ "name": "RoundKey_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q1" }} , 
 	{ "name": "Key_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address0" }} , 
 	{ "name": "Key_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce0" }} , 
 	{ "name": "Key_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q0" }} , 
 	{ "name": "Key_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address1" }} , 
 	{ "name": "Key_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce1" }} , 
 	{ "name": "Key_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "KeyExpansion",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "402", "EstimateLatencyMax" : "491",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sbox_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Rcon_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	KeyExpansion {
		RoundKey {Type IO LastRead 111 FirstWrite 1}
		Key {Type I LastRead 16 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "402", "Max" : "491"}
	, {"Name" : "Interval", "Min" : "402", "Max" : "491"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	RoundKey { ap_memory {  { RoundKey_address0 mem_address 1 8 }  { RoundKey_ce0 mem_ce 1 1 }  { RoundKey_we0 mem_we 1 1 }  { RoundKey_d0 mem_din 1 8 }  { RoundKey_q0 mem_dout 0 8 }  { RoundKey_address1 mem_address 1 8 }  { RoundKey_ce1 mem_ce 1 1 }  { RoundKey_we1 mem_we 1 1 }  { RoundKey_d1 mem_din 1 8 }  { RoundKey_q1 mem_dout 0 8 } } }
	Key { ap_memory {  { Key_address0 mem_address 1 5 }  { Key_ce0 mem_ce 1 1 }  { Key_q0 mem_dout 0 8 }  { Key_address1 mem_address 1 5 }  { Key_ce1 mem_ce 1 1 }  { Key_q1 mem_dout 0 8 } } }
}
set moduleName KeyExpansion
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
set C_modelName {KeyExpansion}
set C_modelType { void 0 }
set C_modelArgList {
	{ RoundKey int 8 regular {array 240 { 2 2 } 1 1 }  }
	{ Key int 8 regular {array 32 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "RoundKey", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "Key", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ RoundKey_address0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q0 sc_in sc_lv 8 signal 0 } 
	{ RoundKey_address1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q1 sc_in sc_lv 8 signal 0 } 
	{ Key_address0 sc_out sc_lv 5 signal 1 } 
	{ Key_ce0 sc_out sc_logic 1 signal 1 } 
	{ Key_q0 sc_in sc_lv 8 signal 1 } 
	{ Key_address1 sc_out sc_lv 5 signal 1 } 
	{ Key_ce1 sc_out sc_logic 1 signal 1 } 
	{ Key_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "RoundKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address0" }} , 
 	{ "name": "RoundKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce0" }} , 
 	{ "name": "RoundKey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we0" }} , 
 	{ "name": "RoundKey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d0" }} , 
 	{ "name": "RoundKey_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q0" }} , 
 	{ "name": "RoundKey_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address1" }} , 
 	{ "name": "RoundKey_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce1" }} , 
 	{ "name": "RoundKey_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we1" }} , 
 	{ "name": "RoundKey_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d1" }} , 
 	{ "name": "RoundKey_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q1" }} , 
 	{ "name": "Key_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address0" }} , 
 	{ "name": "Key_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce0" }} , 
 	{ "name": "Key_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q0" }} , 
 	{ "name": "Key_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address1" }} , 
 	{ "name": "Key_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce1" }} , 
 	{ "name": "Key_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "KeyExpansion",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "402", "EstimateLatencyMax" : "587",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sbox_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Rcon_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	KeyExpansion {
		RoundKey {Type IO LastRead 207 FirstWrite 1}
		Key {Type I LastRead 16 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "402", "Max" : "587"}
	, {"Name" : "Interval", "Min" : "402", "Max" : "587"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	RoundKey { ap_memory {  { RoundKey_address0 mem_address 1 8 }  { RoundKey_ce0 mem_ce 1 1 }  { RoundKey_we0 mem_we 1 1 }  { RoundKey_d0 mem_din 1 8 }  { RoundKey_q0 mem_dout 0 8 }  { RoundKey_address1 mem_address 1 8 }  { RoundKey_ce1 mem_ce 1 1 }  { RoundKey_we1 mem_we 1 1 }  { RoundKey_d1 mem_din 1 8 }  { RoundKey_q1 mem_dout 0 8 } } }
	Key { ap_memory {  { Key_address0 mem_address 1 5 }  { Key_ce0 mem_ce 1 1 }  { Key_q0 mem_dout 0 8 }  { Key_address1 mem_address 1 5 }  { Key_ce1 mem_ce 1 1 }  { Key_q1 mem_dout 0 8 } } }
}
set moduleName KeyExpansion
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
set C_modelName {KeyExpansion}
set C_modelType { void 0 }
set C_modelArgList {
	{ RoundKey int 8 regular {array 240 { 0 0 } 0 1 }  }
	{ Key int 8 regular {array 32 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "RoundKey", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Key", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ RoundKey_address0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_address1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d1 sc_out sc_lv 8 signal 0 } 
	{ Key_address0 sc_out sc_lv 5 signal 1 } 
	{ Key_ce0 sc_out sc_logic 1 signal 1 } 
	{ Key_q0 sc_in sc_lv 8 signal 1 } 
	{ Key_address1 sc_out sc_lv 5 signal 1 } 
	{ Key_ce1 sc_out sc_logic 1 signal 1 } 
	{ Key_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "RoundKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address0" }} , 
 	{ "name": "RoundKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce0" }} , 
 	{ "name": "RoundKey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we0" }} , 
 	{ "name": "RoundKey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d0" }} , 
 	{ "name": "RoundKey_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address1" }} , 
 	{ "name": "RoundKey_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce1" }} , 
 	{ "name": "RoundKey_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we1" }} , 
 	{ "name": "RoundKey_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d1" }} , 
 	{ "name": "Key_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address0" }} , 
 	{ "name": "Key_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce0" }} , 
 	{ "name": "Key_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q0" }} , 
 	{ "name": "Key_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address1" }} , 
 	{ "name": "Key_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce1" }} , 
 	{ "name": "Key_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "KeyExpansion",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "120", "EstimateLatencyMax" : "120",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sbox_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	KeyExpansion {
		RoundKey {Type O LastRead -1 FirstWrite 1}
		Key {Type I LastRead 16 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "120", "Max" : "120"}
	, {"Name" : "Interval", "Min" : "120", "Max" : "120"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	RoundKey { ap_memory {  { RoundKey_address0 mem_address 1 8 }  { RoundKey_ce0 mem_ce 1 1 }  { RoundKey_we0 mem_we 1 1 }  { RoundKey_d0 mem_din 1 8 }  { RoundKey_address1 mem_address 1 8 }  { RoundKey_ce1 mem_ce 1 1 }  { RoundKey_we1 mem_we 1 1 }  { RoundKey_d1 mem_din 1 8 } } }
	Key { ap_memory {  { Key_address0 mem_address 1 5 }  { Key_ce0 mem_ce 1 1 }  { Key_q0 mem_dout 0 8 }  { Key_address1 mem_address 1 5 }  { Key_ce1 mem_ce 1 1 }  { Key_q1 mem_dout 0 8 } } }
}
set moduleName KeyExpansion
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
set C_modelName {KeyExpansion}
set C_modelType { void 0 }
set C_modelArgList {
	{ RoundKey int 8 regular {array 240 { 0 0 } 0 1 }  }
	{ Key int 8 regular {array 32 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "RoundKey", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Key", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ RoundKey_address0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_address1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d1 sc_out sc_lv 8 signal 0 } 
	{ Key_address0 sc_out sc_lv 5 signal 1 } 
	{ Key_ce0 sc_out sc_logic 1 signal 1 } 
	{ Key_q0 sc_in sc_lv 8 signal 1 } 
	{ Key_address1 sc_out sc_lv 5 signal 1 } 
	{ Key_ce1 sc_out sc_logic 1 signal 1 } 
	{ Key_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "RoundKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address0" }} , 
 	{ "name": "RoundKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce0" }} , 
 	{ "name": "RoundKey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we0" }} , 
 	{ "name": "RoundKey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d0" }} , 
 	{ "name": "RoundKey_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address1" }} , 
 	{ "name": "RoundKey_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce1" }} , 
 	{ "name": "RoundKey_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we1" }} , 
 	{ "name": "RoundKey_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d1" }} , 
 	{ "name": "Key_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address0" }} , 
 	{ "name": "Key_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce0" }} , 
 	{ "name": "Key_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q0" }} , 
 	{ "name": "Key_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address1" }} , 
 	{ "name": "Key_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce1" }} , 
 	{ "name": "Key_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "KeyExpansion",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "120", "EstimateLatencyMax" : "120",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sbox_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	KeyExpansion {
		RoundKey {Type O LastRead -1 FirstWrite 1}
		Key {Type I LastRead 16 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "120", "Max" : "120"}
	, {"Name" : "Interval", "Min" : "120", "Max" : "120"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	RoundKey { ap_memory {  { RoundKey_address0 mem_address 1 8 }  { RoundKey_ce0 mem_ce 1 1 }  { RoundKey_we0 mem_we 1 1 }  { RoundKey_d0 mem_din 1 8 }  { RoundKey_address1 mem_address 1 8 }  { RoundKey_ce1 mem_ce 1 1 }  { RoundKey_we1 mem_we 1 1 }  { RoundKey_d1 mem_din 1 8 } } }
	Key { ap_memory {  { Key_address0 mem_address 1 5 }  { Key_ce0 mem_ce 1 1 }  { Key_q0 mem_dout 0 8 }  { Key_address1 mem_address 1 5 }  { Key_ce1 mem_ce 1 1 }  { Key_q1 mem_dout 0 8 } } }
}
set moduleName KeyExpansion
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
set C_modelName {KeyExpansion}
set C_modelType { void 0 }
set C_modelArgList {
	{ RoundKey int 8 regular {array 240 { 2 2 } 1 1 }  }
	{ Key int 8 regular {array 32 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "RoundKey", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "Key", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ RoundKey_address0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q0 sc_in sc_lv 8 signal 0 } 
	{ RoundKey_address1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q1 sc_in sc_lv 8 signal 0 } 
	{ Key_address0 sc_out sc_lv 5 signal 1 } 
	{ Key_ce0 sc_out sc_logic 1 signal 1 } 
	{ Key_q0 sc_in sc_lv 8 signal 1 } 
	{ Key_address1 sc_out sc_lv 5 signal 1 } 
	{ Key_ce1 sc_out sc_logic 1 signal 1 } 
	{ Key_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "RoundKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address0" }} , 
 	{ "name": "RoundKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce0" }} , 
 	{ "name": "RoundKey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we0" }} , 
 	{ "name": "RoundKey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d0" }} , 
 	{ "name": "RoundKey_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q0" }} , 
 	{ "name": "RoundKey_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address1" }} , 
 	{ "name": "RoundKey_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce1" }} , 
 	{ "name": "RoundKey_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we1" }} , 
 	{ "name": "RoundKey_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d1" }} , 
 	{ "name": "RoundKey_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q1" }} , 
 	{ "name": "Key_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address0" }} , 
 	{ "name": "Key_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce0" }} , 
 	{ "name": "Key_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q0" }} , 
 	{ "name": "Key_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address1" }} , 
 	{ "name": "Key_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce1" }} , 
 	{ "name": "Key_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "KeyExpansion",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "332", "EstimateLatencyMax" : "332",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sbox_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Rcon_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	KeyExpansion {
		RoundKey {Type IO LastRead 7 FirstWrite 2}
		Key {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "332", "Max" : "332"}
	, {"Name" : "Interval", "Min" : "332", "Max" : "332"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	RoundKey { ap_memory {  { RoundKey_address0 mem_address 1 8 }  { RoundKey_ce0 mem_ce 1 1 }  { RoundKey_we0 mem_we 1 1 }  { RoundKey_d0 mem_din 1 8 }  { RoundKey_q0 mem_dout 0 8 }  { RoundKey_address1 mem_address 1 8 }  { RoundKey_ce1 mem_ce 1 1 }  { RoundKey_we1 mem_we 1 1 }  { RoundKey_d1 mem_din 1 8 }  { RoundKey_q1 mem_dout 0 8 } } }
	Key { ap_memory {  { Key_address0 mem_address 1 5 }  { Key_ce0 mem_ce 1 1 }  { Key_q0 mem_dout 0 8 }  { Key_address1 mem_address 1 5 }  { Key_ce1 mem_ce 1 1 }  { Key_q1 mem_dout 0 8 } } }
}
set moduleName KeyExpansion
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
set C_modelName {KeyExpansion}
set C_modelType { void 0 }
set C_modelArgList {
	{ RoundKey int 8 regular {array 240 { 2 2 } 1 1 }  }
	{ Key int 8 regular {array 32 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "RoundKey", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "Key", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ RoundKey_address0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q0 sc_in sc_lv 8 signal 0 } 
	{ RoundKey_address1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q1 sc_in sc_lv 8 signal 0 } 
	{ Key_address0 sc_out sc_lv 5 signal 1 } 
	{ Key_ce0 sc_out sc_logic 1 signal 1 } 
	{ Key_q0 sc_in sc_lv 8 signal 1 } 
	{ Key_address1 sc_out sc_lv 5 signal 1 } 
	{ Key_ce1 sc_out sc_logic 1 signal 1 } 
	{ Key_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "RoundKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address0" }} , 
 	{ "name": "RoundKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce0" }} , 
 	{ "name": "RoundKey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we0" }} , 
 	{ "name": "RoundKey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d0" }} , 
 	{ "name": "RoundKey_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q0" }} , 
 	{ "name": "RoundKey_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address1" }} , 
 	{ "name": "RoundKey_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce1" }} , 
 	{ "name": "RoundKey_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we1" }} , 
 	{ "name": "RoundKey_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d1" }} , 
 	{ "name": "RoundKey_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q1" }} , 
 	{ "name": "Key_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address0" }} , 
 	{ "name": "Key_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce0" }} , 
 	{ "name": "Key_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q0" }} , 
 	{ "name": "Key_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address1" }} , 
 	{ "name": "Key_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce1" }} , 
 	{ "name": "Key_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "KeyExpansion",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "332", "EstimateLatencyMax" : "332",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sbox_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Rcon_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	KeyExpansion {
		RoundKey {Type IO LastRead 13 FirstWrite 2}
		Key {Type I LastRead 5 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "332", "Max" : "332"}
	, {"Name" : "Interval", "Min" : "332", "Max" : "332"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	RoundKey { ap_memory {  { RoundKey_address0 mem_address 1 8 }  { RoundKey_ce0 mem_ce 1 1 }  { RoundKey_we0 mem_we 1 1 }  { RoundKey_d0 mem_din 1 8 }  { RoundKey_q0 mem_dout 0 8 }  { RoundKey_address1 mem_address 1 8 }  { RoundKey_ce1 mem_ce 1 1 }  { RoundKey_we1 mem_we 1 1 }  { RoundKey_d1 mem_din 1 8 }  { RoundKey_q1 mem_dout 0 8 } } }
	Key { ap_memory {  { Key_address0 mem_address 1 5 }  { Key_ce0 mem_ce 1 1 }  { Key_q0 mem_dout 0 8 }  { Key_address1 mem_address 1 5 }  { Key_ce1 mem_ce 1 1 }  { Key_q1 mem_dout 0 8 } } }
}
set moduleName KeyExpansion
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
set C_modelName {KeyExpansion}
set C_modelType { void 0 }
set C_modelArgList {
	{ RoundKey int 8 regular {array 240 { 2 2 } 1 1 }  }
	{ Key int 8 regular {array 32 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "RoundKey", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "Key", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ RoundKey_address0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q0 sc_in sc_lv 8 signal 0 } 
	{ RoundKey_address1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q1 sc_in sc_lv 8 signal 0 } 
	{ Key_address0 sc_out sc_lv 5 signal 1 } 
	{ Key_ce0 sc_out sc_logic 1 signal 1 } 
	{ Key_q0 sc_in sc_lv 8 signal 1 } 
	{ Key_address1 sc_out sc_lv 5 signal 1 } 
	{ Key_ce1 sc_out sc_logic 1 signal 1 } 
	{ Key_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "RoundKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address0" }} , 
 	{ "name": "RoundKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce0" }} , 
 	{ "name": "RoundKey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we0" }} , 
 	{ "name": "RoundKey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d0" }} , 
 	{ "name": "RoundKey_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q0" }} , 
 	{ "name": "RoundKey_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address1" }} , 
 	{ "name": "RoundKey_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce1" }} , 
 	{ "name": "RoundKey_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we1" }} , 
 	{ "name": "RoundKey_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d1" }} , 
 	{ "name": "RoundKey_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q1" }} , 
 	{ "name": "Key_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address0" }} , 
 	{ "name": "Key_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce0" }} , 
 	{ "name": "Key_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q0" }} , 
 	{ "name": "Key_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address1" }} , 
 	{ "name": "Key_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce1" }} , 
 	{ "name": "Key_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "KeyExpansion",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "332", "EstimateLatencyMax" : "332",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sbox_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Rcon_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	KeyExpansion {
		RoundKey {Type IO LastRead 25 FirstWrite 2}
		Key {Type I LastRead 9 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "332", "Max" : "332"}
	, {"Name" : "Interval", "Min" : "332", "Max" : "332"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	RoundKey { ap_memory {  { RoundKey_address0 mem_address 1 8 }  { RoundKey_ce0 mem_ce 1 1 }  { RoundKey_we0 mem_we 1 1 }  { RoundKey_d0 mem_din 1 8 }  { RoundKey_q0 mem_dout 0 8 }  { RoundKey_address1 mem_address 1 8 }  { RoundKey_ce1 mem_ce 1 1 }  { RoundKey_we1 mem_we 1 1 }  { RoundKey_d1 mem_din 1 8 }  { RoundKey_q1 mem_dout 0 8 } } }
	Key { ap_memory {  { Key_address0 mem_address 1 5 }  { Key_ce0 mem_ce 1 1 }  { Key_q0 mem_dout 0 8 }  { Key_address1 mem_address 1 5 }  { Key_ce1 mem_ce 1 1 }  { Key_q1 mem_dout 0 8 } } }
}
set moduleName KeyExpansion
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
set C_modelName {KeyExpansion}
set C_modelType { void 0 }
set C_modelArgList {
	{ RoundKey int 8 regular {array 240 { 2 2 } 1 1 }  }
	{ Key int 8 regular {array 32 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "RoundKey", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "Key", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ RoundKey_address0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q0 sc_in sc_lv 8 signal 0 } 
	{ RoundKey_address1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q1 sc_in sc_lv 8 signal 0 } 
	{ Key_address0 sc_out sc_lv 5 signal 1 } 
	{ Key_ce0 sc_out sc_logic 1 signal 1 } 
	{ Key_q0 sc_in sc_lv 8 signal 1 } 
	{ Key_address1 sc_out sc_lv 5 signal 1 } 
	{ Key_ce1 sc_out sc_logic 1 signal 1 } 
	{ Key_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "RoundKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address0" }} , 
 	{ "name": "RoundKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce0" }} , 
 	{ "name": "RoundKey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we0" }} , 
 	{ "name": "RoundKey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d0" }} , 
 	{ "name": "RoundKey_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q0" }} , 
 	{ "name": "RoundKey_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address1" }} , 
 	{ "name": "RoundKey_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce1" }} , 
 	{ "name": "RoundKey_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we1" }} , 
 	{ "name": "RoundKey_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d1" }} , 
 	{ "name": "RoundKey_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q1" }} , 
 	{ "name": "Key_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address0" }} , 
 	{ "name": "Key_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce0" }} , 
 	{ "name": "Key_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q0" }} , 
 	{ "name": "Key_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address1" }} , 
 	{ "name": "Key_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce1" }} , 
 	{ "name": "Key_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "KeyExpansion",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "377", "EstimateLatencyMax" : "377",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sbox_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Rcon_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	KeyExpansion {
		RoundKey {Type IO LastRead 63 FirstWrite 1}
		Key {Type I LastRead 16 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "377", "Max" : "377"}
	, {"Name" : "Interval", "Min" : "377", "Max" : "377"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	RoundKey { ap_memory {  { RoundKey_address0 mem_address 1 8 }  { RoundKey_ce0 mem_ce 1 1 }  { RoundKey_we0 mem_we 1 1 }  { RoundKey_d0 mem_din 1 8 }  { RoundKey_q0 mem_dout 0 8 }  { RoundKey_address1 mem_address 1 8 }  { RoundKey_ce1 mem_ce 1 1 }  { RoundKey_we1 mem_we 1 1 }  { RoundKey_d1 mem_din 1 8 }  { RoundKey_q1 mem_dout 0 8 } } }
	Key { ap_memory {  { Key_address0 mem_address 1 5 }  { Key_ce0 mem_ce 1 1 }  { Key_q0 mem_dout 0 8 }  { Key_address1 mem_address 1 5 }  { Key_ce1 mem_ce 1 1 }  { Key_q1 mem_dout 0 8 } } }
}
set moduleName KeyExpansion
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
set C_modelName {KeyExpansion}
set C_modelType { void 0 }
set C_modelArgList {
	{ RoundKey int 8 regular {array 240 { 2 2 } 1 1 }  }
	{ Key int 8 regular {array 32 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "RoundKey", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "Key", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ RoundKey_address0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q0 sc_in sc_lv 8 signal 0 } 
	{ RoundKey_address1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q1 sc_in sc_lv 8 signal 0 } 
	{ Key_address0 sc_out sc_lv 5 signal 1 } 
	{ Key_ce0 sc_out sc_logic 1 signal 1 } 
	{ Key_q0 sc_in sc_lv 8 signal 1 } 
	{ Key_address1 sc_out sc_lv 5 signal 1 } 
	{ Key_ce1 sc_out sc_logic 1 signal 1 } 
	{ Key_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "RoundKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address0" }} , 
 	{ "name": "RoundKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce0" }} , 
 	{ "name": "RoundKey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we0" }} , 
 	{ "name": "RoundKey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d0" }} , 
 	{ "name": "RoundKey_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q0" }} , 
 	{ "name": "RoundKey_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address1" }} , 
 	{ "name": "RoundKey_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce1" }} , 
 	{ "name": "RoundKey_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we1" }} , 
 	{ "name": "RoundKey_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d1" }} , 
 	{ "name": "RoundKey_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q1" }} , 
 	{ "name": "Key_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address0" }} , 
 	{ "name": "Key_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce0" }} , 
 	{ "name": "Key_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q0" }} , 
 	{ "name": "Key_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address1" }} , 
 	{ "name": "Key_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce1" }} , 
 	{ "name": "Key_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "KeyExpansion",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "491", "EstimateLatencyMax" : "491",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sbox_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Rcon_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	KeyExpansion {
		RoundKey {Type IO LastRead 111 FirstWrite 1}
		Key {Type I LastRead 16 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "491", "Max" : "491"}
	, {"Name" : "Interval", "Min" : "491", "Max" : "491"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	RoundKey { ap_memory {  { RoundKey_address0 mem_address 1 8 }  { RoundKey_ce0 mem_ce 1 1 }  { RoundKey_we0 mem_we 1 1 }  { RoundKey_d0 mem_din 1 8 }  { RoundKey_q0 mem_dout 0 8 }  { RoundKey_address1 mem_address 1 8 }  { RoundKey_ce1 mem_ce 1 1 }  { RoundKey_we1 mem_we 1 1 }  { RoundKey_d1 mem_din 1 8 }  { RoundKey_q1 mem_dout 0 8 } } }
	Key { ap_memory {  { Key_address0 mem_address 1 5 }  { Key_ce0 mem_ce 1 1 }  { Key_q0 mem_dout 0 8 }  { Key_address1 mem_address 1 5 }  { Key_ce1 mem_ce 1 1 }  { Key_q1 mem_dout 0 8 } } }
}
set moduleName KeyExpansion
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
set C_modelName {KeyExpansion}
set C_modelType { void 0 }
set C_modelArgList {
	{ RoundKey int 8 regular {array 240 { 2 2 } 1 1 }  }
	{ Key int 8 regular {array 32 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "RoundKey", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "Key", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ RoundKey_address0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q0 sc_in sc_lv 8 signal 0 } 
	{ RoundKey_address1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q1 sc_in sc_lv 8 signal 0 } 
	{ Key_address0 sc_out sc_lv 5 signal 1 } 
	{ Key_ce0 sc_out sc_logic 1 signal 1 } 
	{ Key_q0 sc_in sc_lv 8 signal 1 } 
	{ Key_address1 sc_out sc_lv 5 signal 1 } 
	{ Key_ce1 sc_out sc_logic 1 signal 1 } 
	{ Key_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "RoundKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address0" }} , 
 	{ "name": "RoundKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce0" }} , 
 	{ "name": "RoundKey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we0" }} , 
 	{ "name": "RoundKey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d0" }} , 
 	{ "name": "RoundKey_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q0" }} , 
 	{ "name": "RoundKey_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address1" }} , 
 	{ "name": "RoundKey_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce1" }} , 
 	{ "name": "RoundKey_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we1" }} , 
 	{ "name": "RoundKey_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d1" }} , 
 	{ "name": "RoundKey_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q1" }} , 
 	{ "name": "Key_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address0" }} , 
 	{ "name": "Key_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce0" }} , 
 	{ "name": "Key_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q0" }} , 
 	{ "name": "Key_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address1" }} , 
 	{ "name": "Key_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce1" }} , 
 	{ "name": "Key_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "KeyExpansion",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "587", "EstimateLatencyMax" : "587",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sbox_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Rcon_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	KeyExpansion {
		RoundKey {Type IO LastRead 207 FirstWrite 1}
		Key {Type I LastRead 16 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "587", "Max" : "587"}
	, {"Name" : "Interval", "Min" : "587", "Max" : "587"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	RoundKey { ap_memory {  { RoundKey_address0 mem_address 1 8 }  { RoundKey_ce0 mem_ce 1 1 }  { RoundKey_we0 mem_we 1 1 }  { RoundKey_d0 mem_din 1 8 }  { RoundKey_q0 mem_dout 0 8 }  { RoundKey_address1 mem_address 1 8 }  { RoundKey_ce1 mem_ce 1 1 }  { RoundKey_we1 mem_we 1 1 }  { RoundKey_d1 mem_din 1 8 }  { RoundKey_q1 mem_dout 0 8 } } }
	Key { ap_memory {  { Key_address0 mem_address 1 5 }  { Key_ce0 mem_ce 1 1 }  { Key_q0 mem_dout 0 8 }  { Key_address1 mem_address 1 5 }  { Key_ce1 mem_ce 1 1 }  { Key_q1 mem_dout 0 8 } } }
}
set moduleName KeyExpansion
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
set C_modelName {KeyExpansion}
set C_modelType { void 0 }
set C_modelArgList {
	{ RoundKey int 8 regular {array 240 { 0 0 } 0 1 }  }
	{ Key int 8 regular {array 32 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "RoundKey", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Key", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ RoundKey_address0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_address1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d1 sc_out sc_lv 8 signal 0 } 
	{ Key_address0 sc_out sc_lv 5 signal 1 } 
	{ Key_ce0 sc_out sc_logic 1 signal 1 } 
	{ Key_q0 sc_in sc_lv 8 signal 1 } 
	{ Key_address1 sc_out sc_lv 5 signal 1 } 
	{ Key_ce1 sc_out sc_logic 1 signal 1 } 
	{ Key_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "RoundKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address0" }} , 
 	{ "name": "RoundKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce0" }} , 
 	{ "name": "RoundKey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we0" }} , 
 	{ "name": "RoundKey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d0" }} , 
 	{ "name": "RoundKey_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address1" }} , 
 	{ "name": "RoundKey_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce1" }} , 
 	{ "name": "RoundKey_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we1" }} , 
 	{ "name": "RoundKey_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d1" }} , 
 	{ "name": "Key_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address0" }} , 
 	{ "name": "Key_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce0" }} , 
 	{ "name": "Key_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q0" }} , 
 	{ "name": "Key_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address1" }} , 
 	{ "name": "Key_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce1" }} , 
 	{ "name": "Key_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "KeyExpansion",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "120", "EstimateLatencyMax" : "120",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sbox_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	KeyExpansion {
		RoundKey {Type O LastRead -1 FirstWrite 1}
		Key {Type I LastRead 16 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "120", "Max" : "120"}
	, {"Name" : "Interval", "Min" : "120", "Max" : "120"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	RoundKey { ap_memory {  { RoundKey_address0 mem_address 1 8 }  { RoundKey_ce0 mem_ce 1 1 }  { RoundKey_we0 mem_we 1 1 }  { RoundKey_d0 mem_din 1 8 }  { RoundKey_address1 mem_address 1 8 }  { RoundKey_ce1 mem_ce 1 1 }  { RoundKey_we1 mem_we 1 1 }  { RoundKey_d1 mem_din 1 8 } } }
	Key { ap_memory {  { Key_address0 mem_address 1 5 }  { Key_ce0 mem_ce 1 1 }  { Key_q0 mem_dout 0 8 }  { Key_address1 mem_address 1 5 }  { Key_ce1 mem_ce 1 1 }  { Key_q1 mem_dout 0 8 } } }
}
set moduleName KeyExpansion
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
set C_modelName {KeyExpansion}
set C_modelType { void 0 }
set C_modelArgList {
	{ RoundKey int 8 regular {array 240 { 0 0 } 0 1 }  }
	{ Key int 8 regular {array 32 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "RoundKey", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Key", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ RoundKey_address0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_address1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d1 sc_out sc_lv 8 signal 0 } 
	{ Key_address0 sc_out sc_lv 5 signal 1 } 
	{ Key_ce0 sc_out sc_logic 1 signal 1 } 
	{ Key_q0 sc_in sc_lv 8 signal 1 } 
	{ Key_address1 sc_out sc_lv 5 signal 1 } 
	{ Key_ce1 sc_out sc_logic 1 signal 1 } 
	{ Key_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "RoundKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address0" }} , 
 	{ "name": "RoundKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce0" }} , 
 	{ "name": "RoundKey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we0" }} , 
 	{ "name": "RoundKey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d0" }} , 
 	{ "name": "RoundKey_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address1" }} , 
 	{ "name": "RoundKey_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce1" }} , 
 	{ "name": "RoundKey_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we1" }} , 
 	{ "name": "RoundKey_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d1" }} , 
 	{ "name": "Key_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address0" }} , 
 	{ "name": "Key_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce0" }} , 
 	{ "name": "Key_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q0" }} , 
 	{ "name": "Key_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address1" }} , 
 	{ "name": "Key_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce1" }} , 
 	{ "name": "Key_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "KeyExpansion",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "120", "EstimateLatencyMax" : "120",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sbox_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	KeyExpansion {
		RoundKey {Type O LastRead -1 FirstWrite 1}
		Key {Type I LastRead 16 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "120", "Max" : "120"}
	, {"Name" : "Interval", "Min" : "120", "Max" : "120"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	RoundKey { ap_memory {  { RoundKey_address0 mem_address 1 8 }  { RoundKey_ce0 mem_ce 1 1 }  { RoundKey_we0 mem_we 1 1 }  { RoundKey_d0 mem_din 1 8 }  { RoundKey_address1 mem_address 1 8 }  { RoundKey_ce1 mem_ce 1 1 }  { RoundKey_we1 mem_we 1 1 }  { RoundKey_d1 mem_din 1 8 } } }
	Key { ap_memory {  { Key_address0 mem_address 1 5 }  { Key_ce0 mem_ce 1 1 }  { Key_q0 mem_dout 0 8 }  { Key_address1 mem_address 1 5 }  { Key_ce1 mem_ce 1 1 }  { Key_q1 mem_dout 0 8 } } }
}
set moduleName KeyExpansion
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
set C_modelName {KeyExpansion}
set C_modelType { void 0 }
set C_modelArgList {
	{ RoundKey int 8 regular {array 240 { 2 2 } 1 1 }  }
	{ Key int 8 regular {array 32 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "RoundKey", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "Key", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ RoundKey_address0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q0 sc_in sc_lv 8 signal 0 } 
	{ RoundKey_address1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q1 sc_in sc_lv 8 signal 0 } 
	{ Key_address0 sc_out sc_lv 5 signal 1 } 
	{ Key_ce0 sc_out sc_logic 1 signal 1 } 
	{ Key_q0 sc_in sc_lv 8 signal 1 } 
	{ Key_address1 sc_out sc_lv 5 signal 1 } 
	{ Key_ce1 sc_out sc_logic 1 signal 1 } 
	{ Key_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "RoundKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address0" }} , 
 	{ "name": "RoundKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce0" }} , 
 	{ "name": "RoundKey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we0" }} , 
 	{ "name": "RoundKey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d0" }} , 
 	{ "name": "RoundKey_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q0" }} , 
 	{ "name": "RoundKey_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address1" }} , 
 	{ "name": "RoundKey_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce1" }} , 
 	{ "name": "RoundKey_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we1" }} , 
 	{ "name": "RoundKey_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d1" }} , 
 	{ "name": "RoundKey_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q1" }} , 
 	{ "name": "Key_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address0" }} , 
 	{ "name": "Key_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce0" }} , 
 	{ "name": "Key_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q0" }} , 
 	{ "name": "Key_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address1" }} , 
 	{ "name": "Key_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce1" }} , 
 	{ "name": "Key_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "KeyExpansion",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "338", "EstimateLatencyMax" : "338",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sbox_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Rcon_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	KeyExpansion {
		RoundKey {Type IO LastRead 6 FirstWrite 2}
		Key {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "338", "Max" : "338"}
	, {"Name" : "Interval", "Min" : "338", "Max" : "338"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	RoundKey { ap_memory {  { RoundKey_address0 mem_address 1 8 }  { RoundKey_ce0 mem_ce 1 1 }  { RoundKey_we0 mem_we 1 1 }  { RoundKey_d0 mem_din 1 8 }  { RoundKey_q0 mem_dout 0 8 }  { RoundKey_address1 mem_address 1 8 }  { RoundKey_ce1 mem_ce 1 1 }  { RoundKey_we1 mem_we 1 1 }  { RoundKey_d1 mem_din 1 8 }  { RoundKey_q1 mem_dout 0 8 } } }
	Key { ap_memory {  { Key_address0 mem_address 1 5 }  { Key_ce0 mem_ce 1 1 }  { Key_q0 mem_dout 0 8 }  { Key_address1 mem_address 1 5 }  { Key_ce1 mem_ce 1 1 }  { Key_q1 mem_dout 0 8 } } }
}
set moduleName KeyExpansion
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
set C_modelName {KeyExpansion}
set C_modelType { void 0 }
set C_modelArgList {
	{ RoundKey int 8 regular {array 240 { 2 2 } 1 1 }  }
	{ Key int 8 regular {array 32 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "RoundKey", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "Key", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ RoundKey_address0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q0 sc_in sc_lv 8 signal 0 } 
	{ RoundKey_address1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q1 sc_in sc_lv 8 signal 0 } 
	{ Key_address0 sc_out sc_lv 5 signal 1 } 
	{ Key_ce0 sc_out sc_logic 1 signal 1 } 
	{ Key_q0 sc_in sc_lv 8 signal 1 } 
	{ Key_address1 sc_out sc_lv 5 signal 1 } 
	{ Key_ce1 sc_out sc_logic 1 signal 1 } 
	{ Key_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "RoundKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address0" }} , 
 	{ "name": "RoundKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce0" }} , 
 	{ "name": "RoundKey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we0" }} , 
 	{ "name": "RoundKey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d0" }} , 
 	{ "name": "RoundKey_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q0" }} , 
 	{ "name": "RoundKey_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address1" }} , 
 	{ "name": "RoundKey_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce1" }} , 
 	{ "name": "RoundKey_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we1" }} , 
 	{ "name": "RoundKey_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d1" }} , 
 	{ "name": "RoundKey_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q1" }} , 
 	{ "name": "Key_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address0" }} , 
 	{ "name": "Key_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce0" }} , 
 	{ "name": "Key_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q0" }} , 
 	{ "name": "Key_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address1" }} , 
 	{ "name": "Key_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce1" }} , 
 	{ "name": "Key_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "KeyExpansion",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "338", "EstimateLatencyMax" : "338",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sbox_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Rcon_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	KeyExpansion {
		RoundKey {Type IO LastRead 6 FirstWrite 2}
		Key {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "338", "Max" : "338"}
	, {"Name" : "Interval", "Min" : "338", "Max" : "338"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	RoundKey { ap_memory {  { RoundKey_address0 mem_address 1 8 }  { RoundKey_ce0 mem_ce 1 1 }  { RoundKey_we0 mem_we 1 1 }  { RoundKey_d0 mem_din 1 8 }  { RoundKey_q0 mem_dout 0 8 }  { RoundKey_address1 mem_address 1 8 }  { RoundKey_ce1 mem_ce 1 1 }  { RoundKey_we1 mem_we 1 1 }  { RoundKey_d1 mem_din 1 8 }  { RoundKey_q1 mem_dout 0 8 } } }
	Key { ap_memory {  { Key_address0 mem_address 1 5 }  { Key_ce0 mem_ce 1 1 }  { Key_q0 mem_dout 0 8 }  { Key_address1 mem_address 1 5 }  { Key_ce1 mem_ce 1 1 }  { Key_q1 mem_dout 0 8 } } }
}
set moduleName KeyExpansion
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
set C_modelName {KeyExpansion}
set C_modelType { void 0 }
set C_modelArgList {
	{ RoundKey int 8 regular {array 240 { 2 2 } 1 1 }  }
	{ Key int 8 regular {array 32 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "RoundKey", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "Key", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ RoundKey_address0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q0 sc_in sc_lv 8 signal 0 } 
	{ RoundKey_address1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q1 sc_in sc_lv 8 signal 0 } 
	{ Key_address0 sc_out sc_lv 5 signal 1 } 
	{ Key_ce0 sc_out sc_logic 1 signal 1 } 
	{ Key_q0 sc_in sc_lv 8 signal 1 } 
	{ Key_address1 sc_out sc_lv 5 signal 1 } 
	{ Key_ce1 sc_out sc_logic 1 signal 1 } 
	{ Key_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "RoundKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address0" }} , 
 	{ "name": "RoundKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce0" }} , 
 	{ "name": "RoundKey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we0" }} , 
 	{ "name": "RoundKey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d0" }} , 
 	{ "name": "RoundKey_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q0" }} , 
 	{ "name": "RoundKey_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address1" }} , 
 	{ "name": "RoundKey_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce1" }} , 
 	{ "name": "RoundKey_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we1" }} , 
 	{ "name": "RoundKey_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d1" }} , 
 	{ "name": "RoundKey_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q1" }} , 
 	{ "name": "Key_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address0" }} , 
 	{ "name": "Key_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce0" }} , 
 	{ "name": "Key_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q0" }} , 
 	{ "name": "Key_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address1" }} , 
 	{ "name": "Key_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce1" }} , 
 	{ "name": "Key_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "KeyExpansion",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "334", "EstimateLatencyMax" : "334",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sbox_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Rcon_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	KeyExpansion {
		RoundKey {Type IO LastRead 12 FirstWrite 2}
		Key {Type I LastRead 5 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "334", "Max" : "334"}
	, {"Name" : "Interval", "Min" : "334", "Max" : "334"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	RoundKey { ap_memory {  { RoundKey_address0 mem_address 1 8 }  { RoundKey_ce0 mem_ce 1 1 }  { RoundKey_we0 mem_we 1 1 }  { RoundKey_d0 mem_din 1 8 }  { RoundKey_q0 mem_dout 0 8 }  { RoundKey_address1 mem_address 1 8 }  { RoundKey_ce1 mem_ce 1 1 }  { RoundKey_we1 mem_we 1 1 }  { RoundKey_d1 mem_din 1 8 }  { RoundKey_q1 mem_dout 0 8 } } }
	Key { ap_memory {  { Key_address0 mem_address 1 5 }  { Key_ce0 mem_ce 1 1 }  { Key_q0 mem_dout 0 8 }  { Key_address1 mem_address 1 5 }  { Key_ce1 mem_ce 1 1 }  { Key_q1 mem_dout 0 8 } } }
}
set moduleName KeyExpansion
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
set C_modelName {KeyExpansion}
set C_modelType { void 0 }
set C_modelArgList {
	{ RoundKey int 8 regular {array 240 { 2 2 } 1 1 }  }
	{ Key int 8 regular {array 32 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "RoundKey", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "Key", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ RoundKey_address0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q0 sc_in sc_lv 8 signal 0 } 
	{ RoundKey_address1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q1 sc_in sc_lv 8 signal 0 } 
	{ Key_address0 sc_out sc_lv 5 signal 1 } 
	{ Key_ce0 sc_out sc_logic 1 signal 1 } 
	{ Key_q0 sc_in sc_lv 8 signal 1 } 
	{ Key_address1 sc_out sc_lv 5 signal 1 } 
	{ Key_ce1 sc_out sc_logic 1 signal 1 } 
	{ Key_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "RoundKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address0" }} , 
 	{ "name": "RoundKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce0" }} , 
 	{ "name": "RoundKey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we0" }} , 
 	{ "name": "RoundKey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d0" }} , 
 	{ "name": "RoundKey_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q0" }} , 
 	{ "name": "RoundKey_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address1" }} , 
 	{ "name": "RoundKey_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce1" }} , 
 	{ "name": "RoundKey_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we1" }} , 
 	{ "name": "RoundKey_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d1" }} , 
 	{ "name": "RoundKey_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q1" }} , 
 	{ "name": "Key_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address0" }} , 
 	{ "name": "Key_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce0" }} , 
 	{ "name": "Key_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q0" }} , 
 	{ "name": "Key_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address1" }} , 
 	{ "name": "Key_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce1" }} , 
 	{ "name": "Key_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "KeyExpansion",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "345", "EstimateLatencyMax" : "345",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sbox_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Rcon_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	KeyExpansion {
		RoundKey {Type IO LastRead 25 FirstWrite 2}
		Key {Type I LastRead 9 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "345", "Max" : "345"}
	, {"Name" : "Interval", "Min" : "345", "Max" : "345"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	RoundKey { ap_memory {  { RoundKey_address0 mem_address 1 8 }  { RoundKey_ce0 mem_ce 1 1 }  { RoundKey_we0 mem_we 1 1 }  { RoundKey_d0 mem_din 1 8 }  { RoundKey_q0 mem_dout 0 8 }  { RoundKey_address1 mem_address 1 8 }  { RoundKey_ce1 mem_ce 1 1 }  { RoundKey_we1 mem_we 1 1 }  { RoundKey_d1 mem_din 1 8 }  { RoundKey_q1 mem_dout 0 8 } } }
	Key { ap_memory {  { Key_address0 mem_address 1 5 }  { Key_ce0 mem_ce 1 1 }  { Key_q0 mem_dout 0 8 }  { Key_address1 mem_address 1 5 }  { Key_ce1 mem_ce 1 1 }  { Key_q1 mem_dout 0 8 } } }
}
set moduleName KeyExpansion
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
set C_modelName {KeyExpansion}
set C_modelType { void 0 }
set C_modelArgList {
	{ RoundKey int 8 regular {array 240 { 2 2 } 1 1 }  }
	{ Key int 8 regular {array 32 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "RoundKey", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "Key", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ RoundKey_address0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q0 sc_in sc_lv 8 signal 0 } 
	{ RoundKey_address1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q1 sc_in sc_lv 8 signal 0 } 
	{ Key_address0 sc_out sc_lv 5 signal 1 } 
	{ Key_ce0 sc_out sc_logic 1 signal 1 } 
	{ Key_q0 sc_in sc_lv 8 signal 1 } 
	{ Key_address1 sc_out sc_lv 5 signal 1 } 
	{ Key_ce1 sc_out sc_logic 1 signal 1 } 
	{ Key_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "RoundKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address0" }} , 
 	{ "name": "RoundKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce0" }} , 
 	{ "name": "RoundKey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we0" }} , 
 	{ "name": "RoundKey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d0" }} , 
 	{ "name": "RoundKey_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q0" }} , 
 	{ "name": "RoundKey_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address1" }} , 
 	{ "name": "RoundKey_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce1" }} , 
 	{ "name": "RoundKey_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we1" }} , 
 	{ "name": "RoundKey_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d1" }} , 
 	{ "name": "RoundKey_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q1" }} , 
 	{ "name": "Key_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address0" }} , 
 	{ "name": "Key_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce0" }} , 
 	{ "name": "Key_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q0" }} , 
 	{ "name": "Key_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address1" }} , 
 	{ "name": "Key_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce1" }} , 
 	{ "name": "Key_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "KeyExpansion",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "353", "EstimateLatencyMax" : "377",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sbox_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Rcon_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	KeyExpansion {
		RoundKey {Type IO LastRead 63 FirstWrite 1}
		Key {Type I LastRead 16 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "353", "Max" : "377"}
	, {"Name" : "Interval", "Min" : "353", "Max" : "377"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	RoundKey { ap_memory {  { RoundKey_address0 mem_address 1 8 }  { RoundKey_ce0 mem_ce 1 1 }  { RoundKey_we0 mem_we 1 1 }  { RoundKey_d0 mem_din 1 8 }  { RoundKey_q0 mem_dout 0 8 }  { RoundKey_address1 mem_address 1 8 }  { RoundKey_ce1 mem_ce 1 1 }  { RoundKey_we1 mem_we 1 1 }  { RoundKey_d1 mem_din 1 8 }  { RoundKey_q1 mem_dout 0 8 } } }
	Key { ap_memory {  { Key_address0 mem_address 1 5 }  { Key_ce0 mem_ce 1 1 }  { Key_q0 mem_dout 0 8 }  { Key_address1 mem_address 1 5 }  { Key_ce1 mem_ce 1 1 }  { Key_q1 mem_dout 0 8 } } }
}
set moduleName KeyExpansion
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
set C_modelName {KeyExpansion}
set C_modelType { void 0 }
set C_modelArgList {
	{ RoundKey int 8 regular {array 240 { 2 2 } 1 1 }  }
	{ Key int 8 regular {array 32 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "RoundKey", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "Key", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ RoundKey_address0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q0 sc_in sc_lv 8 signal 0 } 
	{ RoundKey_address1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q1 sc_in sc_lv 8 signal 0 } 
	{ Key_address0 sc_out sc_lv 5 signal 1 } 
	{ Key_ce0 sc_out sc_logic 1 signal 1 } 
	{ Key_q0 sc_in sc_lv 8 signal 1 } 
	{ Key_address1 sc_out sc_lv 5 signal 1 } 
	{ Key_ce1 sc_out sc_logic 1 signal 1 } 
	{ Key_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "RoundKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address0" }} , 
 	{ "name": "RoundKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce0" }} , 
 	{ "name": "RoundKey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we0" }} , 
 	{ "name": "RoundKey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d0" }} , 
 	{ "name": "RoundKey_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q0" }} , 
 	{ "name": "RoundKey_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address1" }} , 
 	{ "name": "RoundKey_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce1" }} , 
 	{ "name": "RoundKey_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we1" }} , 
 	{ "name": "RoundKey_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d1" }} , 
 	{ "name": "RoundKey_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q1" }} , 
 	{ "name": "Key_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address0" }} , 
 	{ "name": "Key_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce0" }} , 
 	{ "name": "Key_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q0" }} , 
 	{ "name": "Key_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address1" }} , 
 	{ "name": "Key_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce1" }} , 
 	{ "name": "Key_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "KeyExpansion",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "402", "EstimateLatencyMax" : "491",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sbox_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Rcon_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	KeyExpansion {
		RoundKey {Type IO LastRead 111 FirstWrite 1}
		Key {Type I LastRead 16 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "402", "Max" : "491"}
	, {"Name" : "Interval", "Min" : "402", "Max" : "491"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	RoundKey { ap_memory {  { RoundKey_address0 mem_address 1 8 }  { RoundKey_ce0 mem_ce 1 1 }  { RoundKey_we0 mem_we 1 1 }  { RoundKey_d0 mem_din 1 8 }  { RoundKey_q0 mem_dout 0 8 }  { RoundKey_address1 mem_address 1 8 }  { RoundKey_ce1 mem_ce 1 1 }  { RoundKey_we1 mem_we 1 1 }  { RoundKey_d1 mem_din 1 8 }  { RoundKey_q1 mem_dout 0 8 } } }
	Key { ap_memory {  { Key_address0 mem_address 1 5 }  { Key_ce0 mem_ce 1 1 }  { Key_q0 mem_dout 0 8 }  { Key_address1 mem_address 1 5 }  { Key_ce1 mem_ce 1 1 }  { Key_q1 mem_dout 0 8 } } }
}
set moduleName KeyExpansion
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
set C_modelName {KeyExpansion}
set C_modelType { void 0 }
set C_modelArgList {
	{ RoundKey int 8 regular {array 240 { 2 2 } 1 1 }  }
	{ Key int 8 regular {array 32 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "RoundKey", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "Key", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ RoundKey_address0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q0 sc_in sc_lv 8 signal 0 } 
	{ RoundKey_address1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q1 sc_in sc_lv 8 signal 0 } 
	{ Key_address0 sc_out sc_lv 5 signal 1 } 
	{ Key_ce0 sc_out sc_logic 1 signal 1 } 
	{ Key_q0 sc_in sc_lv 8 signal 1 } 
	{ Key_address1 sc_out sc_lv 5 signal 1 } 
	{ Key_ce1 sc_out sc_logic 1 signal 1 } 
	{ Key_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "RoundKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address0" }} , 
 	{ "name": "RoundKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce0" }} , 
 	{ "name": "RoundKey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we0" }} , 
 	{ "name": "RoundKey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d0" }} , 
 	{ "name": "RoundKey_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q0" }} , 
 	{ "name": "RoundKey_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address1" }} , 
 	{ "name": "RoundKey_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce1" }} , 
 	{ "name": "RoundKey_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we1" }} , 
 	{ "name": "RoundKey_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d1" }} , 
 	{ "name": "RoundKey_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q1" }} , 
 	{ "name": "Key_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address0" }} , 
 	{ "name": "Key_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce0" }} , 
 	{ "name": "Key_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q0" }} , 
 	{ "name": "Key_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address1" }} , 
 	{ "name": "Key_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce1" }} , 
 	{ "name": "Key_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "KeyExpansion",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "402", "EstimateLatencyMax" : "587",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sbox_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Rcon_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	KeyExpansion {
		RoundKey {Type IO LastRead 207 FirstWrite 1}
		Key {Type I LastRead 16 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "402", "Max" : "587"}
	, {"Name" : "Interval", "Min" : "402", "Max" : "587"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	RoundKey { ap_memory {  { RoundKey_address0 mem_address 1 8 }  { RoundKey_ce0 mem_ce 1 1 }  { RoundKey_we0 mem_we 1 1 }  { RoundKey_d0 mem_din 1 8 }  { RoundKey_q0 mem_dout 0 8 }  { RoundKey_address1 mem_address 1 8 }  { RoundKey_ce1 mem_ce 1 1 }  { RoundKey_we1 mem_we 1 1 }  { RoundKey_d1 mem_din 1 8 }  { RoundKey_q1 mem_dout 0 8 } } }
	Key { ap_memory {  { Key_address0 mem_address 1 5 }  { Key_ce0 mem_ce 1 1 }  { Key_q0 mem_dout 0 8 }  { Key_address1 mem_address 1 5 }  { Key_ce1 mem_ce 1 1 }  { Key_q1 mem_dout 0 8 } } }
}
set moduleName KeyExpansion
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
set C_modelName {KeyExpansion}
set C_modelType { void 0 }
set C_modelArgList {
	{ RoundKey int 8 regular {array 240 { 2 2 } 1 1 }  }
	{ Key int 8 regular {array 32 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "RoundKey", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "Key", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ RoundKey_address0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q0 sc_in sc_lv 8 signal 0 } 
	{ RoundKey_address1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q1 sc_in sc_lv 8 signal 0 } 
	{ Key_address0 sc_out sc_lv 5 signal 1 } 
	{ Key_ce0 sc_out sc_logic 1 signal 1 } 
	{ Key_q0 sc_in sc_lv 8 signal 1 } 
	{ Key_address1 sc_out sc_lv 5 signal 1 } 
	{ Key_ce1 sc_out sc_logic 1 signal 1 } 
	{ Key_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "RoundKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address0" }} , 
 	{ "name": "RoundKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce0" }} , 
 	{ "name": "RoundKey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we0" }} , 
 	{ "name": "RoundKey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d0" }} , 
 	{ "name": "RoundKey_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q0" }} , 
 	{ "name": "RoundKey_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address1" }} , 
 	{ "name": "RoundKey_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce1" }} , 
 	{ "name": "RoundKey_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we1" }} , 
 	{ "name": "RoundKey_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d1" }} , 
 	{ "name": "RoundKey_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q1" }} , 
 	{ "name": "Key_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address0" }} , 
 	{ "name": "Key_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce0" }} , 
 	{ "name": "Key_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q0" }} , 
 	{ "name": "Key_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address1" }} , 
 	{ "name": "Key_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce1" }} , 
 	{ "name": "Key_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "KeyExpansion",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "338", "EstimateLatencyMax" : "338",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sbox_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Rcon_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	KeyExpansion {
		RoundKey {Type IO LastRead 6 FirstWrite 2}
		Key {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "338", "Max" : "338"}
	, {"Name" : "Interval", "Min" : "338", "Max" : "338"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	RoundKey { ap_memory {  { RoundKey_address0 mem_address 1 8 }  { RoundKey_ce0 mem_ce 1 1 }  { RoundKey_we0 mem_we 1 1 }  { RoundKey_d0 mem_din 1 8 }  { RoundKey_q0 mem_dout 0 8 }  { RoundKey_address1 mem_address 1 8 }  { RoundKey_ce1 mem_ce 1 1 }  { RoundKey_we1 mem_we 1 1 }  { RoundKey_d1 mem_din 1 8 }  { RoundKey_q1 mem_dout 0 8 } } }
	Key { ap_memory {  { Key_address0 mem_address 1 5 }  { Key_ce0 mem_ce 1 1 }  { Key_q0 mem_dout 0 8 }  { Key_address1 mem_address 1 5 }  { Key_ce1 mem_ce 1 1 }  { Key_q1 mem_dout 0 8 } } }
}
set moduleName KeyExpansion
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
set C_modelName {KeyExpansion}
set C_modelType { void 0 }
set C_modelArgList {
	{ RoundKey int 8 regular {array 240 { 2 2 } 1 1 }  }
	{ Key int 8 regular {array 32 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "RoundKey", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "Key", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ RoundKey_address0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q0 sc_in sc_lv 8 signal 0 } 
	{ RoundKey_address1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q1 sc_in sc_lv 8 signal 0 } 
	{ Key_address0 sc_out sc_lv 5 signal 1 } 
	{ Key_ce0 sc_out sc_logic 1 signal 1 } 
	{ Key_q0 sc_in sc_lv 8 signal 1 } 
	{ Key_address1 sc_out sc_lv 5 signal 1 } 
	{ Key_ce1 sc_out sc_logic 1 signal 1 } 
	{ Key_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "RoundKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address0" }} , 
 	{ "name": "RoundKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce0" }} , 
 	{ "name": "RoundKey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we0" }} , 
 	{ "name": "RoundKey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d0" }} , 
 	{ "name": "RoundKey_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q0" }} , 
 	{ "name": "RoundKey_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address1" }} , 
 	{ "name": "RoundKey_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce1" }} , 
 	{ "name": "RoundKey_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we1" }} , 
 	{ "name": "RoundKey_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d1" }} , 
 	{ "name": "RoundKey_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q1" }} , 
 	{ "name": "Key_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address0" }} , 
 	{ "name": "Key_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce0" }} , 
 	{ "name": "Key_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q0" }} , 
 	{ "name": "Key_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address1" }} , 
 	{ "name": "Key_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce1" }} , 
 	{ "name": "Key_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "KeyExpansion",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "338", "EstimateLatencyMax" : "338",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sbox_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Rcon_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	KeyExpansion {
		RoundKey {Type IO LastRead 6 FirstWrite 2}
		Key {Type I LastRead 3 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "338", "Max" : "338"}
	, {"Name" : "Interval", "Min" : "338", "Max" : "338"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	RoundKey { ap_memory {  { RoundKey_address0 mem_address 1 8 }  { RoundKey_ce0 mem_ce 1 1 }  { RoundKey_we0 mem_we 1 1 }  { RoundKey_d0 mem_din 1 8 }  { RoundKey_q0 mem_dout 0 8 }  { RoundKey_address1 mem_address 1 8 }  { RoundKey_ce1 mem_ce 1 1 }  { RoundKey_we1 mem_we 1 1 }  { RoundKey_d1 mem_din 1 8 }  { RoundKey_q1 mem_dout 0 8 } } }
	Key { ap_memory {  { Key_address0 mem_address 1 5 }  { Key_ce0 mem_ce 1 1 }  { Key_q0 mem_dout 0 8 }  { Key_address1 mem_address 1 5 }  { Key_ce1 mem_ce 1 1 }  { Key_q1 mem_dout 0 8 } } }
}
set moduleName KeyExpansion
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
set C_modelName {KeyExpansion}
set C_modelType { void 0 }
set C_modelArgList {
	{ RoundKey int 8 regular {array 240 { 2 2 } 1 1 }  }
	{ Key int 8 regular {array 32 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "RoundKey", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "Key", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ RoundKey_address0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q0 sc_in sc_lv 8 signal 0 } 
	{ RoundKey_address1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q1 sc_in sc_lv 8 signal 0 } 
	{ Key_address0 sc_out sc_lv 5 signal 1 } 
	{ Key_ce0 sc_out sc_logic 1 signal 1 } 
	{ Key_q0 sc_in sc_lv 8 signal 1 } 
	{ Key_address1 sc_out sc_lv 5 signal 1 } 
	{ Key_ce1 sc_out sc_logic 1 signal 1 } 
	{ Key_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "RoundKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address0" }} , 
 	{ "name": "RoundKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce0" }} , 
 	{ "name": "RoundKey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we0" }} , 
 	{ "name": "RoundKey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d0" }} , 
 	{ "name": "RoundKey_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q0" }} , 
 	{ "name": "RoundKey_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address1" }} , 
 	{ "name": "RoundKey_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce1" }} , 
 	{ "name": "RoundKey_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we1" }} , 
 	{ "name": "RoundKey_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d1" }} , 
 	{ "name": "RoundKey_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q1" }} , 
 	{ "name": "Key_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address0" }} , 
 	{ "name": "Key_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce0" }} , 
 	{ "name": "Key_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q0" }} , 
 	{ "name": "Key_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address1" }} , 
 	{ "name": "Key_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce1" }} , 
 	{ "name": "Key_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "KeyExpansion",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "334", "EstimateLatencyMax" : "334",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sbox_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Rcon_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	KeyExpansion {
		RoundKey {Type IO LastRead 12 FirstWrite 2}
		Key {Type I LastRead 5 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "334", "Max" : "334"}
	, {"Name" : "Interval", "Min" : "334", "Max" : "334"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	RoundKey { ap_memory {  { RoundKey_address0 mem_address 1 8 }  { RoundKey_ce0 mem_ce 1 1 }  { RoundKey_we0 mem_we 1 1 }  { RoundKey_d0 mem_din 1 8 }  { RoundKey_q0 mem_dout 0 8 }  { RoundKey_address1 mem_address 1 8 }  { RoundKey_ce1 mem_ce 1 1 }  { RoundKey_we1 mem_we 1 1 }  { RoundKey_d1 mem_din 1 8 }  { RoundKey_q1 mem_dout 0 8 } } }
	Key { ap_memory {  { Key_address0 mem_address 1 5 }  { Key_ce0 mem_ce 1 1 }  { Key_q0 mem_dout 0 8 }  { Key_address1 mem_address 1 5 }  { Key_ce1 mem_ce 1 1 }  { Key_q1 mem_dout 0 8 } } }
}
set moduleName KeyExpansion
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
set C_modelName {KeyExpansion}
set C_modelType { void 0 }
set C_modelArgList {
	{ RoundKey int 8 regular {array 240 { 2 2 } 1 1 }  }
	{ Key int 8 regular {array 32 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "RoundKey", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "Key", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ RoundKey_address0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q0 sc_in sc_lv 8 signal 0 } 
	{ RoundKey_address1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q1 sc_in sc_lv 8 signal 0 } 
	{ Key_address0 sc_out sc_lv 5 signal 1 } 
	{ Key_ce0 sc_out sc_logic 1 signal 1 } 
	{ Key_q0 sc_in sc_lv 8 signal 1 } 
	{ Key_address1 sc_out sc_lv 5 signal 1 } 
	{ Key_ce1 sc_out sc_logic 1 signal 1 } 
	{ Key_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "RoundKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address0" }} , 
 	{ "name": "RoundKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce0" }} , 
 	{ "name": "RoundKey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we0" }} , 
 	{ "name": "RoundKey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d0" }} , 
 	{ "name": "RoundKey_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q0" }} , 
 	{ "name": "RoundKey_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address1" }} , 
 	{ "name": "RoundKey_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce1" }} , 
 	{ "name": "RoundKey_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we1" }} , 
 	{ "name": "RoundKey_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d1" }} , 
 	{ "name": "RoundKey_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q1" }} , 
 	{ "name": "Key_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address0" }} , 
 	{ "name": "Key_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce0" }} , 
 	{ "name": "Key_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q0" }} , 
 	{ "name": "Key_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address1" }} , 
 	{ "name": "Key_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce1" }} , 
 	{ "name": "Key_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "KeyExpansion",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "345", "EstimateLatencyMax" : "345",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sbox_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Rcon_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	KeyExpansion {
		RoundKey {Type IO LastRead 25 FirstWrite 2}
		Key {Type I LastRead 9 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "345", "Max" : "345"}
	, {"Name" : "Interval", "Min" : "345", "Max" : "345"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	RoundKey { ap_memory {  { RoundKey_address0 mem_address 1 8 }  { RoundKey_ce0 mem_ce 1 1 }  { RoundKey_we0 mem_we 1 1 }  { RoundKey_d0 mem_din 1 8 }  { RoundKey_q0 mem_dout 0 8 }  { RoundKey_address1 mem_address 1 8 }  { RoundKey_ce1 mem_ce 1 1 }  { RoundKey_we1 mem_we 1 1 }  { RoundKey_d1 mem_din 1 8 }  { RoundKey_q1 mem_dout 0 8 } } }
	Key { ap_memory {  { Key_address0 mem_address 1 5 }  { Key_ce0 mem_ce 1 1 }  { Key_q0 mem_dout 0 8 }  { Key_address1 mem_address 1 5 }  { Key_ce1 mem_ce 1 1 }  { Key_q1 mem_dout 0 8 } } }
}
set moduleName KeyExpansion
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
set C_modelName {KeyExpansion}
set C_modelType { void 0 }
set C_modelArgList {
	{ RoundKey int 8 regular {array 240 { 2 2 } 1 1 }  }
	{ Key int 8 regular {array 32 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "RoundKey", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "Key", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ RoundKey_address0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q0 sc_in sc_lv 8 signal 0 } 
	{ RoundKey_address1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q1 sc_in sc_lv 8 signal 0 } 
	{ Key_address0 sc_out sc_lv 5 signal 1 } 
	{ Key_ce0 sc_out sc_logic 1 signal 1 } 
	{ Key_q0 sc_in sc_lv 8 signal 1 } 
	{ Key_address1 sc_out sc_lv 5 signal 1 } 
	{ Key_ce1 sc_out sc_logic 1 signal 1 } 
	{ Key_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "RoundKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address0" }} , 
 	{ "name": "RoundKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce0" }} , 
 	{ "name": "RoundKey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we0" }} , 
 	{ "name": "RoundKey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d0" }} , 
 	{ "name": "RoundKey_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q0" }} , 
 	{ "name": "RoundKey_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address1" }} , 
 	{ "name": "RoundKey_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce1" }} , 
 	{ "name": "RoundKey_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we1" }} , 
 	{ "name": "RoundKey_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d1" }} , 
 	{ "name": "RoundKey_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q1" }} , 
 	{ "name": "Key_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address0" }} , 
 	{ "name": "Key_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce0" }} , 
 	{ "name": "Key_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q0" }} , 
 	{ "name": "Key_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address1" }} , 
 	{ "name": "Key_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce1" }} , 
 	{ "name": "Key_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "KeyExpansion",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "353", "EstimateLatencyMax" : "377",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sbox_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Rcon_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	KeyExpansion {
		RoundKey {Type IO LastRead 63 FirstWrite 1}
		Key {Type I LastRead 16 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "353", "Max" : "377"}
	, {"Name" : "Interval", "Min" : "353", "Max" : "377"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	RoundKey { ap_memory {  { RoundKey_address0 mem_address 1 8 }  { RoundKey_ce0 mem_ce 1 1 }  { RoundKey_we0 mem_we 1 1 }  { RoundKey_d0 mem_din 1 8 }  { RoundKey_q0 mem_dout 0 8 }  { RoundKey_address1 mem_address 1 8 }  { RoundKey_ce1 mem_ce 1 1 }  { RoundKey_we1 mem_we 1 1 }  { RoundKey_d1 mem_din 1 8 }  { RoundKey_q1 mem_dout 0 8 } } }
	Key { ap_memory {  { Key_address0 mem_address 1 5 }  { Key_ce0 mem_ce 1 1 }  { Key_q0 mem_dout 0 8 }  { Key_address1 mem_address 1 5 }  { Key_ce1 mem_ce 1 1 }  { Key_q1 mem_dout 0 8 } } }
}
set moduleName KeyExpansion
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
set C_modelName {KeyExpansion}
set C_modelType { void 0 }
set C_modelArgList {
	{ RoundKey int 8 regular {array 240 { 2 2 } 1 1 }  }
	{ Key int 8 regular {array 32 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "RoundKey", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "Key", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ RoundKey_address0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q0 sc_in sc_lv 8 signal 0 } 
	{ RoundKey_address1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q1 sc_in sc_lv 8 signal 0 } 
	{ Key_address0 sc_out sc_lv 5 signal 1 } 
	{ Key_ce0 sc_out sc_logic 1 signal 1 } 
	{ Key_q0 sc_in sc_lv 8 signal 1 } 
	{ Key_address1 sc_out sc_lv 5 signal 1 } 
	{ Key_ce1 sc_out sc_logic 1 signal 1 } 
	{ Key_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "RoundKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address0" }} , 
 	{ "name": "RoundKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce0" }} , 
 	{ "name": "RoundKey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we0" }} , 
 	{ "name": "RoundKey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d0" }} , 
 	{ "name": "RoundKey_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q0" }} , 
 	{ "name": "RoundKey_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address1" }} , 
 	{ "name": "RoundKey_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce1" }} , 
 	{ "name": "RoundKey_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we1" }} , 
 	{ "name": "RoundKey_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d1" }} , 
 	{ "name": "RoundKey_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q1" }} , 
 	{ "name": "Key_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address0" }} , 
 	{ "name": "Key_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce0" }} , 
 	{ "name": "Key_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q0" }} , 
 	{ "name": "Key_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address1" }} , 
 	{ "name": "Key_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce1" }} , 
 	{ "name": "Key_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "KeyExpansion",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "402", "EstimateLatencyMax" : "491",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sbox_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Rcon_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	KeyExpansion {
		RoundKey {Type IO LastRead 111 FirstWrite 1}
		Key {Type I LastRead 16 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "402", "Max" : "491"}
	, {"Name" : "Interval", "Min" : "402", "Max" : "491"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	RoundKey { ap_memory {  { RoundKey_address0 mem_address 1 8 }  { RoundKey_ce0 mem_ce 1 1 }  { RoundKey_we0 mem_we 1 1 }  { RoundKey_d0 mem_din 1 8 }  { RoundKey_q0 mem_dout 0 8 }  { RoundKey_address1 mem_address 1 8 }  { RoundKey_ce1 mem_ce 1 1 }  { RoundKey_we1 mem_we 1 1 }  { RoundKey_d1 mem_din 1 8 }  { RoundKey_q1 mem_dout 0 8 } } }
	Key { ap_memory {  { Key_address0 mem_address 1 5 }  { Key_ce0 mem_ce 1 1 }  { Key_q0 mem_dout 0 8 }  { Key_address1 mem_address 1 5 }  { Key_ce1 mem_ce 1 1 }  { Key_q1 mem_dout 0 8 } } }
}
set moduleName KeyExpansion
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
set C_modelName {KeyExpansion}
set C_modelType { void 0 }
set C_modelArgList {
	{ RoundKey int 8 regular {array 240 { 2 2 } 1 1 }  }
	{ Key int 8 regular {array 32 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "RoundKey", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "Key", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ RoundKey_address0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q0 sc_in sc_lv 8 signal 0 } 
	{ RoundKey_address1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_q1 sc_in sc_lv 8 signal 0 } 
	{ Key_address0 sc_out sc_lv 5 signal 1 } 
	{ Key_ce0 sc_out sc_logic 1 signal 1 } 
	{ Key_q0 sc_in sc_lv 8 signal 1 } 
	{ Key_address1 sc_out sc_lv 5 signal 1 } 
	{ Key_ce1 sc_out sc_logic 1 signal 1 } 
	{ Key_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "RoundKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address0" }} , 
 	{ "name": "RoundKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce0" }} , 
 	{ "name": "RoundKey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we0" }} , 
 	{ "name": "RoundKey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d0" }} , 
 	{ "name": "RoundKey_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q0" }} , 
 	{ "name": "RoundKey_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address1" }} , 
 	{ "name": "RoundKey_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce1" }} , 
 	{ "name": "RoundKey_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we1" }} , 
 	{ "name": "RoundKey_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d1" }} , 
 	{ "name": "RoundKey_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "q1" }} , 
 	{ "name": "Key_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address0" }} , 
 	{ "name": "Key_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce0" }} , 
 	{ "name": "Key_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q0" }} , 
 	{ "name": "Key_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address1" }} , 
 	{ "name": "Key_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce1" }} , 
 	{ "name": "Key_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "KeyExpansion",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "402", "EstimateLatencyMax" : "587",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sbox_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Rcon_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	KeyExpansion {
		RoundKey {Type IO LastRead 207 FirstWrite 1}
		Key {Type I LastRead 16 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "402", "Max" : "587"}
	, {"Name" : "Interval", "Min" : "402", "Max" : "587"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	RoundKey { ap_memory {  { RoundKey_address0 mem_address 1 8 }  { RoundKey_ce0 mem_ce 1 1 }  { RoundKey_we0 mem_we 1 1 }  { RoundKey_d0 mem_din 1 8 }  { RoundKey_q0 mem_dout 0 8 }  { RoundKey_address1 mem_address 1 8 }  { RoundKey_ce1 mem_ce 1 1 }  { RoundKey_we1 mem_we 1 1 }  { RoundKey_d1 mem_din 1 8 }  { RoundKey_q1 mem_dout 0 8 } } }
	Key { ap_memory {  { Key_address0 mem_address 1 5 }  { Key_ce0 mem_ce 1 1 }  { Key_q0 mem_dout 0 8 }  { Key_address1 mem_address 1 5 }  { Key_ce1 mem_ce 1 1 }  { Key_q1 mem_dout 0 8 } } }
}
set moduleName KeyExpansion
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
set C_modelName {KeyExpansion}
set C_modelType { void 0 }
set C_modelArgList {
	{ RoundKey int 8 regular {array 240 { 0 0 } 0 1 }  }
	{ Key int 8 regular {array 32 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "RoundKey", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Key", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ RoundKey_address0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_address1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d1 sc_out sc_lv 8 signal 0 } 
	{ Key_address0 sc_out sc_lv 5 signal 1 } 
	{ Key_ce0 sc_out sc_logic 1 signal 1 } 
	{ Key_q0 sc_in sc_lv 8 signal 1 } 
	{ Key_address1 sc_out sc_lv 5 signal 1 } 
	{ Key_ce1 sc_out sc_logic 1 signal 1 } 
	{ Key_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "RoundKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address0" }} , 
 	{ "name": "RoundKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce0" }} , 
 	{ "name": "RoundKey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we0" }} , 
 	{ "name": "RoundKey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d0" }} , 
 	{ "name": "RoundKey_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address1" }} , 
 	{ "name": "RoundKey_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce1" }} , 
 	{ "name": "RoundKey_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we1" }} , 
 	{ "name": "RoundKey_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d1" }} , 
 	{ "name": "Key_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address0" }} , 
 	{ "name": "Key_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce0" }} , 
 	{ "name": "Key_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q0" }} , 
 	{ "name": "Key_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address1" }} , 
 	{ "name": "Key_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce1" }} , 
 	{ "name": "Key_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "KeyExpansion",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "120", "EstimateLatencyMax" : "120",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sbox_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	KeyExpansion {
		RoundKey {Type O LastRead -1 FirstWrite 1}
		Key {Type I LastRead 16 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "120", "Max" : "120"}
	, {"Name" : "Interval", "Min" : "120", "Max" : "120"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	RoundKey { ap_memory {  { RoundKey_address0 mem_address 1 8 }  { RoundKey_ce0 mem_ce 1 1 }  { RoundKey_we0 mem_we 1 1 }  { RoundKey_d0 mem_din 1 8 }  { RoundKey_address1 mem_address 1 8 }  { RoundKey_ce1 mem_ce 1 1 }  { RoundKey_we1 mem_we 1 1 }  { RoundKey_d1 mem_din 1 8 } } }
	Key { ap_memory {  { Key_address0 mem_address 1 5 }  { Key_ce0 mem_ce 1 1 }  { Key_q0 mem_dout 0 8 }  { Key_address1 mem_address 1 5 }  { Key_ce1 mem_ce 1 1 }  { Key_q1 mem_dout 0 8 } } }
}
set moduleName KeyExpansion
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
set C_modelName {KeyExpansion}
set C_modelType { void 0 }
set C_modelArgList {
	{ RoundKey int 8 regular {array 240 { 0 0 } 0 1 }  }
	{ Key int 8 regular {array 32 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "RoundKey", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Key", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ RoundKey_address0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_address1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_ce1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_we1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_d1 sc_out sc_lv 8 signal 0 } 
	{ Key_address0 sc_out sc_lv 5 signal 1 } 
	{ Key_ce0 sc_out sc_logic 1 signal 1 } 
	{ Key_q0 sc_in sc_lv 8 signal 1 } 
	{ Key_address1 sc_out sc_lv 5 signal 1 } 
	{ Key_ce1 sc_out sc_logic 1 signal 1 } 
	{ Key_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "RoundKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address0" }} , 
 	{ "name": "RoundKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce0" }} , 
 	{ "name": "RoundKey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we0" }} , 
 	{ "name": "RoundKey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d0" }} , 
 	{ "name": "RoundKey_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "address1" }} , 
 	{ "name": "RoundKey_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "ce1" }} , 
 	{ "name": "RoundKey_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey", "role": "we1" }} , 
 	{ "name": "RoundKey_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey", "role": "d1" }} , 
 	{ "name": "Key_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address0" }} , 
 	{ "name": "Key_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce0" }} , 
 	{ "name": "Key_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q0" }} , 
 	{ "name": "Key_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Key", "role": "address1" }} , 
 	{ "name": "Key_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Key", "role": "ce1" }} , 
 	{ "name": "Key_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "KeyExpansion",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "120", "EstimateLatencyMax" : "120",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sbox_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	KeyExpansion {
		RoundKey {Type O LastRead -1 FirstWrite 1}
		Key {Type I LastRead 16 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "120", "Max" : "120"}
	, {"Name" : "Interval", "Min" : "120", "Max" : "120"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	RoundKey { ap_memory {  { RoundKey_address0 mem_address 1 8 }  { RoundKey_ce0 mem_ce 1 1 }  { RoundKey_we0 mem_we 1 1 }  { RoundKey_d0 mem_din 1 8 }  { RoundKey_address1 mem_address 1 8 }  { RoundKey_ce1 mem_ce 1 1 }  { RoundKey_we1 mem_we 1 1 }  { RoundKey_d1 mem_din 1 8 } } }
	Key { ap_memory {  { Key_address0 mem_address 1 5 }  { Key_ce0 mem_ce 1 1 }  { Key_q0 mem_dout 0 8 }  { Key_address1 mem_address 1 5 }  { Key_ce1 mem_ce 1 1 }  { Key_q1 mem_dout 0 8 } } }
}
