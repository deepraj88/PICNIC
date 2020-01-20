set moduleName H3_2
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
set C_modelName {H3_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ circuitOutput int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ plaintext int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ as_hashes int 8 regular {array 47376 { 1 3 } 1 1 }  }
	{ challengeBits int 8 regular {array 83 { 2 3 } 1 1 }  }
	{ salt_0 int 8 regular {array 32 { 1 3 } 1 1 }  }
	{ message int 8 regular {array 80084 { 1 3 } 1 1 }  }
	{ messageByteLength int 64 regular  }
	{ viewOutputs int 32 regular {array 23688 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "circuitOutput", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "plaintext", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "as_hashes", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "challengeBits", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "salt_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "message", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "messageByteLength", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "viewOutputs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "viewOutputs","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 986,"step" : 1},{"low" : 0,"up" : 23,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ circuitOutput_address0 sc_out sc_lv 3 signal 0 } 
	{ circuitOutput_ce0 sc_out sc_logic 1 signal 0 } 
	{ circuitOutput_q0 sc_in sc_lv 32 signal 0 } 
	{ plaintext_address0 sc_out sc_lv 3 signal 1 } 
	{ plaintext_ce0 sc_out sc_logic 1 signal 1 } 
	{ plaintext_q0 sc_in sc_lv 32 signal 1 } 
	{ as_hashes_address0 sc_out sc_lv 16 signal 2 } 
	{ as_hashes_ce0 sc_out sc_logic 1 signal 2 } 
	{ as_hashes_q0 sc_in sc_lv 8 signal 2 } 
	{ challengeBits_address0 sc_out sc_lv 7 signal 3 } 
	{ challengeBits_ce0 sc_out sc_logic 1 signal 3 } 
	{ challengeBits_we0 sc_out sc_logic 1 signal 3 } 
	{ challengeBits_d0 sc_out sc_lv 8 signal 3 } 
	{ challengeBits_q0 sc_in sc_lv 8 signal 3 } 
	{ salt_0_address0 sc_out sc_lv 5 signal 4 } 
	{ salt_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ salt_0_q0 sc_in sc_lv 8 signal 4 } 
	{ message_address0 sc_out sc_lv 17 signal 5 } 
	{ message_ce0 sc_out sc_logic 1 signal 5 } 
	{ message_q0 sc_in sc_lv 8 signal 5 } 
	{ messageByteLength sc_in sc_lv 64 signal 6 } 
	{ viewOutputs_address0 sc_out sc_lv 15 signal 7 } 
	{ viewOutputs_ce0 sc_out sc_logic 1 signal 7 } 
	{ viewOutputs_q0 sc_in sc_lv 32 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "circuitOutput_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "circuitOutput", "role": "address0" }} , 
 	{ "name": "circuitOutput_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "circuitOutput", "role": "ce0" }} , 
 	{ "name": "circuitOutput_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "circuitOutput", "role": "q0" }} , 
 	{ "name": "plaintext_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "plaintext", "role": "address0" }} , 
 	{ "name": "plaintext_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "plaintext", "role": "ce0" }} , 
 	{ "name": "plaintext_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "plaintext", "role": "q0" }} , 
 	{ "name": "as_hashes_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "as_hashes", "role": "address0" }} , 
 	{ "name": "as_hashes_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "as_hashes", "role": "ce0" }} , 
 	{ "name": "as_hashes_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "as_hashes", "role": "q0" }} , 
 	{ "name": "challengeBits_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "challengeBits", "role": "address0" }} , 
 	{ "name": "challengeBits_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "challengeBits", "role": "ce0" }} , 
 	{ "name": "challengeBits_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "challengeBits", "role": "we0" }} , 
 	{ "name": "challengeBits_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "challengeBits", "role": "d0" }} , 
 	{ "name": "challengeBits_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "challengeBits", "role": "q0" }} , 
 	{ "name": "salt_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "salt_0", "role": "address0" }} , 
 	{ "name": "salt_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "salt_0", "role": "ce0" }} , 
 	{ "name": "salt_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "salt_0", "role": "q0" }} , 
 	{ "name": "message_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "message", "role": "address0" }} , 
 	{ "name": "message_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "message", "role": "ce0" }} , 
 	{ "name": "message_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "message", "role": "q0" }} , 
 	{ "name": "messageByteLength", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "messageByteLength", "role": "default" }} , 
 	{ "name": "viewOutputs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "viewOutputs", "role": "address0" }} , 
 	{ "name": "viewOutputs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "viewOutputs", "role": "ce0" }} , 
 	{ "name": "viewOutputs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "viewOutputs", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "17", "30", "45", "58", "71", "84", "97", "111"],
		"CDFG" : "H3_2",
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
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_13_fu_376"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_6_fu_389"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdate_2_fu_401"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdate_2_fu_401"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_2_fu_414"},
			{"State" : "ap_ST_fsm_state31", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_2_fu_414"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_4_fu_426"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_442"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_10_fu_453"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_464"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_464"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_476"},
			{"State" : "ap_ST_fsm_state29", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_476"}],
		"Port" : [
			{"Name" : "circuitOutput", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_HashUpdate_2_fu_401", "Port" : "data"}]},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_HashUpdate_2_fu_401", "Port" : "data"}]},
			{"Name" : "as_hashes", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_KeccakWidth1600_Spon_4_fu_426", "Port" : "data"}]},
			{"Name" : "challengeBits", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "salt_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_KeccakWidth1600_Spon_6_fu_389", "Port" : "data_0"}]},
			{"Name" : "message", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakWidth1600_Spon_13_fu_376", "Port" : "data"}]},
			{"Name" : "messageByteLength", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_KeccakWidth1600_Spon_6_fu_389", "Port" : "KeccakRhoOffsets"},
					{"ID" : "4", "SubInstance" : "grp_KeccakWidth1600_Spon_13_fu_376", "Port" : "KeccakRhoOffsets"},
					{"ID" : "97", "SubInstance" : "grp_HashInit_fu_464", "Port" : "KeccakRhoOffsets"},
					{"ID" : "58", "SubInstance" : "grp_KeccakWidth1600_Spon_4_fu_426", "Port" : "KeccakRhoOffsets"},
					{"ID" : "45", "SubInstance" : "grp_KeccakWidth1600_Spon_2_fu_414", "Port" : "KeccakRhoOffsets"},
					{"ID" : "84", "SubInstance" : "grp_KeccakWidth1600_Spon_10_fu_453", "Port" : "KeccakRhoOffsets"},
					{"ID" : "111", "SubInstance" : "grp_HashFinal_fu_476", "Port" : "KeccakRhoOffsets"},
					{"ID" : "30", "SubInstance" : "grp_HashUpdate_2_fu_401", "Port" : "KeccakRhoOffsets"},
					{"ID" : "71", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_442", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_KeccakWidth1600_Spon_6_fu_389", "Port" : "KeccakRoundConstants"},
					{"ID" : "4", "SubInstance" : "grp_KeccakWidth1600_Spon_13_fu_376", "Port" : "KeccakRoundConstants"},
					{"ID" : "97", "SubInstance" : "grp_HashInit_fu_464", "Port" : "KeccakRoundConstants"},
					{"ID" : "58", "SubInstance" : "grp_KeccakWidth1600_Spon_4_fu_426", "Port" : "KeccakRoundConstants"},
					{"ID" : "45", "SubInstance" : "grp_KeccakWidth1600_Spon_2_fu_414", "Port" : "KeccakRoundConstants"},
					{"ID" : "84", "SubInstance" : "grp_KeccakWidth1600_Spon_10_fu_453", "Port" : "KeccakRoundConstants"},
					{"ID" : "111", "SubInstance" : "grp_HashFinal_fu_476", "Port" : "KeccakRoundConstants"},
					{"ID" : "30", "SubInstance" : "grp_HashUpdate_2_fu_401", "Port" : "KeccakRoundConstants"},
					{"ID" : "71", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_442", "Port" : "KeccakRoundConstants"}]},
			{"Name" : "viewOutputs", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hash_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctx_sponge_state_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_376", "Parent" : "0", "Child" : ["5"],
		"CDFG" : "KeccakWidth1600_Spon_13",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_160"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_160"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_160", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dataByteLen", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_160", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_160", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_376.grp_KeccakP1600_Permute_s_fu_160", "Parent" : "4", "Child" : ["6", "7", "8", "9", "12", "14"],
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
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_376.grp_KeccakP1600_Permute_s_fu_160.KeccakRhoOffsets_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_376.grp_KeccakP1600_Permute_s_fu_160.KeccakRoundConstants_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_376.grp_KeccakP1600_Permute_s_fu_160.stateAsWords_U", "Parent" : "5"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_376.grp_KeccakP1600_Permute_s_fu_160.grp_theta_fu_225", "Parent" : "5", "Child" : ["10", "11"],
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
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_376.grp_KeccakP1600_Permute_s_fu_160.grp_theta_fu_225.C_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_376.grp_KeccakP1600_Permute_s_fu_160.grp_theta_fu_225.D_U", "Parent" : "9"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_376.grp_KeccakP1600_Permute_s_fu_160.grp_chi_fu_230", "Parent" : "5", "Child" : ["13"],
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
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_376.grp_KeccakP1600_Permute_s_fu_160.grp_chi_fu_230.C_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_376.grp_KeccakP1600_Permute_s_fu_160.grp_pi_fu_235", "Parent" : "5", "Child" : ["15", "16"],
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
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_376.grp_KeccakP1600_Permute_s_fu_160.grp_pi_fu_235.tempA_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_376.grp_KeccakP1600_Permute_s_fu_160.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "14"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_389", "Parent" : "0", "Child" : ["18"],
		"CDFG" : "KeccakWidth1600_Spon_6",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_389.grp_KeccakP1600_Permute_s_fu_176", "Parent" : "17", "Child" : ["19", "20", "21", "22", "25", "27"],
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
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_389.grp_KeccakP1600_Permute_s_fu_176.KeccakRhoOffsets_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_389.grp_KeccakP1600_Permute_s_fu_176.KeccakRoundConstants_U", "Parent" : "18"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_389.grp_KeccakP1600_Permute_s_fu_176.stateAsWords_U", "Parent" : "18"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_389.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225", "Parent" : "18", "Child" : ["23", "24"],
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
	{"ID" : "23", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_389.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.C_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_389.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.D_U", "Parent" : "22"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_389.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230", "Parent" : "18", "Child" : ["26"],
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
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_389.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230.C_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_389.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235", "Parent" : "18", "Child" : ["28", "29"],
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
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_389.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.tempA_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_389.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "27"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_401", "Parent" : "0", "Child" : ["31", "32"],
		"CDFG" : "HashUpdate_2",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_161"}],
		"Port" : [
			{"Name" : "ctx_sponge_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_161", "Port" : "instance_state"}]},
			{"Name" : "ctx_sponge_byteIOInd", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_161", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_161", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_401.temp_U", "Parent" : "30"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161", "Parent" : "30", "Child" : ["33"],
		"CDFG" : "KeccakWidth1600_Spon_15",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161.grp_KeccakP1600_Permute_s_fu_91", "Parent" : "32", "Child" : ["34", "35", "36", "37", "40", "42"],
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
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161.grp_KeccakP1600_Permute_s_fu_91.KeccakRhoOffsets_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161.grp_KeccakP1600_Permute_s_fu_91.KeccakRoundConstants_U", "Parent" : "33"},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161.grp_KeccakP1600_Permute_s_fu_91.stateAsWords_U", "Parent" : "33"},
	{"ID" : "37", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225", "Parent" : "33", "Child" : ["38", "39"],
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
	{"ID" : "38", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225.C_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225.D_U", "Parent" : "37"},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161.grp_KeccakP1600_Permute_s_fu_91.grp_chi_fu_230", "Parent" : "33", "Child" : ["41"],
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
	{"ID" : "41", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161.grp_KeccakP1600_Permute_s_fu_91.grp_chi_fu_230.C_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235", "Parent" : "33", "Child" : ["43", "44"],
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
	{"ID" : "43", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235.tempA_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "42"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_414", "Parent" : "0", "Child" : ["46"],
		"CDFG" : "KeccakWidth1600_Spon_2",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_154"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_154"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_154", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_154", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_154", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_414.grp_KeccakP1600_Permute_s_fu_154", "Parent" : "45", "Child" : ["47", "48", "49", "50", "53", "55"],
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
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_414.grp_KeccakP1600_Permute_s_fu_154.KeccakRhoOffsets_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_414.grp_KeccakP1600_Permute_s_fu_154.KeccakRoundConstants_U", "Parent" : "46"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_414.grp_KeccakP1600_Permute_s_fu_154.stateAsWords_U", "Parent" : "46"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_414.grp_KeccakP1600_Permute_s_fu_154.grp_theta_fu_225", "Parent" : "46", "Child" : ["51", "52"],
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
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_414.grp_KeccakP1600_Permute_s_fu_154.grp_theta_fu_225.C_U", "Parent" : "50"},
	{"ID" : "52", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_414.grp_KeccakP1600_Permute_s_fu_154.grp_theta_fu_225.D_U", "Parent" : "50"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_414.grp_KeccakP1600_Permute_s_fu_154.grp_chi_fu_230", "Parent" : "46", "Child" : ["54"],
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
	{"ID" : "54", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_414.grp_KeccakP1600_Permute_s_fu_154.grp_chi_fu_230.C_U", "Parent" : "53"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_414.grp_KeccakP1600_Permute_s_fu_154.grp_pi_fu_235", "Parent" : "46", "Child" : ["56", "57"],
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
	{"ID" : "56", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_414.grp_KeccakP1600_Permute_s_fu_154.grp_pi_fu_235.tempA_U", "Parent" : "55"},
	{"ID" : "57", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_414.grp_KeccakP1600_Permute_s_fu_154.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "55"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_4_fu_426", "Parent" : "0", "Child" : ["59"],
		"CDFG" : "KeccakWidth1600_Spon_4",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_123"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_123", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_123", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_123", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_4_fu_426.grp_KeccakP1600_Permute_s_fu_123", "Parent" : "58", "Child" : ["60", "61", "62", "63", "66", "68"],
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
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_4_fu_426.grp_KeccakP1600_Permute_s_fu_123.KeccakRhoOffsets_U", "Parent" : "59"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_4_fu_426.grp_KeccakP1600_Permute_s_fu_123.KeccakRoundConstants_U", "Parent" : "59"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_4_fu_426.grp_KeccakP1600_Permute_s_fu_123.stateAsWords_U", "Parent" : "59"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_4_fu_426.grp_KeccakP1600_Permute_s_fu_123.grp_theta_fu_225", "Parent" : "59", "Child" : ["64", "65"],
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
	{"ID" : "64", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_4_fu_426.grp_KeccakP1600_Permute_s_fu_123.grp_theta_fu_225.C_U", "Parent" : "63"},
	{"ID" : "65", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_4_fu_426.grp_KeccakP1600_Permute_s_fu_123.grp_theta_fu_225.D_U", "Parent" : "63"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_4_fu_426.grp_KeccakP1600_Permute_s_fu_123.grp_chi_fu_230", "Parent" : "59", "Child" : ["67"],
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
	{"ID" : "67", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_4_fu_426.grp_KeccakP1600_Permute_s_fu_123.grp_chi_fu_230.C_U", "Parent" : "66"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_4_fu_426.grp_KeccakP1600_Permute_s_fu_123.grp_pi_fu_235", "Parent" : "59", "Child" : ["69", "70"],
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
	{"ID" : "69", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_4_fu_426.grp_KeccakP1600_Permute_s_fu_123.grp_pi_fu_235.tempA_U", "Parent" : "68"},
	{"ID" : "70", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_4_fu_426.grp_KeccakP1600_Permute_s_fu_123.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "68"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_15_fu_442", "Parent" : "0", "Child" : ["72"],
		"CDFG" : "KeccakWidth1600_Spon_15",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_15_fu_442.grp_KeccakP1600_Permute_s_fu_91", "Parent" : "71", "Child" : ["73", "74", "75", "76", "79", "81"],
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
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_15_fu_442.grp_KeccakP1600_Permute_s_fu_91.KeccakRhoOffsets_U", "Parent" : "72"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_15_fu_442.grp_KeccakP1600_Permute_s_fu_91.KeccakRoundConstants_U", "Parent" : "72"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_15_fu_442.grp_KeccakP1600_Permute_s_fu_91.stateAsWords_U", "Parent" : "72"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_15_fu_442.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225", "Parent" : "72", "Child" : ["77", "78"],
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
	{"ID" : "77", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_15_fu_442.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225.C_U", "Parent" : "76"},
	{"ID" : "78", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_15_fu_442.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225.D_U", "Parent" : "76"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_15_fu_442.grp_KeccakP1600_Permute_s_fu_91.grp_chi_fu_230", "Parent" : "72", "Child" : ["80"],
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
	{"ID" : "80", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_15_fu_442.grp_KeccakP1600_Permute_s_fu_91.grp_chi_fu_230.C_U", "Parent" : "79"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_15_fu_442.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235", "Parent" : "72", "Child" : ["82", "83"],
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
	{"ID" : "82", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_15_fu_442.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235.tempA_U", "Parent" : "81"},
	{"ID" : "83", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_15_fu_442.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "81"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_453", "Parent" : "0", "Child" : ["85"],
		"CDFG" : "KeccakWidth1600_Spon_10",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_453.grp_KeccakP1600_Permute_s_fu_91", "Parent" : "84", "Child" : ["86", "87", "88", "89", "92", "94"],
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
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_453.grp_KeccakP1600_Permute_s_fu_91.KeccakRhoOffsets_U", "Parent" : "85"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_453.grp_KeccakP1600_Permute_s_fu_91.KeccakRoundConstants_U", "Parent" : "85"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_453.grp_KeccakP1600_Permute_s_fu_91.stateAsWords_U", "Parent" : "85"},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_453.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225", "Parent" : "85", "Child" : ["90", "91"],
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
	{"ID" : "90", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_453.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225.C_U", "Parent" : "89"},
	{"ID" : "91", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_453.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225.D_U", "Parent" : "89"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_453.grp_KeccakP1600_Permute_s_fu_91.grp_chi_fu_230", "Parent" : "85", "Child" : ["93"],
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
	{"ID" : "93", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_453.grp_KeccakP1600_Permute_s_fu_91.grp_chi_fu_230.C_U", "Parent" : "92"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_453.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235", "Parent" : "85", "Child" : ["95", "96"],
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
	{"ID" : "95", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_453.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235.tempA_U", "Parent" : "94"},
	{"ID" : "96", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_453.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "94"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_464", "Parent" : "0", "Child" : ["98"],
		"CDFG" : "HashInit",
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
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_74"}],
		"Port" : [
			{"Name" : "ctx_sponge_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_74", "Port" : "instance_state"}]},
			{"Name" : "hashPrefix", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_74", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_74", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74", "Parent" : "97", "Child" : ["99"],
		"CDFG" : "KeccakWidth1600_Spon_9",
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "99", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "state"}]},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "99", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "99", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54", "Parent" : "98", "Child" : ["100", "101", "102", "103", "106", "108"],
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
	{"ID" : "100", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.KeccakRhoOffsets_U", "Parent" : "99"},
	{"ID" : "101", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.KeccakRoundConstants_U", "Parent" : "99"},
	{"ID" : "102", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.stateAsWords_U", "Parent" : "99"},
	{"ID" : "103", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225", "Parent" : "99", "Child" : ["104", "105"],
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
	{"ID" : "104", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.C_U", "Parent" : "103"},
	{"ID" : "105", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.D_U", "Parent" : "103"},
	{"ID" : "106", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230", "Parent" : "99", "Child" : ["107"],
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
	{"ID" : "107", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230.C_U", "Parent" : "106"},
	{"ID" : "108", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235", "Parent" : "99", "Child" : ["109", "110"],
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
	{"ID" : "109", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.tempA_U", "Parent" : "108"},
	{"ID" : "110", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "108"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_476", "Parent" : "0", "Child" : ["112"],
		"CDFG" : "HashFinal",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18589", "EstimateLatencyMax" : "18589",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54"}],
		"Port" : [
			{"Name" : "ctx_sponge_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "state"}]},
			{"Name" : "ctx_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_476.grp_KeccakP1600_Permute_s_fu_54", "Parent" : "111", "Child" : ["113", "114", "115", "116", "119", "121"],
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
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_476.grp_KeccakP1600_Permute_s_fu_54.KeccakRhoOffsets_U", "Parent" : "112"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_476.grp_KeccakP1600_Permute_s_fu_54.KeccakRoundConstants_U", "Parent" : "112"},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_476.grp_KeccakP1600_Permute_s_fu_54.stateAsWords_U", "Parent" : "112"},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_476.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225", "Parent" : "112", "Child" : ["117", "118"],
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
	{"ID" : "117", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_476.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.C_U", "Parent" : "116"},
	{"ID" : "118", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_476.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.D_U", "Parent" : "116"},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_476.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230", "Parent" : "112", "Child" : ["120"],
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
	{"ID" : "120", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_476.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230.C_U", "Parent" : "119"},
	{"ID" : "121", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_476.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235", "Parent" : "112", "Child" : ["122", "123"],
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
	{"ID" : "122", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_476.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.tempA_U", "Parent" : "121"},
	{"ID" : "123", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_476.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "121"}]}


set ArgLastReadFirstWriteLatency {
	H3_2 {
		circuitOutput {Type I LastRead 2 FirstWrite -1}
		plaintext {Type I LastRead 2 FirstWrite -1}
		as_hashes {Type I LastRead 3 FirstWrite -1}
		challengeBits {Type IO LastRead 17 FirstWrite 1}
		salt_0 {Type I LastRead 4 FirstWrite -1}
		message {Type I LastRead 4 FirstWrite -1}
		messageByteLength {Type I LastRead 1 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}
		viewOutputs {Type I LastRead 5 FirstWrite -1}}
	KeccakWidth1600_Spon_13 {
		instance_state {Type IO LastRead 4 FirstWrite 4}
		instance_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 4 FirstWrite -1}
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
		A {Type IO LastRead 2 FirstWrite 14}}
	KeccakWidth1600_Spon_6 {
		instance_state {Type IO LastRead 4 FirstWrite 4}
		instance_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		data_0 {Type I LastRead 4 FirstWrite -1}
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
		A {Type IO LastRead 2 FirstWrite 14}}
	HashUpdate_2 {
		ctx_sponge_state {Type IO LastRead 3 FirstWrite 4}
		ctx_sponge_byteIOInd {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 2 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	KeccakWidth1600_Spon_15 {
		instance_state {Type IO LastRead 3 FirstWrite 4}
		instance_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 3 FirstWrite -1}
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
		A {Type IO LastRead 2 FirstWrite 14}}
	KeccakWidth1600_Spon_2 {
		instance_state {Type IO LastRead 9 FirstWrite 1}
		instance_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		instance_squeezing_read {Type I LastRead 0 FirstWrite -1}
		data {Type O LastRead -1 FirstWrite 10}
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
		A {Type IO LastRead 2 FirstWrite 14}}
	KeccakWidth1600_Spon_4 {
		instance_state {Type IO LastRead 3 FirstWrite 4}
		instance_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 3 FirstWrite -1}
		data_offset {Type I LastRead 0 FirstWrite -1}
		data_offset1 {Type I LastRead 0 FirstWrite -1}
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
		A {Type IO LastRead 2 FirstWrite 14}}
	KeccakWidth1600_Spon_15 {
		instance_state {Type IO LastRead 3 FirstWrite 4}
		instance_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 3 FirstWrite -1}
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
		A {Type IO LastRead 2 FirstWrite 14}}
	KeccakWidth1600_Spon_10 {
		instance_state {Type IO LastRead 3 FirstWrite 4}
		instance_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 3 FirstWrite -1}
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
		A {Type IO LastRead 2 FirstWrite 14}}
	HashInit {
		ctx_sponge_state {Type IO LastRead 2 FirstWrite 1}
		hashPrefix {Type I LastRead 0 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	KeccakWidth1600_Spon_9 {
		instance_state {Type IO LastRead 2 FirstWrite 3}
		p_read3 {Type I LastRead 0 FirstWrite -1}
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
		A {Type IO LastRead 2 FirstWrite 14}}
	HashFinal {
		ctx_sponge_state {Type IO LastRead 2 FirstWrite 1}
		ctx_sponge_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
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
	circuitOutput { ap_memory {  { circuitOutput_address0 mem_address 1 3 }  { circuitOutput_ce0 mem_ce 1 1 }  { circuitOutput_q0 mem_dout 0 32 } } }
	plaintext { ap_memory {  { plaintext_address0 mem_address 1 3 }  { plaintext_ce0 mem_ce 1 1 }  { plaintext_q0 mem_dout 0 32 } } }
	as_hashes { ap_memory {  { as_hashes_address0 mem_address 1 16 }  { as_hashes_ce0 mem_ce 1 1 }  { as_hashes_q0 mem_dout 0 8 } } }
	challengeBits { ap_memory {  { challengeBits_address0 mem_address 1 7 }  { challengeBits_ce0 mem_ce 1 1 }  { challengeBits_we0 mem_we 1 1 }  { challengeBits_d0 mem_din 1 8 }  { challengeBits_q0 mem_dout 0 8 } } }
	salt_0 { ap_memory {  { salt_0_address0 mem_address 1 5 }  { salt_0_ce0 mem_ce 1 1 }  { salt_0_q0 mem_dout 0 8 } } }
	message { ap_memory {  { message_address0 mem_address 1 17 }  { message_ce0 mem_ce 1 1 }  { message_q0 mem_dout 0 8 } } }
	messageByteLength { ap_none {  { messageByteLength in_data 0 64 } } }
	viewOutputs { ap_memory {  { viewOutputs_address0 mem_address 1 15 }  { viewOutputs_ce0 mem_ce 1 1 }  { viewOutputs_q0 mem_dout 0 32 } } }
}
set moduleName H3_2
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
set C_modelName {H3_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ circuitOutput int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ plaintext int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ as_hashes int 8 regular {array 47376 { 1 3 } 1 1 }  }
	{ challengeBits int 8 regular {array 83 { 2 3 } 1 1 }  }
	{ salt_0 int 8 regular {array 32 { 1 3 } 1 1 }  }
	{ message int 8 regular {array 80084 { 1 3 } 1 1 }  }
	{ messageByteLength int 64 regular  }
	{ viewOutputs int 32 regular {array 23688 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "circuitOutput", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "plaintext", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "as_hashes", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "challengeBits", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "salt_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "message", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "messageByteLength", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "viewOutputs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "viewOutputs","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 986,"step" : 1},{"low" : 0,"up" : 23,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ circuitOutput_address0 sc_out sc_lv 3 signal 0 } 
	{ circuitOutput_ce0 sc_out sc_logic 1 signal 0 } 
	{ circuitOutput_q0 sc_in sc_lv 32 signal 0 } 
	{ plaintext_address0 sc_out sc_lv 3 signal 1 } 
	{ plaintext_ce0 sc_out sc_logic 1 signal 1 } 
	{ plaintext_q0 sc_in sc_lv 32 signal 1 } 
	{ as_hashes_address0 sc_out sc_lv 16 signal 2 } 
	{ as_hashes_ce0 sc_out sc_logic 1 signal 2 } 
	{ as_hashes_q0 sc_in sc_lv 8 signal 2 } 
	{ challengeBits_address0 sc_out sc_lv 7 signal 3 } 
	{ challengeBits_ce0 sc_out sc_logic 1 signal 3 } 
	{ challengeBits_we0 sc_out sc_logic 1 signal 3 } 
	{ challengeBits_d0 sc_out sc_lv 8 signal 3 } 
	{ challengeBits_q0 sc_in sc_lv 8 signal 3 } 
	{ salt_0_address0 sc_out sc_lv 5 signal 4 } 
	{ salt_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ salt_0_q0 sc_in sc_lv 8 signal 4 } 
	{ message_address0 sc_out sc_lv 17 signal 5 } 
	{ message_ce0 sc_out sc_logic 1 signal 5 } 
	{ message_q0 sc_in sc_lv 8 signal 5 } 
	{ messageByteLength sc_in sc_lv 64 signal 6 } 
	{ viewOutputs_address0 sc_out sc_lv 15 signal 7 } 
	{ viewOutputs_ce0 sc_out sc_logic 1 signal 7 } 
	{ viewOutputs_q0 sc_in sc_lv 32 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "circuitOutput_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "circuitOutput", "role": "address0" }} , 
 	{ "name": "circuitOutput_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "circuitOutput", "role": "ce0" }} , 
 	{ "name": "circuitOutput_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "circuitOutput", "role": "q0" }} , 
 	{ "name": "plaintext_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "plaintext", "role": "address0" }} , 
 	{ "name": "plaintext_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "plaintext", "role": "ce0" }} , 
 	{ "name": "plaintext_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "plaintext", "role": "q0" }} , 
 	{ "name": "as_hashes_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "as_hashes", "role": "address0" }} , 
 	{ "name": "as_hashes_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "as_hashes", "role": "ce0" }} , 
 	{ "name": "as_hashes_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "as_hashes", "role": "q0" }} , 
 	{ "name": "challengeBits_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "challengeBits", "role": "address0" }} , 
 	{ "name": "challengeBits_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "challengeBits", "role": "ce0" }} , 
 	{ "name": "challengeBits_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "challengeBits", "role": "we0" }} , 
 	{ "name": "challengeBits_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "challengeBits", "role": "d0" }} , 
 	{ "name": "challengeBits_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "challengeBits", "role": "q0" }} , 
 	{ "name": "salt_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "salt_0", "role": "address0" }} , 
 	{ "name": "salt_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "salt_0", "role": "ce0" }} , 
 	{ "name": "salt_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "salt_0", "role": "q0" }} , 
 	{ "name": "message_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "message", "role": "address0" }} , 
 	{ "name": "message_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "message", "role": "ce0" }} , 
 	{ "name": "message_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "message", "role": "q0" }} , 
 	{ "name": "messageByteLength", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "messageByteLength", "role": "default" }} , 
 	{ "name": "viewOutputs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "viewOutputs", "role": "address0" }} , 
 	{ "name": "viewOutputs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "viewOutputs", "role": "ce0" }} , 
 	{ "name": "viewOutputs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "viewOutputs", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "17", "30", "45", "58", "71", "84", "97", "111"],
		"CDFG" : "H3_2",
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
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_13_fu_376"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_6_fu_389"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdate_2_fu_401"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdate_2_fu_401"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_2_fu_414"},
			{"State" : "ap_ST_fsm_state31", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_2_fu_414"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_4_fu_426"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_442"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_10_fu_453"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_464"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_464"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_476"},
			{"State" : "ap_ST_fsm_state29", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_476"}],
		"Port" : [
			{"Name" : "circuitOutput", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_HashUpdate_2_fu_401", "Port" : "data"}]},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_HashUpdate_2_fu_401", "Port" : "data"}]},
			{"Name" : "as_hashes", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_KeccakWidth1600_Spon_4_fu_426", "Port" : "data"}]},
			{"Name" : "challengeBits", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "salt_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_KeccakWidth1600_Spon_6_fu_389", "Port" : "data_0"}]},
			{"Name" : "message", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakWidth1600_Spon_13_fu_376", "Port" : "data"}]},
			{"Name" : "messageByteLength", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_HashFinal_fu_476", "Port" : "KeccakRhoOffsets"},
					{"ID" : "30", "SubInstance" : "grp_HashUpdate_2_fu_401", "Port" : "KeccakRhoOffsets"},
					{"ID" : "17", "SubInstance" : "grp_KeccakWidth1600_Spon_6_fu_389", "Port" : "KeccakRhoOffsets"},
					{"ID" : "97", "SubInstance" : "grp_HashInit_fu_464", "Port" : "KeccakRhoOffsets"},
					{"ID" : "84", "SubInstance" : "grp_KeccakWidth1600_Spon_10_fu_453", "Port" : "KeccakRhoOffsets"},
					{"ID" : "45", "SubInstance" : "grp_KeccakWidth1600_Spon_2_fu_414", "Port" : "KeccakRhoOffsets"},
					{"ID" : "58", "SubInstance" : "grp_KeccakWidth1600_Spon_4_fu_426", "Port" : "KeccakRhoOffsets"},
					{"ID" : "71", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_442", "Port" : "KeccakRhoOffsets"},
					{"ID" : "4", "SubInstance" : "grp_KeccakWidth1600_Spon_13_fu_376", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_HashFinal_fu_476", "Port" : "KeccakRoundConstants"},
					{"ID" : "30", "SubInstance" : "grp_HashUpdate_2_fu_401", "Port" : "KeccakRoundConstants"},
					{"ID" : "17", "SubInstance" : "grp_KeccakWidth1600_Spon_6_fu_389", "Port" : "KeccakRoundConstants"},
					{"ID" : "97", "SubInstance" : "grp_HashInit_fu_464", "Port" : "KeccakRoundConstants"},
					{"ID" : "84", "SubInstance" : "grp_KeccakWidth1600_Spon_10_fu_453", "Port" : "KeccakRoundConstants"},
					{"ID" : "45", "SubInstance" : "grp_KeccakWidth1600_Spon_2_fu_414", "Port" : "KeccakRoundConstants"},
					{"ID" : "58", "SubInstance" : "grp_KeccakWidth1600_Spon_4_fu_426", "Port" : "KeccakRoundConstants"},
					{"ID" : "71", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_442", "Port" : "KeccakRoundConstants"},
					{"ID" : "4", "SubInstance" : "grp_KeccakWidth1600_Spon_13_fu_376", "Port" : "KeccakRoundConstants"}]},
			{"Name" : "viewOutputs", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hash_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctx_sponge_state_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_376", "Parent" : "0", "Child" : ["5"],
		"CDFG" : "KeccakWidth1600_Spon_13",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_160"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_160"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_160", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dataByteLen", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_160", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_160", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_376.grp_KeccakP1600_Permute_s_fu_160", "Parent" : "4", "Child" : ["6", "7", "8", "9", "12", "14"],
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
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_376.grp_KeccakP1600_Permute_s_fu_160.KeccakRhoOffsets_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_376.grp_KeccakP1600_Permute_s_fu_160.KeccakRoundConstants_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_376.grp_KeccakP1600_Permute_s_fu_160.stateAsWords_U", "Parent" : "5"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_376.grp_KeccakP1600_Permute_s_fu_160.grp_theta_fu_225", "Parent" : "5", "Child" : ["10", "11"],
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
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_376.grp_KeccakP1600_Permute_s_fu_160.grp_theta_fu_225.C_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_376.grp_KeccakP1600_Permute_s_fu_160.grp_theta_fu_225.D_U", "Parent" : "9"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_376.grp_KeccakP1600_Permute_s_fu_160.grp_chi_fu_230", "Parent" : "5", "Child" : ["13"],
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
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_376.grp_KeccakP1600_Permute_s_fu_160.grp_chi_fu_230.C_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_376.grp_KeccakP1600_Permute_s_fu_160.grp_pi_fu_235", "Parent" : "5", "Child" : ["15", "16"],
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
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_376.grp_KeccakP1600_Permute_s_fu_160.grp_pi_fu_235.tempA_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_376.grp_KeccakP1600_Permute_s_fu_160.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "14"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_389", "Parent" : "0", "Child" : ["18"],
		"CDFG" : "KeccakWidth1600_Spon_6",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_389.grp_KeccakP1600_Permute_s_fu_176", "Parent" : "17", "Child" : ["19", "20", "21", "22", "25", "27"],
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
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_389.grp_KeccakP1600_Permute_s_fu_176.KeccakRhoOffsets_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_389.grp_KeccakP1600_Permute_s_fu_176.KeccakRoundConstants_U", "Parent" : "18"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_389.grp_KeccakP1600_Permute_s_fu_176.stateAsWords_U", "Parent" : "18"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_389.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225", "Parent" : "18", "Child" : ["23", "24"],
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
	{"ID" : "23", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_389.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.C_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_389.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.D_U", "Parent" : "22"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_389.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230", "Parent" : "18", "Child" : ["26"],
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
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_389.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230.C_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_389.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235", "Parent" : "18", "Child" : ["28", "29"],
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
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_389.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.tempA_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_389.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "27"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_401", "Parent" : "0", "Child" : ["31", "32"],
		"CDFG" : "HashUpdate_2",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_161"}],
		"Port" : [
			{"Name" : "ctx_sponge_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_161", "Port" : "instance_state"}]},
			{"Name" : "ctx_sponge_byteIOInd", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_161", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_161", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_401.temp_U", "Parent" : "30"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161", "Parent" : "30", "Child" : ["33"],
		"CDFG" : "KeccakWidth1600_Spon_15",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161.grp_KeccakP1600_Permute_s_fu_91", "Parent" : "32", "Child" : ["34", "35", "36", "37", "40", "42"],
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
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161.grp_KeccakP1600_Permute_s_fu_91.KeccakRhoOffsets_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161.grp_KeccakP1600_Permute_s_fu_91.KeccakRoundConstants_U", "Parent" : "33"},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161.grp_KeccakP1600_Permute_s_fu_91.stateAsWords_U", "Parent" : "33"},
	{"ID" : "37", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225", "Parent" : "33", "Child" : ["38", "39"],
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
	{"ID" : "38", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225.C_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225.D_U", "Parent" : "37"},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161.grp_KeccakP1600_Permute_s_fu_91.grp_chi_fu_230", "Parent" : "33", "Child" : ["41"],
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
	{"ID" : "41", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161.grp_KeccakP1600_Permute_s_fu_91.grp_chi_fu_230.C_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235", "Parent" : "33", "Child" : ["43", "44"],
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
	{"ID" : "43", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235.tempA_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "42"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_414", "Parent" : "0", "Child" : ["46"],
		"CDFG" : "KeccakWidth1600_Spon_2",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_154"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_154"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_154", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_154", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_154", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_414.grp_KeccakP1600_Permute_s_fu_154", "Parent" : "45", "Child" : ["47", "48", "49", "50", "53", "55"],
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
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_414.grp_KeccakP1600_Permute_s_fu_154.KeccakRhoOffsets_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_414.grp_KeccakP1600_Permute_s_fu_154.KeccakRoundConstants_U", "Parent" : "46"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_414.grp_KeccakP1600_Permute_s_fu_154.stateAsWords_U", "Parent" : "46"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_414.grp_KeccakP1600_Permute_s_fu_154.grp_theta_fu_225", "Parent" : "46", "Child" : ["51", "52"],
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
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_414.grp_KeccakP1600_Permute_s_fu_154.grp_theta_fu_225.C_U", "Parent" : "50"},
	{"ID" : "52", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_414.grp_KeccakP1600_Permute_s_fu_154.grp_theta_fu_225.D_U", "Parent" : "50"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_414.grp_KeccakP1600_Permute_s_fu_154.grp_chi_fu_230", "Parent" : "46", "Child" : ["54"],
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
	{"ID" : "54", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_414.grp_KeccakP1600_Permute_s_fu_154.grp_chi_fu_230.C_U", "Parent" : "53"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_414.grp_KeccakP1600_Permute_s_fu_154.grp_pi_fu_235", "Parent" : "46", "Child" : ["56", "57"],
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
	{"ID" : "56", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_414.grp_KeccakP1600_Permute_s_fu_154.grp_pi_fu_235.tempA_U", "Parent" : "55"},
	{"ID" : "57", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_414.grp_KeccakP1600_Permute_s_fu_154.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "55"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_4_fu_426", "Parent" : "0", "Child" : ["59"],
		"CDFG" : "KeccakWidth1600_Spon_4",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_123"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_123", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_123", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_123", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_4_fu_426.grp_KeccakP1600_Permute_s_fu_123", "Parent" : "58", "Child" : ["60", "61", "62", "63", "66", "68"],
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
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_4_fu_426.grp_KeccakP1600_Permute_s_fu_123.KeccakRhoOffsets_U", "Parent" : "59"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_4_fu_426.grp_KeccakP1600_Permute_s_fu_123.KeccakRoundConstants_U", "Parent" : "59"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_4_fu_426.grp_KeccakP1600_Permute_s_fu_123.stateAsWords_U", "Parent" : "59"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_4_fu_426.grp_KeccakP1600_Permute_s_fu_123.grp_theta_fu_225", "Parent" : "59", "Child" : ["64", "65"],
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
	{"ID" : "64", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_4_fu_426.grp_KeccakP1600_Permute_s_fu_123.grp_theta_fu_225.C_U", "Parent" : "63"},
	{"ID" : "65", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_4_fu_426.grp_KeccakP1600_Permute_s_fu_123.grp_theta_fu_225.D_U", "Parent" : "63"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_4_fu_426.grp_KeccakP1600_Permute_s_fu_123.grp_chi_fu_230", "Parent" : "59", "Child" : ["67"],
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
	{"ID" : "67", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_4_fu_426.grp_KeccakP1600_Permute_s_fu_123.grp_chi_fu_230.C_U", "Parent" : "66"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_4_fu_426.grp_KeccakP1600_Permute_s_fu_123.grp_pi_fu_235", "Parent" : "59", "Child" : ["69", "70"],
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
	{"ID" : "69", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_4_fu_426.grp_KeccakP1600_Permute_s_fu_123.grp_pi_fu_235.tempA_U", "Parent" : "68"},
	{"ID" : "70", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_4_fu_426.grp_KeccakP1600_Permute_s_fu_123.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "68"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_15_fu_442", "Parent" : "0", "Child" : ["72"],
		"CDFG" : "KeccakWidth1600_Spon_15",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_15_fu_442.grp_KeccakP1600_Permute_s_fu_91", "Parent" : "71", "Child" : ["73", "74", "75", "76", "79", "81"],
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
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_15_fu_442.grp_KeccakP1600_Permute_s_fu_91.KeccakRhoOffsets_U", "Parent" : "72"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_15_fu_442.grp_KeccakP1600_Permute_s_fu_91.KeccakRoundConstants_U", "Parent" : "72"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_15_fu_442.grp_KeccakP1600_Permute_s_fu_91.stateAsWords_U", "Parent" : "72"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_15_fu_442.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225", "Parent" : "72", "Child" : ["77", "78"],
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
	{"ID" : "77", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_15_fu_442.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225.C_U", "Parent" : "76"},
	{"ID" : "78", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_15_fu_442.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225.D_U", "Parent" : "76"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_15_fu_442.grp_KeccakP1600_Permute_s_fu_91.grp_chi_fu_230", "Parent" : "72", "Child" : ["80"],
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
	{"ID" : "80", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_15_fu_442.grp_KeccakP1600_Permute_s_fu_91.grp_chi_fu_230.C_U", "Parent" : "79"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_15_fu_442.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235", "Parent" : "72", "Child" : ["82", "83"],
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
	{"ID" : "82", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_15_fu_442.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235.tempA_U", "Parent" : "81"},
	{"ID" : "83", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_15_fu_442.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "81"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_453", "Parent" : "0", "Child" : ["85"],
		"CDFG" : "KeccakWidth1600_Spon_10",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_453.grp_KeccakP1600_Permute_s_fu_91", "Parent" : "84", "Child" : ["86", "87", "88", "89", "92", "94"],
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
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_453.grp_KeccakP1600_Permute_s_fu_91.KeccakRhoOffsets_U", "Parent" : "85"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_453.grp_KeccakP1600_Permute_s_fu_91.KeccakRoundConstants_U", "Parent" : "85"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_453.grp_KeccakP1600_Permute_s_fu_91.stateAsWords_U", "Parent" : "85"},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_453.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225", "Parent" : "85", "Child" : ["90", "91"],
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
	{"ID" : "90", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_453.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225.C_U", "Parent" : "89"},
	{"ID" : "91", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_453.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225.D_U", "Parent" : "89"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_453.grp_KeccakP1600_Permute_s_fu_91.grp_chi_fu_230", "Parent" : "85", "Child" : ["93"],
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
	{"ID" : "93", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_453.grp_KeccakP1600_Permute_s_fu_91.grp_chi_fu_230.C_U", "Parent" : "92"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_453.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235", "Parent" : "85", "Child" : ["95", "96"],
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
	{"ID" : "95", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_453.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235.tempA_U", "Parent" : "94"},
	{"ID" : "96", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_453.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "94"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_464", "Parent" : "0", "Child" : ["98"],
		"CDFG" : "HashInit",
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
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_74"}],
		"Port" : [
			{"Name" : "ctx_sponge_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_74", "Port" : "instance_state"}]},
			{"Name" : "hashPrefix", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_74", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_74", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74", "Parent" : "97", "Child" : ["99"],
		"CDFG" : "KeccakWidth1600_Spon_9",
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "99", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "state"}]},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "99", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "99", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54", "Parent" : "98", "Child" : ["100", "101", "102", "103", "106", "108"],
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
	{"ID" : "100", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.KeccakRhoOffsets_U", "Parent" : "99"},
	{"ID" : "101", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.KeccakRoundConstants_U", "Parent" : "99"},
	{"ID" : "102", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.stateAsWords_U", "Parent" : "99"},
	{"ID" : "103", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225", "Parent" : "99", "Child" : ["104", "105"],
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
	{"ID" : "104", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.C_U", "Parent" : "103"},
	{"ID" : "105", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.D_U", "Parent" : "103"},
	{"ID" : "106", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230", "Parent" : "99", "Child" : ["107"],
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
	{"ID" : "107", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230.C_U", "Parent" : "106"},
	{"ID" : "108", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235", "Parent" : "99", "Child" : ["109", "110"],
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
	{"ID" : "109", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.tempA_U", "Parent" : "108"},
	{"ID" : "110", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "108"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_476", "Parent" : "0", "Child" : ["112"],
		"CDFG" : "HashFinal",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18589", "EstimateLatencyMax" : "18589",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54"}],
		"Port" : [
			{"Name" : "ctx_sponge_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "state"}]},
			{"Name" : "ctx_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_476.grp_KeccakP1600_Permute_s_fu_54", "Parent" : "111", "Child" : ["113", "114", "115", "116", "119", "121"],
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
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_476.grp_KeccakP1600_Permute_s_fu_54.KeccakRhoOffsets_U", "Parent" : "112"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_476.grp_KeccakP1600_Permute_s_fu_54.KeccakRoundConstants_U", "Parent" : "112"},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_476.grp_KeccakP1600_Permute_s_fu_54.stateAsWords_U", "Parent" : "112"},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_476.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225", "Parent" : "112", "Child" : ["117", "118"],
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
	{"ID" : "117", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_476.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.C_U", "Parent" : "116"},
	{"ID" : "118", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_476.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.D_U", "Parent" : "116"},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_476.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230", "Parent" : "112", "Child" : ["120"],
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
	{"ID" : "120", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_476.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230.C_U", "Parent" : "119"},
	{"ID" : "121", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_476.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235", "Parent" : "112", "Child" : ["122", "123"],
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
	{"ID" : "122", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_476.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.tempA_U", "Parent" : "121"},
	{"ID" : "123", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_476.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "121"}]}


set ArgLastReadFirstWriteLatency {
	H3_2 {
		circuitOutput {Type I LastRead 2 FirstWrite -1}
		plaintext {Type I LastRead 2 FirstWrite -1}
		as_hashes {Type I LastRead 3 FirstWrite -1}
		challengeBits {Type IO LastRead 17 FirstWrite 1}
		salt_0 {Type I LastRead 4 FirstWrite -1}
		message {Type I LastRead 4 FirstWrite -1}
		messageByteLength {Type I LastRead 1 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}
		viewOutputs {Type I LastRead 5 FirstWrite -1}}
	KeccakWidth1600_Spon_13 {
		instance_state {Type IO LastRead 4 FirstWrite 4}
		instance_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 4 FirstWrite -1}
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
		A {Type IO LastRead 2 FirstWrite 14}}
	KeccakWidth1600_Spon_6 {
		instance_state {Type IO LastRead 4 FirstWrite 4}
		instance_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		data_0 {Type I LastRead 4 FirstWrite -1}
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
		A {Type IO LastRead 2 FirstWrite 14}}
	HashUpdate_2 {
		ctx_sponge_state {Type IO LastRead 3 FirstWrite 4}
		ctx_sponge_byteIOInd {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 2 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	KeccakWidth1600_Spon_15 {
		instance_state {Type IO LastRead 3 FirstWrite 4}
		instance_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 3 FirstWrite -1}
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
		A {Type IO LastRead 2 FirstWrite 14}}
	KeccakWidth1600_Spon_2 {
		instance_state {Type IO LastRead 9 FirstWrite 1}
		instance_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		instance_squeezing_read {Type I LastRead 0 FirstWrite -1}
		data {Type O LastRead -1 FirstWrite 10}
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
		A {Type IO LastRead 2 FirstWrite 14}}
	KeccakWidth1600_Spon_4 {
		instance_state {Type IO LastRead 3 FirstWrite 4}
		instance_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 3 FirstWrite -1}
		data_offset {Type I LastRead 0 FirstWrite -1}
		data_offset1 {Type I LastRead 0 FirstWrite -1}
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
		A {Type IO LastRead 2 FirstWrite 14}}
	KeccakWidth1600_Spon_15 {
		instance_state {Type IO LastRead 3 FirstWrite 4}
		instance_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 3 FirstWrite -1}
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
		A {Type IO LastRead 2 FirstWrite 14}}
	KeccakWidth1600_Spon_10 {
		instance_state {Type IO LastRead 3 FirstWrite 4}
		instance_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 3 FirstWrite -1}
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
		A {Type IO LastRead 2 FirstWrite 14}}
	HashInit {
		ctx_sponge_state {Type IO LastRead 2 FirstWrite 1}
		hashPrefix {Type I LastRead 0 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	KeccakWidth1600_Spon_9 {
		instance_state {Type IO LastRead 2 FirstWrite 3}
		p_read3 {Type I LastRead 0 FirstWrite -1}
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
		A {Type IO LastRead 2 FirstWrite 14}}
	HashFinal {
		ctx_sponge_state {Type IO LastRead 2 FirstWrite 1}
		ctx_sponge_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
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
	circuitOutput { ap_memory {  { circuitOutput_address0 mem_address 1 3 }  { circuitOutput_ce0 mem_ce 1 1 }  { circuitOutput_q0 mem_dout 0 32 } } }
	plaintext { ap_memory {  { plaintext_address0 mem_address 1 3 }  { plaintext_ce0 mem_ce 1 1 }  { plaintext_q0 mem_dout 0 32 } } }
	as_hashes { ap_memory {  { as_hashes_address0 mem_address 1 16 }  { as_hashes_ce0 mem_ce 1 1 }  { as_hashes_q0 mem_dout 0 8 } } }
	challengeBits { ap_memory {  { challengeBits_address0 mem_address 1 7 }  { challengeBits_ce0 mem_ce 1 1 }  { challengeBits_we0 mem_we 1 1 }  { challengeBits_d0 mem_din 1 8 }  { challengeBits_q0 mem_dout 0 8 } } }
	salt_0 { ap_memory {  { salt_0_address0 mem_address 1 5 }  { salt_0_ce0 mem_ce 1 1 }  { salt_0_q0 mem_dout 0 8 } } }
	message { ap_memory {  { message_address0 mem_address 1 17 }  { message_ce0 mem_ce 1 1 }  { message_q0 mem_dout 0 8 } } }
	messageByteLength { ap_none {  { messageByteLength in_data 0 64 } } }
	viewOutputs { ap_memory {  { viewOutputs_address0 mem_address 1 15 }  { viewOutputs_ce0 mem_ce 1 1 }  { viewOutputs_q0 mem_dout 0 32 } } }
}
set moduleName H3_2
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
set C_modelName {H3_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ circuitOutput int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ plaintext int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ as_hashes int 8 regular {array 47376 { 1 3 } 1 1 }  }
	{ challengeBits int 8 regular {array 83 { 2 3 } 1 1 }  }
	{ salt_0 int 8 regular {array 32 { 1 3 } 1 1 }  }
	{ message int 8 regular {array 80084 { 1 3 } 1 1 }  }
	{ messageByteLength int 64 regular  }
	{ viewOutputs int 32 regular {array 23688 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "circuitOutput", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "plaintext", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "as_hashes", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "challengeBits", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "salt_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "message", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "messageByteLength", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "viewOutputs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "viewOutputs","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 986,"step" : 1},{"low" : 0,"up" : 23,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ circuitOutput_address0 sc_out sc_lv 3 signal 0 } 
	{ circuitOutput_ce0 sc_out sc_logic 1 signal 0 } 
	{ circuitOutput_q0 sc_in sc_lv 32 signal 0 } 
	{ plaintext_address0 sc_out sc_lv 3 signal 1 } 
	{ plaintext_ce0 sc_out sc_logic 1 signal 1 } 
	{ plaintext_q0 sc_in sc_lv 32 signal 1 } 
	{ as_hashes_address0 sc_out sc_lv 16 signal 2 } 
	{ as_hashes_ce0 sc_out sc_logic 1 signal 2 } 
	{ as_hashes_q0 sc_in sc_lv 8 signal 2 } 
	{ challengeBits_address0 sc_out sc_lv 7 signal 3 } 
	{ challengeBits_ce0 sc_out sc_logic 1 signal 3 } 
	{ challengeBits_we0 sc_out sc_logic 1 signal 3 } 
	{ challengeBits_d0 sc_out sc_lv 8 signal 3 } 
	{ challengeBits_q0 sc_in sc_lv 8 signal 3 } 
	{ salt_0_address0 sc_out sc_lv 5 signal 4 } 
	{ salt_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ salt_0_q0 sc_in sc_lv 8 signal 4 } 
	{ message_address0 sc_out sc_lv 17 signal 5 } 
	{ message_ce0 sc_out sc_logic 1 signal 5 } 
	{ message_q0 sc_in sc_lv 8 signal 5 } 
	{ messageByteLength sc_in sc_lv 64 signal 6 } 
	{ viewOutputs_address0 sc_out sc_lv 15 signal 7 } 
	{ viewOutputs_ce0 sc_out sc_logic 1 signal 7 } 
	{ viewOutputs_q0 sc_in sc_lv 32 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "circuitOutput_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "circuitOutput", "role": "address0" }} , 
 	{ "name": "circuitOutput_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "circuitOutput", "role": "ce0" }} , 
 	{ "name": "circuitOutput_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "circuitOutput", "role": "q0" }} , 
 	{ "name": "plaintext_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "plaintext", "role": "address0" }} , 
 	{ "name": "plaintext_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "plaintext", "role": "ce0" }} , 
 	{ "name": "plaintext_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "plaintext", "role": "q0" }} , 
 	{ "name": "as_hashes_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "as_hashes", "role": "address0" }} , 
 	{ "name": "as_hashes_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "as_hashes", "role": "ce0" }} , 
 	{ "name": "as_hashes_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "as_hashes", "role": "q0" }} , 
 	{ "name": "challengeBits_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "challengeBits", "role": "address0" }} , 
 	{ "name": "challengeBits_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "challengeBits", "role": "ce0" }} , 
 	{ "name": "challengeBits_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "challengeBits", "role": "we0" }} , 
 	{ "name": "challengeBits_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "challengeBits", "role": "d0" }} , 
 	{ "name": "challengeBits_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "challengeBits", "role": "q0" }} , 
 	{ "name": "salt_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "salt_0", "role": "address0" }} , 
 	{ "name": "salt_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "salt_0", "role": "ce0" }} , 
 	{ "name": "salt_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "salt_0", "role": "q0" }} , 
 	{ "name": "message_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "message", "role": "address0" }} , 
 	{ "name": "message_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "message", "role": "ce0" }} , 
 	{ "name": "message_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "message", "role": "q0" }} , 
 	{ "name": "messageByteLength", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "messageByteLength", "role": "default" }} , 
 	{ "name": "viewOutputs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "viewOutputs", "role": "address0" }} , 
 	{ "name": "viewOutputs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "viewOutputs", "role": "ce0" }} , 
 	{ "name": "viewOutputs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "viewOutputs", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "17", "30", "45", "58", "71", "84", "97", "111"],
		"CDFG" : "H3_2",
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
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_13_fu_376"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_6_fu_389"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdate_2_fu_401"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdate_2_fu_401"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_2_fu_414"},
			{"State" : "ap_ST_fsm_state31", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_2_fu_414"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_4_fu_426"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_442"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_10_fu_453"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_464"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_464"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_476"},
			{"State" : "ap_ST_fsm_state29", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_476"}],
		"Port" : [
			{"Name" : "circuitOutput", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_HashUpdate_2_fu_401", "Port" : "data"}]},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_HashUpdate_2_fu_401", "Port" : "data"}]},
			{"Name" : "as_hashes", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_KeccakWidth1600_Spon_4_fu_426", "Port" : "data"}]},
			{"Name" : "challengeBits", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "salt_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_KeccakWidth1600_Spon_6_fu_389", "Port" : "data_0"}]},
			{"Name" : "message", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakWidth1600_Spon_13_fu_376", "Port" : "data"}]},
			{"Name" : "messageByteLength", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "71", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_442", "Port" : "KeccakRhoOffsets"},
					{"ID" : "58", "SubInstance" : "grp_KeccakWidth1600_Spon_4_fu_426", "Port" : "KeccakRhoOffsets"},
					{"ID" : "17", "SubInstance" : "grp_KeccakWidth1600_Spon_6_fu_389", "Port" : "KeccakRhoOffsets"},
					{"ID" : "84", "SubInstance" : "grp_KeccakWidth1600_Spon_10_fu_453", "Port" : "KeccakRhoOffsets"},
					{"ID" : "97", "SubInstance" : "grp_HashInit_fu_464", "Port" : "KeccakRhoOffsets"},
					{"ID" : "4", "SubInstance" : "grp_KeccakWidth1600_Spon_13_fu_376", "Port" : "KeccakRhoOffsets"},
					{"ID" : "45", "SubInstance" : "grp_KeccakWidth1600_Spon_2_fu_414", "Port" : "KeccakRhoOffsets"},
					{"ID" : "30", "SubInstance" : "grp_HashUpdate_2_fu_401", "Port" : "KeccakRhoOffsets"},
					{"ID" : "111", "SubInstance" : "grp_HashFinal_fu_476", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "71", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_442", "Port" : "KeccakRoundConstants"},
					{"ID" : "58", "SubInstance" : "grp_KeccakWidth1600_Spon_4_fu_426", "Port" : "KeccakRoundConstants"},
					{"ID" : "17", "SubInstance" : "grp_KeccakWidth1600_Spon_6_fu_389", "Port" : "KeccakRoundConstants"},
					{"ID" : "84", "SubInstance" : "grp_KeccakWidth1600_Spon_10_fu_453", "Port" : "KeccakRoundConstants"},
					{"ID" : "97", "SubInstance" : "grp_HashInit_fu_464", "Port" : "KeccakRoundConstants"},
					{"ID" : "4", "SubInstance" : "grp_KeccakWidth1600_Spon_13_fu_376", "Port" : "KeccakRoundConstants"},
					{"ID" : "45", "SubInstance" : "grp_KeccakWidth1600_Spon_2_fu_414", "Port" : "KeccakRoundConstants"},
					{"ID" : "30", "SubInstance" : "grp_HashUpdate_2_fu_401", "Port" : "KeccakRoundConstants"},
					{"ID" : "111", "SubInstance" : "grp_HashFinal_fu_476", "Port" : "KeccakRoundConstants"}]},
			{"Name" : "viewOutputs", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hash_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctx_sponge_state_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_376", "Parent" : "0", "Child" : ["5"],
		"CDFG" : "KeccakWidth1600_Spon_13",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_160"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_160"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_160", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dataByteLen", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_160", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_160", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_376.grp_KeccakP1600_Permute_s_fu_160", "Parent" : "4", "Child" : ["6", "7", "8", "9", "12", "14"],
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
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_376.grp_KeccakP1600_Permute_s_fu_160.KeccakRhoOffsets_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_376.grp_KeccakP1600_Permute_s_fu_160.KeccakRoundConstants_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_376.grp_KeccakP1600_Permute_s_fu_160.stateAsWords_U", "Parent" : "5"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_376.grp_KeccakP1600_Permute_s_fu_160.grp_theta_fu_225", "Parent" : "5", "Child" : ["10", "11"],
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
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_376.grp_KeccakP1600_Permute_s_fu_160.grp_theta_fu_225.C_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_376.grp_KeccakP1600_Permute_s_fu_160.grp_theta_fu_225.D_U", "Parent" : "9"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_376.grp_KeccakP1600_Permute_s_fu_160.grp_chi_fu_230", "Parent" : "5", "Child" : ["13"],
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
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_376.grp_KeccakP1600_Permute_s_fu_160.grp_chi_fu_230.C_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_376.grp_KeccakP1600_Permute_s_fu_160.grp_pi_fu_235", "Parent" : "5", "Child" : ["15", "16"],
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
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_376.grp_KeccakP1600_Permute_s_fu_160.grp_pi_fu_235.tempA_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_376.grp_KeccakP1600_Permute_s_fu_160.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "14"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_389", "Parent" : "0", "Child" : ["18"],
		"CDFG" : "KeccakWidth1600_Spon_6",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_389.grp_KeccakP1600_Permute_s_fu_176", "Parent" : "17", "Child" : ["19", "20", "21", "22", "25", "27"],
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
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_389.grp_KeccakP1600_Permute_s_fu_176.KeccakRhoOffsets_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_389.grp_KeccakP1600_Permute_s_fu_176.KeccakRoundConstants_U", "Parent" : "18"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_389.grp_KeccakP1600_Permute_s_fu_176.stateAsWords_U", "Parent" : "18"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_389.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225", "Parent" : "18", "Child" : ["23", "24"],
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
	{"ID" : "23", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_389.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.C_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_389.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.D_U", "Parent" : "22"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_389.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230", "Parent" : "18", "Child" : ["26"],
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
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_389.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230.C_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_389.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235", "Parent" : "18", "Child" : ["28", "29"],
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
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_389.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.tempA_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_389.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "27"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_401", "Parent" : "0", "Child" : ["31", "32"],
		"CDFG" : "HashUpdate_2",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_161"}],
		"Port" : [
			{"Name" : "ctx_sponge_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_161", "Port" : "instance_state"}]},
			{"Name" : "ctx_sponge_byteIOInd", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_161", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_161", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_401.temp_U", "Parent" : "30"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161", "Parent" : "30", "Child" : ["33"],
		"CDFG" : "KeccakWidth1600_Spon_15",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161.grp_KeccakP1600_Permute_s_fu_91", "Parent" : "32", "Child" : ["34", "35", "36", "37", "40", "42"],
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
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161.grp_KeccakP1600_Permute_s_fu_91.KeccakRhoOffsets_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161.grp_KeccakP1600_Permute_s_fu_91.KeccakRoundConstants_U", "Parent" : "33"},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161.grp_KeccakP1600_Permute_s_fu_91.stateAsWords_U", "Parent" : "33"},
	{"ID" : "37", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225", "Parent" : "33", "Child" : ["38", "39"],
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
	{"ID" : "38", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225.C_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225.D_U", "Parent" : "37"},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161.grp_KeccakP1600_Permute_s_fu_91.grp_chi_fu_230", "Parent" : "33", "Child" : ["41"],
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
	{"ID" : "41", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161.grp_KeccakP1600_Permute_s_fu_91.grp_chi_fu_230.C_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235", "Parent" : "33", "Child" : ["43", "44"],
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
	{"ID" : "43", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235.tempA_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "42"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_414", "Parent" : "0", "Child" : ["46"],
		"CDFG" : "KeccakWidth1600_Spon_2",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_154"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_154"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_154", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_154", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_154", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_414.grp_KeccakP1600_Permute_s_fu_154", "Parent" : "45", "Child" : ["47", "48", "49", "50", "53", "55"],
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
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_414.grp_KeccakP1600_Permute_s_fu_154.KeccakRhoOffsets_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_414.grp_KeccakP1600_Permute_s_fu_154.KeccakRoundConstants_U", "Parent" : "46"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_414.grp_KeccakP1600_Permute_s_fu_154.stateAsWords_U", "Parent" : "46"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_414.grp_KeccakP1600_Permute_s_fu_154.grp_theta_fu_225", "Parent" : "46", "Child" : ["51", "52"],
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
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_414.grp_KeccakP1600_Permute_s_fu_154.grp_theta_fu_225.C_U", "Parent" : "50"},
	{"ID" : "52", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_414.grp_KeccakP1600_Permute_s_fu_154.grp_theta_fu_225.D_U", "Parent" : "50"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_414.grp_KeccakP1600_Permute_s_fu_154.grp_chi_fu_230", "Parent" : "46", "Child" : ["54"],
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
	{"ID" : "54", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_414.grp_KeccakP1600_Permute_s_fu_154.grp_chi_fu_230.C_U", "Parent" : "53"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_414.grp_KeccakP1600_Permute_s_fu_154.grp_pi_fu_235", "Parent" : "46", "Child" : ["56", "57"],
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
	{"ID" : "56", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_414.grp_KeccakP1600_Permute_s_fu_154.grp_pi_fu_235.tempA_U", "Parent" : "55"},
	{"ID" : "57", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_414.grp_KeccakP1600_Permute_s_fu_154.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "55"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_4_fu_426", "Parent" : "0", "Child" : ["59"],
		"CDFG" : "KeccakWidth1600_Spon_4",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_123"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_123", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_123", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_123", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_4_fu_426.grp_KeccakP1600_Permute_s_fu_123", "Parent" : "58", "Child" : ["60", "61", "62", "63", "66", "68"],
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
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_4_fu_426.grp_KeccakP1600_Permute_s_fu_123.KeccakRhoOffsets_U", "Parent" : "59"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_4_fu_426.grp_KeccakP1600_Permute_s_fu_123.KeccakRoundConstants_U", "Parent" : "59"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_4_fu_426.grp_KeccakP1600_Permute_s_fu_123.stateAsWords_U", "Parent" : "59"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_4_fu_426.grp_KeccakP1600_Permute_s_fu_123.grp_theta_fu_225", "Parent" : "59", "Child" : ["64", "65"],
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
	{"ID" : "64", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_4_fu_426.grp_KeccakP1600_Permute_s_fu_123.grp_theta_fu_225.C_U", "Parent" : "63"},
	{"ID" : "65", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_4_fu_426.grp_KeccakP1600_Permute_s_fu_123.grp_theta_fu_225.D_U", "Parent" : "63"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_4_fu_426.grp_KeccakP1600_Permute_s_fu_123.grp_chi_fu_230", "Parent" : "59", "Child" : ["67"],
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
	{"ID" : "67", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_4_fu_426.grp_KeccakP1600_Permute_s_fu_123.grp_chi_fu_230.C_U", "Parent" : "66"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_4_fu_426.grp_KeccakP1600_Permute_s_fu_123.grp_pi_fu_235", "Parent" : "59", "Child" : ["69", "70"],
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
	{"ID" : "69", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_4_fu_426.grp_KeccakP1600_Permute_s_fu_123.grp_pi_fu_235.tempA_U", "Parent" : "68"},
	{"ID" : "70", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_4_fu_426.grp_KeccakP1600_Permute_s_fu_123.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "68"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_15_fu_442", "Parent" : "0", "Child" : ["72"],
		"CDFG" : "KeccakWidth1600_Spon_15",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_15_fu_442.grp_KeccakP1600_Permute_s_fu_91", "Parent" : "71", "Child" : ["73", "74", "75", "76", "79", "81"],
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
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_15_fu_442.grp_KeccakP1600_Permute_s_fu_91.KeccakRhoOffsets_U", "Parent" : "72"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_15_fu_442.grp_KeccakP1600_Permute_s_fu_91.KeccakRoundConstants_U", "Parent" : "72"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_15_fu_442.grp_KeccakP1600_Permute_s_fu_91.stateAsWords_U", "Parent" : "72"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_15_fu_442.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225", "Parent" : "72", "Child" : ["77", "78"],
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
	{"ID" : "77", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_15_fu_442.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225.C_U", "Parent" : "76"},
	{"ID" : "78", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_15_fu_442.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225.D_U", "Parent" : "76"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_15_fu_442.grp_KeccakP1600_Permute_s_fu_91.grp_chi_fu_230", "Parent" : "72", "Child" : ["80"],
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
	{"ID" : "80", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_15_fu_442.grp_KeccakP1600_Permute_s_fu_91.grp_chi_fu_230.C_U", "Parent" : "79"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_15_fu_442.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235", "Parent" : "72", "Child" : ["82", "83"],
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
	{"ID" : "82", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_15_fu_442.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235.tempA_U", "Parent" : "81"},
	{"ID" : "83", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_15_fu_442.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "81"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_453", "Parent" : "0", "Child" : ["85"],
		"CDFG" : "KeccakWidth1600_Spon_10",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_453.grp_KeccakP1600_Permute_s_fu_91", "Parent" : "84", "Child" : ["86", "87", "88", "89", "92", "94"],
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
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_453.grp_KeccakP1600_Permute_s_fu_91.KeccakRhoOffsets_U", "Parent" : "85"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_453.grp_KeccakP1600_Permute_s_fu_91.KeccakRoundConstants_U", "Parent" : "85"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_453.grp_KeccakP1600_Permute_s_fu_91.stateAsWords_U", "Parent" : "85"},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_453.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225", "Parent" : "85", "Child" : ["90", "91"],
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
	{"ID" : "90", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_453.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225.C_U", "Parent" : "89"},
	{"ID" : "91", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_453.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225.D_U", "Parent" : "89"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_453.grp_KeccakP1600_Permute_s_fu_91.grp_chi_fu_230", "Parent" : "85", "Child" : ["93"],
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
	{"ID" : "93", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_453.grp_KeccakP1600_Permute_s_fu_91.grp_chi_fu_230.C_U", "Parent" : "92"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_453.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235", "Parent" : "85", "Child" : ["95", "96"],
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
	{"ID" : "95", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_453.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235.tempA_U", "Parent" : "94"},
	{"ID" : "96", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_453.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "94"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_464", "Parent" : "0", "Child" : ["98"],
		"CDFG" : "HashInit",
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
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_74"}],
		"Port" : [
			{"Name" : "ctx_sponge_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_74", "Port" : "instance_state"}]},
			{"Name" : "hashPrefix", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_74", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_74", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74", "Parent" : "97", "Child" : ["99"],
		"CDFG" : "KeccakWidth1600_Spon_9",
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "99", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "state"}]},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "99", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "99", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54", "Parent" : "98", "Child" : ["100", "101", "102", "103", "106", "108"],
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
	{"ID" : "100", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.KeccakRhoOffsets_U", "Parent" : "99"},
	{"ID" : "101", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.KeccakRoundConstants_U", "Parent" : "99"},
	{"ID" : "102", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.stateAsWords_U", "Parent" : "99"},
	{"ID" : "103", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225", "Parent" : "99", "Child" : ["104", "105"],
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
	{"ID" : "104", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.C_U", "Parent" : "103"},
	{"ID" : "105", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.D_U", "Parent" : "103"},
	{"ID" : "106", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230", "Parent" : "99", "Child" : ["107"],
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
	{"ID" : "107", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230.C_U", "Parent" : "106"},
	{"ID" : "108", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235", "Parent" : "99", "Child" : ["109", "110"],
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
	{"ID" : "109", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.tempA_U", "Parent" : "108"},
	{"ID" : "110", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "108"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_476", "Parent" : "0", "Child" : ["112"],
		"CDFG" : "HashFinal",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18589", "EstimateLatencyMax" : "18589",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54"}],
		"Port" : [
			{"Name" : "ctx_sponge_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "state"}]},
			{"Name" : "ctx_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_476.grp_KeccakP1600_Permute_s_fu_54", "Parent" : "111", "Child" : ["113", "114", "115", "116", "119", "121"],
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
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_476.grp_KeccakP1600_Permute_s_fu_54.KeccakRhoOffsets_U", "Parent" : "112"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_476.grp_KeccakP1600_Permute_s_fu_54.KeccakRoundConstants_U", "Parent" : "112"},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_476.grp_KeccakP1600_Permute_s_fu_54.stateAsWords_U", "Parent" : "112"},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_476.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225", "Parent" : "112", "Child" : ["117", "118"],
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
	{"ID" : "117", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_476.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.C_U", "Parent" : "116"},
	{"ID" : "118", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_476.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.D_U", "Parent" : "116"},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_476.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230", "Parent" : "112", "Child" : ["120"],
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
	{"ID" : "120", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_476.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230.C_U", "Parent" : "119"},
	{"ID" : "121", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_476.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235", "Parent" : "112", "Child" : ["122", "123"],
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
	{"ID" : "122", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_476.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.tempA_U", "Parent" : "121"},
	{"ID" : "123", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_476.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "121"}]}


set ArgLastReadFirstWriteLatency {
	H3_2 {
		circuitOutput {Type I LastRead 2 FirstWrite -1}
		plaintext {Type I LastRead 2 FirstWrite -1}
		as_hashes {Type I LastRead 3 FirstWrite -1}
		challengeBits {Type IO LastRead 17 FirstWrite 1}
		salt_0 {Type I LastRead 4 FirstWrite -1}
		message {Type I LastRead 4 FirstWrite -1}
		messageByteLength {Type I LastRead 1 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}
		viewOutputs {Type I LastRead 5 FirstWrite -1}}
	KeccakWidth1600_Spon_13 {
		instance_state {Type IO LastRead 4 FirstWrite 4}
		instance_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 4 FirstWrite -1}
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
		A {Type IO LastRead 2 FirstWrite 14}}
	KeccakWidth1600_Spon_6 {
		instance_state {Type IO LastRead 4 FirstWrite 4}
		instance_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		data_0 {Type I LastRead 4 FirstWrite -1}
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
		A {Type IO LastRead 2 FirstWrite 14}}
	HashUpdate_2 {
		ctx_sponge_state {Type IO LastRead 3 FirstWrite 4}
		ctx_sponge_byteIOInd {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 2 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	KeccakWidth1600_Spon_15 {
		instance_state {Type IO LastRead 3 FirstWrite 4}
		instance_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 3 FirstWrite -1}
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
		A {Type IO LastRead 2 FirstWrite 14}}
	KeccakWidth1600_Spon_2 {
		instance_state {Type IO LastRead 9 FirstWrite 1}
		instance_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		instance_squeezing_read {Type I LastRead 0 FirstWrite -1}
		data {Type O LastRead -1 FirstWrite 10}
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
		A {Type IO LastRead 2 FirstWrite 14}}
	KeccakWidth1600_Spon_4 {
		instance_state {Type IO LastRead 3 FirstWrite 4}
		instance_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 3 FirstWrite -1}
		data_offset {Type I LastRead 0 FirstWrite -1}
		data_offset1 {Type I LastRead 0 FirstWrite -1}
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
		A {Type IO LastRead 2 FirstWrite 14}}
	KeccakWidth1600_Spon_15 {
		instance_state {Type IO LastRead 3 FirstWrite 4}
		instance_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 3 FirstWrite -1}
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
		A {Type IO LastRead 2 FirstWrite 14}}
	KeccakWidth1600_Spon_10 {
		instance_state {Type IO LastRead 3 FirstWrite 4}
		instance_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 3 FirstWrite -1}
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
		A {Type IO LastRead 2 FirstWrite 14}}
	HashInit {
		ctx_sponge_state {Type IO LastRead 2 FirstWrite 1}
		hashPrefix {Type I LastRead 0 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	KeccakWidth1600_Spon_9 {
		instance_state {Type IO LastRead 2 FirstWrite 3}
		p_read3 {Type I LastRead 0 FirstWrite -1}
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
		A {Type IO LastRead 2 FirstWrite 14}}
	HashFinal {
		ctx_sponge_state {Type IO LastRead 2 FirstWrite 1}
		ctx_sponge_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
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
	circuitOutput { ap_memory {  { circuitOutput_address0 mem_address 1 3 }  { circuitOutput_ce0 mem_ce 1 1 }  { circuitOutput_q0 mem_dout 0 32 } } }
	plaintext { ap_memory {  { plaintext_address0 mem_address 1 3 }  { plaintext_ce0 mem_ce 1 1 }  { plaintext_q0 mem_dout 0 32 } } }
	as_hashes { ap_memory {  { as_hashes_address0 mem_address 1 16 }  { as_hashes_ce0 mem_ce 1 1 }  { as_hashes_q0 mem_dout 0 8 } } }
	challengeBits { ap_memory {  { challengeBits_address0 mem_address 1 7 }  { challengeBits_ce0 mem_ce 1 1 }  { challengeBits_we0 mem_we 1 1 }  { challengeBits_d0 mem_din 1 8 }  { challengeBits_q0 mem_dout 0 8 } } }
	salt_0 { ap_memory {  { salt_0_address0 mem_address 1 5 }  { salt_0_ce0 mem_ce 1 1 }  { salt_0_q0 mem_dout 0 8 } } }
	message { ap_memory {  { message_address0 mem_address 1 17 }  { message_ce0 mem_ce 1 1 }  { message_q0 mem_dout 0 8 } } }
	messageByteLength { ap_none {  { messageByteLength in_data 0 64 } } }
	viewOutputs { ap_memory {  { viewOutputs_address0 mem_address 1 15 }  { viewOutputs_ce0 mem_ce 1 1 }  { viewOutputs_q0 mem_dout 0 32 } } }
}
set moduleName H3_2
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
set C_modelName {H3_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ circuitOutput int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ plaintext int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ as_hashes int 8 regular {array 47376 { 1 3 } 1 1 }  }
	{ challengeBits int 8 regular {array 83 { 2 3 } 1 1 }  }
	{ salt_0 int 8 regular {array 32 { 1 3 } 1 1 }  }
	{ message int 8 regular {array 80084 { 1 3 } 1 1 }  }
	{ messageByteLength int 64 regular  }
	{ viewOutputs int 32 regular {array 23688 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "circuitOutput", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "plaintext", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "as_hashes", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "challengeBits", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "salt_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "message", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "messageByteLength", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "viewOutputs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "viewOutputs","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 986,"step" : 1},{"low" : 0,"up" : 23,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ circuitOutput_address0 sc_out sc_lv 3 signal 0 } 
	{ circuitOutput_ce0 sc_out sc_logic 1 signal 0 } 
	{ circuitOutput_q0 sc_in sc_lv 32 signal 0 } 
	{ plaintext_address0 sc_out sc_lv 3 signal 1 } 
	{ plaintext_ce0 sc_out sc_logic 1 signal 1 } 
	{ plaintext_q0 sc_in sc_lv 32 signal 1 } 
	{ as_hashes_address0 sc_out sc_lv 16 signal 2 } 
	{ as_hashes_ce0 sc_out sc_logic 1 signal 2 } 
	{ as_hashes_q0 sc_in sc_lv 8 signal 2 } 
	{ challengeBits_address0 sc_out sc_lv 7 signal 3 } 
	{ challengeBits_ce0 sc_out sc_logic 1 signal 3 } 
	{ challengeBits_we0 sc_out sc_logic 1 signal 3 } 
	{ challengeBits_d0 sc_out sc_lv 8 signal 3 } 
	{ challengeBits_q0 sc_in sc_lv 8 signal 3 } 
	{ salt_0_address0 sc_out sc_lv 5 signal 4 } 
	{ salt_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ salt_0_q0 sc_in sc_lv 8 signal 4 } 
	{ message_address0 sc_out sc_lv 17 signal 5 } 
	{ message_ce0 sc_out sc_logic 1 signal 5 } 
	{ message_q0 sc_in sc_lv 8 signal 5 } 
	{ messageByteLength sc_in sc_lv 64 signal 6 } 
	{ viewOutputs_address0 sc_out sc_lv 15 signal 7 } 
	{ viewOutputs_ce0 sc_out sc_logic 1 signal 7 } 
	{ viewOutputs_q0 sc_in sc_lv 32 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "circuitOutput_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "circuitOutput", "role": "address0" }} , 
 	{ "name": "circuitOutput_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "circuitOutput", "role": "ce0" }} , 
 	{ "name": "circuitOutput_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "circuitOutput", "role": "q0" }} , 
 	{ "name": "plaintext_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "plaintext", "role": "address0" }} , 
 	{ "name": "plaintext_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "plaintext", "role": "ce0" }} , 
 	{ "name": "plaintext_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "plaintext", "role": "q0" }} , 
 	{ "name": "as_hashes_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "as_hashes", "role": "address0" }} , 
 	{ "name": "as_hashes_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "as_hashes", "role": "ce0" }} , 
 	{ "name": "as_hashes_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "as_hashes", "role": "q0" }} , 
 	{ "name": "challengeBits_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "challengeBits", "role": "address0" }} , 
 	{ "name": "challengeBits_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "challengeBits", "role": "ce0" }} , 
 	{ "name": "challengeBits_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "challengeBits", "role": "we0" }} , 
 	{ "name": "challengeBits_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "challengeBits", "role": "d0" }} , 
 	{ "name": "challengeBits_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "challengeBits", "role": "q0" }} , 
 	{ "name": "salt_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "salt_0", "role": "address0" }} , 
 	{ "name": "salt_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "salt_0", "role": "ce0" }} , 
 	{ "name": "salt_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "salt_0", "role": "q0" }} , 
 	{ "name": "message_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "message", "role": "address0" }} , 
 	{ "name": "message_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "message", "role": "ce0" }} , 
 	{ "name": "message_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "message", "role": "q0" }} , 
 	{ "name": "messageByteLength", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "messageByteLength", "role": "default" }} , 
 	{ "name": "viewOutputs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "viewOutputs", "role": "address0" }} , 
 	{ "name": "viewOutputs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "viewOutputs", "role": "ce0" }} , 
 	{ "name": "viewOutputs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "viewOutputs", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "17", "30", "45", "58", "71", "84", "97", "111"],
		"CDFG" : "H3_2",
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
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_13_fu_376"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_6_fu_389"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdate_2_fu_401"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdate_2_fu_401"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_2_fu_414"},
			{"State" : "ap_ST_fsm_state31", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_2_fu_414"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_4_fu_426"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_442"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_10_fu_453"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_464"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_464"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_476"},
			{"State" : "ap_ST_fsm_state29", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_476"}],
		"Port" : [
			{"Name" : "circuitOutput", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_HashUpdate_2_fu_401", "Port" : "data"}]},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_HashUpdate_2_fu_401", "Port" : "data"}]},
			{"Name" : "as_hashes", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_KeccakWidth1600_Spon_4_fu_426", "Port" : "data"}]},
			{"Name" : "challengeBits", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "salt_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_KeccakWidth1600_Spon_6_fu_389", "Port" : "data_0"}]},
			{"Name" : "message", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakWidth1600_Spon_13_fu_376", "Port" : "data"}]},
			{"Name" : "messageByteLength", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_KeccakWidth1600_Spon_2_fu_414", "Port" : "KeccakRhoOffsets"},
					{"ID" : "30", "SubInstance" : "grp_HashUpdate_2_fu_401", "Port" : "KeccakRhoOffsets"},
					{"ID" : "58", "SubInstance" : "grp_KeccakWidth1600_Spon_4_fu_426", "Port" : "KeccakRhoOffsets"},
					{"ID" : "17", "SubInstance" : "grp_KeccakWidth1600_Spon_6_fu_389", "Port" : "KeccakRhoOffsets"},
					{"ID" : "4", "SubInstance" : "grp_KeccakWidth1600_Spon_13_fu_376", "Port" : "KeccakRhoOffsets"},
					{"ID" : "111", "SubInstance" : "grp_HashFinal_fu_476", "Port" : "KeccakRhoOffsets"},
					{"ID" : "97", "SubInstance" : "grp_HashInit_fu_464", "Port" : "KeccakRhoOffsets"},
					{"ID" : "84", "SubInstance" : "grp_KeccakWidth1600_Spon_10_fu_453", "Port" : "KeccakRhoOffsets"},
					{"ID" : "71", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_442", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_KeccakWidth1600_Spon_2_fu_414", "Port" : "KeccakRoundConstants"},
					{"ID" : "30", "SubInstance" : "grp_HashUpdate_2_fu_401", "Port" : "KeccakRoundConstants"},
					{"ID" : "58", "SubInstance" : "grp_KeccakWidth1600_Spon_4_fu_426", "Port" : "KeccakRoundConstants"},
					{"ID" : "17", "SubInstance" : "grp_KeccakWidth1600_Spon_6_fu_389", "Port" : "KeccakRoundConstants"},
					{"ID" : "4", "SubInstance" : "grp_KeccakWidth1600_Spon_13_fu_376", "Port" : "KeccakRoundConstants"},
					{"ID" : "111", "SubInstance" : "grp_HashFinal_fu_476", "Port" : "KeccakRoundConstants"},
					{"ID" : "97", "SubInstance" : "grp_HashInit_fu_464", "Port" : "KeccakRoundConstants"},
					{"ID" : "84", "SubInstance" : "grp_KeccakWidth1600_Spon_10_fu_453", "Port" : "KeccakRoundConstants"},
					{"ID" : "71", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_442", "Port" : "KeccakRoundConstants"}]},
			{"Name" : "viewOutputs", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hash_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctx_sponge_state_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_376", "Parent" : "0", "Child" : ["5"],
		"CDFG" : "KeccakWidth1600_Spon_13",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_160"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_160"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_160", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dataByteLen", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_160", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_160", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_376.grp_KeccakP1600_Permute_s_fu_160", "Parent" : "4", "Child" : ["6", "7", "8", "9", "12", "14"],
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
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_376.grp_KeccakP1600_Permute_s_fu_160.KeccakRhoOffsets_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_376.grp_KeccakP1600_Permute_s_fu_160.KeccakRoundConstants_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_376.grp_KeccakP1600_Permute_s_fu_160.stateAsWords_U", "Parent" : "5"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_376.grp_KeccakP1600_Permute_s_fu_160.grp_theta_fu_225", "Parent" : "5", "Child" : ["10", "11"],
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
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_376.grp_KeccakP1600_Permute_s_fu_160.grp_theta_fu_225.C_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_376.grp_KeccakP1600_Permute_s_fu_160.grp_theta_fu_225.D_U", "Parent" : "9"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_376.grp_KeccakP1600_Permute_s_fu_160.grp_chi_fu_230", "Parent" : "5", "Child" : ["13"],
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
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_376.grp_KeccakP1600_Permute_s_fu_160.grp_chi_fu_230.C_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_376.grp_KeccakP1600_Permute_s_fu_160.grp_pi_fu_235", "Parent" : "5", "Child" : ["15", "16"],
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
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_376.grp_KeccakP1600_Permute_s_fu_160.grp_pi_fu_235.tempA_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_376.grp_KeccakP1600_Permute_s_fu_160.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "14"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_389", "Parent" : "0", "Child" : ["18"],
		"CDFG" : "KeccakWidth1600_Spon_6",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_389.grp_KeccakP1600_Permute_s_fu_176", "Parent" : "17", "Child" : ["19", "20", "21", "22", "25", "27"],
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
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_389.grp_KeccakP1600_Permute_s_fu_176.KeccakRhoOffsets_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_389.grp_KeccakP1600_Permute_s_fu_176.KeccakRoundConstants_U", "Parent" : "18"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_389.grp_KeccakP1600_Permute_s_fu_176.stateAsWords_U", "Parent" : "18"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_389.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225", "Parent" : "18", "Child" : ["23", "24"],
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
	{"ID" : "23", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_389.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.C_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_389.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.D_U", "Parent" : "22"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_389.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230", "Parent" : "18", "Child" : ["26"],
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
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_389.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230.C_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_389.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235", "Parent" : "18", "Child" : ["28", "29"],
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
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_389.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.tempA_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_389.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "27"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_401", "Parent" : "0", "Child" : ["31", "32"],
		"CDFG" : "HashUpdate_2",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_161"}],
		"Port" : [
			{"Name" : "ctx_sponge_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_161", "Port" : "instance_state"}]},
			{"Name" : "ctx_sponge_byteIOInd", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_161", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_161", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_401.temp_U", "Parent" : "30"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161", "Parent" : "30", "Child" : ["33"],
		"CDFG" : "KeccakWidth1600_Spon_15",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161.grp_KeccakP1600_Permute_s_fu_91", "Parent" : "32", "Child" : ["34", "35", "36", "37", "40", "42"],
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
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161.grp_KeccakP1600_Permute_s_fu_91.KeccakRhoOffsets_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161.grp_KeccakP1600_Permute_s_fu_91.KeccakRoundConstants_U", "Parent" : "33"},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161.grp_KeccakP1600_Permute_s_fu_91.stateAsWords_U", "Parent" : "33"},
	{"ID" : "37", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225", "Parent" : "33", "Child" : ["38", "39"],
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
	{"ID" : "38", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225.C_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225.D_U", "Parent" : "37"},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161.grp_KeccakP1600_Permute_s_fu_91.grp_chi_fu_230", "Parent" : "33", "Child" : ["41"],
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
	{"ID" : "41", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161.grp_KeccakP1600_Permute_s_fu_91.grp_chi_fu_230.C_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235", "Parent" : "33", "Child" : ["43", "44"],
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
	{"ID" : "43", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235.tempA_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "42"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_414", "Parent" : "0", "Child" : ["46"],
		"CDFG" : "KeccakWidth1600_Spon_2",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_154"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_154"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_154", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_154", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_154", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_414.grp_KeccakP1600_Permute_s_fu_154", "Parent" : "45", "Child" : ["47", "48", "49", "50", "53", "55"],
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
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_414.grp_KeccakP1600_Permute_s_fu_154.KeccakRhoOffsets_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_414.grp_KeccakP1600_Permute_s_fu_154.KeccakRoundConstants_U", "Parent" : "46"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_414.grp_KeccakP1600_Permute_s_fu_154.stateAsWords_U", "Parent" : "46"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_414.grp_KeccakP1600_Permute_s_fu_154.grp_theta_fu_225", "Parent" : "46", "Child" : ["51", "52"],
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
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_414.grp_KeccakP1600_Permute_s_fu_154.grp_theta_fu_225.C_U", "Parent" : "50"},
	{"ID" : "52", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_414.grp_KeccakP1600_Permute_s_fu_154.grp_theta_fu_225.D_U", "Parent" : "50"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_414.grp_KeccakP1600_Permute_s_fu_154.grp_chi_fu_230", "Parent" : "46", "Child" : ["54"],
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
	{"ID" : "54", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_414.grp_KeccakP1600_Permute_s_fu_154.grp_chi_fu_230.C_U", "Parent" : "53"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_414.grp_KeccakP1600_Permute_s_fu_154.grp_pi_fu_235", "Parent" : "46", "Child" : ["56", "57"],
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
	{"ID" : "56", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_414.grp_KeccakP1600_Permute_s_fu_154.grp_pi_fu_235.tempA_U", "Parent" : "55"},
	{"ID" : "57", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_414.grp_KeccakP1600_Permute_s_fu_154.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "55"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_4_fu_426", "Parent" : "0", "Child" : ["59"],
		"CDFG" : "KeccakWidth1600_Spon_4",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_123"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_123", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_123", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_123", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_4_fu_426.grp_KeccakP1600_Permute_s_fu_123", "Parent" : "58", "Child" : ["60", "61", "62", "63", "66", "68"],
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
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_4_fu_426.grp_KeccakP1600_Permute_s_fu_123.KeccakRhoOffsets_U", "Parent" : "59"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_4_fu_426.grp_KeccakP1600_Permute_s_fu_123.KeccakRoundConstants_U", "Parent" : "59"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_4_fu_426.grp_KeccakP1600_Permute_s_fu_123.stateAsWords_U", "Parent" : "59"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_4_fu_426.grp_KeccakP1600_Permute_s_fu_123.grp_theta_fu_225", "Parent" : "59", "Child" : ["64", "65"],
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
	{"ID" : "64", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_4_fu_426.grp_KeccakP1600_Permute_s_fu_123.grp_theta_fu_225.C_U", "Parent" : "63"},
	{"ID" : "65", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_4_fu_426.grp_KeccakP1600_Permute_s_fu_123.grp_theta_fu_225.D_U", "Parent" : "63"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_4_fu_426.grp_KeccakP1600_Permute_s_fu_123.grp_chi_fu_230", "Parent" : "59", "Child" : ["67"],
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
	{"ID" : "67", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_4_fu_426.grp_KeccakP1600_Permute_s_fu_123.grp_chi_fu_230.C_U", "Parent" : "66"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_4_fu_426.grp_KeccakP1600_Permute_s_fu_123.grp_pi_fu_235", "Parent" : "59", "Child" : ["69", "70"],
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
	{"ID" : "69", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_4_fu_426.grp_KeccakP1600_Permute_s_fu_123.grp_pi_fu_235.tempA_U", "Parent" : "68"},
	{"ID" : "70", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_4_fu_426.grp_KeccakP1600_Permute_s_fu_123.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "68"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_15_fu_442", "Parent" : "0", "Child" : ["72"],
		"CDFG" : "KeccakWidth1600_Spon_15",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_15_fu_442.grp_KeccakP1600_Permute_s_fu_91", "Parent" : "71", "Child" : ["73", "74", "75", "76", "79", "81"],
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
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_15_fu_442.grp_KeccakP1600_Permute_s_fu_91.KeccakRhoOffsets_U", "Parent" : "72"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_15_fu_442.grp_KeccakP1600_Permute_s_fu_91.KeccakRoundConstants_U", "Parent" : "72"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_15_fu_442.grp_KeccakP1600_Permute_s_fu_91.stateAsWords_U", "Parent" : "72"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_15_fu_442.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225", "Parent" : "72", "Child" : ["77", "78"],
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
	{"ID" : "77", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_15_fu_442.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225.C_U", "Parent" : "76"},
	{"ID" : "78", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_15_fu_442.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225.D_U", "Parent" : "76"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_15_fu_442.grp_KeccakP1600_Permute_s_fu_91.grp_chi_fu_230", "Parent" : "72", "Child" : ["80"],
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
	{"ID" : "80", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_15_fu_442.grp_KeccakP1600_Permute_s_fu_91.grp_chi_fu_230.C_U", "Parent" : "79"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_15_fu_442.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235", "Parent" : "72", "Child" : ["82", "83"],
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
	{"ID" : "82", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_15_fu_442.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235.tempA_U", "Parent" : "81"},
	{"ID" : "83", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_15_fu_442.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "81"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_453", "Parent" : "0", "Child" : ["85"],
		"CDFG" : "KeccakWidth1600_Spon_10",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_453.grp_KeccakP1600_Permute_s_fu_91", "Parent" : "84", "Child" : ["86", "87", "88", "89", "92", "94"],
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
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_453.grp_KeccakP1600_Permute_s_fu_91.KeccakRhoOffsets_U", "Parent" : "85"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_453.grp_KeccakP1600_Permute_s_fu_91.KeccakRoundConstants_U", "Parent" : "85"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_453.grp_KeccakP1600_Permute_s_fu_91.stateAsWords_U", "Parent" : "85"},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_453.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225", "Parent" : "85", "Child" : ["90", "91"],
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
	{"ID" : "90", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_453.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225.C_U", "Parent" : "89"},
	{"ID" : "91", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_453.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225.D_U", "Parent" : "89"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_453.grp_KeccakP1600_Permute_s_fu_91.grp_chi_fu_230", "Parent" : "85", "Child" : ["93"],
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
	{"ID" : "93", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_453.grp_KeccakP1600_Permute_s_fu_91.grp_chi_fu_230.C_U", "Parent" : "92"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_453.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235", "Parent" : "85", "Child" : ["95", "96"],
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
	{"ID" : "95", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_453.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235.tempA_U", "Parent" : "94"},
	{"ID" : "96", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_453.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "94"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_464", "Parent" : "0", "Child" : ["98"],
		"CDFG" : "HashInit",
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
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_74"}],
		"Port" : [
			{"Name" : "ctx_sponge_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_74", "Port" : "instance_state"}]},
			{"Name" : "hashPrefix", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_74", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_74", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74", "Parent" : "97", "Child" : ["99"],
		"CDFG" : "KeccakWidth1600_Spon_9",
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "99", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "state"}]},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "99", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "99", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54", "Parent" : "98", "Child" : ["100", "101", "102", "103", "106", "108"],
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
	{"ID" : "100", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.KeccakRhoOffsets_U", "Parent" : "99"},
	{"ID" : "101", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.KeccakRoundConstants_U", "Parent" : "99"},
	{"ID" : "102", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.stateAsWords_U", "Parent" : "99"},
	{"ID" : "103", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225", "Parent" : "99", "Child" : ["104", "105"],
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
	{"ID" : "104", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.C_U", "Parent" : "103"},
	{"ID" : "105", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.D_U", "Parent" : "103"},
	{"ID" : "106", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230", "Parent" : "99", "Child" : ["107"],
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
	{"ID" : "107", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230.C_U", "Parent" : "106"},
	{"ID" : "108", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235", "Parent" : "99", "Child" : ["109", "110"],
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
	{"ID" : "109", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.tempA_U", "Parent" : "108"},
	{"ID" : "110", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "108"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_476", "Parent" : "0", "Child" : ["112"],
		"CDFG" : "HashFinal",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18589", "EstimateLatencyMax" : "18589",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54"}],
		"Port" : [
			{"Name" : "ctx_sponge_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "state"}]},
			{"Name" : "ctx_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_476.grp_KeccakP1600_Permute_s_fu_54", "Parent" : "111", "Child" : ["113", "114", "115", "116", "119", "121"],
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
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_476.grp_KeccakP1600_Permute_s_fu_54.KeccakRhoOffsets_U", "Parent" : "112"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_476.grp_KeccakP1600_Permute_s_fu_54.KeccakRoundConstants_U", "Parent" : "112"},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_476.grp_KeccakP1600_Permute_s_fu_54.stateAsWords_U", "Parent" : "112"},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_476.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225", "Parent" : "112", "Child" : ["117", "118"],
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
	{"ID" : "117", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_476.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.C_U", "Parent" : "116"},
	{"ID" : "118", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_476.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.D_U", "Parent" : "116"},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_476.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230", "Parent" : "112", "Child" : ["120"],
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
	{"ID" : "120", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_476.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230.C_U", "Parent" : "119"},
	{"ID" : "121", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_476.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235", "Parent" : "112", "Child" : ["122", "123"],
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
	{"ID" : "122", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_476.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.tempA_U", "Parent" : "121"},
	{"ID" : "123", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_476.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "121"}]}


set ArgLastReadFirstWriteLatency {
	H3_2 {
		circuitOutput {Type I LastRead 2 FirstWrite -1}
		plaintext {Type I LastRead 2 FirstWrite -1}
		as_hashes {Type I LastRead 3 FirstWrite -1}
		challengeBits {Type IO LastRead 17 FirstWrite 1}
		salt_0 {Type I LastRead 4 FirstWrite -1}
		message {Type I LastRead 4 FirstWrite -1}
		messageByteLength {Type I LastRead 1 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}
		viewOutputs {Type I LastRead 5 FirstWrite -1}}
	KeccakWidth1600_Spon_13 {
		instance_state {Type IO LastRead 4 FirstWrite 4}
		instance_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 4 FirstWrite -1}
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
		A {Type IO LastRead 2 FirstWrite 14}}
	KeccakWidth1600_Spon_6 {
		instance_state {Type IO LastRead 4 FirstWrite 4}
		instance_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		data_0 {Type I LastRead 4 FirstWrite -1}
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
		A {Type IO LastRead 2 FirstWrite 14}}
	HashUpdate_2 {
		ctx_sponge_state {Type IO LastRead 3 FirstWrite 4}
		ctx_sponge_byteIOInd {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 2 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	KeccakWidth1600_Spon_15 {
		instance_state {Type IO LastRead 3 FirstWrite 4}
		instance_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 3 FirstWrite -1}
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
		A {Type IO LastRead 2 FirstWrite 14}}
	KeccakWidth1600_Spon_2 {
		instance_state {Type IO LastRead 9 FirstWrite 1}
		instance_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		instance_squeezing_read {Type I LastRead 0 FirstWrite -1}
		data {Type O LastRead -1 FirstWrite 10}
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
		A {Type IO LastRead 2 FirstWrite 14}}
	KeccakWidth1600_Spon_4 {
		instance_state {Type IO LastRead 3 FirstWrite 4}
		instance_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 3 FirstWrite -1}
		data_offset {Type I LastRead 0 FirstWrite -1}
		data_offset1 {Type I LastRead 0 FirstWrite -1}
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
		A {Type IO LastRead 2 FirstWrite 14}}
	KeccakWidth1600_Spon_15 {
		instance_state {Type IO LastRead 3 FirstWrite 4}
		instance_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 3 FirstWrite -1}
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
		A {Type IO LastRead 2 FirstWrite 14}}
	KeccakWidth1600_Spon_10 {
		instance_state {Type IO LastRead 3 FirstWrite 4}
		instance_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 3 FirstWrite -1}
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
		A {Type IO LastRead 2 FirstWrite 14}}
	HashInit {
		ctx_sponge_state {Type IO LastRead 2 FirstWrite 1}
		hashPrefix {Type I LastRead 0 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	KeccakWidth1600_Spon_9 {
		instance_state {Type IO LastRead 2 FirstWrite 3}
		p_read3 {Type I LastRead 0 FirstWrite -1}
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
		A {Type IO LastRead 2 FirstWrite 14}}
	HashFinal {
		ctx_sponge_state {Type IO LastRead 2 FirstWrite 1}
		ctx_sponge_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
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
	circuitOutput { ap_memory {  { circuitOutput_address0 mem_address 1 3 }  { circuitOutput_ce0 mem_ce 1 1 }  { circuitOutput_q0 mem_dout 0 32 } } }
	plaintext { ap_memory {  { plaintext_address0 mem_address 1 3 }  { plaintext_ce0 mem_ce 1 1 }  { plaintext_q0 mem_dout 0 32 } } }
	as_hashes { ap_memory {  { as_hashes_address0 mem_address 1 16 }  { as_hashes_ce0 mem_ce 1 1 }  { as_hashes_q0 mem_dout 0 8 } } }
	challengeBits { ap_memory {  { challengeBits_address0 mem_address 1 7 }  { challengeBits_ce0 mem_ce 1 1 }  { challengeBits_we0 mem_we 1 1 }  { challengeBits_d0 mem_din 1 8 }  { challengeBits_q0 mem_dout 0 8 } } }
	salt_0 { ap_memory {  { salt_0_address0 mem_address 1 5 }  { salt_0_ce0 mem_ce 1 1 }  { salt_0_q0 mem_dout 0 8 } } }
	message { ap_memory {  { message_address0 mem_address 1 17 }  { message_ce0 mem_ce 1 1 }  { message_q0 mem_dout 0 8 } } }
	messageByteLength { ap_none {  { messageByteLength in_data 0 64 } } }
	viewOutputs { ap_memory {  { viewOutputs_address0 mem_address 1 15 }  { viewOutputs_ce0 mem_ce 1 1 }  { viewOutputs_q0 mem_dout 0 32 } } }
}
