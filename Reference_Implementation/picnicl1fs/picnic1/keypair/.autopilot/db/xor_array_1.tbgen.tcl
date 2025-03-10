set moduleName xor_array_1
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
set C_modelName {xor_array.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ in1 int 32 regular {array 8 { 2 2 } 1 1 }  }
	{ in2_offset int 7 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "in2_offset", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in1_address0 sc_out sc_lv 3 signal 0 } 
	{ in1_ce0 sc_out sc_logic 1 signal 0 } 
	{ in1_we0 sc_out sc_logic 1 signal 0 } 
	{ in1_d0 sc_out sc_lv 32 signal 0 } 
	{ in1_q0 sc_in sc_lv 32 signal 0 } 
	{ in1_address1 sc_out sc_lv 3 signal 0 } 
	{ in1_ce1 sc_out sc_logic 1 signal 0 } 
	{ in1_we1 sc_out sc_logic 1 signal 0 } 
	{ in1_d1 sc_out sc_lv 32 signal 0 } 
	{ in1_q1 sc_in sc_lv 32 signal 0 } 
	{ in2_offset sc_in sc_lv 7 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in1", "role": "address0" }} , 
 	{ "name": "in1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in1", "role": "ce0" }} , 
 	{ "name": "in1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in1", "role": "we0" }} , 
 	{ "name": "in1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in1", "role": "d0" }} , 
 	{ "name": "in1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in1", "role": "q0" }} , 
 	{ "name": "in1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in1", "role": "address1" }} , 
 	{ "name": "in1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in1", "role": "ce1" }} , 
 	{ "name": "in1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in1", "role": "we1" }} , 
 	{ "name": "in1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in1", "role": "d1" }} , 
 	{ "name": "in1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in1", "role": "q1" }} , 
 	{ "name": "in2_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "in2_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "xor_array_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "in2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_matrix3", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_matrix3_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	xor_array_1 {
		in1 {Type IO LastRead 7 FirstWrite 3}
		in2_offset {Type I LastRead 0 FirstWrite -1}
		temp_matrix3 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in1 { ap_memory {  { in1_address0 mem_address 1 3 }  { in1_ce0 mem_ce 1 1 }  { in1_we0 mem_we 1 1 }  { in1_d0 mem_din 1 32 }  { in1_q0 mem_dout 0 32 }  { in1_address1 mem_address 1 3 }  { in1_ce1 mem_ce 1 1 }  { in1_we1 mem_we 1 1 }  { in1_d1 mem_din 1 32 }  { in1_q1 mem_dout 0 32 } } }
	in2_offset { ap_none {  { in2_offset in_data 0 7 } } }
}
set moduleName xor_array_1
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
set C_modelName {xor_array.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ in1 int 32 regular {array 8 { 2 2 } 1 1 }  }
	{ in2_offset int 7 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "in2_offset", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in1_address0 sc_out sc_lv 3 signal 0 } 
	{ in1_ce0 sc_out sc_logic 1 signal 0 } 
	{ in1_we0 sc_out sc_logic 1 signal 0 } 
	{ in1_d0 sc_out sc_lv 32 signal 0 } 
	{ in1_q0 sc_in sc_lv 32 signal 0 } 
	{ in1_address1 sc_out sc_lv 3 signal 0 } 
	{ in1_ce1 sc_out sc_logic 1 signal 0 } 
	{ in1_we1 sc_out sc_logic 1 signal 0 } 
	{ in1_d1 sc_out sc_lv 32 signal 0 } 
	{ in1_q1 sc_in sc_lv 32 signal 0 } 
	{ in2_offset sc_in sc_lv 7 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in1", "role": "address0" }} , 
 	{ "name": "in1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in1", "role": "ce0" }} , 
 	{ "name": "in1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in1", "role": "we0" }} , 
 	{ "name": "in1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in1", "role": "d0" }} , 
 	{ "name": "in1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in1", "role": "q0" }} , 
 	{ "name": "in1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in1", "role": "address1" }} , 
 	{ "name": "in1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in1", "role": "ce1" }} , 
 	{ "name": "in1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in1", "role": "we1" }} , 
 	{ "name": "in1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in1", "role": "d1" }} , 
 	{ "name": "in1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in1", "role": "q1" }} , 
 	{ "name": "in2_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "in2_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "xor_array_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "in2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_matrix3", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_matrix3_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	xor_array_1 {
		in1 {Type IO LastRead 11 FirstWrite 3}
		in2_offset {Type I LastRead 0 FirstWrite -1}
		temp_matrix3 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in1 { ap_memory {  { in1_address0 mem_address 1 3 }  { in1_ce0 mem_ce 1 1 }  { in1_we0 mem_we 1 1 }  { in1_d0 mem_din 1 32 }  { in1_q0 mem_dout 0 32 }  { in1_address1 mem_address 1 3 }  { in1_ce1 mem_ce 1 1 }  { in1_we1 mem_we 1 1 }  { in1_d1 mem_din 1 32 }  { in1_q1 mem_dout 0 32 } } }
	in2_offset { ap_none {  { in2_offset in_data 0 7 } } }
}
set moduleName xor_array_1
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
set C_modelName {xor_array.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ in1 int 32 regular {array 8 { 2 2 } 1 1 }  }
	{ in2_offset int 7 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "in2_offset", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in1_address0 sc_out sc_lv 3 signal 0 } 
	{ in1_ce0 sc_out sc_logic 1 signal 0 } 
	{ in1_we0 sc_out sc_logic 1 signal 0 } 
	{ in1_d0 sc_out sc_lv 32 signal 0 } 
	{ in1_q0 sc_in sc_lv 32 signal 0 } 
	{ in1_address1 sc_out sc_lv 3 signal 0 } 
	{ in1_ce1 sc_out sc_logic 1 signal 0 } 
	{ in1_we1 sc_out sc_logic 1 signal 0 } 
	{ in1_d1 sc_out sc_lv 32 signal 0 } 
	{ in1_q1 sc_in sc_lv 32 signal 0 } 
	{ in2_offset sc_in sc_lv 7 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in1", "role": "address0" }} , 
 	{ "name": "in1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in1", "role": "ce0" }} , 
 	{ "name": "in1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in1", "role": "we0" }} , 
 	{ "name": "in1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in1", "role": "d0" }} , 
 	{ "name": "in1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in1", "role": "q0" }} , 
 	{ "name": "in1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in1", "role": "address1" }} , 
 	{ "name": "in1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in1", "role": "ce1" }} , 
 	{ "name": "in1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in1", "role": "we1" }} , 
 	{ "name": "in1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in1", "role": "d1" }} , 
 	{ "name": "in1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in1", "role": "q1" }} , 
 	{ "name": "in2_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "in2_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "xor_array_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "in2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_matrix3", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_matrix3_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	xor_array_1 {
		in1 {Type IO LastRead 19 FirstWrite 3}
		in2_offset {Type I LastRead 0 FirstWrite -1}
		temp_matrix3 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in1 { ap_memory {  { in1_address0 mem_address 1 3 }  { in1_ce0 mem_ce 1 1 }  { in1_we0 mem_we 1 1 }  { in1_d0 mem_din 1 32 }  { in1_q0 mem_dout 0 32 }  { in1_address1 mem_address 1 3 }  { in1_ce1 mem_ce 1 1 }  { in1_we1 mem_we 1 1 }  { in1_d1 mem_din 1 32 }  { in1_q1 mem_dout 0 32 } } }
	in2_offset { ap_none {  { in2_offset in_data 0 7 } } }
}
set moduleName xor_array_1
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
set C_modelName {xor_array.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ in1 int 32 regular {array 8 { 2 2 } 1 1 }  }
	{ in2_offset int 7 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "in2_offset", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in1_address0 sc_out sc_lv 3 signal 0 } 
	{ in1_ce0 sc_out sc_logic 1 signal 0 } 
	{ in1_we0 sc_out sc_logic 1 signal 0 } 
	{ in1_d0 sc_out sc_lv 32 signal 0 } 
	{ in1_q0 sc_in sc_lv 32 signal 0 } 
	{ in1_address1 sc_out sc_lv 3 signal 0 } 
	{ in1_ce1 sc_out sc_logic 1 signal 0 } 
	{ in1_we1 sc_out sc_logic 1 signal 0 } 
	{ in1_d1 sc_out sc_lv 32 signal 0 } 
	{ in1_q1 sc_in sc_lv 32 signal 0 } 
	{ in2_offset sc_in sc_lv 7 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in1", "role": "address0" }} , 
 	{ "name": "in1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in1", "role": "ce0" }} , 
 	{ "name": "in1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in1", "role": "we0" }} , 
 	{ "name": "in1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in1", "role": "d0" }} , 
 	{ "name": "in1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in1", "role": "q0" }} , 
 	{ "name": "in1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in1", "role": "address1" }} , 
 	{ "name": "in1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in1", "role": "ce1" }} , 
 	{ "name": "in1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in1", "role": "we1" }} , 
 	{ "name": "in1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in1", "role": "d1" }} , 
 	{ "name": "in1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in1", "role": "q1" }} , 
 	{ "name": "in2_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "in2_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "xor_array_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "in2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_matrix3", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_matrix3_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	xor_array_1 {
		in1 {Type IO LastRead 35 FirstWrite 3}
		in2_offset {Type I LastRead 0 FirstWrite -1}
		temp_matrix3 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in1 { ap_memory {  { in1_address0 mem_address 1 3 }  { in1_ce0 mem_ce 1 1 }  { in1_we0 mem_we 1 1 }  { in1_d0 mem_din 1 32 }  { in1_q0 mem_dout 0 32 }  { in1_address1 mem_address 1 3 }  { in1_ce1 mem_ce 1 1 }  { in1_we1 mem_we 1 1 }  { in1_d1 mem_din 1 32 }  { in1_q1 mem_dout 0 32 } } }
	in2_offset { ap_none {  { in2_offset in_data 0 7 } } }
}
set moduleName xor_array_1
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
set C_modelName {xor_array.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ in1 int 32 regular {array 8 { 2 2 } 1 1 }  }
	{ in2_offset int 7 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "in2_offset", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in1_address0 sc_out sc_lv 3 signal 0 } 
	{ in1_ce0 sc_out sc_logic 1 signal 0 } 
	{ in1_we0 sc_out sc_logic 1 signal 0 } 
	{ in1_d0 sc_out sc_lv 32 signal 0 } 
	{ in1_q0 sc_in sc_lv 32 signal 0 } 
	{ in1_address1 sc_out sc_lv 3 signal 0 } 
	{ in1_ce1 sc_out sc_logic 1 signal 0 } 
	{ in1_we1 sc_out sc_logic 1 signal 0 } 
	{ in1_d1 sc_out sc_lv 32 signal 0 } 
	{ in1_q1 sc_in sc_lv 32 signal 0 } 
	{ in2_offset sc_in sc_lv 7 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in1", "role": "address0" }} , 
 	{ "name": "in1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in1", "role": "ce0" }} , 
 	{ "name": "in1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in1", "role": "we0" }} , 
 	{ "name": "in1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in1", "role": "d0" }} , 
 	{ "name": "in1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in1", "role": "q0" }} , 
 	{ "name": "in1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in1", "role": "address1" }} , 
 	{ "name": "in1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in1", "role": "ce1" }} , 
 	{ "name": "in1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in1", "role": "we1" }} , 
 	{ "name": "in1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in1", "role": "d1" }} , 
 	{ "name": "in1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in1", "role": "q1" }} , 
 	{ "name": "in2_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "in2_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "xor_array_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "in2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_matrix3", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_matrix3_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	xor_array_1 {
		in1 {Type IO LastRead 67 FirstWrite 3}
		in2_offset {Type I LastRead 0 FirstWrite -1}
		temp_matrix3 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in1 { ap_memory {  { in1_address0 mem_address 1 3 }  { in1_ce0 mem_ce 1 1 }  { in1_we0 mem_we 1 1 }  { in1_d0 mem_din 1 32 }  { in1_q0 mem_dout 0 32 }  { in1_address1 mem_address 1 3 }  { in1_ce1 mem_ce 1 1 }  { in1_we1 mem_we 1 1 }  { in1_d1 mem_din 1 32 }  { in1_q1 mem_dout 0 32 } } }
	in2_offset { ap_none {  { in2_offset in_data 0 7 } } }
}
set moduleName xor_array_1
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
set C_modelName {xor_array.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ in1 int 32 regular {array 8 { 2 2 } 1 1 }  }
	{ in2_offset int 7 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "in2_offset", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in1_address0 sc_out sc_lv 3 signal 0 } 
	{ in1_ce0 sc_out sc_logic 1 signal 0 } 
	{ in1_we0 sc_out sc_logic 1 signal 0 } 
	{ in1_d0 sc_out sc_lv 32 signal 0 } 
	{ in1_q0 sc_in sc_lv 32 signal 0 } 
	{ in1_address1 sc_out sc_lv 3 signal 0 } 
	{ in1_ce1 sc_out sc_logic 1 signal 0 } 
	{ in1_we1 sc_out sc_logic 1 signal 0 } 
	{ in1_d1 sc_out sc_lv 32 signal 0 } 
	{ in1_q1 sc_in sc_lv 32 signal 0 } 
	{ in2_offset sc_in sc_lv 7 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in1", "role": "address0" }} , 
 	{ "name": "in1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in1", "role": "ce0" }} , 
 	{ "name": "in1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in1", "role": "we0" }} , 
 	{ "name": "in1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in1", "role": "d0" }} , 
 	{ "name": "in1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in1", "role": "q0" }} , 
 	{ "name": "in1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in1", "role": "address1" }} , 
 	{ "name": "in1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in1", "role": "ce1" }} , 
 	{ "name": "in1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in1", "role": "we1" }} , 
 	{ "name": "in1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in1", "role": "d1" }} , 
 	{ "name": "in1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in1", "role": "q1" }} , 
 	{ "name": "in2_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "in2_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "xor_array_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "in2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_matrix3", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_matrix3_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	xor_array_1 {
		in1 {Type IO LastRead 12 FirstWrite 5}
		in2_offset {Type I LastRead 0 FirstWrite -1}
		temp_matrix3 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	in1 { ap_memory {  { in1_address0 mem_address 1 3 }  { in1_ce0 mem_ce 1 1 }  { in1_we0 mem_we 1 1 }  { in1_d0 mem_din 1 32 }  { in1_q0 mem_dout 0 32 }  { in1_address1 mem_address 1 3 }  { in1_ce1 mem_ce 1 1 }  { in1_we1 mem_we 1 1 }  { in1_d1 mem_din 1 32 }  { in1_q1 mem_dout 0 32 } } }
	in2_offset { ap_none {  { in2_offset in_data 0 7 } } }
}
set moduleName xor_array_1
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
set C_modelName {xor_array.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ in1 int 32 regular {array 8 { 2 2 } 1 1 }  }
	{ in2_offset int 7 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "in2_offset", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in1_address0 sc_out sc_lv 3 signal 0 } 
	{ in1_ce0 sc_out sc_logic 1 signal 0 } 
	{ in1_we0 sc_out sc_logic 1 signal 0 } 
	{ in1_d0 sc_out sc_lv 32 signal 0 } 
	{ in1_q0 sc_in sc_lv 32 signal 0 } 
	{ in1_address1 sc_out sc_lv 3 signal 0 } 
	{ in1_ce1 sc_out sc_logic 1 signal 0 } 
	{ in1_we1 sc_out sc_logic 1 signal 0 } 
	{ in1_d1 sc_out sc_lv 32 signal 0 } 
	{ in1_q1 sc_in sc_lv 32 signal 0 } 
	{ in2_offset sc_in sc_lv 7 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in1", "role": "address0" }} , 
 	{ "name": "in1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in1", "role": "ce0" }} , 
 	{ "name": "in1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in1", "role": "we0" }} , 
 	{ "name": "in1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in1", "role": "d0" }} , 
 	{ "name": "in1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in1", "role": "q0" }} , 
 	{ "name": "in1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in1", "role": "address1" }} , 
 	{ "name": "in1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in1", "role": "ce1" }} , 
 	{ "name": "in1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in1", "role": "we1" }} , 
 	{ "name": "in1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in1", "role": "d1" }} , 
 	{ "name": "in1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in1", "role": "q1" }} , 
 	{ "name": "in2_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "in2_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "xor_array_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "in2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_matrix3", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_matrix3_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	xor_array_1 {
		in1 {Type IO LastRead 24 FirstWrite 9}
		in2_offset {Type I LastRead 0 FirstWrite -1}
		temp_matrix3 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	in1 { ap_memory {  { in1_address0 mem_address 1 3 }  { in1_ce0 mem_ce 1 1 }  { in1_we0 mem_we 1 1 }  { in1_d0 mem_din 1 32 }  { in1_q0 mem_dout 0 32 }  { in1_address1 mem_address 1 3 }  { in1_ce1 mem_ce 1 1 }  { in1_we1 mem_we 1 1 }  { in1_d1 mem_din 1 32 }  { in1_q1 mem_dout 0 32 } } }
	in2_offset { ap_none {  { in2_offset in_data 0 7 } } }
}
set moduleName xor_array_1
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
set C_modelName {xor_array.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ in1 int 32 regular {array 8 { 2 2 } 1 1 }  }
	{ in2_offset int 7 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "in2_offset", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in1_address0 sc_out sc_lv 3 signal 0 } 
	{ in1_ce0 sc_out sc_logic 1 signal 0 } 
	{ in1_we0 sc_out sc_logic 1 signal 0 } 
	{ in1_d0 sc_out sc_lv 32 signal 0 } 
	{ in1_q0 sc_in sc_lv 32 signal 0 } 
	{ in1_address1 sc_out sc_lv 3 signal 0 } 
	{ in1_ce1 sc_out sc_logic 1 signal 0 } 
	{ in1_we1 sc_out sc_logic 1 signal 0 } 
	{ in1_d1 sc_out sc_lv 32 signal 0 } 
	{ in1_q1 sc_in sc_lv 32 signal 0 } 
	{ in2_offset sc_in sc_lv 7 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in1", "role": "address0" }} , 
 	{ "name": "in1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in1", "role": "ce0" }} , 
 	{ "name": "in1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in1", "role": "we0" }} , 
 	{ "name": "in1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in1", "role": "d0" }} , 
 	{ "name": "in1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in1", "role": "q0" }} , 
 	{ "name": "in1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in1", "role": "address1" }} , 
 	{ "name": "in1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in1", "role": "ce1" }} , 
 	{ "name": "in1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in1", "role": "we1" }} , 
 	{ "name": "in1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in1", "role": "d1" }} , 
 	{ "name": "in1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in1", "role": "q1" }} , 
 	{ "name": "in2_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "in2_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "xor_array_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "in2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_matrix3", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_matrix3_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	xor_array_1 {
		in1 {Type IO LastRead 48 FirstWrite 17}
		in2_offset {Type I LastRead 0 FirstWrite -1}
		temp_matrix3 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	in1 { ap_memory {  { in1_address0 mem_address 1 3 }  { in1_ce0 mem_ce 1 1 }  { in1_we0 mem_we 1 1 }  { in1_d0 mem_din 1 32 }  { in1_q0 mem_dout 0 32 }  { in1_address1 mem_address 1 3 }  { in1_ce1 mem_ce 1 1 }  { in1_we1 mem_we 1 1 }  { in1_d1 mem_din 1 32 }  { in1_q1 mem_dout 0 32 } } }
	in2_offset { ap_none {  { in2_offset in_data 0 7 } } }
}
set moduleName xor_array_1
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
set C_modelName {xor_array.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ in1 int 32 regular {array 8 { 2 2 } 1 1 }  }
	{ in2_offset int 7 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "in2_offset", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in1_address0 sc_out sc_lv 3 signal 0 } 
	{ in1_ce0 sc_out sc_logic 1 signal 0 } 
	{ in1_we0 sc_out sc_logic 1 signal 0 } 
	{ in1_d0 sc_out sc_lv 32 signal 0 } 
	{ in1_q0 sc_in sc_lv 32 signal 0 } 
	{ in1_address1 sc_out sc_lv 3 signal 0 } 
	{ in1_ce1 sc_out sc_logic 1 signal 0 } 
	{ in1_we1 sc_out sc_logic 1 signal 0 } 
	{ in1_d1 sc_out sc_lv 32 signal 0 } 
	{ in1_q1 sc_in sc_lv 32 signal 0 } 
	{ in2_offset sc_in sc_lv 7 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in1", "role": "address0" }} , 
 	{ "name": "in1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in1", "role": "ce0" }} , 
 	{ "name": "in1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in1", "role": "we0" }} , 
 	{ "name": "in1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in1", "role": "d0" }} , 
 	{ "name": "in1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in1", "role": "q0" }} , 
 	{ "name": "in1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in1", "role": "address1" }} , 
 	{ "name": "in1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in1", "role": "ce1" }} , 
 	{ "name": "in1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in1", "role": "we1" }} , 
 	{ "name": "in1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in1", "role": "d1" }} , 
 	{ "name": "in1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in1", "role": "q1" }} , 
 	{ "name": "in2_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "in2_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "xor_array_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "in2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_matrix3", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_matrix3_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	xor_array_1 {
		in1 {Type IO LastRead 96 FirstWrite 33}
		in2_offset {Type I LastRead 0 FirstWrite -1}
		temp_matrix3 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	in1 { ap_memory {  { in1_address0 mem_address 1 3 }  { in1_ce0 mem_ce 1 1 }  { in1_we0 mem_we 1 1 }  { in1_d0 mem_din 1 32 }  { in1_q0 mem_dout 0 32 }  { in1_address1 mem_address 1 3 }  { in1_ce1 mem_ce 1 1 }  { in1_we1 mem_we 1 1 }  { in1_d1 mem_din 1 32 }  { in1_q1 mem_dout 0 32 } } }
	in2_offset { ap_none {  { in2_offset in_data 0 7 } } }
}
set moduleName xor_array_1
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
set C_modelName {xor_array.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ in1 int 32 regular {array 8 { 2 2 } 1 1 }  }
	{ in2_offset int 7 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "in2_offset", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in1_address0 sc_out sc_lv 3 signal 0 } 
	{ in1_ce0 sc_out sc_logic 1 signal 0 } 
	{ in1_we0 sc_out sc_logic 1 signal 0 } 
	{ in1_d0 sc_out sc_lv 32 signal 0 } 
	{ in1_q0 sc_in sc_lv 32 signal 0 } 
	{ in1_address1 sc_out sc_lv 3 signal 0 } 
	{ in1_ce1 sc_out sc_logic 1 signal 0 } 
	{ in1_we1 sc_out sc_logic 1 signal 0 } 
	{ in1_d1 sc_out sc_lv 32 signal 0 } 
	{ in1_q1 sc_in sc_lv 32 signal 0 } 
	{ in2_offset sc_in sc_lv 7 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in1", "role": "address0" }} , 
 	{ "name": "in1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in1", "role": "ce0" }} , 
 	{ "name": "in1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in1", "role": "we0" }} , 
 	{ "name": "in1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in1", "role": "d0" }} , 
 	{ "name": "in1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in1", "role": "q0" }} , 
 	{ "name": "in1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in1", "role": "address1" }} , 
 	{ "name": "in1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in1", "role": "ce1" }} , 
 	{ "name": "in1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in1", "role": "we1" }} , 
 	{ "name": "in1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in1", "role": "d1" }} , 
 	{ "name": "in1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in1", "role": "q1" }} , 
 	{ "name": "in2_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "in2_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "xor_array_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "in2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_matrix3", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_matrix3_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	xor_array_1 {
		in1 {Type IO LastRead 192 FirstWrite 65}
		in2_offset {Type I LastRead 0 FirstWrite -1}
		temp_matrix3 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	in1 { ap_memory {  { in1_address0 mem_address 1 3 }  { in1_ce0 mem_ce 1 1 }  { in1_we0 mem_we 1 1 }  { in1_d0 mem_din 1 32 }  { in1_q0 mem_dout 0 32 }  { in1_address1 mem_address 1 3 }  { in1_ce1 mem_ce 1 1 }  { in1_we1 mem_we 1 1 }  { in1_d1 mem_din 1 32 }  { in1_q1 mem_dout 0 32 } } }
	in2_offset { ap_none {  { in2_offset in_data 0 7 } } }
}
