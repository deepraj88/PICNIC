set moduleName KeccakWidth1600_Spon_1
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
set C_modelName {KeccakWidth1600_Spon.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ instance_state int 8 regular {array 200 { 2 3 } 1 1 }  }
	{ instance_byteIOIndex_read int 32 regular  }
	{ instance_squeezing_read int 32 regular  }
	{ data_0 int 8 regular {array 954 { 0 3 } 0 1 }  }
	{ data_offset1 int 1 regular  }
	{ dataByteLen int 9 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "instance_state", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "instance_byteIOIndex_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "instance_squeezing_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "data_0", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_offset1", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "dataByteLen", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ instance_state_address0 sc_out sc_lv 8 signal 0 } 
	{ instance_state_ce0 sc_out sc_logic 1 signal 0 } 
	{ instance_state_we0 sc_out sc_logic 1 signal 0 } 
	{ instance_state_d0 sc_out sc_lv 8 signal 0 } 
	{ instance_state_q0 sc_in sc_lv 8 signal 0 } 
	{ instance_byteIOIndex_read sc_in sc_lv 32 signal 1 } 
	{ instance_squeezing_read sc_in sc_lv 32 signal 2 } 
	{ data_0_address0 sc_out sc_lv 10 signal 3 } 
	{ data_0_ce0 sc_out sc_logic 1 signal 3 } 
	{ data_0_we0 sc_out sc_logic 1 signal 3 } 
	{ data_0_d0 sc_out sc_lv 8 signal 3 } 
	{ data_offset1 sc_in sc_lv 1 signal 4 } 
	{ dataByteLen sc_in sc_lv 9 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "instance_state_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "instance_state", "role": "address0" }} , 
 	{ "name": "instance_state_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "instance_state", "role": "ce0" }} , 
 	{ "name": "instance_state_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "instance_state", "role": "we0" }} , 
 	{ "name": "instance_state_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "instance_state", "role": "d0" }} , 
 	{ "name": "instance_state_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "instance_state", "role": "q0" }} , 
 	{ "name": "instance_byteIOIndex_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "instance_byteIOIndex_read", "role": "default" }} , 
 	{ "name": "instance_squeezing_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "instance_squeezing_read", "role": "default" }} , 
 	{ "name": "data_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_0", "role": "address0" }} , 
 	{ "name": "data_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_0", "role": "ce0" }} , 
 	{ "name": "data_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_0", "role": "we0" }} , 
 	{ "name": "data_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_0", "role": "d0" }} , 
 	{ "name": "data_offset1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_offset1", "role": "default" }} , 
 	{ "name": "dataByteLen", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "dataByteLen", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "KeccakWidth1600_Spon_1",
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
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_255"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_255"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_255"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_255", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataByteLen", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_255", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_255", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakP1600_Permute_s_fu_255", "Parent" : "0", "Child" : ["2", "3", "4", "5", "8", "10"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19384", "EstimateLatencyMax" : "19384",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakP1600_Permute_s_fu_255.KeccakRhoOffsets_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakP1600_Permute_s_fu_255.KeccakRoundConstants_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakP1600_Permute_s_fu_255.stateAsWords_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakP1600_Permute_s_fu_255.grp_theta_fu_225", "Parent" : "1", "Child" : ["6", "7"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakP1600_Permute_s_fu_255.grp_theta_fu_225.C_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakP1600_Permute_s_fu_255.grp_theta_fu_225.D_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakP1600_Permute_s_fu_255.grp_chi_fu_230", "Parent" : "1", "Child" : ["9"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakP1600_Permute_s_fu_255.grp_chi_fu_230.C_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakP1600_Permute_s_fu_255.grp_pi_fu_235", "Parent" : "1", "Child" : ["11", "12"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "397", "EstimateLatencyMax" : "397",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakP1600_Permute_s_fu_255.grp_pi_fu_235.tempA_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakP1600_Permute_s_fu_255.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "10"}]}


set ArgLastReadFirstWriteLatency {
	KeccakWidth1600_Spon_1 {
		instance_state {Type IO LastRead 10 FirstWrite 1}
		instance_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		instance_squeezing_read {Type I LastRead 0 FirstWrite -1}
		data_0 {Type O LastRead -1 FirstWrite 10}
		data_offset1 {Type I LastRead 0 FirstWrite -1}
		dataByteLen {Type I LastRead 0 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	KeccakP1600_Permute_s {
		state {Type IO LastRead 2 FirstWrite 5}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	theta {
		A {Type IO LastRead 5 FirstWrite 6}}
	chi {
		A {Type IO LastRead 4 FirstWrite 4}}
	pi {
		A {Type IO LastRead 2 FirstWrite 15}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	instance_state { ap_memory {  { instance_state_address0 mem_address 1 8 }  { instance_state_ce0 mem_ce 1 1 }  { instance_state_we0 mem_we 1 1 }  { instance_state_d0 mem_din 1 8 }  { instance_state_q0 mem_dout 0 8 } } }
	instance_byteIOIndex_read { ap_none {  { instance_byteIOIndex_read in_data 0 32 } } }
	instance_squeezing_read { ap_none {  { instance_squeezing_read in_data 0 32 } } }
	data_0 { ap_memory {  { data_0_address0 mem_address 1 10 }  { data_0_ce0 mem_ce 1 1 }  { data_0_we0 mem_we 1 1 }  { data_0_d0 mem_din 1 8 } } }
	data_offset1 { ap_none {  { data_offset1 in_data 0 1 } } }
	dataByteLen { ap_none {  { dataByteLen in_data 0 9 } } }
}
set moduleName KeccakWidth1600_Spon_1
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
set C_modelName {KeccakWidth1600_Spon.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ instance_state int 8 regular {array 200 { 2 3 } 1 1 }  }
	{ instance_byteIOIndex_read int 32 regular  }
	{ instance_squeezing_read int 32 regular  }
	{ data_0 int 8 regular {array 954 { 0 3 } 0 1 }  }
	{ data_offset1 int 1 regular  }
	{ dataByteLen int 9 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "instance_state", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "instance_byteIOIndex_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "instance_squeezing_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "data_0", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_offset1", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "dataByteLen", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ instance_state_address0 sc_out sc_lv 8 signal 0 } 
	{ instance_state_ce0 sc_out sc_logic 1 signal 0 } 
	{ instance_state_we0 sc_out sc_logic 1 signal 0 } 
	{ instance_state_d0 sc_out sc_lv 8 signal 0 } 
	{ instance_state_q0 sc_in sc_lv 8 signal 0 } 
	{ instance_byteIOIndex_read sc_in sc_lv 32 signal 1 } 
	{ instance_squeezing_read sc_in sc_lv 32 signal 2 } 
	{ data_0_address0 sc_out sc_lv 10 signal 3 } 
	{ data_0_ce0 sc_out sc_logic 1 signal 3 } 
	{ data_0_we0 sc_out sc_logic 1 signal 3 } 
	{ data_0_d0 sc_out sc_lv 8 signal 3 } 
	{ data_offset1 sc_in sc_lv 1 signal 4 } 
	{ dataByteLen sc_in sc_lv 9 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "instance_state_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "instance_state", "role": "address0" }} , 
 	{ "name": "instance_state_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "instance_state", "role": "ce0" }} , 
 	{ "name": "instance_state_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "instance_state", "role": "we0" }} , 
 	{ "name": "instance_state_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "instance_state", "role": "d0" }} , 
 	{ "name": "instance_state_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "instance_state", "role": "q0" }} , 
 	{ "name": "instance_byteIOIndex_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "instance_byteIOIndex_read", "role": "default" }} , 
 	{ "name": "instance_squeezing_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "instance_squeezing_read", "role": "default" }} , 
 	{ "name": "data_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_0", "role": "address0" }} , 
 	{ "name": "data_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_0", "role": "ce0" }} , 
 	{ "name": "data_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_0", "role": "we0" }} , 
 	{ "name": "data_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_0", "role": "d0" }} , 
 	{ "name": "data_offset1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_offset1", "role": "default" }} , 
 	{ "name": "dataByteLen", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "dataByteLen", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "KeccakWidth1600_Spon_1",
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
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_256"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_256"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_256"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_256", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataByteLen", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_256", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_256", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakP1600_Permute_s_fu_256", "Parent" : "0", "Child" : ["2", "3", "4", "5", "8", "10"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakP1600_Permute_s_fu_256.KeccakRhoOffsets_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakP1600_Permute_s_fu_256.KeccakRoundConstants_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakP1600_Permute_s_fu_256.stateAsWords_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakP1600_Permute_s_fu_256.grp_theta_fu_225", "Parent" : "1", "Child" : ["6", "7"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakP1600_Permute_s_fu_256.grp_theta_fu_225.C_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakP1600_Permute_s_fu_256.grp_theta_fu_225.D_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakP1600_Permute_s_fu_256.grp_chi_fu_230", "Parent" : "1", "Child" : ["9"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakP1600_Permute_s_fu_256.grp_chi_fu_230.C_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakP1600_Permute_s_fu_256.grp_pi_fu_235", "Parent" : "1", "Child" : ["11", "12"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakP1600_Permute_s_fu_256.grp_pi_fu_235.tempA_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakP1600_Permute_s_fu_256.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "10"}]}


set ArgLastReadFirstWriteLatency {
	KeccakWidth1600_Spon_1 {
		instance_state {Type IO LastRead 10 FirstWrite 1}
		instance_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		instance_squeezing_read {Type I LastRead 0 FirstWrite -1}
		data_0 {Type O LastRead -1 FirstWrite 10}
		data_offset1 {Type I LastRead 0 FirstWrite -1}
		dataByteLen {Type I LastRead 0 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	KeccakP1600_Permute_s {
		state {Type IO LastRead 2 FirstWrite 5}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	theta {
		A {Type IO LastRead 5 FirstWrite 6}}
	chi {
		A {Type IO LastRead 4 FirstWrite 4}}
	pi {
		A {Type IO LastRead 2 FirstWrite 14}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	instance_state { ap_memory {  { instance_state_address0 mem_address 1 8 }  { instance_state_ce0 mem_ce 1 1 }  { instance_state_we0 mem_we 1 1 }  { instance_state_d0 mem_din 1 8 }  { instance_state_q0 mem_dout 0 8 } } }
	instance_byteIOIndex_read { ap_none {  { instance_byteIOIndex_read in_data 0 32 } } }
	instance_squeezing_read { ap_none {  { instance_squeezing_read in_data 0 32 } } }
	data_0 { ap_memory {  { data_0_address0 mem_address 1 10 }  { data_0_ce0 mem_ce 1 1 }  { data_0_we0 mem_we 1 1 }  { data_0_d0 mem_din 1 8 } } }
	data_offset1 { ap_none {  { data_offset1 in_data 0 1 } } }
	dataByteLen { ap_none {  { dataByteLen in_data 0 9 } } }
}
set moduleName KeccakWidth1600_Spon_1
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
set C_modelName {KeccakWidth1600_Spon.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ instance_state int 8 regular {array 200 { 2 3 } 1 1 }  }
	{ instance_byteIOIndex_read int 32 regular  }
	{ instance_squeezing_read int 32 regular  }
	{ data_0 int 8 regular {array 954 { 0 3 } 0 1 }  }
	{ data_offset1 int 1 regular  }
	{ dataByteLen int 9 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "instance_state", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "instance_byteIOIndex_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "instance_squeezing_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "data_0", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_offset1", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "dataByteLen", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ instance_state_address0 sc_out sc_lv 8 signal 0 } 
	{ instance_state_ce0 sc_out sc_logic 1 signal 0 } 
	{ instance_state_we0 sc_out sc_logic 1 signal 0 } 
	{ instance_state_d0 sc_out sc_lv 8 signal 0 } 
	{ instance_state_q0 sc_in sc_lv 8 signal 0 } 
	{ instance_byteIOIndex_read sc_in sc_lv 32 signal 1 } 
	{ instance_squeezing_read sc_in sc_lv 32 signal 2 } 
	{ data_0_address0 sc_out sc_lv 10 signal 3 } 
	{ data_0_ce0 sc_out sc_logic 1 signal 3 } 
	{ data_0_we0 sc_out sc_logic 1 signal 3 } 
	{ data_0_d0 sc_out sc_lv 8 signal 3 } 
	{ data_offset1 sc_in sc_lv 1 signal 4 } 
	{ dataByteLen sc_in sc_lv 9 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "instance_state_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "instance_state", "role": "address0" }} , 
 	{ "name": "instance_state_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "instance_state", "role": "ce0" }} , 
 	{ "name": "instance_state_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "instance_state", "role": "we0" }} , 
 	{ "name": "instance_state_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "instance_state", "role": "d0" }} , 
 	{ "name": "instance_state_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "instance_state", "role": "q0" }} , 
 	{ "name": "instance_byteIOIndex_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "instance_byteIOIndex_read", "role": "default" }} , 
 	{ "name": "instance_squeezing_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "instance_squeezing_read", "role": "default" }} , 
 	{ "name": "data_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_0", "role": "address0" }} , 
 	{ "name": "data_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_0", "role": "ce0" }} , 
 	{ "name": "data_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_0", "role": "we0" }} , 
 	{ "name": "data_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_0", "role": "d0" }} , 
 	{ "name": "data_offset1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_offset1", "role": "default" }} , 
 	{ "name": "dataByteLen", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "dataByteLen", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "KeccakWidth1600_Spon_1",
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
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_256"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_256"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_256"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_256", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataByteLen", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_256", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_256", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakP1600_Permute_s_fu_256", "Parent" : "0", "Child" : ["2", "3", "4", "5", "8", "10"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakP1600_Permute_s_fu_256.KeccakRhoOffsets_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakP1600_Permute_s_fu_256.KeccakRoundConstants_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakP1600_Permute_s_fu_256.stateAsWords_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakP1600_Permute_s_fu_256.grp_theta_fu_225", "Parent" : "1", "Child" : ["6", "7"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakP1600_Permute_s_fu_256.grp_theta_fu_225.C_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakP1600_Permute_s_fu_256.grp_theta_fu_225.D_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakP1600_Permute_s_fu_256.grp_chi_fu_230", "Parent" : "1", "Child" : ["9"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakP1600_Permute_s_fu_256.grp_chi_fu_230.C_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakP1600_Permute_s_fu_256.grp_pi_fu_235", "Parent" : "1", "Child" : ["11", "12"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakP1600_Permute_s_fu_256.grp_pi_fu_235.tempA_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakP1600_Permute_s_fu_256.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "10"}]}


set ArgLastReadFirstWriteLatency {
	KeccakWidth1600_Spon_1 {
		instance_state {Type IO LastRead 10 FirstWrite 1}
		instance_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		instance_squeezing_read {Type I LastRead 0 FirstWrite -1}
		data_0 {Type O LastRead -1 FirstWrite 10}
		data_offset1 {Type I LastRead 0 FirstWrite -1}
		dataByteLen {Type I LastRead 0 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	KeccakP1600_Permute_s {
		state {Type IO LastRead 2 FirstWrite 5}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	theta {
		A {Type IO LastRead 5 FirstWrite 6}}
	chi {
		A {Type IO LastRead 4 FirstWrite 4}}
	pi {
		A {Type IO LastRead 2 FirstWrite 14}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	instance_state { ap_memory {  { instance_state_address0 mem_address 1 8 }  { instance_state_ce0 mem_ce 1 1 }  { instance_state_we0 mem_we 1 1 }  { instance_state_d0 mem_din 1 8 }  { instance_state_q0 mem_dout 0 8 } } }
	instance_byteIOIndex_read { ap_none {  { instance_byteIOIndex_read in_data 0 32 } } }
	instance_squeezing_read { ap_none {  { instance_squeezing_read in_data 0 32 } } }
	data_0 { ap_memory {  { data_0_address0 mem_address 1 10 }  { data_0_ce0 mem_ce 1 1 }  { data_0_we0 mem_we 1 1 }  { data_0_d0 mem_din 1 8 } } }
	data_offset1 { ap_none {  { data_offset1 in_data 0 1 } } }
	dataByteLen { ap_none {  { dataByteLen in_data 0 9 } } }
}
