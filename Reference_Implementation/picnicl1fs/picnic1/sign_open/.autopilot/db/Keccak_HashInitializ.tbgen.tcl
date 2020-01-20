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
set C_modelType { int 136 }
set C_modelArgList {
	{ instance_sponge_state int 8 regular {array 200 { 0 3 } 0 1 }  }
	{ instance_sponge_rate_read int 32 regular  }
	{ instance_sponge_byteIOIndex_read int 32 regular  }
	{ instance_sponge_squeezing_read int 32 regular  }
	{ instance_fixedOutputLength_read int 32 regular  }
	{ instance_delimitedSuffix_read int 8 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "instance_sponge_state", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "instance_sponge_rate_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "instance_sponge_byteIOIndex_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "instance_sponge_squeezing_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "instance_fixedOutputLength_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "instance_delimitedSuffix_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 136} ]}
# RTL Port declarations: 
set portNum 20
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
	{ instance_sponge_rate_read sc_in sc_lv 32 signal 1 } 
	{ instance_sponge_byteIOIndex_read sc_in sc_lv 32 signal 2 } 
	{ instance_sponge_squeezing_read sc_in sc_lv 32 signal 3 } 
	{ instance_fixedOutputLength_read sc_in sc_lv 32 signal 4 } 
	{ instance_delimitedSuffix_read sc_in sc_lv 8 signal 5 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
	{ ap_return_2 sc_out sc_lv 32 signal -1 } 
	{ ap_return_3 sc_out sc_lv 32 signal -1 } 
	{ ap_return_4 sc_out sc_lv 8 signal -1 } 
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
 	{ "name": "instance_sponge_rate_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "instance_sponge_rate_read", "role": "default" }} , 
 	{ "name": "instance_sponge_byteIOIndex_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "instance_sponge_byteIOIndex_read", "role": "default" }} , 
 	{ "name": "instance_sponge_squeezing_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "instance_sponge_squeezing_read", "role": "default" }} , 
 	{ "name": "instance_fixedOutputLength_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "instance_fixedOutputLength_read", "role": "default" }} , 
 	{ "name": "instance_delimitedSuffix_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "instance_delimitedSuffix_read", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "ap_return_4", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_4", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "Keccak_HashInitializ",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "201", "EstimateLatencyMax" : "201",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "instance_sponge_state", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "instance_sponge_rate_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_fixedOutputLength_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_delimitedSuffix_read", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	Keccak_HashInitializ {
		instance_sponge_state {Type O LastRead -1 FirstWrite 1}
		instance_sponge_rate_read {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		instance_sponge_squeezing_read {Type I LastRead 0 FirstWrite -1}
		instance_fixedOutputLength_read {Type I LastRead 0 FirstWrite -1}
		instance_delimitedSuffix_read {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "201", "Max" : "201"}
	, {"Name" : "Interval", "Min" : "201", "Max" : "201"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	instance_sponge_state { ap_memory {  { instance_sponge_state_address0 mem_address 1 8 }  { instance_sponge_state_ce0 mem_ce 1 1 }  { instance_sponge_state_we0 mem_we 1 1 }  { instance_sponge_state_d0 mem_din 1 8 } } }
	instance_sponge_rate_read { ap_none {  { instance_sponge_rate_read in_data 0 32 } } }
	instance_sponge_byteIOIndex_read { ap_none {  { instance_sponge_byteIOIndex_read in_data 0 32 } } }
	instance_sponge_squeezing_read { ap_none {  { instance_sponge_squeezing_read in_data 0 32 } } }
	instance_fixedOutputLength_read { ap_none {  { instance_fixedOutputLength_read in_data 0 32 } } }
	instance_delimitedSuffix_read { ap_none {  { instance_delimitedSuffix_read in_data 0 8 } } }
}
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
set C_modelType { int 136 }
set C_modelArgList {
	{ instance_sponge_state int 8 regular {array 200 { 0 0 } 0 1 }  }
	{ instance_sponge_rate_read int 32 regular  }
	{ instance_sponge_byteIOIndex_read int 32 regular  }
	{ instance_sponge_squeezing_read int 32 regular  }
	{ instance_fixedOutputLength_read int 32 regular  }
	{ instance_delimitedSuffix_read int 8 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "instance_sponge_state", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "instance_sponge_rate_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "instance_sponge_byteIOIndex_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "instance_sponge_squeezing_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "instance_fixedOutputLength_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "instance_delimitedSuffix_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 136} ]}
# RTL Port declarations: 
set portNum 24
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
	{ instance_sponge_rate_read sc_in sc_lv 32 signal 1 } 
	{ instance_sponge_byteIOIndex_read sc_in sc_lv 32 signal 2 } 
	{ instance_sponge_squeezing_read sc_in sc_lv 32 signal 3 } 
	{ instance_fixedOutputLength_read sc_in sc_lv 32 signal 4 } 
	{ instance_delimitedSuffix_read sc_in sc_lv 8 signal 5 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
	{ ap_return_2 sc_out sc_lv 32 signal -1 } 
	{ ap_return_3 sc_out sc_lv 32 signal -1 } 
	{ ap_return_4 sc_out sc_lv 8 signal -1 } 
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
 	{ "name": "instance_sponge_state_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "instance_sponge_state", "role": "d1" }} , 
 	{ "name": "instance_sponge_rate_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "instance_sponge_rate_read", "role": "default" }} , 
 	{ "name": "instance_sponge_byteIOIndex_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "instance_sponge_byteIOIndex_read", "role": "default" }} , 
 	{ "name": "instance_sponge_squeezing_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "instance_sponge_squeezing_read", "role": "default" }} , 
 	{ "name": "instance_fixedOutputLength_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "instance_fixedOutputLength_read", "role": "default" }} , 
 	{ "name": "instance_delimitedSuffix_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "instance_delimitedSuffix_read", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "ap_return_4", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_4", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "Keccak_HashInitializ",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "101", "EstimateLatencyMax" : "101",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "instance_sponge_state", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "instance_sponge_rate_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_fixedOutputLength_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_delimitedSuffix_read", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	Keccak_HashInitializ {
		instance_sponge_state {Type O LastRead -1 FirstWrite 1}
		instance_sponge_rate_read {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		instance_sponge_squeezing_read {Type I LastRead 0 FirstWrite -1}
		instance_fixedOutputLength_read {Type I LastRead 0 FirstWrite -1}
		instance_delimitedSuffix_read {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "101", "Max" : "101"}
	, {"Name" : "Interval", "Min" : "101", "Max" : "101"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	instance_sponge_state { ap_memory {  { instance_sponge_state_address0 mem_address 1 8 }  { instance_sponge_state_ce0 mem_ce 1 1 }  { instance_sponge_state_we0 mem_we 1 1 }  { instance_sponge_state_d0 mem_din 1 8 }  { instance_sponge_state_address1 mem_address 1 8 }  { instance_sponge_state_ce1 mem_ce 1 1 }  { instance_sponge_state_we1 mem_we 1 1 }  { instance_sponge_state_d1 mem_din 1 8 } } }
	instance_sponge_rate_read { ap_none {  { instance_sponge_rate_read in_data 0 32 } } }
	instance_sponge_byteIOIndex_read { ap_none {  { instance_sponge_byteIOIndex_read in_data 0 32 } } }
	instance_sponge_squeezing_read { ap_none {  { instance_sponge_squeezing_read in_data 0 32 } } }
	instance_fixedOutputLength_read { ap_none {  { instance_fixedOutputLength_read in_data 0 32 } } }
	instance_delimitedSuffix_read { ap_none {  { instance_delimitedSuffix_read in_data 0 8 } } }
}
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
set C_modelType { int 136 }
set C_modelArgList {
	{ instance_sponge_state int 8 regular {array 200 { 0 0 } 0 1 }  }
	{ instance_sponge_rate_read int 32 regular  }
	{ instance_sponge_byteIOIndex_read int 32 regular  }
	{ instance_sponge_squeezing_read int 32 regular  }
	{ instance_fixedOutputLength_read int 32 regular  }
	{ instance_delimitedSuffix_read int 8 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "instance_sponge_state", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "instance_sponge_rate_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "instance_sponge_byteIOIndex_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "instance_sponge_squeezing_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "instance_fixedOutputLength_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "instance_delimitedSuffix_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 136} ]}
# RTL Port declarations: 
set portNum 24
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
	{ instance_sponge_rate_read sc_in sc_lv 32 signal 1 } 
	{ instance_sponge_byteIOIndex_read sc_in sc_lv 32 signal 2 } 
	{ instance_sponge_squeezing_read sc_in sc_lv 32 signal 3 } 
	{ instance_fixedOutputLength_read sc_in sc_lv 32 signal 4 } 
	{ instance_delimitedSuffix_read sc_in sc_lv 8 signal 5 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
	{ ap_return_2 sc_out sc_lv 32 signal -1 } 
	{ ap_return_3 sc_out sc_lv 32 signal -1 } 
	{ ap_return_4 sc_out sc_lv 8 signal -1 } 
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
 	{ "name": "instance_sponge_state_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "instance_sponge_state", "role": "d1" }} , 
 	{ "name": "instance_sponge_rate_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "instance_sponge_rate_read", "role": "default" }} , 
 	{ "name": "instance_sponge_byteIOIndex_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "instance_sponge_byteIOIndex_read", "role": "default" }} , 
 	{ "name": "instance_sponge_squeezing_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "instance_sponge_squeezing_read", "role": "default" }} , 
 	{ "name": "instance_fixedOutputLength_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "instance_fixedOutputLength_read", "role": "default" }} , 
 	{ "name": "instance_delimitedSuffix_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "instance_delimitedSuffix_read", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "ap_return_4", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_4", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "Keccak_HashInitializ",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "101", "EstimateLatencyMax" : "101",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "instance_sponge_state", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "instance_sponge_rate_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_fixedOutputLength_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_delimitedSuffix_read", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	Keccak_HashInitializ {
		instance_sponge_state {Type O LastRead -1 FirstWrite 1}
		instance_sponge_rate_read {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		instance_sponge_squeezing_read {Type I LastRead 0 FirstWrite -1}
		instance_fixedOutputLength_read {Type I LastRead 0 FirstWrite -1}
		instance_delimitedSuffix_read {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "101", "Max" : "101"}
	, {"Name" : "Interval", "Min" : "101", "Max" : "101"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	instance_sponge_state { ap_memory {  { instance_sponge_state_address0 mem_address 1 8 }  { instance_sponge_state_ce0 mem_ce 1 1 }  { instance_sponge_state_we0 mem_we 1 1 }  { instance_sponge_state_d0 mem_din 1 8 }  { instance_sponge_state_address1 mem_address 1 8 }  { instance_sponge_state_ce1 mem_ce 1 1 }  { instance_sponge_state_we1 mem_we 1 1 }  { instance_sponge_state_d1 mem_din 1 8 } } }
	instance_sponge_rate_read { ap_none {  { instance_sponge_rate_read in_data 0 32 } } }
	instance_sponge_byteIOIndex_read { ap_none {  { instance_sponge_byteIOIndex_read in_data 0 32 } } }
	instance_sponge_squeezing_read { ap_none {  { instance_sponge_squeezing_read in_data 0 32 } } }
	instance_fixedOutputLength_read { ap_none {  { instance_fixedOutputLength_read in_data 0 32 } } }
	instance_delimitedSuffix_read { ap_none {  { instance_delimitedSuffix_read in_data 0 8 } } }
}
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
set C_modelType { int 136 }
set C_modelArgList {
	{ instance_sponge_state int 8 regular {array 200 { 0 0 } 0 1 }  }
	{ instance_sponge_rate_read int 32 regular  }
	{ instance_sponge_byteIOIndex_read int 32 regular  }
	{ instance_sponge_squeezing_read int 32 regular  }
	{ instance_fixedOutputLength_read int 32 regular  }
	{ instance_delimitedSuffix_read int 8 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "instance_sponge_state", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "instance_sponge_rate_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "instance_sponge_byteIOIndex_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "instance_sponge_squeezing_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "instance_fixedOutputLength_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "instance_delimitedSuffix_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 136} ]}
# RTL Port declarations: 
set portNum 24
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
	{ instance_sponge_rate_read sc_in sc_lv 32 signal 1 } 
	{ instance_sponge_byteIOIndex_read sc_in sc_lv 32 signal 2 } 
	{ instance_sponge_squeezing_read sc_in sc_lv 32 signal 3 } 
	{ instance_fixedOutputLength_read sc_in sc_lv 32 signal 4 } 
	{ instance_delimitedSuffix_read sc_in sc_lv 8 signal 5 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
	{ ap_return_2 sc_out sc_lv 32 signal -1 } 
	{ ap_return_3 sc_out sc_lv 32 signal -1 } 
	{ ap_return_4 sc_out sc_lv 8 signal -1 } 
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
 	{ "name": "instance_sponge_state_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "instance_sponge_state", "role": "d1" }} , 
 	{ "name": "instance_sponge_rate_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "instance_sponge_rate_read", "role": "default" }} , 
 	{ "name": "instance_sponge_byteIOIndex_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "instance_sponge_byteIOIndex_read", "role": "default" }} , 
 	{ "name": "instance_sponge_squeezing_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "instance_sponge_squeezing_read", "role": "default" }} , 
 	{ "name": "instance_fixedOutputLength_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "instance_fixedOutputLength_read", "role": "default" }} , 
 	{ "name": "instance_delimitedSuffix_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "instance_delimitedSuffix_read", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "ap_return_4", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_4", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "Keccak_HashInitializ",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "101", "EstimateLatencyMax" : "101",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "instance_sponge_state", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "instance_sponge_rate_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_fixedOutputLength_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_delimitedSuffix_read", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	Keccak_HashInitializ {
		instance_sponge_state {Type O LastRead -1 FirstWrite 1}
		instance_sponge_rate_read {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		instance_sponge_squeezing_read {Type I LastRead 0 FirstWrite -1}
		instance_fixedOutputLength_read {Type I LastRead 0 FirstWrite -1}
		instance_delimitedSuffix_read {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "101", "Max" : "101"}
	, {"Name" : "Interval", "Min" : "101", "Max" : "101"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	instance_sponge_state { ap_memory {  { instance_sponge_state_address0 mem_address 1 8 }  { instance_sponge_state_ce0 mem_ce 1 1 }  { instance_sponge_state_we0 mem_we 1 1 }  { instance_sponge_state_d0 mem_din 1 8 }  { instance_sponge_state_address1 mem_address 1 8 }  { instance_sponge_state_ce1 mem_ce 1 1 }  { instance_sponge_state_we1 mem_we 1 1 }  { instance_sponge_state_d1 mem_din 1 8 } } }
	instance_sponge_rate_read { ap_none {  { instance_sponge_rate_read in_data 0 32 } } }
	instance_sponge_byteIOIndex_read { ap_none {  { instance_sponge_byteIOIndex_read in_data 0 32 } } }
	instance_sponge_squeezing_read { ap_none {  { instance_sponge_squeezing_read in_data 0 32 } } }
	instance_fixedOutputLength_read { ap_none {  { instance_fixedOutputLength_read in_data 0 32 } } }
	instance_delimitedSuffix_read { ap_none {  { instance_delimitedSuffix_read in_data 0 8 } } }
}
