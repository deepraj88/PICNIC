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
	{ as_hashes int 8 regular {array 21024 { 1 3 } 1 1 }  }
	{ challengeBits int 8 regular {array 55 { 2 3 } 1 1 }  }
	{ salt_0 int 8 regular {array 32 { 1 3 } 1 1 }  }
	{ message int 8 regular {array 37336 { 1 3 } 1 1 }  }
	{ messageByteLength int 64 regular  }
	{ viewOutputs int 32 regular {array 10512 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "circuitOutput", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "plaintext", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "as_hashes", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "challengeBits", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "salt_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "message", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "messageByteLength", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "viewOutputs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "viewOutputs","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 656,"step" : 1},{"low" : 0,"up" : 15,"step" : 1}]}]}], "extern" : 0} ]}
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
	{ as_hashes_address0 sc_out sc_lv 15 signal 2 } 
	{ as_hashes_ce0 sc_out sc_logic 1 signal 2 } 
	{ as_hashes_q0 sc_in sc_lv 8 signal 2 } 
	{ challengeBits_address0 sc_out sc_lv 6 signal 3 } 
	{ challengeBits_ce0 sc_out sc_logic 1 signal 3 } 
	{ challengeBits_we0 sc_out sc_logic 1 signal 3 } 
	{ challengeBits_d0 sc_out sc_lv 8 signal 3 } 
	{ challengeBits_q0 sc_in sc_lv 8 signal 3 } 
	{ salt_0_address0 sc_out sc_lv 5 signal 4 } 
	{ salt_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ salt_0_q0 sc_in sc_lv 8 signal 4 } 
	{ message_address0 sc_out sc_lv 16 signal 5 } 
	{ message_ce0 sc_out sc_logic 1 signal 5 } 
	{ message_q0 sc_in sc_lv 8 signal 5 } 
	{ messageByteLength sc_in sc_lv 64 signal 6 } 
	{ viewOutputs_address0 sc_out sc_lv 14 signal 7 } 
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
 	{ "name": "as_hashes_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "as_hashes", "role": "address0" }} , 
 	{ "name": "as_hashes_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "as_hashes", "role": "ce0" }} , 
 	{ "name": "as_hashes_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "as_hashes", "role": "q0" }} , 
 	{ "name": "challengeBits_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "challengeBits", "role": "address0" }} , 
 	{ "name": "challengeBits_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "challengeBits", "role": "ce0" }} , 
 	{ "name": "challengeBits_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "challengeBits", "role": "we0" }} , 
 	{ "name": "challengeBits_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "challengeBits", "role": "d0" }} , 
 	{ "name": "challengeBits_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "challengeBits", "role": "q0" }} , 
 	{ "name": "salt_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "salt_0", "role": "address0" }} , 
 	{ "name": "salt_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "salt_0", "role": "ce0" }} , 
 	{ "name": "salt_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "salt_0", "role": "q0" }} , 
 	{ "name": "message_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "message", "role": "address0" }} , 
 	{ "name": "message_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "message", "role": "ce0" }} , 
 	{ "name": "message_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "message", "role": "q0" }} , 
 	{ "name": "messageByteLength", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "messageByteLength", "role": "default" }} , 
 	{ "name": "viewOutputs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "viewOutputs", "role": "address0" }} , 
 	{ "name": "viewOutputs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "viewOutputs", "role": "ce0" }} , 
 	{ "name": "viewOutputs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "viewOutputs", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "19", "32", "45"],
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
			{"State" : "ap_ST_fsm_state95", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_fu_1758"},
			{"State" : "ap_ST_fsm_state112", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_fu_1758"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_1770"},
			{"State" : "ap_ST_fsm_state100", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_1770"},
			{"State" : "ap_ST_fsm_state93", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_1782"},
			{"State" : "ap_ST_fsm_state110", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_1782"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_1793"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_1793"},
			{"State" : "ap_ST_fsm_state29", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_1793"},
			{"State" : "ap_ST_fsm_state33", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_1793"},
			{"State" : "ap_ST_fsm_state48", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_1793"},
			{"State" : "ap_ST_fsm_state52", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_1793"},
			{"State" : "ap_ST_fsm_state67", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_1793"},
			{"State" : "ap_ST_fsm_state71", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_1793"},
			{"State" : "ap_ST_fsm_state77", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_1793"},
			{"State" : "ap_ST_fsm_state81", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_1793"},
			{"State" : "ap_ST_fsm_state87", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_1793"},
			{"State" : "ap_ST_fsm_state91", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_1793"},
			{"State" : "ap_ST_fsm_state105", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_1793"},
			{"State" : "ap_ST_fsm_state109", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_1793"}],
		"Port" : [
			{"Name" : "circuitOutput", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "as_hashes", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "challengeBits", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "salt_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "message", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "messageByteLength", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_Keccak_HashSqueeze_fu_1758", "Port" : "KeccakRhoOffsets"},
					{"ID" : "45", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_1793", "Port" : "KeccakRhoOffsets"},
					{"ID" : "19", "SubInstance" : "grp_HashInit_fu_1770", "Port" : "KeccakRhoOffsets"},
					{"ID" : "32", "SubInstance" : "grp_HashFinal_fu_1782", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_Keccak_HashSqueeze_fu_1758", "Port" : "KeccakRoundConstants"},
					{"ID" : "45", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_1793", "Port" : "KeccakRoundConstants"},
					{"ID" : "19", "SubInstance" : "grp_HashInit_fu_1770", "Port" : "KeccakRoundConstants"},
					{"ID" : "32", "SubInstance" : "grp_HashFinal_fu_1782", "Port" : "KeccakRoundConstants"}]},
			{"Name" : "viewOutputs", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_1_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_2_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hash_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctx_sponge_state_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_fu_1758", "Parent" : "0", "Child" : ["7"],
		"CDFG" : "Keccak_HashSqueeze",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_246"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_246"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_246"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_246", "Port" : "state"}]},
			{"Name" : "instance_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_246", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_246", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_fu_1758.grp_KeccakP1600_Permute_s_fu_246", "Parent" : "6", "Child" : ["8", "9", "10", "11", "14", "17"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19184", "EstimateLatencyMax" : "19184",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_225"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_230"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_fu_1758.grp_KeccakP1600_Permute_s_fu_246.KeccakRhoOffsets_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_fu_1758.grp_KeccakP1600_Permute_s_fu_246.KeccakRoundConstants_U", "Parent" : "7"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_fu_1758.grp_KeccakP1600_Permute_s_fu_246.stateAsWords_U", "Parent" : "7"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_fu_1758.grp_KeccakP1600_Permute_s_fu_246.grp_pi_fu_225", "Parent" : "7", "Child" : ["12", "13"],
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
	{"ID" : "12", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_fu_1758.grp_KeccakP1600_Permute_s_fu_246.grp_pi_fu_225.tempA_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_fu_1758.grp_KeccakP1600_Permute_s_fu_246.grp_pi_fu_225.crypto_sign_open_bkb_U16", "Parent" : "11"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_fu_1758.grp_KeccakP1600_Permute_s_fu_246.grp_theta_fu_230", "Parent" : "7", "Child" : ["15", "16"],
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
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_fu_1758.grp_KeccakP1600_Permute_s_fu_246.grp_theta_fu_230.C_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_fu_1758.grp_KeccakP1600_Permute_s_fu_246.grp_theta_fu_230.D_U", "Parent" : "14"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_fu_1758.grp_KeccakP1600_Permute_s_fu_246.grp_chi_fu_235", "Parent" : "7", "Child" : ["18"],
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
	{"ID" : "18", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_fu_1758.grp_KeccakP1600_Permute_s_fu_246.grp_chi_fu_235.C_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_1770", "Parent" : "0", "Child" : ["20"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_116"}],
		"Port" : [
			{"Name" : "ctx_sponge_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_116", "Port" : "state"}]},
			{"Name" : "hashPrefix", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_116", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_116", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_1770.grp_KeccakP1600_Permute_s_fu_116", "Parent" : "19", "Child" : ["21", "22", "23", "24", "27", "30"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19184", "EstimateLatencyMax" : "19184",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_225"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_230"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_1770.grp_KeccakP1600_Permute_s_fu_116.KeccakRhoOffsets_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_1770.grp_KeccakP1600_Permute_s_fu_116.KeccakRoundConstants_U", "Parent" : "20"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_1770.grp_KeccakP1600_Permute_s_fu_116.stateAsWords_U", "Parent" : "20"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_1770.grp_KeccakP1600_Permute_s_fu_116.grp_pi_fu_225", "Parent" : "20", "Child" : ["25", "26"],
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
	{"ID" : "25", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_1770.grp_KeccakP1600_Permute_s_fu_116.grp_pi_fu_225.tempA_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_1770.grp_KeccakP1600_Permute_s_fu_116.grp_pi_fu_225.crypto_sign_open_bkb_U16", "Parent" : "24"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_1770.grp_KeccakP1600_Permute_s_fu_116.grp_theta_fu_230", "Parent" : "20", "Child" : ["28", "29"],
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
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_1770.grp_KeccakP1600_Permute_s_fu_116.grp_theta_fu_230.C_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_1770.grp_KeccakP1600_Permute_s_fu_116.grp_theta_fu_230.D_U", "Parent" : "27"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_1770.grp_KeccakP1600_Permute_s_fu_116.grp_chi_fu_235", "Parent" : "20", "Child" : ["31"],
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
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_1770.grp_KeccakP1600_Permute_s_fu_116.grp_chi_fu_235.C_U", "Parent" : "30"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_1782", "Parent" : "0", "Child" : ["33"],
		"CDFG" : "HashFinal",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19189", "EstimateLatencyMax" : "19189",
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
					{"ID" : "33", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "state"}]},
			{"Name" : "ctx_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_1782.grp_KeccakP1600_Permute_s_fu_54", "Parent" : "32", "Child" : ["34", "35", "36", "37", "40", "43"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19184", "EstimateLatencyMax" : "19184",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_225"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_230"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_1782.grp_KeccakP1600_Permute_s_fu_54.KeccakRhoOffsets_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_1782.grp_KeccakP1600_Permute_s_fu_54.KeccakRoundConstants_U", "Parent" : "33"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_1782.grp_KeccakP1600_Permute_s_fu_54.stateAsWords_U", "Parent" : "33"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_1782.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_225", "Parent" : "33", "Child" : ["38", "39"],
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
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_1782.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_225.tempA_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_1782.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_225.crypto_sign_open_bkb_U16", "Parent" : "37"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_1782.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_230", "Parent" : "33", "Child" : ["41", "42"],
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
	{"ID" : "41", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_1782.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_230.C_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_1782.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_230.D_U", "Parent" : "40"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_1782.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_235", "Parent" : "33", "Child" : ["44"],
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
	{"ID" : "44", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_1782.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_235.C_U", "Parent" : "43"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakP1600_Permute_s_fu_1793", "Parent" : "0", "Child" : ["46", "47", "48", "49", "52", "55"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19184", "EstimateLatencyMax" : "19184",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_225"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_230"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakP1600_Permute_s_fu_1793.KeccakRhoOffsets_U", "Parent" : "45"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakP1600_Permute_s_fu_1793.KeccakRoundConstants_U", "Parent" : "45"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakP1600_Permute_s_fu_1793.stateAsWords_U", "Parent" : "45"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakP1600_Permute_s_fu_1793.grp_pi_fu_225", "Parent" : "45", "Child" : ["50", "51"],
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
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakP1600_Permute_s_fu_1793.grp_pi_fu_225.tempA_U", "Parent" : "49"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakP1600_Permute_s_fu_1793.grp_pi_fu_225.crypto_sign_open_bkb_U16", "Parent" : "49"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakP1600_Permute_s_fu_1793.grp_theta_fu_230", "Parent" : "45", "Child" : ["53", "54"],
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
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakP1600_Permute_s_fu_1793.grp_theta_fu_230.C_U", "Parent" : "52"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakP1600_Permute_s_fu_1793.grp_theta_fu_230.D_U", "Parent" : "52"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakP1600_Permute_s_fu_1793.grp_chi_fu_235", "Parent" : "45", "Child" : ["56"],
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
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakP1600_Permute_s_fu_1793.grp_chi_fu_235.C_U", "Parent" : "55"}]}


set ArgLastReadFirstWriteLatency {
	H3_2 {
		circuitOutput {Type I LastRead 10 FirstWrite -1}
		plaintext {Type I LastRead 20 FirstWrite -1}
		as_hashes {Type I LastRead 8 FirstWrite -1}
		challengeBits {Type IO LastRead 31 FirstWrite 1}
		salt_0 {Type I LastRead 27 FirstWrite -1}
		message {Type I LastRead 28 FirstWrite -1}
		messageByteLength {Type I LastRead 1 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}
		viewOutputs {Type I LastRead 9 FirstWrite -1}}
	Keccak_HashSqueeze {
		instance_sponge_stat {Type IO LastRead 10 FirstWrite 1}
		instance_sponge_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque {Type I LastRead 0 FirstWrite -1}
		data {Type O LastRead -1 FirstWrite 10}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	KeccakP1600_Permute_s {
		state {Type IO LastRead 2 FirstWrite 5}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	pi {
		A {Type IO LastRead 2 FirstWrite 15}}
	theta {
		A {Type IO LastRead 5 FirstWrite 6}}
	chi {
		A {Type IO LastRead 4 FirstWrite 4}}
	HashInit {
		ctx_sponge_state {Type IO LastRead 3 FirstWrite 1}
		hashPrefix {Type I LastRead 0 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	KeccakP1600_Permute_s {
		state {Type IO LastRead 2 FirstWrite 5}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	pi {
		A {Type IO LastRead 2 FirstWrite 15}}
	theta {
		A {Type IO LastRead 5 FirstWrite 6}}
	chi {
		A {Type IO LastRead 4 FirstWrite 4}}
	HashFinal {
		ctx_sponge_state {Type IO LastRead 2 FirstWrite 1}
		ctx_sponge_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	KeccakP1600_Permute_s {
		state {Type IO LastRead 2 FirstWrite 5}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	pi {
		A {Type IO LastRead 2 FirstWrite 15}}
	theta {
		A {Type IO LastRead 5 FirstWrite 6}}
	chi {
		A {Type IO LastRead 4 FirstWrite 4}}
	KeccakP1600_Permute_s {
		state {Type IO LastRead 2 FirstWrite 5}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	pi {
		A {Type IO LastRead 2 FirstWrite 15}}
	theta {
		A {Type IO LastRead 5 FirstWrite 6}}
	chi {
		A {Type IO LastRead 4 FirstWrite 4}}}

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
	as_hashes { ap_memory {  { as_hashes_address0 mem_address 1 15 }  { as_hashes_ce0 mem_ce 1 1 }  { as_hashes_q0 mem_dout 0 8 } } }
	challengeBits { ap_memory {  { challengeBits_address0 mem_address 1 6 }  { challengeBits_ce0 mem_ce 1 1 }  { challengeBits_we0 mem_we 1 1 }  { challengeBits_d0 mem_din 1 8 }  { challengeBits_q0 mem_dout 0 8 } } }
	salt_0 { ap_memory {  { salt_0_address0 mem_address 1 5 }  { salt_0_ce0 mem_ce 1 1 }  { salt_0_q0 mem_dout 0 8 } } }
	message { ap_memory {  { message_address0 mem_address 1 16 }  { message_ce0 mem_ce 1 1 }  { message_q0 mem_dout 0 8 } } }
	messageByteLength { ap_none {  { messageByteLength in_data 0 64 } } }
	viewOutputs { ap_memory {  { viewOutputs_address0 mem_address 1 14 }  { viewOutputs_ce0 mem_ce 1 1 }  { viewOutputs_q0 mem_dout 0 32 } } }
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
	{ as_hashes int 8 regular {array 21024 { 1 3 } 1 1 }  }
	{ challengeBits int 8 regular {array 55 { 2 3 } 1 1 }  }
	{ salt_0 int 8 regular {array 32 { 1 3 } 1 1 }  }
	{ message int 8 regular {array 37336 { 1 3 } 1 1 }  }
	{ messageByteLength int 64 regular  }
	{ viewOutputs int 32 regular {array 10512 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "circuitOutput", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "plaintext", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "as_hashes", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "challengeBits", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "salt_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "message", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "messageByteLength", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "viewOutputs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "viewOutputs","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 656,"step" : 1},{"low" : 0,"up" : 15,"step" : 1}]}]}], "extern" : 0} ]}
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
	{ as_hashes_address0 sc_out sc_lv 15 signal 2 } 
	{ as_hashes_ce0 sc_out sc_logic 1 signal 2 } 
	{ as_hashes_q0 sc_in sc_lv 8 signal 2 } 
	{ challengeBits_address0 sc_out sc_lv 6 signal 3 } 
	{ challengeBits_ce0 sc_out sc_logic 1 signal 3 } 
	{ challengeBits_we0 sc_out sc_logic 1 signal 3 } 
	{ challengeBits_d0 sc_out sc_lv 8 signal 3 } 
	{ challengeBits_q0 sc_in sc_lv 8 signal 3 } 
	{ salt_0_address0 sc_out sc_lv 5 signal 4 } 
	{ salt_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ salt_0_q0 sc_in sc_lv 8 signal 4 } 
	{ message_address0 sc_out sc_lv 16 signal 5 } 
	{ message_ce0 sc_out sc_logic 1 signal 5 } 
	{ message_q0 sc_in sc_lv 8 signal 5 } 
	{ messageByteLength sc_in sc_lv 64 signal 6 } 
	{ viewOutputs_address0 sc_out sc_lv 14 signal 7 } 
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
 	{ "name": "as_hashes_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "as_hashes", "role": "address0" }} , 
 	{ "name": "as_hashes_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "as_hashes", "role": "ce0" }} , 
 	{ "name": "as_hashes_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "as_hashes", "role": "q0" }} , 
 	{ "name": "challengeBits_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "challengeBits", "role": "address0" }} , 
 	{ "name": "challengeBits_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "challengeBits", "role": "ce0" }} , 
 	{ "name": "challengeBits_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "challengeBits", "role": "we0" }} , 
 	{ "name": "challengeBits_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "challengeBits", "role": "d0" }} , 
 	{ "name": "challengeBits_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "challengeBits", "role": "q0" }} , 
 	{ "name": "salt_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "salt_0", "role": "address0" }} , 
 	{ "name": "salt_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "salt_0", "role": "ce0" }} , 
 	{ "name": "salt_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "salt_0", "role": "q0" }} , 
 	{ "name": "message_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "message", "role": "address0" }} , 
 	{ "name": "message_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "message", "role": "ce0" }} , 
 	{ "name": "message_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "message", "role": "q0" }} , 
 	{ "name": "messageByteLength", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "messageByteLength", "role": "default" }} , 
 	{ "name": "viewOutputs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "viewOutputs", "role": "address0" }} , 
 	{ "name": "viewOutputs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "viewOutputs", "role": "ce0" }} , 
 	{ "name": "viewOutputs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "viewOutputs", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "19", "32", "45", "58", "71", "84", "97", "111"],
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
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdate_2_fu_359"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdate_2_fu_359"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_2_fu_372"},
			{"State" : "ap_ST_fsm_state34", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_2_fu_372"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_14_fu_384"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_6_fu_397"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_413"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_8_fu_424"},
			{"State" : "ap_ST_fsm_state30", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_13_fu_436"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_447"},
			{"State" : "ap_ST_fsm_state28", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_447"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_459"},
			{"State" : "ap_ST_fsm_state32", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_459"}],
		"Port" : [
			{"Name" : "circuitOutput", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_HashUpdate_2_fu_359", "Port" : "data"}]},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_HashUpdate_2_fu_359", "Port" : "data"}]},
			{"Name" : "as_hashes", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_KeccakWidth1600_Spon_6_fu_397", "Port" : "data"}]},
			{"Name" : "challengeBits", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "salt_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "71", "SubInstance" : "grp_KeccakWidth1600_Spon_8_fu_424", "Port" : "data_0"}]},
			{"Name" : "message", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_KeccakWidth1600_Spon_14_fu_384", "Port" : "data"}]},
			{"Name" : "messageByteLength", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_HashFinal_fu_459", "Port" : "KeccakRhoOffsets"},
					{"ID" : "97", "SubInstance" : "grp_HashInit_fu_447", "Port" : "KeccakRhoOffsets"},
					{"ID" : "4", "SubInstance" : "grp_HashUpdate_2_fu_359", "Port" : "KeccakRhoOffsets"},
					{"ID" : "71", "SubInstance" : "grp_KeccakWidth1600_Spon_8_fu_424", "Port" : "KeccakRhoOffsets"},
					{"ID" : "32", "SubInstance" : "grp_KeccakWidth1600_Spon_14_fu_384", "Port" : "KeccakRhoOffsets"},
					{"ID" : "19", "SubInstance" : "grp_KeccakWidth1600_Spon_2_fu_372", "Port" : "KeccakRhoOffsets"},
					{"ID" : "45", "SubInstance" : "grp_KeccakWidth1600_Spon_6_fu_397", "Port" : "KeccakRhoOffsets"},
					{"ID" : "84", "SubInstance" : "grp_KeccakWidth1600_Spon_13_fu_436", "Port" : "KeccakRhoOffsets"},
					{"ID" : "58", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_413", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_HashFinal_fu_459", "Port" : "KeccakRoundConstants"},
					{"ID" : "97", "SubInstance" : "grp_HashInit_fu_447", "Port" : "KeccakRoundConstants"},
					{"ID" : "4", "SubInstance" : "grp_HashUpdate_2_fu_359", "Port" : "KeccakRoundConstants"},
					{"ID" : "71", "SubInstance" : "grp_KeccakWidth1600_Spon_8_fu_424", "Port" : "KeccakRoundConstants"},
					{"ID" : "32", "SubInstance" : "grp_KeccakWidth1600_Spon_14_fu_384", "Port" : "KeccakRoundConstants"},
					{"ID" : "19", "SubInstance" : "grp_KeccakWidth1600_Spon_2_fu_372", "Port" : "KeccakRoundConstants"},
					{"ID" : "45", "SubInstance" : "grp_KeccakWidth1600_Spon_6_fu_397", "Port" : "KeccakRoundConstants"},
					{"ID" : "84", "SubInstance" : "grp_KeccakWidth1600_Spon_13_fu_436", "Port" : "KeccakRoundConstants"},
					{"ID" : "58", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_413", "Port" : "KeccakRoundConstants"}]},
			{"Name" : "viewOutputs", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hash_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctx_sponge_state_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_359", "Parent" : "0", "Child" : ["5", "6"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_162"}],
		"Port" : [
			{"Name" : "ctx_sponge_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_162", "Port" : "instance_state"}]},
			{"Name" : "ctx_sponge_byteIOInd", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_162", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_162", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_359.temp_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_359.grp_KeccakWidth1600_Spon_9_fu_162", "Parent" : "4", "Child" : ["7"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_359.grp_KeccakWidth1600_Spon_9_fu_162.grp_KeccakP1600_Permute_s_fu_176", "Parent" : "6", "Child" : ["8", "9", "10", "11", "14", "16"],
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
	{"ID" : "8", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_359.grp_KeccakWidth1600_Spon_9_fu_162.grp_KeccakP1600_Permute_s_fu_176.KeccakRhoOffsets_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_359.grp_KeccakWidth1600_Spon_9_fu_162.grp_KeccakP1600_Permute_s_fu_176.KeccakRoundConstants_U", "Parent" : "7"},
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_359.grp_KeccakWidth1600_Spon_9_fu_162.grp_KeccakP1600_Permute_s_fu_176.stateAsWords_U", "Parent" : "7"},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_359.grp_KeccakWidth1600_Spon_9_fu_162.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225", "Parent" : "7", "Child" : ["12", "13"],
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
	{"ID" : "12", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_359.grp_KeccakWidth1600_Spon_9_fu_162.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.C_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_359.grp_KeccakWidth1600_Spon_9_fu_162.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.D_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_359.grp_KeccakWidth1600_Spon_9_fu_162.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230", "Parent" : "7", "Child" : ["15"],
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
	{"ID" : "15", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_359.grp_KeccakWidth1600_Spon_9_fu_162.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230.C_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_359.grp_KeccakWidth1600_Spon_9_fu_162.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235", "Parent" : "7", "Child" : ["17", "18"],
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
	{"ID" : "17", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_359.grp_KeccakWidth1600_Spon_9_fu_162.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.tempA_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_359.grp_KeccakWidth1600_Spon_9_fu_162.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "16"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_372", "Parent" : "0", "Child" : ["20"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_246"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_246"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_246"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_246", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_246", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_246", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_372.grp_KeccakP1600_Permute_s_fu_246", "Parent" : "19", "Child" : ["21", "22", "23", "24", "27", "29"],
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
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_372.grp_KeccakP1600_Permute_s_fu_246.KeccakRhoOffsets_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_372.grp_KeccakP1600_Permute_s_fu_246.KeccakRoundConstants_U", "Parent" : "20"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_372.grp_KeccakP1600_Permute_s_fu_246.stateAsWords_U", "Parent" : "20"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_372.grp_KeccakP1600_Permute_s_fu_246.grp_theta_fu_225", "Parent" : "20", "Child" : ["25", "26"],
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
	{"ID" : "25", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_372.grp_KeccakP1600_Permute_s_fu_246.grp_theta_fu_225.C_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_372.grp_KeccakP1600_Permute_s_fu_246.grp_theta_fu_225.D_U", "Parent" : "24"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_372.grp_KeccakP1600_Permute_s_fu_246.grp_chi_fu_230", "Parent" : "20", "Child" : ["28"],
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
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_372.grp_KeccakP1600_Permute_s_fu_246.grp_chi_fu_230.C_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_372.grp_KeccakP1600_Permute_s_fu_246.grp_pi_fu_235", "Parent" : "20", "Child" : ["30", "31"],
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
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_372.grp_KeccakP1600_Permute_s_fu_246.grp_pi_fu_235.tempA_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_372.grp_KeccakP1600_Permute_s_fu_246.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "29"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_14_fu_384", "Parent" : "0", "Child" : ["33"],
		"CDFG" : "KeccakWidth1600_Spon_14",
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
					{"ID" : "33", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_160", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dataByteLen", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_160", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_160", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_14_fu_384.grp_KeccakP1600_Permute_s_fu_160", "Parent" : "32", "Child" : ["34", "35", "36", "37", "40", "42"],
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
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_14_fu_384.grp_KeccakP1600_Permute_s_fu_160.KeccakRhoOffsets_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_14_fu_384.grp_KeccakP1600_Permute_s_fu_160.KeccakRoundConstants_U", "Parent" : "33"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_14_fu_384.grp_KeccakP1600_Permute_s_fu_160.stateAsWords_U", "Parent" : "33"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_14_fu_384.grp_KeccakP1600_Permute_s_fu_160.grp_theta_fu_225", "Parent" : "33", "Child" : ["38", "39"],
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
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_14_fu_384.grp_KeccakP1600_Permute_s_fu_160.grp_theta_fu_225.C_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_14_fu_384.grp_KeccakP1600_Permute_s_fu_160.grp_theta_fu_225.D_U", "Parent" : "37"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_14_fu_384.grp_KeccakP1600_Permute_s_fu_160.grp_chi_fu_230", "Parent" : "33", "Child" : ["41"],
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
	{"ID" : "41", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_14_fu_384.grp_KeccakP1600_Permute_s_fu_160.grp_chi_fu_230.C_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_14_fu_384.grp_KeccakP1600_Permute_s_fu_160.grp_pi_fu_235", "Parent" : "33", "Child" : ["43", "44"],
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
	{"ID" : "43", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_14_fu_384.grp_KeccakP1600_Permute_s_fu_160.grp_pi_fu_235.tempA_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_14_fu_384.grp_KeccakP1600_Permute_s_fu_160.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "42"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_397", "Parent" : "0", "Child" : ["46"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_397.grp_KeccakP1600_Permute_s_fu_204", "Parent" : "45", "Child" : ["47", "48", "49", "50", "53", "55"],
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
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_397.grp_KeccakP1600_Permute_s_fu_204.KeccakRhoOffsets_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_397.grp_KeccakP1600_Permute_s_fu_204.KeccakRoundConstants_U", "Parent" : "46"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_397.grp_KeccakP1600_Permute_s_fu_204.stateAsWords_U", "Parent" : "46"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_397.grp_KeccakP1600_Permute_s_fu_204.grp_theta_fu_225", "Parent" : "46", "Child" : ["51", "52"],
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
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_397.grp_KeccakP1600_Permute_s_fu_204.grp_theta_fu_225.C_U", "Parent" : "50"},
	{"ID" : "52", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_397.grp_KeccakP1600_Permute_s_fu_204.grp_theta_fu_225.D_U", "Parent" : "50"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_397.grp_KeccakP1600_Permute_s_fu_204.grp_chi_fu_230", "Parent" : "46", "Child" : ["54"],
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
	{"ID" : "54", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_397.grp_KeccakP1600_Permute_s_fu_204.grp_chi_fu_230.C_U", "Parent" : "53"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_397.grp_KeccakP1600_Permute_s_fu_204.grp_pi_fu_235", "Parent" : "46", "Child" : ["56", "57"],
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
	{"ID" : "56", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_397.grp_KeccakP1600_Permute_s_fu_204.grp_pi_fu_235.tempA_U", "Parent" : "55"},
	{"ID" : "57", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_397.grp_KeccakP1600_Permute_s_fu_204.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "55"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_9_fu_413", "Parent" : "0", "Child" : ["59"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_9_fu_413.grp_KeccakP1600_Permute_s_fu_176", "Parent" : "58", "Child" : ["60", "61", "62", "63", "66", "68"],
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
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_9_fu_413.grp_KeccakP1600_Permute_s_fu_176.KeccakRhoOffsets_U", "Parent" : "59"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_9_fu_413.grp_KeccakP1600_Permute_s_fu_176.KeccakRoundConstants_U", "Parent" : "59"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_9_fu_413.grp_KeccakP1600_Permute_s_fu_176.stateAsWords_U", "Parent" : "59"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_9_fu_413.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225", "Parent" : "59", "Child" : ["64", "65"],
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
	{"ID" : "64", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_9_fu_413.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.C_U", "Parent" : "63"},
	{"ID" : "65", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_9_fu_413.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.D_U", "Parent" : "63"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_9_fu_413.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230", "Parent" : "59", "Child" : ["67"],
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
	{"ID" : "67", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_9_fu_413.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230.C_U", "Parent" : "66"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_9_fu_413.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235", "Parent" : "59", "Child" : ["69", "70"],
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
	{"ID" : "69", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_9_fu_413.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.tempA_U", "Parent" : "68"},
	{"ID" : "70", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_9_fu_413.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "68"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_8_fu_424", "Parent" : "0", "Child" : ["72"],
		"CDFG" : "KeccakWidth1600_Spon_8",
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
					{"ID" : "72", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_8_fu_424.grp_KeccakP1600_Permute_s_fu_176", "Parent" : "71", "Child" : ["73", "74", "75", "76", "79", "81"],
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
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_8_fu_424.grp_KeccakP1600_Permute_s_fu_176.KeccakRhoOffsets_U", "Parent" : "72"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_8_fu_424.grp_KeccakP1600_Permute_s_fu_176.KeccakRoundConstants_U", "Parent" : "72"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_8_fu_424.grp_KeccakP1600_Permute_s_fu_176.stateAsWords_U", "Parent" : "72"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_8_fu_424.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225", "Parent" : "72", "Child" : ["77", "78"],
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
	{"ID" : "77", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_8_fu_424.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.C_U", "Parent" : "76"},
	{"ID" : "78", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_8_fu_424.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.D_U", "Parent" : "76"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_8_fu_424.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230", "Parent" : "72", "Child" : ["80"],
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
	{"ID" : "80", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_8_fu_424.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230.C_U", "Parent" : "79"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_8_fu_424.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235", "Parent" : "72", "Child" : ["82", "83"],
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
	{"ID" : "82", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_8_fu_424.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.tempA_U", "Parent" : "81"},
	{"ID" : "83", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_8_fu_424.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "81"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_436", "Parent" : "0", "Child" : ["85"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_436.grp_KeccakP1600_Permute_s_fu_176", "Parent" : "84", "Child" : ["86", "87", "88", "89", "92", "94"],
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
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_436.grp_KeccakP1600_Permute_s_fu_176.KeccakRhoOffsets_U", "Parent" : "85"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_436.grp_KeccakP1600_Permute_s_fu_176.KeccakRoundConstants_U", "Parent" : "85"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_436.grp_KeccakP1600_Permute_s_fu_176.stateAsWords_U", "Parent" : "85"},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_436.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225", "Parent" : "85", "Child" : ["90", "91"],
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
	{"ID" : "90", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_436.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.C_U", "Parent" : "89"},
	{"ID" : "91", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_436.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.D_U", "Parent" : "89"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_436.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230", "Parent" : "85", "Child" : ["93"],
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
	{"ID" : "93", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_436.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230.C_U", "Parent" : "92"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_436.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235", "Parent" : "85", "Child" : ["95", "96"],
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
	{"ID" : "95", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_436.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.tempA_U", "Parent" : "94"},
	{"ID" : "96", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_436.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "94"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_447", "Parent" : "0", "Child" : ["98"],
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
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_12_fu_74"}],
		"Port" : [
			{"Name" : "ctx_sponge_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_KeccakWidth1600_Spon_12_fu_74", "Port" : "instance_state"}]},
			{"Name" : "hashPrefix", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_KeccakWidth1600_Spon_12_fu_74", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_KeccakWidth1600_Spon_12_fu_74", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_447.grp_KeccakWidth1600_Spon_12_fu_74", "Parent" : "97", "Child" : ["99"],
		"CDFG" : "KeccakWidth1600_Spon_12",
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
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_447.grp_KeccakWidth1600_Spon_12_fu_74.grp_KeccakP1600_Permute_s_fu_54", "Parent" : "98", "Child" : ["100", "101", "102", "103", "106", "108"],
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
	{"ID" : "100", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_447.grp_KeccakWidth1600_Spon_12_fu_74.grp_KeccakP1600_Permute_s_fu_54.KeccakRhoOffsets_U", "Parent" : "99"},
	{"ID" : "101", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_447.grp_KeccakWidth1600_Spon_12_fu_74.grp_KeccakP1600_Permute_s_fu_54.KeccakRoundConstants_U", "Parent" : "99"},
	{"ID" : "102", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_447.grp_KeccakWidth1600_Spon_12_fu_74.grp_KeccakP1600_Permute_s_fu_54.stateAsWords_U", "Parent" : "99"},
	{"ID" : "103", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_447.grp_KeccakWidth1600_Spon_12_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225", "Parent" : "99", "Child" : ["104", "105"],
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
	{"ID" : "104", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_447.grp_KeccakWidth1600_Spon_12_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.C_U", "Parent" : "103"},
	{"ID" : "105", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_447.grp_KeccakWidth1600_Spon_12_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.D_U", "Parent" : "103"},
	{"ID" : "106", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_447.grp_KeccakWidth1600_Spon_12_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230", "Parent" : "99", "Child" : ["107"],
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
	{"ID" : "107", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_447.grp_KeccakWidth1600_Spon_12_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230.C_U", "Parent" : "106"},
	{"ID" : "108", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_447.grp_KeccakWidth1600_Spon_12_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235", "Parent" : "99", "Child" : ["109", "110"],
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
	{"ID" : "109", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_447.grp_KeccakWidth1600_Spon_12_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.tempA_U", "Parent" : "108"},
	{"ID" : "110", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_447.grp_KeccakWidth1600_Spon_12_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "108"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_459", "Parent" : "0", "Child" : ["112"],
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
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_459.grp_KeccakP1600_Permute_s_fu_54", "Parent" : "111", "Child" : ["113", "114", "115", "116", "119", "121"],
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
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_459.grp_KeccakP1600_Permute_s_fu_54.KeccakRhoOffsets_U", "Parent" : "112"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_459.grp_KeccakP1600_Permute_s_fu_54.KeccakRoundConstants_U", "Parent" : "112"},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_459.grp_KeccakP1600_Permute_s_fu_54.stateAsWords_U", "Parent" : "112"},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_459.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225", "Parent" : "112", "Child" : ["117", "118"],
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
	{"ID" : "117", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_459.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.C_U", "Parent" : "116"},
	{"ID" : "118", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_459.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.D_U", "Parent" : "116"},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_459.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230", "Parent" : "112", "Child" : ["120"],
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
	{"ID" : "120", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_459.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230.C_U", "Parent" : "119"},
	{"ID" : "121", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_459.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235", "Parent" : "112", "Child" : ["122", "123"],
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
	{"ID" : "122", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_459.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.tempA_U", "Parent" : "121"},
	{"ID" : "123", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_459.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "121"}]}


set ArgLastReadFirstWriteLatency {
	H3_2 {
		circuitOutput {Type I LastRead 2 FirstWrite -1}
		plaintext {Type I LastRead 2 FirstWrite -1}
		as_hashes {Type I LastRead 4 FirstWrite -1}
		challengeBits {Type IO LastRead 17 FirstWrite 1}
		salt_0 {Type I LastRead 4 FirstWrite -1}
		message {Type I LastRead 4 FirstWrite -1}
		messageByteLength {Type I LastRead 1 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}
		viewOutputs {Type I LastRead 5 FirstWrite -1}}
	HashUpdate_2 {
		ctx_sponge_state {Type IO LastRead 4 FirstWrite 4}
		ctx_sponge_byteIOInd {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 2 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	KeccakWidth1600_Spon_9 {
		instance_state {Type IO LastRead 4 FirstWrite 4}
		instance_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 4 FirstWrite -1}
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
		instance_state {Type IO LastRead 10 FirstWrite 1}
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
	KeccakWidth1600_Spon_14 {
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
		data {Type I LastRead 4 FirstWrite -1}
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
	KeccakWidth1600_Spon_9 {
		instance_state {Type IO LastRead 4 FirstWrite 4}
		instance_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 4 FirstWrite -1}
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
	KeccakWidth1600_Spon_8 {
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
	KeccakWidth1600_Spon_13 {
		instance_state {Type IO LastRead 4 FirstWrite 4}
		instance_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 4 FirstWrite -1}
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
	KeccakWidth1600_Spon_12 {
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
	as_hashes { ap_memory {  { as_hashes_address0 mem_address 1 15 }  { as_hashes_ce0 mem_ce 1 1 }  { as_hashes_q0 mem_dout 0 8 } } }
	challengeBits { ap_memory {  { challengeBits_address0 mem_address 1 6 }  { challengeBits_ce0 mem_ce 1 1 }  { challengeBits_we0 mem_we 1 1 }  { challengeBits_d0 mem_din 1 8 }  { challengeBits_q0 mem_dout 0 8 } } }
	salt_0 { ap_memory {  { salt_0_address0 mem_address 1 5 }  { salt_0_ce0 mem_ce 1 1 }  { salt_0_q0 mem_dout 0 8 } } }
	message { ap_memory {  { message_address0 mem_address 1 16 }  { message_ce0 mem_ce 1 1 }  { message_q0 mem_dout 0 8 } } }
	messageByteLength { ap_none {  { messageByteLength in_data 0 64 } } }
	viewOutputs { ap_memory {  { viewOutputs_address0 mem_address 1 14 }  { viewOutputs_ce0 mem_ce 1 1 }  { viewOutputs_q0 mem_dout 0 32 } } }
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
	{ as_hashes int 8 regular {array 21024 { 1 3 } 1 1 }  }
	{ challengeBits int 8 regular {array 55 { 2 3 } 1 1 }  }
	{ salt_0 int 8 regular {array 32 { 1 3 } 1 1 }  }
	{ message int 8 regular {array 37336 { 1 3 } 1 1 }  }
	{ messageByteLength int 64 regular  }
	{ viewOutputs int 32 regular {array 10512 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "circuitOutput", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "plaintext", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "as_hashes", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "challengeBits", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "salt_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "message", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "messageByteLength", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "viewOutputs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "viewOutputs","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 656,"step" : 1},{"low" : 0,"up" : 15,"step" : 1}]}]}], "extern" : 0} ]}
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
	{ as_hashes_address0 sc_out sc_lv 15 signal 2 } 
	{ as_hashes_ce0 sc_out sc_logic 1 signal 2 } 
	{ as_hashes_q0 sc_in sc_lv 8 signal 2 } 
	{ challengeBits_address0 sc_out sc_lv 6 signal 3 } 
	{ challengeBits_ce0 sc_out sc_logic 1 signal 3 } 
	{ challengeBits_we0 sc_out sc_logic 1 signal 3 } 
	{ challengeBits_d0 sc_out sc_lv 8 signal 3 } 
	{ challengeBits_q0 sc_in sc_lv 8 signal 3 } 
	{ salt_0_address0 sc_out sc_lv 5 signal 4 } 
	{ salt_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ salt_0_q0 sc_in sc_lv 8 signal 4 } 
	{ message_address0 sc_out sc_lv 16 signal 5 } 
	{ message_ce0 sc_out sc_logic 1 signal 5 } 
	{ message_q0 sc_in sc_lv 8 signal 5 } 
	{ messageByteLength sc_in sc_lv 64 signal 6 } 
	{ viewOutputs_address0 sc_out sc_lv 14 signal 7 } 
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
 	{ "name": "as_hashes_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "as_hashes", "role": "address0" }} , 
 	{ "name": "as_hashes_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "as_hashes", "role": "ce0" }} , 
 	{ "name": "as_hashes_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "as_hashes", "role": "q0" }} , 
 	{ "name": "challengeBits_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "challengeBits", "role": "address0" }} , 
 	{ "name": "challengeBits_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "challengeBits", "role": "ce0" }} , 
 	{ "name": "challengeBits_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "challengeBits", "role": "we0" }} , 
 	{ "name": "challengeBits_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "challengeBits", "role": "d0" }} , 
 	{ "name": "challengeBits_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "challengeBits", "role": "q0" }} , 
 	{ "name": "salt_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "salt_0", "role": "address0" }} , 
 	{ "name": "salt_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "salt_0", "role": "ce0" }} , 
 	{ "name": "salt_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "salt_0", "role": "q0" }} , 
 	{ "name": "message_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "message", "role": "address0" }} , 
 	{ "name": "message_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "message", "role": "ce0" }} , 
 	{ "name": "message_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "message", "role": "q0" }} , 
 	{ "name": "messageByteLength", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "messageByteLength", "role": "default" }} , 
 	{ "name": "viewOutputs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "viewOutputs", "role": "address0" }} , 
 	{ "name": "viewOutputs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "viewOutputs", "role": "ce0" }} , 
 	{ "name": "viewOutputs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "viewOutputs", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "19", "32", "45", "58", "71", "84", "97", "111"],
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
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdate_2_fu_359"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdate_2_fu_359"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_2_fu_372"},
			{"State" : "ap_ST_fsm_state34", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_2_fu_372"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_14_fu_384"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_6_fu_397"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_413"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_8_fu_424"},
			{"State" : "ap_ST_fsm_state30", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_13_fu_436"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_447"},
			{"State" : "ap_ST_fsm_state28", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_447"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_459"},
			{"State" : "ap_ST_fsm_state32", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_459"}],
		"Port" : [
			{"Name" : "circuitOutput", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_HashUpdate_2_fu_359", "Port" : "data"}]},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_HashUpdate_2_fu_359", "Port" : "data"}]},
			{"Name" : "as_hashes", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_KeccakWidth1600_Spon_6_fu_397", "Port" : "data"}]},
			{"Name" : "challengeBits", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "salt_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "71", "SubInstance" : "grp_KeccakWidth1600_Spon_8_fu_424", "Port" : "data_0"}]},
			{"Name" : "message", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_KeccakWidth1600_Spon_14_fu_384", "Port" : "data"}]},
			{"Name" : "messageByteLength", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_KeccakWidth1600_Spon_13_fu_436", "Port" : "KeccakRhoOffsets"},
					{"ID" : "97", "SubInstance" : "grp_HashInit_fu_447", "Port" : "KeccakRhoOffsets"},
					{"ID" : "71", "SubInstance" : "grp_KeccakWidth1600_Spon_8_fu_424", "Port" : "KeccakRhoOffsets"},
					{"ID" : "32", "SubInstance" : "grp_KeccakWidth1600_Spon_14_fu_384", "Port" : "KeccakRhoOffsets"},
					{"ID" : "19", "SubInstance" : "grp_KeccakWidth1600_Spon_2_fu_372", "Port" : "KeccakRhoOffsets"},
					{"ID" : "111", "SubInstance" : "grp_HashFinal_fu_459", "Port" : "KeccakRhoOffsets"},
					{"ID" : "45", "SubInstance" : "grp_KeccakWidth1600_Spon_6_fu_397", "Port" : "KeccakRhoOffsets"},
					{"ID" : "4", "SubInstance" : "grp_HashUpdate_2_fu_359", "Port" : "KeccakRhoOffsets"},
					{"ID" : "58", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_413", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_KeccakWidth1600_Spon_13_fu_436", "Port" : "KeccakRoundConstants"},
					{"ID" : "97", "SubInstance" : "grp_HashInit_fu_447", "Port" : "KeccakRoundConstants"},
					{"ID" : "71", "SubInstance" : "grp_KeccakWidth1600_Spon_8_fu_424", "Port" : "KeccakRoundConstants"},
					{"ID" : "32", "SubInstance" : "grp_KeccakWidth1600_Spon_14_fu_384", "Port" : "KeccakRoundConstants"},
					{"ID" : "19", "SubInstance" : "grp_KeccakWidth1600_Spon_2_fu_372", "Port" : "KeccakRoundConstants"},
					{"ID" : "111", "SubInstance" : "grp_HashFinal_fu_459", "Port" : "KeccakRoundConstants"},
					{"ID" : "45", "SubInstance" : "grp_KeccakWidth1600_Spon_6_fu_397", "Port" : "KeccakRoundConstants"},
					{"ID" : "4", "SubInstance" : "grp_HashUpdate_2_fu_359", "Port" : "KeccakRoundConstants"},
					{"ID" : "58", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_413", "Port" : "KeccakRoundConstants"}]},
			{"Name" : "viewOutputs", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hash_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctx_sponge_state_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_359", "Parent" : "0", "Child" : ["5", "6"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_162"}],
		"Port" : [
			{"Name" : "ctx_sponge_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_162", "Port" : "instance_state"}]},
			{"Name" : "ctx_sponge_byteIOInd", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_162", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_162", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_359.temp_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_359.grp_KeccakWidth1600_Spon_9_fu_162", "Parent" : "4", "Child" : ["7"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_359.grp_KeccakWidth1600_Spon_9_fu_162.grp_KeccakP1600_Permute_s_fu_176", "Parent" : "6", "Child" : ["8", "9", "10", "11", "14", "16"],
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
	{"ID" : "8", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_359.grp_KeccakWidth1600_Spon_9_fu_162.grp_KeccakP1600_Permute_s_fu_176.KeccakRhoOffsets_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_359.grp_KeccakWidth1600_Spon_9_fu_162.grp_KeccakP1600_Permute_s_fu_176.KeccakRoundConstants_U", "Parent" : "7"},
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_359.grp_KeccakWidth1600_Spon_9_fu_162.grp_KeccakP1600_Permute_s_fu_176.stateAsWords_U", "Parent" : "7"},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_359.grp_KeccakWidth1600_Spon_9_fu_162.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225", "Parent" : "7", "Child" : ["12", "13"],
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
	{"ID" : "12", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_359.grp_KeccakWidth1600_Spon_9_fu_162.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.C_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_359.grp_KeccakWidth1600_Spon_9_fu_162.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.D_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_359.grp_KeccakWidth1600_Spon_9_fu_162.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230", "Parent" : "7", "Child" : ["15"],
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
	{"ID" : "15", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_359.grp_KeccakWidth1600_Spon_9_fu_162.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230.C_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_359.grp_KeccakWidth1600_Spon_9_fu_162.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235", "Parent" : "7", "Child" : ["17", "18"],
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
	{"ID" : "17", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_359.grp_KeccakWidth1600_Spon_9_fu_162.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.tempA_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_359.grp_KeccakWidth1600_Spon_9_fu_162.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "16"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_372", "Parent" : "0", "Child" : ["20"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_246"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_246"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_246"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_246", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_246", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_246", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_372.grp_KeccakP1600_Permute_s_fu_246", "Parent" : "19", "Child" : ["21", "22", "23", "24", "27", "29"],
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
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_372.grp_KeccakP1600_Permute_s_fu_246.KeccakRhoOffsets_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_372.grp_KeccakP1600_Permute_s_fu_246.KeccakRoundConstants_U", "Parent" : "20"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_372.grp_KeccakP1600_Permute_s_fu_246.stateAsWords_U", "Parent" : "20"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_372.grp_KeccakP1600_Permute_s_fu_246.grp_theta_fu_225", "Parent" : "20", "Child" : ["25", "26"],
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
	{"ID" : "25", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_372.grp_KeccakP1600_Permute_s_fu_246.grp_theta_fu_225.C_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_372.grp_KeccakP1600_Permute_s_fu_246.grp_theta_fu_225.D_U", "Parent" : "24"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_372.grp_KeccakP1600_Permute_s_fu_246.grp_chi_fu_230", "Parent" : "20", "Child" : ["28"],
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
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_372.grp_KeccakP1600_Permute_s_fu_246.grp_chi_fu_230.C_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_372.grp_KeccakP1600_Permute_s_fu_246.grp_pi_fu_235", "Parent" : "20", "Child" : ["30", "31"],
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
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_372.grp_KeccakP1600_Permute_s_fu_246.grp_pi_fu_235.tempA_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_372.grp_KeccakP1600_Permute_s_fu_246.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "29"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_14_fu_384", "Parent" : "0", "Child" : ["33"],
		"CDFG" : "KeccakWidth1600_Spon_14",
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
					{"ID" : "33", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_160", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dataByteLen", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_160", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_160", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_14_fu_384.grp_KeccakP1600_Permute_s_fu_160", "Parent" : "32", "Child" : ["34", "35", "36", "37", "40", "42"],
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
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_14_fu_384.grp_KeccakP1600_Permute_s_fu_160.KeccakRhoOffsets_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_14_fu_384.grp_KeccakP1600_Permute_s_fu_160.KeccakRoundConstants_U", "Parent" : "33"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_14_fu_384.grp_KeccakP1600_Permute_s_fu_160.stateAsWords_U", "Parent" : "33"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_14_fu_384.grp_KeccakP1600_Permute_s_fu_160.grp_theta_fu_225", "Parent" : "33", "Child" : ["38", "39"],
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
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_14_fu_384.grp_KeccakP1600_Permute_s_fu_160.grp_theta_fu_225.C_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_14_fu_384.grp_KeccakP1600_Permute_s_fu_160.grp_theta_fu_225.D_U", "Parent" : "37"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_14_fu_384.grp_KeccakP1600_Permute_s_fu_160.grp_chi_fu_230", "Parent" : "33", "Child" : ["41"],
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
	{"ID" : "41", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_14_fu_384.grp_KeccakP1600_Permute_s_fu_160.grp_chi_fu_230.C_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_14_fu_384.grp_KeccakP1600_Permute_s_fu_160.grp_pi_fu_235", "Parent" : "33", "Child" : ["43", "44"],
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
	{"ID" : "43", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_14_fu_384.grp_KeccakP1600_Permute_s_fu_160.grp_pi_fu_235.tempA_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_14_fu_384.grp_KeccakP1600_Permute_s_fu_160.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "42"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_397", "Parent" : "0", "Child" : ["46"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_397.grp_KeccakP1600_Permute_s_fu_204", "Parent" : "45", "Child" : ["47", "48", "49", "50", "53", "55"],
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
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_397.grp_KeccakP1600_Permute_s_fu_204.KeccakRhoOffsets_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_397.grp_KeccakP1600_Permute_s_fu_204.KeccakRoundConstants_U", "Parent" : "46"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_397.grp_KeccakP1600_Permute_s_fu_204.stateAsWords_U", "Parent" : "46"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_397.grp_KeccakP1600_Permute_s_fu_204.grp_theta_fu_225", "Parent" : "46", "Child" : ["51", "52"],
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
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_397.grp_KeccakP1600_Permute_s_fu_204.grp_theta_fu_225.C_U", "Parent" : "50"},
	{"ID" : "52", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_397.grp_KeccakP1600_Permute_s_fu_204.grp_theta_fu_225.D_U", "Parent" : "50"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_397.grp_KeccakP1600_Permute_s_fu_204.grp_chi_fu_230", "Parent" : "46", "Child" : ["54"],
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
	{"ID" : "54", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_397.grp_KeccakP1600_Permute_s_fu_204.grp_chi_fu_230.C_U", "Parent" : "53"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_397.grp_KeccakP1600_Permute_s_fu_204.grp_pi_fu_235", "Parent" : "46", "Child" : ["56", "57"],
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
	{"ID" : "56", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_397.grp_KeccakP1600_Permute_s_fu_204.grp_pi_fu_235.tempA_U", "Parent" : "55"},
	{"ID" : "57", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_397.grp_KeccakP1600_Permute_s_fu_204.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "55"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_9_fu_413", "Parent" : "0", "Child" : ["59"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_9_fu_413.grp_KeccakP1600_Permute_s_fu_176", "Parent" : "58", "Child" : ["60", "61", "62", "63", "66", "68"],
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
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_9_fu_413.grp_KeccakP1600_Permute_s_fu_176.KeccakRhoOffsets_U", "Parent" : "59"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_9_fu_413.grp_KeccakP1600_Permute_s_fu_176.KeccakRoundConstants_U", "Parent" : "59"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_9_fu_413.grp_KeccakP1600_Permute_s_fu_176.stateAsWords_U", "Parent" : "59"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_9_fu_413.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225", "Parent" : "59", "Child" : ["64", "65"],
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
	{"ID" : "64", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_9_fu_413.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.C_U", "Parent" : "63"},
	{"ID" : "65", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_9_fu_413.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.D_U", "Parent" : "63"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_9_fu_413.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230", "Parent" : "59", "Child" : ["67"],
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
	{"ID" : "67", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_9_fu_413.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230.C_U", "Parent" : "66"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_9_fu_413.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235", "Parent" : "59", "Child" : ["69", "70"],
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
	{"ID" : "69", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_9_fu_413.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.tempA_U", "Parent" : "68"},
	{"ID" : "70", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_9_fu_413.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "68"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_8_fu_424", "Parent" : "0", "Child" : ["72"],
		"CDFG" : "KeccakWidth1600_Spon_8",
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
					{"ID" : "72", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_8_fu_424.grp_KeccakP1600_Permute_s_fu_176", "Parent" : "71", "Child" : ["73", "74", "75", "76", "79", "81"],
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
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_8_fu_424.grp_KeccakP1600_Permute_s_fu_176.KeccakRhoOffsets_U", "Parent" : "72"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_8_fu_424.grp_KeccakP1600_Permute_s_fu_176.KeccakRoundConstants_U", "Parent" : "72"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_8_fu_424.grp_KeccakP1600_Permute_s_fu_176.stateAsWords_U", "Parent" : "72"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_8_fu_424.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225", "Parent" : "72", "Child" : ["77", "78"],
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
	{"ID" : "77", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_8_fu_424.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.C_U", "Parent" : "76"},
	{"ID" : "78", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_8_fu_424.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.D_U", "Parent" : "76"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_8_fu_424.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230", "Parent" : "72", "Child" : ["80"],
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
	{"ID" : "80", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_8_fu_424.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230.C_U", "Parent" : "79"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_8_fu_424.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235", "Parent" : "72", "Child" : ["82", "83"],
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
	{"ID" : "82", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_8_fu_424.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.tempA_U", "Parent" : "81"},
	{"ID" : "83", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_8_fu_424.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "81"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_436", "Parent" : "0", "Child" : ["85"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_436.grp_KeccakP1600_Permute_s_fu_176", "Parent" : "84", "Child" : ["86", "87", "88", "89", "92", "94"],
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
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_436.grp_KeccakP1600_Permute_s_fu_176.KeccakRhoOffsets_U", "Parent" : "85"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_436.grp_KeccakP1600_Permute_s_fu_176.KeccakRoundConstants_U", "Parent" : "85"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_436.grp_KeccakP1600_Permute_s_fu_176.stateAsWords_U", "Parent" : "85"},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_436.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225", "Parent" : "85", "Child" : ["90", "91"],
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
	{"ID" : "90", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_436.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.C_U", "Parent" : "89"},
	{"ID" : "91", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_436.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.D_U", "Parent" : "89"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_436.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230", "Parent" : "85", "Child" : ["93"],
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
	{"ID" : "93", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_436.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230.C_U", "Parent" : "92"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_436.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235", "Parent" : "85", "Child" : ["95", "96"],
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
	{"ID" : "95", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_436.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.tempA_U", "Parent" : "94"},
	{"ID" : "96", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_436.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "94"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_447", "Parent" : "0", "Child" : ["98"],
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
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_12_fu_74"}],
		"Port" : [
			{"Name" : "ctx_sponge_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_KeccakWidth1600_Spon_12_fu_74", "Port" : "instance_state"}]},
			{"Name" : "hashPrefix", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_KeccakWidth1600_Spon_12_fu_74", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_KeccakWidth1600_Spon_12_fu_74", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_447.grp_KeccakWidth1600_Spon_12_fu_74", "Parent" : "97", "Child" : ["99"],
		"CDFG" : "KeccakWidth1600_Spon_12",
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
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_447.grp_KeccakWidth1600_Spon_12_fu_74.grp_KeccakP1600_Permute_s_fu_54", "Parent" : "98", "Child" : ["100", "101", "102", "103", "106", "108"],
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
	{"ID" : "100", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_447.grp_KeccakWidth1600_Spon_12_fu_74.grp_KeccakP1600_Permute_s_fu_54.KeccakRhoOffsets_U", "Parent" : "99"},
	{"ID" : "101", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_447.grp_KeccakWidth1600_Spon_12_fu_74.grp_KeccakP1600_Permute_s_fu_54.KeccakRoundConstants_U", "Parent" : "99"},
	{"ID" : "102", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_447.grp_KeccakWidth1600_Spon_12_fu_74.grp_KeccakP1600_Permute_s_fu_54.stateAsWords_U", "Parent" : "99"},
	{"ID" : "103", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_447.grp_KeccakWidth1600_Spon_12_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225", "Parent" : "99", "Child" : ["104", "105"],
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
	{"ID" : "104", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_447.grp_KeccakWidth1600_Spon_12_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.C_U", "Parent" : "103"},
	{"ID" : "105", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_447.grp_KeccakWidth1600_Spon_12_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.D_U", "Parent" : "103"},
	{"ID" : "106", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_447.grp_KeccakWidth1600_Spon_12_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230", "Parent" : "99", "Child" : ["107"],
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
	{"ID" : "107", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_447.grp_KeccakWidth1600_Spon_12_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230.C_U", "Parent" : "106"},
	{"ID" : "108", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_447.grp_KeccakWidth1600_Spon_12_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235", "Parent" : "99", "Child" : ["109", "110"],
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
	{"ID" : "109", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_447.grp_KeccakWidth1600_Spon_12_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.tempA_U", "Parent" : "108"},
	{"ID" : "110", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_447.grp_KeccakWidth1600_Spon_12_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "108"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_459", "Parent" : "0", "Child" : ["112"],
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
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_459.grp_KeccakP1600_Permute_s_fu_54", "Parent" : "111", "Child" : ["113", "114", "115", "116", "119", "121"],
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
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_459.grp_KeccakP1600_Permute_s_fu_54.KeccakRhoOffsets_U", "Parent" : "112"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_459.grp_KeccakP1600_Permute_s_fu_54.KeccakRoundConstants_U", "Parent" : "112"},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_459.grp_KeccakP1600_Permute_s_fu_54.stateAsWords_U", "Parent" : "112"},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_459.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225", "Parent" : "112", "Child" : ["117", "118"],
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
	{"ID" : "117", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_459.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.C_U", "Parent" : "116"},
	{"ID" : "118", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_459.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.D_U", "Parent" : "116"},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_459.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230", "Parent" : "112", "Child" : ["120"],
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
	{"ID" : "120", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_459.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230.C_U", "Parent" : "119"},
	{"ID" : "121", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_459.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235", "Parent" : "112", "Child" : ["122", "123"],
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
	{"ID" : "122", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_459.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.tempA_U", "Parent" : "121"},
	{"ID" : "123", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_459.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "121"}]}


set ArgLastReadFirstWriteLatency {
	H3_2 {
		circuitOutput {Type I LastRead 2 FirstWrite -1}
		plaintext {Type I LastRead 2 FirstWrite -1}
		as_hashes {Type I LastRead 4 FirstWrite -1}
		challengeBits {Type IO LastRead 17 FirstWrite 1}
		salt_0 {Type I LastRead 4 FirstWrite -1}
		message {Type I LastRead 4 FirstWrite -1}
		messageByteLength {Type I LastRead 1 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}
		viewOutputs {Type I LastRead 5 FirstWrite -1}}
	HashUpdate_2 {
		ctx_sponge_state {Type IO LastRead 4 FirstWrite 4}
		ctx_sponge_byteIOInd {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 2 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	KeccakWidth1600_Spon_9 {
		instance_state {Type IO LastRead 4 FirstWrite 4}
		instance_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 4 FirstWrite -1}
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
		instance_state {Type IO LastRead 10 FirstWrite 1}
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
	KeccakWidth1600_Spon_14 {
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
		data {Type I LastRead 4 FirstWrite -1}
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
	KeccakWidth1600_Spon_9 {
		instance_state {Type IO LastRead 4 FirstWrite 4}
		instance_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 4 FirstWrite -1}
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
	KeccakWidth1600_Spon_8 {
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
	KeccakWidth1600_Spon_13 {
		instance_state {Type IO LastRead 4 FirstWrite 4}
		instance_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 4 FirstWrite -1}
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
	KeccakWidth1600_Spon_12 {
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
	as_hashes { ap_memory {  { as_hashes_address0 mem_address 1 15 }  { as_hashes_ce0 mem_ce 1 1 }  { as_hashes_q0 mem_dout 0 8 } } }
	challengeBits { ap_memory {  { challengeBits_address0 mem_address 1 6 }  { challengeBits_ce0 mem_ce 1 1 }  { challengeBits_we0 mem_we 1 1 }  { challengeBits_d0 mem_din 1 8 }  { challengeBits_q0 mem_dout 0 8 } } }
	salt_0 { ap_memory {  { salt_0_address0 mem_address 1 5 }  { salt_0_ce0 mem_ce 1 1 }  { salt_0_q0 mem_dout 0 8 } } }
	message { ap_memory {  { message_address0 mem_address 1 16 }  { message_ce0 mem_ce 1 1 }  { message_q0 mem_dout 0 8 } } }
	messageByteLength { ap_none {  { messageByteLength in_data 0 64 } } }
	viewOutputs { ap_memory {  { viewOutputs_address0 mem_address 1 14 }  { viewOutputs_ce0 mem_ce 1 1 }  { viewOutputs_q0 mem_dout 0 32 } } }
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
	{ as_hashes int 8 regular {array 21024 { 1 3 } 1 1 }  }
	{ challengeBits int 8 regular {array 55 { 2 3 } 1 1 }  }
	{ salt_0 int 8 regular {array 32 { 1 3 } 1 1 }  }
	{ message int 8 regular {array 37336 { 1 3 } 1 1 }  }
	{ messageByteLength int 64 regular  }
	{ viewOutputs int 32 regular {array 10512 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "circuitOutput", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "plaintext", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "as_hashes", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "challengeBits", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "salt_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "message", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "messageByteLength", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "viewOutputs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "viewOutputs","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 656,"step" : 1},{"low" : 0,"up" : 15,"step" : 1}]}]}], "extern" : 0} ]}
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
	{ as_hashes_address0 sc_out sc_lv 15 signal 2 } 
	{ as_hashes_ce0 sc_out sc_logic 1 signal 2 } 
	{ as_hashes_q0 sc_in sc_lv 8 signal 2 } 
	{ challengeBits_address0 sc_out sc_lv 6 signal 3 } 
	{ challengeBits_ce0 sc_out sc_logic 1 signal 3 } 
	{ challengeBits_we0 sc_out sc_logic 1 signal 3 } 
	{ challengeBits_d0 sc_out sc_lv 8 signal 3 } 
	{ challengeBits_q0 sc_in sc_lv 8 signal 3 } 
	{ salt_0_address0 sc_out sc_lv 5 signal 4 } 
	{ salt_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ salt_0_q0 sc_in sc_lv 8 signal 4 } 
	{ message_address0 sc_out sc_lv 16 signal 5 } 
	{ message_ce0 sc_out sc_logic 1 signal 5 } 
	{ message_q0 sc_in sc_lv 8 signal 5 } 
	{ messageByteLength sc_in sc_lv 64 signal 6 } 
	{ viewOutputs_address0 sc_out sc_lv 14 signal 7 } 
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
 	{ "name": "as_hashes_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "as_hashes", "role": "address0" }} , 
 	{ "name": "as_hashes_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "as_hashes", "role": "ce0" }} , 
 	{ "name": "as_hashes_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "as_hashes", "role": "q0" }} , 
 	{ "name": "challengeBits_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "challengeBits", "role": "address0" }} , 
 	{ "name": "challengeBits_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "challengeBits", "role": "ce0" }} , 
 	{ "name": "challengeBits_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "challengeBits", "role": "we0" }} , 
 	{ "name": "challengeBits_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "challengeBits", "role": "d0" }} , 
 	{ "name": "challengeBits_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "challengeBits", "role": "q0" }} , 
 	{ "name": "salt_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "salt_0", "role": "address0" }} , 
 	{ "name": "salt_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "salt_0", "role": "ce0" }} , 
 	{ "name": "salt_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "salt_0", "role": "q0" }} , 
 	{ "name": "message_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "message", "role": "address0" }} , 
 	{ "name": "message_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "message", "role": "ce0" }} , 
 	{ "name": "message_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "message", "role": "q0" }} , 
 	{ "name": "messageByteLength", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "messageByteLength", "role": "default" }} , 
 	{ "name": "viewOutputs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "viewOutputs", "role": "address0" }} , 
 	{ "name": "viewOutputs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "viewOutputs", "role": "ce0" }} , 
 	{ "name": "viewOutputs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "viewOutputs", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "19", "32", "45", "58", "71", "84", "97", "110"],
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
			{"State" : "ap_ST_fsm_state28", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_10_fu_553"},
			{"State" : "ap_ST_fsm_state32", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_1_fu_568"},
			{"State" : "ap_ST_fsm_state45", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_1_fu_568"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_8_fu_582"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5133_fu_600"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5133_fu_600"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5133_fu_600"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_6_fu_613"},
			{"State" : "ap_ST_fsm_state41", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_3_fu_627"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_640"},
			{"State" : "ap_ST_fsm_state39", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_640"},
			{"State" : "ap_ST_fsm_state30", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashFinal_fu_654"},
			{"State" : "ap_ST_fsm_state43", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashFinal_fu_654"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashInitializ_fu_669"},
			{"State" : "ap_ST_fsm_state37", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashInitializ_fu_669"}],
		"Port" : [
			{"Name" : "circuitOutput", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "as_hashes", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_Keccak_HashUpdate_8_fu_582", "Port" : "data"}]},
			{"Name" : "challengeBits", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "salt_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_Keccak_HashUpdate_6_fu_613", "Port" : "data_0"}]},
			{"Name" : "message", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_Keccak_HashUpdate_10_fu_553", "Port" : "data"}]},
			{"Name" : "messageByteLength", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_640", "Port" : "KeccakRhoOffsets"},
					{"ID" : "71", "SubInstance" : "grp_Keccak_HashUpdate_3_fu_627", "Port" : "KeccakRhoOffsets"},
					{"ID" : "19", "SubInstance" : "grp_Keccak_HashSqueeze_1_fu_568", "Port" : "KeccakRhoOffsets"},
					{"ID" : "32", "SubInstance" : "grp_Keccak_HashUpdate_8_fu_582", "Port" : "KeccakRhoOffsets"},
					{"ID" : "58", "SubInstance" : "grp_Keccak_HashUpdate_6_fu_613", "Port" : "KeccakRhoOffsets"},
					{"ID" : "45", "SubInstance" : "grp_Keccak_HashUpdate_5133_fu_600", "Port" : "KeccakRhoOffsets"},
					{"ID" : "6", "SubInstance" : "grp_Keccak_HashUpdate_10_fu_553", "Port" : "KeccakRhoOffsets"},
					{"ID" : "97", "SubInstance" : "grp_Keccak_HashFinal_fu_654", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_640", "Port" : "KeccakRoundConstants"},
					{"ID" : "71", "SubInstance" : "grp_Keccak_HashUpdate_3_fu_627", "Port" : "KeccakRoundConstants"},
					{"ID" : "19", "SubInstance" : "grp_Keccak_HashSqueeze_1_fu_568", "Port" : "KeccakRoundConstants"},
					{"ID" : "32", "SubInstance" : "grp_Keccak_HashUpdate_8_fu_582", "Port" : "KeccakRoundConstants"},
					{"ID" : "58", "SubInstance" : "grp_Keccak_HashUpdate_6_fu_613", "Port" : "KeccakRoundConstants"},
					{"ID" : "45", "SubInstance" : "grp_Keccak_HashUpdate_5133_fu_600", "Port" : "KeccakRoundConstants"},
					{"ID" : "6", "SubInstance" : "grp_Keccak_HashUpdate_10_fu_553", "Port" : "KeccakRoundConstants"},
					{"ID" : "97", "SubInstance" : "grp_Keccak_HashFinal_fu_654", "Port" : "KeccakRoundConstants"}]},
			{"Name" : "viewOutputs", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_2_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_1_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hash_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctx_sponge_state_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_10_fu_553", "Parent" : "0", "Child" : ["7"],
		"CDFG" : "Keccak_HashUpdate_10",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_189"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_189"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_189", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "databitlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_189", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_189", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_10_fu_553.grp_KeccakP1600_Permute_s_fu_189", "Parent" : "6", "Child" : ["8", "9", "10", "11", "14", "16"],
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
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_10_fu_553.grp_KeccakP1600_Permute_s_fu_189.KeccakRhoOffsets_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_10_fu_553.grp_KeccakP1600_Permute_s_fu_189.KeccakRoundConstants_U", "Parent" : "7"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_10_fu_553.grp_KeccakP1600_Permute_s_fu_189.stateAsWords_U", "Parent" : "7"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_10_fu_553.grp_KeccakP1600_Permute_s_fu_189.grp_theta_fu_225", "Parent" : "7", "Child" : ["12", "13"],
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
	{"ID" : "12", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_10_fu_553.grp_KeccakP1600_Permute_s_fu_189.grp_theta_fu_225.C_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_10_fu_553.grp_KeccakP1600_Permute_s_fu_189.grp_theta_fu_225.D_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_10_fu_553.grp_KeccakP1600_Permute_s_fu_189.grp_chi_fu_230", "Parent" : "7", "Child" : ["15"],
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
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_10_fu_553.grp_KeccakP1600_Permute_s_fu_189.grp_chi_fu_230.C_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_10_fu_553.grp_KeccakP1600_Permute_s_fu_189.grp_pi_fu_235", "Parent" : "7", "Child" : ["17", "18"],
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
	{"ID" : "17", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_10_fu_553.grp_KeccakP1600_Permute_s_fu_189.grp_pi_fu_235.tempA_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_10_fu_553.grp_KeccakP1600_Permute_s_fu_189.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "16"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_1_fu_568", "Parent" : "0", "Child" : ["20"],
		"CDFG" : "Keccak_HashSqueeze_1",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_258"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_258"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_258"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_258", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_258", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_258", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_1_fu_568.grp_KeccakP1600_Permute_s_fu_258", "Parent" : "19", "Child" : ["21", "22", "23", "24", "27", "29"],
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
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_1_fu_568.grp_KeccakP1600_Permute_s_fu_258.KeccakRhoOffsets_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_1_fu_568.grp_KeccakP1600_Permute_s_fu_258.KeccakRoundConstants_U", "Parent" : "20"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_1_fu_568.grp_KeccakP1600_Permute_s_fu_258.stateAsWords_U", "Parent" : "20"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_1_fu_568.grp_KeccakP1600_Permute_s_fu_258.grp_theta_fu_225", "Parent" : "20", "Child" : ["25", "26"],
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
	{"ID" : "25", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_1_fu_568.grp_KeccakP1600_Permute_s_fu_258.grp_theta_fu_225.C_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_1_fu_568.grp_KeccakP1600_Permute_s_fu_258.grp_theta_fu_225.D_U", "Parent" : "24"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_1_fu_568.grp_KeccakP1600_Permute_s_fu_258.grp_chi_fu_230", "Parent" : "20", "Child" : ["28"],
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
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_1_fu_568.grp_KeccakP1600_Permute_s_fu_258.grp_chi_fu_230.C_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_1_fu_568.grp_KeccakP1600_Permute_s_fu_258.grp_pi_fu_235", "Parent" : "20", "Child" : ["30", "31"],
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
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_1_fu_568.grp_KeccakP1600_Permute_s_fu_258.grp_pi_fu_235.tempA_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_1_fu_568.grp_KeccakP1600_Permute_s_fu_258.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "29"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_582", "Parent" : "0", "Child" : ["33"],
		"CDFG" : "Keccak_HashUpdate_8",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_211"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_211"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_211", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_211", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_211", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_582.grp_KeccakP1600_Permute_s_fu_211", "Parent" : "32", "Child" : ["34", "35", "36", "37", "40", "42"],
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
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_582.grp_KeccakP1600_Permute_s_fu_211.KeccakRhoOffsets_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_582.grp_KeccakP1600_Permute_s_fu_211.KeccakRoundConstants_U", "Parent" : "33"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_582.grp_KeccakP1600_Permute_s_fu_211.stateAsWords_U", "Parent" : "33"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_582.grp_KeccakP1600_Permute_s_fu_211.grp_theta_fu_225", "Parent" : "33", "Child" : ["38", "39"],
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
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_582.grp_KeccakP1600_Permute_s_fu_211.grp_theta_fu_225.C_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_582.grp_KeccakP1600_Permute_s_fu_211.grp_theta_fu_225.D_U", "Parent" : "37"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_582.grp_KeccakP1600_Permute_s_fu_211.grp_chi_fu_230", "Parent" : "33", "Child" : ["41"],
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
	{"ID" : "41", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_582.grp_KeccakP1600_Permute_s_fu_211.grp_chi_fu_230.C_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_582.grp_KeccakP1600_Permute_s_fu_211.grp_pi_fu_235", "Parent" : "33", "Child" : ["43", "44"],
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
	{"ID" : "43", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_582.grp_KeccakP1600_Permute_s_fu_211.grp_pi_fu_235.tempA_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_582.grp_KeccakP1600_Permute_s_fu_211.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "42"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_600", "Parent" : "0", "Child" : ["46"],
		"CDFG" : "Keccak_HashUpdate_5133",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_600.grp_KeccakP1600_Permute_s_fu_183", "Parent" : "45", "Child" : ["47", "48", "49", "50", "53", "55"],
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
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_600.grp_KeccakP1600_Permute_s_fu_183.KeccakRhoOffsets_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_600.grp_KeccakP1600_Permute_s_fu_183.KeccakRoundConstants_U", "Parent" : "46"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_600.grp_KeccakP1600_Permute_s_fu_183.stateAsWords_U", "Parent" : "46"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_600.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225", "Parent" : "46", "Child" : ["51", "52"],
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
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_600.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225.C_U", "Parent" : "50"},
	{"ID" : "52", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_600.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225.D_U", "Parent" : "50"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_600.grp_KeccakP1600_Permute_s_fu_183.grp_chi_fu_230", "Parent" : "46", "Child" : ["54"],
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
	{"ID" : "54", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_600.grp_KeccakP1600_Permute_s_fu_183.grp_chi_fu_230.C_U", "Parent" : "53"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_600.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235", "Parent" : "46", "Child" : ["56", "57"],
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
	{"ID" : "56", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_600.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235.tempA_U", "Parent" : "55"},
	{"ID" : "57", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_600.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "55"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_613", "Parent" : "0", "Child" : ["59"],
		"CDFG" : "Keccak_HashUpdate_6",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_613.grp_KeccakP1600_Permute_s_fu_183", "Parent" : "58", "Child" : ["60", "61", "62", "63", "66", "68"],
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
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_613.grp_KeccakP1600_Permute_s_fu_183.KeccakRhoOffsets_U", "Parent" : "59"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_613.grp_KeccakP1600_Permute_s_fu_183.KeccakRoundConstants_U", "Parent" : "59"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_613.grp_KeccakP1600_Permute_s_fu_183.stateAsWords_U", "Parent" : "59"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_613.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225", "Parent" : "59", "Child" : ["64", "65"],
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
	{"ID" : "64", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_613.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225.C_U", "Parent" : "63"},
	{"ID" : "65", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_613.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225.D_U", "Parent" : "63"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_613.grp_KeccakP1600_Permute_s_fu_183.grp_chi_fu_230", "Parent" : "59", "Child" : ["67"],
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
	{"ID" : "67", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_613.grp_KeccakP1600_Permute_s_fu_183.grp_chi_fu_230.C_U", "Parent" : "66"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_613.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235", "Parent" : "59", "Child" : ["69", "70"],
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
	{"ID" : "69", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_613.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235.tempA_U", "Parent" : "68"},
	{"ID" : "70", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_613.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "68"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_627", "Parent" : "0", "Child" : ["72"],
		"CDFG" : "Keccak_HashUpdate_3",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_627.grp_KeccakP1600_Permute_s_fu_183", "Parent" : "71", "Child" : ["73", "74", "75", "76", "79", "81"],
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
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_627.grp_KeccakP1600_Permute_s_fu_183.KeccakRhoOffsets_U", "Parent" : "72"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_627.grp_KeccakP1600_Permute_s_fu_183.KeccakRoundConstants_U", "Parent" : "72"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_627.grp_KeccakP1600_Permute_s_fu_183.stateAsWords_U", "Parent" : "72"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_627.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225", "Parent" : "72", "Child" : ["77", "78"],
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
	{"ID" : "77", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_627.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225.C_U", "Parent" : "76"},
	{"ID" : "78", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_627.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225.D_U", "Parent" : "76"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_627.grp_KeccakP1600_Permute_s_fu_183.grp_chi_fu_230", "Parent" : "72", "Child" : ["80"],
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
	{"ID" : "80", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_627.grp_KeccakP1600_Permute_s_fu_183.grp_chi_fu_230.C_U", "Parent" : "79"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_627.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235", "Parent" : "72", "Child" : ["82", "83"],
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
	{"ID" : "82", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_627.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235.tempA_U", "Parent" : "81"},
	{"ID" : "83", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_627.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "81"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_640", "Parent" : "0", "Child" : ["85"],
		"CDFG" : "Keccak_HashUpdate_1",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_640.grp_KeccakP1600_Permute_s_fu_162", "Parent" : "84", "Child" : ["86", "87", "88", "89", "92", "94"],
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
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_640.grp_KeccakP1600_Permute_s_fu_162.KeccakRhoOffsets_U", "Parent" : "85"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_640.grp_KeccakP1600_Permute_s_fu_162.KeccakRoundConstants_U", "Parent" : "85"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_640.grp_KeccakP1600_Permute_s_fu_162.stateAsWords_U", "Parent" : "85"},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_640.grp_KeccakP1600_Permute_s_fu_162.grp_theta_fu_225", "Parent" : "85", "Child" : ["90", "91"],
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
	{"ID" : "90", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_640.grp_KeccakP1600_Permute_s_fu_162.grp_theta_fu_225.C_U", "Parent" : "89"},
	{"ID" : "91", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_640.grp_KeccakP1600_Permute_s_fu_162.grp_theta_fu_225.D_U", "Parent" : "89"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_640.grp_KeccakP1600_Permute_s_fu_162.grp_chi_fu_230", "Parent" : "85", "Child" : ["93"],
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
	{"ID" : "93", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_640.grp_KeccakP1600_Permute_s_fu_162.grp_chi_fu_230.C_U", "Parent" : "92"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_640.grp_KeccakP1600_Permute_s_fu_162.grp_pi_fu_235", "Parent" : "85", "Child" : ["95", "96"],
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
	{"ID" : "95", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_640.grp_KeccakP1600_Permute_s_fu_162.grp_pi_fu_235.tempA_U", "Parent" : "94"},
	{"ID" : "96", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_640.grp_KeccakP1600_Permute_s_fu_162.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "94"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_654", "Parent" : "0", "Child" : ["98"],
		"CDFG" : "Keccak_HashFinal",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "37175",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_delimitedSu", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_654.grp_KeccakP1600_Permute_s_fu_124", "Parent" : "97", "Child" : ["99", "100", "101", "102", "105", "107"],
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
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_654.grp_KeccakP1600_Permute_s_fu_124.KeccakRhoOffsets_U", "Parent" : "98"},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_654.grp_KeccakP1600_Permute_s_fu_124.KeccakRoundConstants_U", "Parent" : "98"},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_654.grp_KeccakP1600_Permute_s_fu_124.stateAsWords_U", "Parent" : "98"},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_654.grp_KeccakP1600_Permute_s_fu_124.grp_theta_fu_225", "Parent" : "98", "Child" : ["103", "104"],
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
	{"ID" : "103", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_654.grp_KeccakP1600_Permute_s_fu_124.grp_theta_fu_225.C_U", "Parent" : "102"},
	{"ID" : "104", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_654.grp_KeccakP1600_Permute_s_fu_124.grp_theta_fu_225.D_U", "Parent" : "102"},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_654.grp_KeccakP1600_Permute_s_fu_124.grp_chi_fu_230", "Parent" : "98", "Child" : ["106"],
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
	{"ID" : "106", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_654.grp_KeccakP1600_Permute_s_fu_124.grp_chi_fu_230.C_U", "Parent" : "105"},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_654.grp_KeccakP1600_Permute_s_fu_124.grp_pi_fu_235", "Parent" : "98", "Child" : ["108", "109"],
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
	{"ID" : "108", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_654.grp_KeccakP1600_Permute_s_fu_124.grp_pi_fu_235.tempA_U", "Parent" : "107"},
	{"ID" : "109", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_654.grp_KeccakP1600_Permute_s_fu_124.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "107"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashInitializ_fu_669", "Parent" : "0",
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
	H3_2 {
		circuitOutput {Type I LastRead 7 FirstWrite -1}
		plaintext {Type I LastRead 10 FirstWrite -1}
		as_hashes {Type I LastRead 4 FirstWrite -1}
		challengeBits {Type IO LastRead 22 FirstWrite 3}
		salt_0 {Type I LastRead 4 FirstWrite -1}
		message {Type I LastRead 4 FirstWrite -1}
		messageByteLength {Type I LastRead 3 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}
		viewOutputs {Type I LastRead 7 FirstWrite -1}}
	Keccak_HashUpdate_10 {
		instance_sponge_stat {Type IO LastRead 4 FirstWrite 4}
		instance_sponge_rate {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byte {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 4 FirstWrite -1}
		databitlen {Type I LastRead 0 FirstWrite -1}
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
	Keccak_HashSqueeze_1 {
		instance_sponge_stat {Type IO LastRead 10 FirstWrite 1}
		instance_sponge_rate {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque_21 {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque {Type I LastRead 0 FirstWrite -1}
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
	Keccak_HashUpdate_8 {
		instance_sponge_stat {Type IO LastRead 4 FirstWrite 4}
		instance_sponge_rate {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byte {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 4 FirstWrite -1}
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
	Keccak_HashUpdate_5133 {
		instance_sponge_stat {Type IO LastRead 4 FirstWrite 4}
		instance_sponge_rate {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byte {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 4 FirstWrite -1}
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
	Keccak_HashUpdate_6 {
		instance_sponge_stat {Type IO LastRead 4 FirstWrite 4}
		instance_sponge_rate {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byte {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque {Type I LastRead 0 FirstWrite -1}
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
	Keccak_HashUpdate_3 {
		instance_sponge_stat {Type IO LastRead 4 FirstWrite 4}
		instance_sponge_rate {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byte {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 4 FirstWrite -1}
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
	Keccak_HashUpdate_1 {
		instance_sponge_stat {Type IO LastRead 3 FirstWrite 3}
		instance_sponge_rate {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byte {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque {Type I LastRead 0 FirstWrite -1}
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
	Keccak_HashFinal {
		instance_sponge_stat {Type IO LastRead 4 FirstWrite 1}
		instance_sponge_rate {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byte_42 {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byte {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque_30 {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque {Type I LastRead 0 FirstWrite -1}
		instance_delimitedSu {Type I LastRead 0 FirstWrite -1}
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
	Keccak_HashInitializ {
		instance_sponge_state {Type O LastRead -1 FirstWrite 1}
		instance_sponge_rate_read {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		instance_sponge_squeezing_read {Type I LastRead 0 FirstWrite -1}
		instance_fixedOutputLength_read {Type I LastRead 0 FirstWrite -1}
		instance_delimitedSuffix_read {Type I LastRead 0 FirstWrite -1}}}

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
	as_hashes { ap_memory {  { as_hashes_address0 mem_address 1 15 }  { as_hashes_ce0 mem_ce 1 1 }  { as_hashes_q0 mem_dout 0 8 } } }
	challengeBits { ap_memory {  { challengeBits_address0 mem_address 1 6 }  { challengeBits_ce0 mem_ce 1 1 }  { challengeBits_we0 mem_we 1 1 }  { challengeBits_d0 mem_din 1 8 }  { challengeBits_q0 mem_dout 0 8 } } }
	salt_0 { ap_memory {  { salt_0_address0 mem_address 1 5 }  { salt_0_ce0 mem_ce 1 1 }  { salt_0_q0 mem_dout 0 8 } } }
	message { ap_memory {  { message_address0 mem_address 1 16 }  { message_ce0 mem_ce 1 1 }  { message_q0 mem_dout 0 8 } } }
	messageByteLength { ap_none {  { messageByteLength in_data 0 64 } } }
	viewOutputs { ap_memory {  { viewOutputs_address0 mem_address 1 14 }  { viewOutputs_ce0 mem_ce 1 1 }  { viewOutputs_q0 mem_dout 0 32 } } }
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
	{ as_hashes int 8 regular {array 21024 { 1 3 } 1 1 }  }
	{ challengeBits int 8 regular {array 55 { 2 3 } 1 1 }  }
	{ salt_0 int 8 regular {array 32 { 1 3 } 1 1 }  }
	{ message int 8 regular {array 37336 { 1 3 } 1 1 }  }
	{ messageByteLength int 64 regular  }
	{ viewOutputs int 32 regular {array 10512 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "circuitOutput", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "plaintext", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "as_hashes", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "challengeBits", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "salt_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "message", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "messageByteLength", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "viewOutputs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "viewOutputs","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 656,"step" : 1},{"low" : 0,"up" : 15,"step" : 1}]}]}], "extern" : 0} ]}
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
	{ as_hashes_address0 sc_out sc_lv 15 signal 2 } 
	{ as_hashes_ce0 sc_out sc_logic 1 signal 2 } 
	{ as_hashes_q0 sc_in sc_lv 8 signal 2 } 
	{ challengeBits_address0 sc_out sc_lv 6 signal 3 } 
	{ challengeBits_ce0 sc_out sc_logic 1 signal 3 } 
	{ challengeBits_we0 sc_out sc_logic 1 signal 3 } 
	{ challengeBits_d0 sc_out sc_lv 8 signal 3 } 
	{ challengeBits_q0 sc_in sc_lv 8 signal 3 } 
	{ salt_0_address0 sc_out sc_lv 5 signal 4 } 
	{ salt_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ salt_0_q0 sc_in sc_lv 8 signal 4 } 
	{ message_address0 sc_out sc_lv 16 signal 5 } 
	{ message_ce0 sc_out sc_logic 1 signal 5 } 
	{ message_q0 sc_in sc_lv 8 signal 5 } 
	{ messageByteLength sc_in sc_lv 64 signal 6 } 
	{ viewOutputs_address0 sc_out sc_lv 14 signal 7 } 
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
 	{ "name": "as_hashes_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "as_hashes", "role": "address0" }} , 
 	{ "name": "as_hashes_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "as_hashes", "role": "ce0" }} , 
 	{ "name": "as_hashes_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "as_hashes", "role": "q0" }} , 
 	{ "name": "challengeBits_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "challengeBits", "role": "address0" }} , 
 	{ "name": "challengeBits_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "challengeBits", "role": "ce0" }} , 
 	{ "name": "challengeBits_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "challengeBits", "role": "we0" }} , 
 	{ "name": "challengeBits_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "challengeBits", "role": "d0" }} , 
 	{ "name": "challengeBits_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "challengeBits", "role": "q0" }} , 
 	{ "name": "salt_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "salt_0", "role": "address0" }} , 
 	{ "name": "salt_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "salt_0", "role": "ce0" }} , 
 	{ "name": "salt_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "salt_0", "role": "q0" }} , 
 	{ "name": "message_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "message", "role": "address0" }} , 
 	{ "name": "message_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "message", "role": "ce0" }} , 
 	{ "name": "message_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "message", "role": "q0" }} , 
 	{ "name": "messageByteLength", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "messageByteLength", "role": "default" }} , 
 	{ "name": "viewOutputs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "viewOutputs", "role": "address0" }} , 
 	{ "name": "viewOutputs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "viewOutputs", "role": "ce0" }} , 
 	{ "name": "viewOutputs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "viewOutputs", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "19", "32", "45", "58", "71", "84", "97", "110"],
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
			{"State" : "ap_ST_fsm_state34", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_10_fu_669"},
			{"State" : "ap_ST_fsm_state38", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_1_fu_684"},
			{"State" : "ap_ST_fsm_state51", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_1_fu_684"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_8_fu_698"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5133_fu_716"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5133_fu_716"},
			{"State" : "ap_ST_fsm_state30", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5133_fu_716"},
			{"State" : "ap_ST_fsm_state32", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_6_fu_729"},
			{"State" : "ap_ST_fsm_state47", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_3_fu_743"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_756"},
			{"State" : "ap_ST_fsm_state45", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_756"},
			{"State" : "ap_ST_fsm_state36", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashFinal_fu_770"},
			{"State" : "ap_ST_fsm_state49", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashFinal_fu_770"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashInitializ_fu_785"},
			{"State" : "ap_ST_fsm_state43", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashInitializ_fu_785"}],
		"Port" : [
			{"Name" : "circuitOutput", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "as_hashes", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_Keccak_HashUpdate_8_fu_698", "Port" : "data"}]},
			{"Name" : "challengeBits", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "salt_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_Keccak_HashUpdate_6_fu_729", "Port" : "data_0"}]},
			{"Name" : "message", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_Keccak_HashUpdate_10_fu_669", "Port" : "data"}]},
			{"Name" : "messageByteLength", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "71", "SubInstance" : "grp_Keccak_HashUpdate_3_fu_743", "Port" : "KeccakRhoOffsets"},
					{"ID" : "19", "SubInstance" : "grp_Keccak_HashSqueeze_1_fu_684", "Port" : "KeccakRhoOffsets"},
					{"ID" : "84", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_756", "Port" : "KeccakRhoOffsets"},
					{"ID" : "32", "SubInstance" : "grp_Keccak_HashUpdate_8_fu_698", "Port" : "KeccakRhoOffsets"},
					{"ID" : "58", "SubInstance" : "grp_Keccak_HashUpdate_6_fu_729", "Port" : "KeccakRhoOffsets"},
					{"ID" : "97", "SubInstance" : "grp_Keccak_HashFinal_fu_770", "Port" : "KeccakRhoOffsets"},
					{"ID" : "6", "SubInstance" : "grp_Keccak_HashUpdate_10_fu_669", "Port" : "KeccakRhoOffsets"},
					{"ID" : "45", "SubInstance" : "grp_Keccak_HashUpdate_5133_fu_716", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "71", "SubInstance" : "grp_Keccak_HashUpdate_3_fu_743", "Port" : "KeccakRoundConstants"},
					{"ID" : "19", "SubInstance" : "grp_Keccak_HashSqueeze_1_fu_684", "Port" : "KeccakRoundConstants"},
					{"ID" : "84", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_756", "Port" : "KeccakRoundConstants"},
					{"ID" : "32", "SubInstance" : "grp_Keccak_HashUpdate_8_fu_698", "Port" : "KeccakRoundConstants"},
					{"ID" : "58", "SubInstance" : "grp_Keccak_HashUpdate_6_fu_729", "Port" : "KeccakRoundConstants"},
					{"ID" : "97", "SubInstance" : "grp_Keccak_HashFinal_fu_770", "Port" : "KeccakRoundConstants"},
					{"ID" : "6", "SubInstance" : "grp_Keccak_HashUpdate_10_fu_669", "Port" : "KeccakRoundConstants"},
					{"ID" : "45", "SubInstance" : "grp_Keccak_HashUpdate_5133_fu_716", "Port" : "KeccakRoundConstants"}]},
			{"Name" : "viewOutputs", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_2_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_1_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hash_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctx_sponge_state_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_10_fu_669", "Parent" : "0", "Child" : ["7"],
		"CDFG" : "Keccak_HashUpdate_10",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_189"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_189"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_189", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "databitlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_189", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_189", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_10_fu_669.grp_KeccakP1600_Permute_s_fu_189", "Parent" : "6", "Child" : ["8", "9", "10", "11", "14", "16"],
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
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_10_fu_669.grp_KeccakP1600_Permute_s_fu_189.KeccakRhoOffsets_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_10_fu_669.grp_KeccakP1600_Permute_s_fu_189.KeccakRoundConstants_U", "Parent" : "7"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_10_fu_669.grp_KeccakP1600_Permute_s_fu_189.stateAsWords_U", "Parent" : "7"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_10_fu_669.grp_KeccakP1600_Permute_s_fu_189.grp_theta_fu_225", "Parent" : "7", "Child" : ["12", "13"],
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
	{"ID" : "12", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_10_fu_669.grp_KeccakP1600_Permute_s_fu_189.grp_theta_fu_225.C_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_10_fu_669.grp_KeccakP1600_Permute_s_fu_189.grp_theta_fu_225.D_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_10_fu_669.grp_KeccakP1600_Permute_s_fu_189.grp_chi_fu_230", "Parent" : "7", "Child" : ["15"],
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
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_10_fu_669.grp_KeccakP1600_Permute_s_fu_189.grp_chi_fu_230.C_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_10_fu_669.grp_KeccakP1600_Permute_s_fu_189.grp_pi_fu_235", "Parent" : "7", "Child" : ["17", "18"],
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
	{"ID" : "17", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_10_fu_669.grp_KeccakP1600_Permute_s_fu_189.grp_pi_fu_235.tempA_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_10_fu_669.grp_KeccakP1600_Permute_s_fu_189.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "16"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_1_fu_684", "Parent" : "0", "Child" : ["20"],
		"CDFG" : "Keccak_HashSqueeze_1",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_258"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_258"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_258"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_258", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_258", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_258", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_1_fu_684.grp_KeccakP1600_Permute_s_fu_258", "Parent" : "19", "Child" : ["21", "22", "23", "24", "27", "29"],
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
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_1_fu_684.grp_KeccakP1600_Permute_s_fu_258.KeccakRhoOffsets_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_1_fu_684.grp_KeccakP1600_Permute_s_fu_258.KeccakRoundConstants_U", "Parent" : "20"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_1_fu_684.grp_KeccakP1600_Permute_s_fu_258.stateAsWords_U", "Parent" : "20"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_1_fu_684.grp_KeccakP1600_Permute_s_fu_258.grp_theta_fu_225", "Parent" : "20", "Child" : ["25", "26"],
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
	{"ID" : "25", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_1_fu_684.grp_KeccakP1600_Permute_s_fu_258.grp_theta_fu_225.C_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_1_fu_684.grp_KeccakP1600_Permute_s_fu_258.grp_theta_fu_225.D_U", "Parent" : "24"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_1_fu_684.grp_KeccakP1600_Permute_s_fu_258.grp_chi_fu_230", "Parent" : "20", "Child" : ["28"],
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
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_1_fu_684.grp_KeccakP1600_Permute_s_fu_258.grp_chi_fu_230.C_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_1_fu_684.grp_KeccakP1600_Permute_s_fu_258.grp_pi_fu_235", "Parent" : "20", "Child" : ["30", "31"],
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
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_1_fu_684.grp_KeccakP1600_Permute_s_fu_258.grp_pi_fu_235.tempA_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_1_fu_684.grp_KeccakP1600_Permute_s_fu_258.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "29"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_698", "Parent" : "0", "Child" : ["33"],
		"CDFG" : "Keccak_HashUpdate_8",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_211"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_211"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_211", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_211", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_211", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_698.grp_KeccakP1600_Permute_s_fu_211", "Parent" : "32", "Child" : ["34", "35", "36", "37", "40", "42"],
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
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_698.grp_KeccakP1600_Permute_s_fu_211.KeccakRhoOffsets_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_698.grp_KeccakP1600_Permute_s_fu_211.KeccakRoundConstants_U", "Parent" : "33"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_698.grp_KeccakP1600_Permute_s_fu_211.stateAsWords_U", "Parent" : "33"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_698.grp_KeccakP1600_Permute_s_fu_211.grp_theta_fu_225", "Parent" : "33", "Child" : ["38", "39"],
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
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_698.grp_KeccakP1600_Permute_s_fu_211.grp_theta_fu_225.C_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_698.grp_KeccakP1600_Permute_s_fu_211.grp_theta_fu_225.D_U", "Parent" : "37"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_698.grp_KeccakP1600_Permute_s_fu_211.grp_chi_fu_230", "Parent" : "33", "Child" : ["41"],
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
	{"ID" : "41", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_698.grp_KeccakP1600_Permute_s_fu_211.grp_chi_fu_230.C_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_698.grp_KeccakP1600_Permute_s_fu_211.grp_pi_fu_235", "Parent" : "33", "Child" : ["43", "44"],
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
	{"ID" : "43", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_698.grp_KeccakP1600_Permute_s_fu_211.grp_pi_fu_235.tempA_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_698.grp_KeccakP1600_Permute_s_fu_211.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "42"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_716", "Parent" : "0", "Child" : ["46"],
		"CDFG" : "Keccak_HashUpdate_5133",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_716.grp_KeccakP1600_Permute_s_fu_183", "Parent" : "45", "Child" : ["47", "48", "49", "50", "53", "55"],
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
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_716.grp_KeccakP1600_Permute_s_fu_183.KeccakRhoOffsets_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_716.grp_KeccakP1600_Permute_s_fu_183.KeccakRoundConstants_U", "Parent" : "46"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_716.grp_KeccakP1600_Permute_s_fu_183.stateAsWords_U", "Parent" : "46"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_716.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225", "Parent" : "46", "Child" : ["51", "52"],
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
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_716.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225.C_U", "Parent" : "50"},
	{"ID" : "52", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_716.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225.D_U", "Parent" : "50"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_716.grp_KeccakP1600_Permute_s_fu_183.grp_chi_fu_230", "Parent" : "46", "Child" : ["54"],
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
	{"ID" : "54", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_716.grp_KeccakP1600_Permute_s_fu_183.grp_chi_fu_230.C_U", "Parent" : "53"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_716.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235", "Parent" : "46", "Child" : ["56", "57"],
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
	{"ID" : "56", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_716.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235.tempA_U", "Parent" : "55"},
	{"ID" : "57", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_716.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "55"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_729", "Parent" : "0", "Child" : ["59"],
		"CDFG" : "Keccak_HashUpdate_6",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_729.grp_KeccakP1600_Permute_s_fu_183", "Parent" : "58", "Child" : ["60", "61", "62", "63", "66", "68"],
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
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_729.grp_KeccakP1600_Permute_s_fu_183.KeccakRhoOffsets_U", "Parent" : "59"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_729.grp_KeccakP1600_Permute_s_fu_183.KeccakRoundConstants_U", "Parent" : "59"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_729.grp_KeccakP1600_Permute_s_fu_183.stateAsWords_U", "Parent" : "59"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_729.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225", "Parent" : "59", "Child" : ["64", "65"],
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
	{"ID" : "64", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_729.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225.C_U", "Parent" : "63"},
	{"ID" : "65", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_729.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225.D_U", "Parent" : "63"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_729.grp_KeccakP1600_Permute_s_fu_183.grp_chi_fu_230", "Parent" : "59", "Child" : ["67"],
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
	{"ID" : "67", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_729.grp_KeccakP1600_Permute_s_fu_183.grp_chi_fu_230.C_U", "Parent" : "66"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_729.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235", "Parent" : "59", "Child" : ["69", "70"],
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
	{"ID" : "69", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_729.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235.tempA_U", "Parent" : "68"},
	{"ID" : "70", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_729.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "68"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_743", "Parent" : "0", "Child" : ["72"],
		"CDFG" : "Keccak_HashUpdate_3",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_743.grp_KeccakP1600_Permute_s_fu_183", "Parent" : "71", "Child" : ["73", "74", "75", "76", "79", "81"],
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
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_743.grp_KeccakP1600_Permute_s_fu_183.KeccakRhoOffsets_U", "Parent" : "72"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_743.grp_KeccakP1600_Permute_s_fu_183.KeccakRoundConstants_U", "Parent" : "72"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_743.grp_KeccakP1600_Permute_s_fu_183.stateAsWords_U", "Parent" : "72"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_743.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225", "Parent" : "72", "Child" : ["77", "78"],
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
	{"ID" : "77", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_743.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225.C_U", "Parent" : "76"},
	{"ID" : "78", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_743.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225.D_U", "Parent" : "76"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_743.grp_KeccakP1600_Permute_s_fu_183.grp_chi_fu_230", "Parent" : "72", "Child" : ["80"],
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
	{"ID" : "80", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_743.grp_KeccakP1600_Permute_s_fu_183.grp_chi_fu_230.C_U", "Parent" : "79"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_743.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235", "Parent" : "72", "Child" : ["82", "83"],
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
	{"ID" : "82", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_743.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235.tempA_U", "Parent" : "81"},
	{"ID" : "83", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_743.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "81"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_756", "Parent" : "0", "Child" : ["85"],
		"CDFG" : "Keccak_HashUpdate_1",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_756.grp_KeccakP1600_Permute_s_fu_162", "Parent" : "84", "Child" : ["86", "87", "88", "89", "92", "94"],
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
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_756.grp_KeccakP1600_Permute_s_fu_162.KeccakRhoOffsets_U", "Parent" : "85"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_756.grp_KeccakP1600_Permute_s_fu_162.KeccakRoundConstants_U", "Parent" : "85"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_756.grp_KeccakP1600_Permute_s_fu_162.stateAsWords_U", "Parent" : "85"},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_756.grp_KeccakP1600_Permute_s_fu_162.grp_theta_fu_225", "Parent" : "85", "Child" : ["90", "91"],
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
	{"ID" : "90", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_756.grp_KeccakP1600_Permute_s_fu_162.grp_theta_fu_225.C_U", "Parent" : "89"},
	{"ID" : "91", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_756.grp_KeccakP1600_Permute_s_fu_162.grp_theta_fu_225.D_U", "Parent" : "89"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_756.grp_KeccakP1600_Permute_s_fu_162.grp_chi_fu_230", "Parent" : "85", "Child" : ["93"],
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
	{"ID" : "93", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_756.grp_KeccakP1600_Permute_s_fu_162.grp_chi_fu_230.C_U", "Parent" : "92"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_756.grp_KeccakP1600_Permute_s_fu_162.grp_pi_fu_235", "Parent" : "85", "Child" : ["95", "96"],
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
	{"ID" : "95", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_756.grp_KeccakP1600_Permute_s_fu_162.grp_pi_fu_235.tempA_U", "Parent" : "94"},
	{"ID" : "96", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_756.grp_KeccakP1600_Permute_s_fu_162.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "94"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_770", "Parent" : "0", "Child" : ["98"],
		"CDFG" : "Keccak_HashFinal",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "37175",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_delimitedSu", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_770.grp_KeccakP1600_Permute_s_fu_124", "Parent" : "97", "Child" : ["99", "100", "101", "102", "105", "107"],
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
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_770.grp_KeccakP1600_Permute_s_fu_124.KeccakRhoOffsets_U", "Parent" : "98"},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_770.grp_KeccakP1600_Permute_s_fu_124.KeccakRoundConstants_U", "Parent" : "98"},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_770.grp_KeccakP1600_Permute_s_fu_124.stateAsWords_U", "Parent" : "98"},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_770.grp_KeccakP1600_Permute_s_fu_124.grp_theta_fu_225", "Parent" : "98", "Child" : ["103", "104"],
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
	{"ID" : "103", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_770.grp_KeccakP1600_Permute_s_fu_124.grp_theta_fu_225.C_U", "Parent" : "102"},
	{"ID" : "104", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_770.grp_KeccakP1600_Permute_s_fu_124.grp_theta_fu_225.D_U", "Parent" : "102"},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_770.grp_KeccakP1600_Permute_s_fu_124.grp_chi_fu_230", "Parent" : "98", "Child" : ["106"],
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
	{"ID" : "106", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_770.grp_KeccakP1600_Permute_s_fu_124.grp_chi_fu_230.C_U", "Parent" : "105"},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_770.grp_KeccakP1600_Permute_s_fu_124.grp_pi_fu_235", "Parent" : "98", "Child" : ["108", "109"],
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
	{"ID" : "108", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_770.grp_KeccakP1600_Permute_s_fu_124.grp_pi_fu_235.tempA_U", "Parent" : "107"},
	{"ID" : "109", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_770.grp_KeccakP1600_Permute_s_fu_124.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "107"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashInitializ_fu_785", "Parent" : "0",
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
	H3_2 {
		circuitOutput {Type I LastRead 9 FirstWrite -1}
		plaintext {Type I LastRead 12 FirstWrite -1}
		as_hashes {Type I LastRead 4 FirstWrite -1}
		challengeBits {Type IO LastRead 22 FirstWrite 3}
		salt_0 {Type I LastRead 4 FirstWrite -1}
		message {Type I LastRead 4 FirstWrite -1}
		messageByteLength {Type I LastRead 3 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}
		viewOutputs {Type I LastRead 9 FirstWrite -1}}
	Keccak_HashUpdate_10 {
		instance_sponge_stat {Type IO LastRead 4 FirstWrite 4}
		instance_sponge_rate {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byte {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 4 FirstWrite -1}
		databitlen {Type I LastRead 0 FirstWrite -1}
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
	Keccak_HashSqueeze_1 {
		instance_sponge_stat {Type IO LastRead 10 FirstWrite 1}
		instance_sponge_rate {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque_21 {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque {Type I LastRead 0 FirstWrite -1}
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
	Keccak_HashUpdate_8 {
		instance_sponge_stat {Type IO LastRead 4 FirstWrite 4}
		instance_sponge_rate {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byte {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 4 FirstWrite -1}
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
	Keccak_HashUpdate_5133 {
		instance_sponge_stat {Type IO LastRead 4 FirstWrite 4}
		instance_sponge_rate {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byte {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 4 FirstWrite -1}
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
	Keccak_HashUpdate_6 {
		instance_sponge_stat {Type IO LastRead 4 FirstWrite 4}
		instance_sponge_rate {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byte {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque {Type I LastRead 0 FirstWrite -1}
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
	Keccak_HashUpdate_3 {
		instance_sponge_stat {Type IO LastRead 4 FirstWrite 4}
		instance_sponge_rate {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byte {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 4 FirstWrite -1}
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
	Keccak_HashUpdate_1 {
		instance_sponge_stat {Type IO LastRead 3 FirstWrite 3}
		instance_sponge_rate {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byte {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque {Type I LastRead 0 FirstWrite -1}
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
	Keccak_HashFinal {
		instance_sponge_stat {Type IO LastRead 4 FirstWrite 1}
		instance_sponge_rate {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byte_42 {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byte {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque_30 {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque {Type I LastRead 0 FirstWrite -1}
		instance_delimitedSu {Type I LastRead 0 FirstWrite -1}
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
	Keccak_HashInitializ {
		instance_sponge_state {Type O LastRead -1 FirstWrite 1}
		instance_sponge_rate_read {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		instance_sponge_squeezing_read {Type I LastRead 0 FirstWrite -1}
		instance_fixedOutputLength_read {Type I LastRead 0 FirstWrite -1}
		instance_delimitedSuffix_read {Type I LastRead 0 FirstWrite -1}}}

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
	as_hashes { ap_memory {  { as_hashes_address0 mem_address 1 15 }  { as_hashes_ce0 mem_ce 1 1 }  { as_hashes_q0 mem_dout 0 8 } } }
	challengeBits { ap_memory {  { challengeBits_address0 mem_address 1 6 }  { challengeBits_ce0 mem_ce 1 1 }  { challengeBits_we0 mem_we 1 1 }  { challengeBits_d0 mem_din 1 8 }  { challengeBits_q0 mem_dout 0 8 } } }
	salt_0 { ap_memory {  { salt_0_address0 mem_address 1 5 }  { salt_0_ce0 mem_ce 1 1 }  { salt_0_q0 mem_dout 0 8 } } }
	message { ap_memory {  { message_address0 mem_address 1 16 }  { message_ce0 mem_ce 1 1 }  { message_q0 mem_dout 0 8 } } }
	messageByteLength { ap_none {  { messageByteLength in_data 0 64 } } }
	viewOutputs { ap_memory {  { viewOutputs_address0 mem_address 1 14 }  { viewOutputs_ce0 mem_ce 1 1 }  { viewOutputs_q0 mem_dout 0 32 } } }
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
	{ circuitOutput int 32 regular {array 8 { 1 1 } 1 1 }  }
	{ plaintext int 32 regular {array 8 { 1 1 } 1 1 }  }
	{ as_hashes int 8 regular {array 21024 { 1 3 } 1 1 }  }
	{ challengeBits int 8 regular {array 55 { 2 3 } 1 1 }  }
	{ salt_0 int 8 regular {array 32 { 1 3 } 1 1 }  }
	{ message int 8 regular {array 37336 { 1 3 } 1 1 }  }
	{ messageByteLength int 64 regular  }
	{ viewOutputs int 32 regular {array 10512 { 1 1 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "circuitOutput", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "plaintext", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "as_hashes", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "challengeBits", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "salt_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "message", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "messageByteLength", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "viewOutputs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "viewOutputs","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 656,"step" : 1},{"low" : 0,"up" : 15,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 39
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
	{ circuitOutput_address1 sc_out sc_lv 3 signal 0 } 
	{ circuitOutput_ce1 sc_out sc_logic 1 signal 0 } 
	{ circuitOutput_q1 sc_in sc_lv 32 signal 0 } 
	{ plaintext_address0 sc_out sc_lv 3 signal 1 } 
	{ plaintext_ce0 sc_out sc_logic 1 signal 1 } 
	{ plaintext_q0 sc_in sc_lv 32 signal 1 } 
	{ plaintext_address1 sc_out sc_lv 3 signal 1 } 
	{ plaintext_ce1 sc_out sc_logic 1 signal 1 } 
	{ plaintext_q1 sc_in sc_lv 32 signal 1 } 
	{ as_hashes_address0 sc_out sc_lv 15 signal 2 } 
	{ as_hashes_ce0 sc_out sc_logic 1 signal 2 } 
	{ as_hashes_q0 sc_in sc_lv 8 signal 2 } 
	{ challengeBits_address0 sc_out sc_lv 6 signal 3 } 
	{ challengeBits_ce0 sc_out sc_logic 1 signal 3 } 
	{ challengeBits_we0 sc_out sc_logic 1 signal 3 } 
	{ challengeBits_d0 sc_out sc_lv 8 signal 3 } 
	{ challengeBits_q0 sc_in sc_lv 8 signal 3 } 
	{ salt_0_address0 sc_out sc_lv 5 signal 4 } 
	{ salt_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ salt_0_q0 sc_in sc_lv 8 signal 4 } 
	{ message_address0 sc_out sc_lv 16 signal 5 } 
	{ message_ce0 sc_out sc_logic 1 signal 5 } 
	{ message_q0 sc_in sc_lv 8 signal 5 } 
	{ messageByteLength sc_in sc_lv 64 signal 6 } 
	{ viewOutputs_address0 sc_out sc_lv 14 signal 7 } 
	{ viewOutputs_ce0 sc_out sc_logic 1 signal 7 } 
	{ viewOutputs_q0 sc_in sc_lv 32 signal 7 } 
	{ viewOutputs_address1 sc_out sc_lv 14 signal 7 } 
	{ viewOutputs_ce1 sc_out sc_logic 1 signal 7 } 
	{ viewOutputs_q1 sc_in sc_lv 32 signal 7 } 
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
 	{ "name": "circuitOutput_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "circuitOutput", "role": "address1" }} , 
 	{ "name": "circuitOutput_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "circuitOutput", "role": "ce1" }} , 
 	{ "name": "circuitOutput_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "circuitOutput", "role": "q1" }} , 
 	{ "name": "plaintext_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "plaintext", "role": "address0" }} , 
 	{ "name": "plaintext_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "plaintext", "role": "ce0" }} , 
 	{ "name": "plaintext_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "plaintext", "role": "q0" }} , 
 	{ "name": "plaintext_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "plaintext", "role": "address1" }} , 
 	{ "name": "plaintext_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "plaintext", "role": "ce1" }} , 
 	{ "name": "plaintext_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "plaintext", "role": "q1" }} , 
 	{ "name": "as_hashes_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "as_hashes", "role": "address0" }} , 
 	{ "name": "as_hashes_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "as_hashes", "role": "ce0" }} , 
 	{ "name": "as_hashes_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "as_hashes", "role": "q0" }} , 
 	{ "name": "challengeBits_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "challengeBits", "role": "address0" }} , 
 	{ "name": "challengeBits_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "challengeBits", "role": "ce0" }} , 
 	{ "name": "challengeBits_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "challengeBits", "role": "we0" }} , 
 	{ "name": "challengeBits_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "challengeBits", "role": "d0" }} , 
 	{ "name": "challengeBits_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "challengeBits", "role": "q0" }} , 
 	{ "name": "salt_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "salt_0", "role": "address0" }} , 
 	{ "name": "salt_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "salt_0", "role": "ce0" }} , 
 	{ "name": "salt_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "salt_0", "role": "q0" }} , 
 	{ "name": "message_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "message", "role": "address0" }} , 
 	{ "name": "message_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "message", "role": "ce0" }} , 
 	{ "name": "message_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "message", "role": "q0" }} , 
 	{ "name": "messageByteLength", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "messageByteLength", "role": "default" }} , 
 	{ "name": "viewOutputs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "viewOutputs", "role": "address0" }} , 
 	{ "name": "viewOutputs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "viewOutputs", "role": "ce0" }} , 
 	{ "name": "viewOutputs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "viewOutputs", "role": "q0" }} , 
 	{ "name": "viewOutputs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "viewOutputs", "role": "address1" }} , 
 	{ "name": "viewOutputs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "viewOutputs", "role": "ce1" }} , 
 	{ "name": "viewOutputs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "viewOutputs", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "19", "32", "45", "58", "71", "84", "97", "110"],
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
			{"State" : "ap_ST_fsm_state49", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_10_fu_915"},
			{"State" : "ap_ST_fsm_state53", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_1_fu_930"},
			{"State" : "ap_ST_fsm_state66", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_1_fu_930"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_8_fu_944"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5133_fu_962"},
			{"State" : "ap_ST_fsm_state33", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5133_fu_962"},
			{"State" : "ap_ST_fsm_state45", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5133_fu_962"},
			{"State" : "ap_ST_fsm_state47", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_6_fu_975"},
			{"State" : "ap_ST_fsm_state62", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_3_fu_989"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_1002"},
			{"State" : "ap_ST_fsm_state60", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_1002"},
			{"State" : "ap_ST_fsm_state51", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashFinal_fu_1016"},
			{"State" : "ap_ST_fsm_state64", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashFinal_fu_1016"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashInitializ_fu_1031"},
			{"State" : "ap_ST_fsm_state58", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashInitializ_fu_1031"}],
		"Port" : [
			{"Name" : "circuitOutput", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "as_hashes", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_Keccak_HashUpdate_8_fu_944", "Port" : "data"}]},
			{"Name" : "challengeBits", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "salt_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_Keccak_HashUpdate_6_fu_975", "Port" : "data_0"}]},
			{"Name" : "message", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_Keccak_HashUpdate_10_fu_915", "Port" : "data"}]},
			{"Name" : "messageByteLength", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_Keccak_HashFinal_fu_1016", "Port" : "KeccakRhoOffsets"},
					{"ID" : "32", "SubInstance" : "grp_Keccak_HashUpdate_8_fu_944", "Port" : "KeccakRhoOffsets"},
					{"ID" : "71", "SubInstance" : "grp_Keccak_HashUpdate_3_fu_989", "Port" : "KeccakRhoOffsets"},
					{"ID" : "6", "SubInstance" : "grp_Keccak_HashUpdate_10_fu_915", "Port" : "KeccakRhoOffsets"},
					{"ID" : "19", "SubInstance" : "grp_Keccak_HashSqueeze_1_fu_930", "Port" : "KeccakRhoOffsets"},
					{"ID" : "58", "SubInstance" : "grp_Keccak_HashUpdate_6_fu_975", "Port" : "KeccakRhoOffsets"},
					{"ID" : "84", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_1002", "Port" : "KeccakRhoOffsets"},
					{"ID" : "45", "SubInstance" : "grp_Keccak_HashUpdate_5133_fu_962", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_Keccak_HashFinal_fu_1016", "Port" : "KeccakRoundConstants"},
					{"ID" : "32", "SubInstance" : "grp_Keccak_HashUpdate_8_fu_944", "Port" : "KeccakRoundConstants"},
					{"ID" : "71", "SubInstance" : "grp_Keccak_HashUpdate_3_fu_989", "Port" : "KeccakRoundConstants"},
					{"ID" : "6", "SubInstance" : "grp_Keccak_HashUpdate_10_fu_915", "Port" : "KeccakRoundConstants"},
					{"ID" : "19", "SubInstance" : "grp_Keccak_HashSqueeze_1_fu_930", "Port" : "KeccakRoundConstants"},
					{"ID" : "58", "SubInstance" : "grp_Keccak_HashUpdate_6_fu_975", "Port" : "KeccakRoundConstants"},
					{"ID" : "84", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_1002", "Port" : "KeccakRoundConstants"},
					{"ID" : "45", "SubInstance" : "grp_Keccak_HashUpdate_5133_fu_962", "Port" : "KeccakRoundConstants"}]},
			{"Name" : "viewOutputs", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_2_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_1_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hash_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctx_sponge_state_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_10_fu_915", "Parent" : "0", "Child" : ["7"],
		"CDFG" : "Keccak_HashUpdate_10",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_189"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_189"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_189", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "databitlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_189", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_189", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_10_fu_915.grp_KeccakP1600_Permute_s_fu_189", "Parent" : "6", "Child" : ["8", "9", "10", "11", "14", "16"],
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
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_10_fu_915.grp_KeccakP1600_Permute_s_fu_189.KeccakRhoOffsets_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_10_fu_915.grp_KeccakP1600_Permute_s_fu_189.KeccakRoundConstants_U", "Parent" : "7"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_10_fu_915.grp_KeccakP1600_Permute_s_fu_189.stateAsWords_U", "Parent" : "7"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_10_fu_915.grp_KeccakP1600_Permute_s_fu_189.grp_theta_fu_225", "Parent" : "7", "Child" : ["12", "13"],
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
	{"ID" : "12", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_10_fu_915.grp_KeccakP1600_Permute_s_fu_189.grp_theta_fu_225.C_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_10_fu_915.grp_KeccakP1600_Permute_s_fu_189.grp_theta_fu_225.D_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_10_fu_915.grp_KeccakP1600_Permute_s_fu_189.grp_chi_fu_230", "Parent" : "7", "Child" : ["15"],
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
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_10_fu_915.grp_KeccakP1600_Permute_s_fu_189.grp_chi_fu_230.C_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_10_fu_915.grp_KeccakP1600_Permute_s_fu_189.grp_pi_fu_235", "Parent" : "7", "Child" : ["17", "18"],
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
	{"ID" : "17", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_10_fu_915.grp_KeccakP1600_Permute_s_fu_189.grp_pi_fu_235.tempA_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_10_fu_915.grp_KeccakP1600_Permute_s_fu_189.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "16"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_1_fu_930", "Parent" : "0", "Child" : ["20"],
		"CDFG" : "Keccak_HashSqueeze_1",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_258"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_258"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_258"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_258", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_258", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_258", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_1_fu_930.grp_KeccakP1600_Permute_s_fu_258", "Parent" : "19", "Child" : ["21", "22", "23", "24", "27", "29"],
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
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_1_fu_930.grp_KeccakP1600_Permute_s_fu_258.KeccakRhoOffsets_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_1_fu_930.grp_KeccakP1600_Permute_s_fu_258.KeccakRoundConstants_U", "Parent" : "20"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_1_fu_930.grp_KeccakP1600_Permute_s_fu_258.stateAsWords_U", "Parent" : "20"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_1_fu_930.grp_KeccakP1600_Permute_s_fu_258.grp_theta_fu_225", "Parent" : "20", "Child" : ["25", "26"],
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
	{"ID" : "25", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_1_fu_930.grp_KeccakP1600_Permute_s_fu_258.grp_theta_fu_225.C_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_1_fu_930.grp_KeccakP1600_Permute_s_fu_258.grp_theta_fu_225.D_U", "Parent" : "24"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_1_fu_930.grp_KeccakP1600_Permute_s_fu_258.grp_chi_fu_230", "Parent" : "20", "Child" : ["28"],
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
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_1_fu_930.grp_KeccakP1600_Permute_s_fu_258.grp_chi_fu_230.C_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_1_fu_930.grp_KeccakP1600_Permute_s_fu_258.grp_pi_fu_235", "Parent" : "20", "Child" : ["30", "31"],
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
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_1_fu_930.grp_KeccakP1600_Permute_s_fu_258.grp_pi_fu_235.tempA_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_1_fu_930.grp_KeccakP1600_Permute_s_fu_258.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "29"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_944", "Parent" : "0", "Child" : ["33"],
		"CDFG" : "Keccak_HashUpdate_8",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_211"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_211"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_211", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_211", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_211", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_944.grp_KeccakP1600_Permute_s_fu_211", "Parent" : "32", "Child" : ["34", "35", "36", "37", "40", "42"],
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
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_944.grp_KeccakP1600_Permute_s_fu_211.KeccakRhoOffsets_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_944.grp_KeccakP1600_Permute_s_fu_211.KeccakRoundConstants_U", "Parent" : "33"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_944.grp_KeccakP1600_Permute_s_fu_211.stateAsWords_U", "Parent" : "33"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_944.grp_KeccakP1600_Permute_s_fu_211.grp_theta_fu_225", "Parent" : "33", "Child" : ["38", "39"],
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
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_944.grp_KeccakP1600_Permute_s_fu_211.grp_theta_fu_225.C_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_944.grp_KeccakP1600_Permute_s_fu_211.grp_theta_fu_225.D_U", "Parent" : "37"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_944.grp_KeccakP1600_Permute_s_fu_211.grp_chi_fu_230", "Parent" : "33", "Child" : ["41"],
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
	{"ID" : "41", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_944.grp_KeccakP1600_Permute_s_fu_211.grp_chi_fu_230.C_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_944.grp_KeccakP1600_Permute_s_fu_211.grp_pi_fu_235", "Parent" : "33", "Child" : ["43", "44"],
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
	{"ID" : "43", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_944.grp_KeccakP1600_Permute_s_fu_211.grp_pi_fu_235.tempA_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_944.grp_KeccakP1600_Permute_s_fu_211.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "42"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_962", "Parent" : "0", "Child" : ["46"],
		"CDFG" : "Keccak_HashUpdate_5133",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_962.grp_KeccakP1600_Permute_s_fu_183", "Parent" : "45", "Child" : ["47", "48", "49", "50", "53", "55"],
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
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_962.grp_KeccakP1600_Permute_s_fu_183.KeccakRhoOffsets_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_962.grp_KeccakP1600_Permute_s_fu_183.KeccakRoundConstants_U", "Parent" : "46"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_962.grp_KeccakP1600_Permute_s_fu_183.stateAsWords_U", "Parent" : "46"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_962.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225", "Parent" : "46", "Child" : ["51", "52"],
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
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_962.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225.C_U", "Parent" : "50"},
	{"ID" : "52", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_962.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225.D_U", "Parent" : "50"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_962.grp_KeccakP1600_Permute_s_fu_183.grp_chi_fu_230", "Parent" : "46", "Child" : ["54"],
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
	{"ID" : "54", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_962.grp_KeccakP1600_Permute_s_fu_183.grp_chi_fu_230.C_U", "Parent" : "53"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_962.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235", "Parent" : "46", "Child" : ["56", "57"],
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
	{"ID" : "56", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_962.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235.tempA_U", "Parent" : "55"},
	{"ID" : "57", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_962.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "55"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_975", "Parent" : "0", "Child" : ["59"],
		"CDFG" : "Keccak_HashUpdate_6",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_975.grp_KeccakP1600_Permute_s_fu_183", "Parent" : "58", "Child" : ["60", "61", "62", "63", "66", "68"],
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
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_975.grp_KeccakP1600_Permute_s_fu_183.KeccakRhoOffsets_U", "Parent" : "59"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_975.grp_KeccakP1600_Permute_s_fu_183.KeccakRoundConstants_U", "Parent" : "59"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_975.grp_KeccakP1600_Permute_s_fu_183.stateAsWords_U", "Parent" : "59"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_975.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225", "Parent" : "59", "Child" : ["64", "65"],
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
	{"ID" : "64", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_975.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225.C_U", "Parent" : "63"},
	{"ID" : "65", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_975.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225.D_U", "Parent" : "63"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_975.grp_KeccakP1600_Permute_s_fu_183.grp_chi_fu_230", "Parent" : "59", "Child" : ["67"],
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
	{"ID" : "67", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_975.grp_KeccakP1600_Permute_s_fu_183.grp_chi_fu_230.C_U", "Parent" : "66"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_975.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235", "Parent" : "59", "Child" : ["69", "70"],
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
	{"ID" : "69", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_975.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235.tempA_U", "Parent" : "68"},
	{"ID" : "70", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_975.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "68"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_989", "Parent" : "0", "Child" : ["72"],
		"CDFG" : "Keccak_HashUpdate_3",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_989.grp_KeccakP1600_Permute_s_fu_183", "Parent" : "71", "Child" : ["73", "74", "75", "76", "79", "81"],
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
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_989.grp_KeccakP1600_Permute_s_fu_183.KeccakRhoOffsets_U", "Parent" : "72"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_989.grp_KeccakP1600_Permute_s_fu_183.KeccakRoundConstants_U", "Parent" : "72"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_989.grp_KeccakP1600_Permute_s_fu_183.stateAsWords_U", "Parent" : "72"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_989.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225", "Parent" : "72", "Child" : ["77", "78"],
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
	{"ID" : "77", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_989.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225.C_U", "Parent" : "76"},
	{"ID" : "78", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_989.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225.D_U", "Parent" : "76"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_989.grp_KeccakP1600_Permute_s_fu_183.grp_chi_fu_230", "Parent" : "72", "Child" : ["80"],
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
	{"ID" : "80", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_989.grp_KeccakP1600_Permute_s_fu_183.grp_chi_fu_230.C_U", "Parent" : "79"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_989.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235", "Parent" : "72", "Child" : ["82", "83"],
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
	{"ID" : "82", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_989.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235.tempA_U", "Parent" : "81"},
	{"ID" : "83", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_989.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "81"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_1002", "Parent" : "0", "Child" : ["85"],
		"CDFG" : "Keccak_HashUpdate_1",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_1002.grp_KeccakP1600_Permute_s_fu_162", "Parent" : "84", "Child" : ["86", "87", "88", "89", "92", "94"],
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
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_1002.grp_KeccakP1600_Permute_s_fu_162.KeccakRhoOffsets_U", "Parent" : "85"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_1002.grp_KeccakP1600_Permute_s_fu_162.KeccakRoundConstants_U", "Parent" : "85"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_1002.grp_KeccakP1600_Permute_s_fu_162.stateAsWords_U", "Parent" : "85"},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_1002.grp_KeccakP1600_Permute_s_fu_162.grp_theta_fu_225", "Parent" : "85", "Child" : ["90", "91"],
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
	{"ID" : "90", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_1002.grp_KeccakP1600_Permute_s_fu_162.grp_theta_fu_225.C_U", "Parent" : "89"},
	{"ID" : "91", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_1002.grp_KeccakP1600_Permute_s_fu_162.grp_theta_fu_225.D_U", "Parent" : "89"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_1002.grp_KeccakP1600_Permute_s_fu_162.grp_chi_fu_230", "Parent" : "85", "Child" : ["93"],
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
	{"ID" : "93", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_1002.grp_KeccakP1600_Permute_s_fu_162.grp_chi_fu_230.C_U", "Parent" : "92"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_1002.grp_KeccakP1600_Permute_s_fu_162.grp_pi_fu_235", "Parent" : "85", "Child" : ["95", "96"],
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
	{"ID" : "95", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_1002.grp_KeccakP1600_Permute_s_fu_162.grp_pi_fu_235.tempA_U", "Parent" : "94"},
	{"ID" : "96", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_1002.grp_KeccakP1600_Permute_s_fu_162.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "94"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_1016", "Parent" : "0", "Child" : ["98"],
		"CDFG" : "Keccak_HashFinal",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "37175",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_delimitedSu", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_1016.grp_KeccakP1600_Permute_s_fu_124", "Parent" : "97", "Child" : ["99", "100", "101", "102", "105", "107"],
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
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_1016.grp_KeccakP1600_Permute_s_fu_124.KeccakRhoOffsets_U", "Parent" : "98"},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_1016.grp_KeccakP1600_Permute_s_fu_124.KeccakRoundConstants_U", "Parent" : "98"},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_1016.grp_KeccakP1600_Permute_s_fu_124.stateAsWords_U", "Parent" : "98"},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_1016.grp_KeccakP1600_Permute_s_fu_124.grp_theta_fu_225", "Parent" : "98", "Child" : ["103", "104"],
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
	{"ID" : "103", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_1016.grp_KeccakP1600_Permute_s_fu_124.grp_theta_fu_225.C_U", "Parent" : "102"},
	{"ID" : "104", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_1016.grp_KeccakP1600_Permute_s_fu_124.grp_theta_fu_225.D_U", "Parent" : "102"},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_1016.grp_KeccakP1600_Permute_s_fu_124.grp_chi_fu_230", "Parent" : "98", "Child" : ["106"],
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
	{"ID" : "106", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_1016.grp_KeccakP1600_Permute_s_fu_124.grp_chi_fu_230.C_U", "Parent" : "105"},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_1016.grp_KeccakP1600_Permute_s_fu_124.grp_pi_fu_235", "Parent" : "98", "Child" : ["108", "109"],
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
	{"ID" : "108", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_1016.grp_KeccakP1600_Permute_s_fu_124.grp_pi_fu_235.tempA_U", "Parent" : "107"},
	{"ID" : "109", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_1016.grp_KeccakP1600_Permute_s_fu_124.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "107"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashInitializ_fu_1031", "Parent" : "0",
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
	H3_2 {
		circuitOutput {Type I LastRead 8 FirstWrite -1}
		plaintext {Type I LastRead 13 FirstWrite -1}
		as_hashes {Type I LastRead 4 FirstWrite -1}
		challengeBits {Type IO LastRead 26 FirstWrite 3}
		salt_0 {Type I LastRead 4 FirstWrite -1}
		message {Type I LastRead 4 FirstWrite -1}
		messageByteLength {Type I LastRead 3 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}
		viewOutputs {Type I LastRead 8 FirstWrite -1}}
	Keccak_HashUpdate_10 {
		instance_sponge_stat {Type IO LastRead 4 FirstWrite 4}
		instance_sponge_rate {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byte {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 4 FirstWrite -1}
		databitlen {Type I LastRead 0 FirstWrite -1}
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
	Keccak_HashSqueeze_1 {
		instance_sponge_stat {Type IO LastRead 10 FirstWrite 1}
		instance_sponge_rate {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque_21 {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque {Type I LastRead 0 FirstWrite -1}
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
	Keccak_HashUpdate_8 {
		instance_sponge_stat {Type IO LastRead 4 FirstWrite 4}
		instance_sponge_rate {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byte {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 4 FirstWrite -1}
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
	Keccak_HashUpdate_5133 {
		instance_sponge_stat {Type IO LastRead 4 FirstWrite 4}
		instance_sponge_rate {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byte {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 4 FirstWrite -1}
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
	Keccak_HashUpdate_6 {
		instance_sponge_stat {Type IO LastRead 4 FirstWrite 4}
		instance_sponge_rate {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byte {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque {Type I LastRead 0 FirstWrite -1}
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
	Keccak_HashUpdate_3 {
		instance_sponge_stat {Type IO LastRead 4 FirstWrite 4}
		instance_sponge_rate {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byte {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 4 FirstWrite -1}
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
	Keccak_HashUpdate_1 {
		instance_sponge_stat {Type IO LastRead 3 FirstWrite 3}
		instance_sponge_rate {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byte {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque {Type I LastRead 0 FirstWrite -1}
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
	Keccak_HashFinal {
		instance_sponge_stat {Type IO LastRead 4 FirstWrite 1}
		instance_sponge_rate {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byte_42 {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byte {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque_30 {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque {Type I LastRead 0 FirstWrite -1}
		instance_delimitedSu {Type I LastRead 0 FirstWrite -1}
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
	Keccak_HashInitializ {
		instance_sponge_state {Type O LastRead -1 FirstWrite 1}
		instance_sponge_rate_read {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		instance_sponge_squeezing_read {Type I LastRead 0 FirstWrite -1}
		instance_fixedOutputLength_read {Type I LastRead 0 FirstWrite -1}
		instance_delimitedSuffix_read {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	circuitOutput { ap_memory {  { circuitOutput_address0 mem_address 1 3 }  { circuitOutput_ce0 mem_ce 1 1 }  { circuitOutput_q0 mem_dout 0 32 }  { circuitOutput_address1 mem_address 1 3 }  { circuitOutput_ce1 mem_ce 1 1 }  { circuitOutput_q1 mem_dout 0 32 } } }
	plaintext { ap_memory {  { plaintext_address0 mem_address 1 3 }  { plaintext_ce0 mem_ce 1 1 }  { plaintext_q0 mem_dout 0 32 }  { plaintext_address1 mem_address 1 3 }  { plaintext_ce1 mem_ce 1 1 }  { plaintext_q1 mem_dout 0 32 } } }
	as_hashes { ap_memory {  { as_hashes_address0 mem_address 1 15 }  { as_hashes_ce0 mem_ce 1 1 }  { as_hashes_q0 mem_dout 0 8 } } }
	challengeBits { ap_memory {  { challengeBits_address0 mem_address 1 6 }  { challengeBits_ce0 mem_ce 1 1 }  { challengeBits_we0 mem_we 1 1 }  { challengeBits_d0 mem_din 1 8 }  { challengeBits_q0 mem_dout 0 8 } } }
	salt_0 { ap_memory {  { salt_0_address0 mem_address 1 5 }  { salt_0_ce0 mem_ce 1 1 }  { salt_0_q0 mem_dout 0 8 } } }
	message { ap_memory {  { message_address0 mem_address 1 16 }  { message_ce0 mem_ce 1 1 }  { message_q0 mem_dout 0 8 } } }
	messageByteLength { ap_none {  { messageByteLength in_data 0 64 } } }
	viewOutputs { ap_memory {  { viewOutputs_address0 mem_address 1 14 }  { viewOutputs_ce0 mem_ce 1 1 }  { viewOutputs_q0 mem_dout 0 32 }  { viewOutputs_address1 mem_address 1 14 }  { viewOutputs_ce1 mem_ce 1 1 }  { viewOutputs_q1 mem_dout 0 32 } } }
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
	{ as_hashes int 8 regular {array 21024 { 1 3 } 1 1 }  }
	{ challengeBits int 8 regular {array 55 { 2 3 } 1 1 }  }
	{ salt_0 int 8 regular {array 32 { 1 3 } 1 1 }  }
	{ message int 8 regular {array 37336 { 1 3 } 1 1 }  }
	{ messageByteLength int 64 regular  }
	{ viewOutputs int 32 regular {array 10512 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "circuitOutput", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "plaintext", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "as_hashes", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "challengeBits", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "salt_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "message", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "messageByteLength", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "viewOutputs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "viewOutputs","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 656,"step" : 1},{"low" : 0,"up" : 15,"step" : 1}]}]}], "extern" : 0} ]}
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
	{ as_hashes_address0 sc_out sc_lv 15 signal 2 } 
	{ as_hashes_ce0 sc_out sc_logic 1 signal 2 } 
	{ as_hashes_q0 sc_in sc_lv 8 signal 2 } 
	{ challengeBits_address0 sc_out sc_lv 6 signal 3 } 
	{ challengeBits_ce0 sc_out sc_logic 1 signal 3 } 
	{ challengeBits_we0 sc_out sc_logic 1 signal 3 } 
	{ challengeBits_d0 sc_out sc_lv 8 signal 3 } 
	{ challengeBits_q0 sc_in sc_lv 8 signal 3 } 
	{ salt_0_address0 sc_out sc_lv 5 signal 4 } 
	{ salt_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ salt_0_q0 sc_in sc_lv 8 signal 4 } 
	{ message_address0 sc_out sc_lv 16 signal 5 } 
	{ message_ce0 sc_out sc_logic 1 signal 5 } 
	{ message_q0 sc_in sc_lv 8 signal 5 } 
	{ messageByteLength sc_in sc_lv 64 signal 6 } 
	{ viewOutputs_address0 sc_out sc_lv 14 signal 7 } 
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
 	{ "name": "as_hashes_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "as_hashes", "role": "address0" }} , 
 	{ "name": "as_hashes_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "as_hashes", "role": "ce0" }} , 
 	{ "name": "as_hashes_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "as_hashes", "role": "q0" }} , 
 	{ "name": "challengeBits_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "challengeBits", "role": "address0" }} , 
 	{ "name": "challengeBits_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "challengeBits", "role": "ce0" }} , 
 	{ "name": "challengeBits_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "challengeBits", "role": "we0" }} , 
 	{ "name": "challengeBits_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "challengeBits", "role": "d0" }} , 
 	{ "name": "challengeBits_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "challengeBits", "role": "q0" }} , 
 	{ "name": "salt_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "salt_0", "role": "address0" }} , 
 	{ "name": "salt_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "salt_0", "role": "ce0" }} , 
 	{ "name": "salt_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "salt_0", "role": "q0" }} , 
 	{ "name": "message_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "message", "role": "address0" }} , 
 	{ "name": "message_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "message", "role": "ce0" }} , 
 	{ "name": "message_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "message", "role": "q0" }} , 
 	{ "name": "messageByteLength", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "messageByteLength", "role": "default" }} , 
 	{ "name": "viewOutputs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "viewOutputs", "role": "address0" }} , 
 	{ "name": "viewOutputs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "viewOutputs", "role": "ce0" }} , 
 	{ "name": "viewOutputs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "viewOutputs", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "19", "32", "45", "58", "71", "84", "97", "110"],
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
			{"State" : "ap_ST_fsm_state46", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_10_fu_898"},
			{"State" : "ap_ST_fsm_state50", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_1_fu_913"},
			{"State" : "ap_ST_fsm_state63", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_1_fu_913"},
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_8_fu_927"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5133_fu_945"},
			{"State" : "ap_ST_fsm_state31", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5133_fu_945"},
			{"State" : "ap_ST_fsm_state42", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5133_fu_945"},
			{"State" : "ap_ST_fsm_state44", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_6_fu_958"},
			{"State" : "ap_ST_fsm_state59", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_3_fu_972"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_985"},
			{"State" : "ap_ST_fsm_state57", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_985"},
			{"State" : "ap_ST_fsm_state48", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashFinal_fu_999"},
			{"State" : "ap_ST_fsm_state61", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashFinal_fu_999"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashInitializ_fu_1014"},
			{"State" : "ap_ST_fsm_state55", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashInitializ_fu_1014"}],
		"Port" : [
			{"Name" : "circuitOutput", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "as_hashes", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_Keccak_HashUpdate_8_fu_927", "Port" : "data"}]},
			{"Name" : "challengeBits", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "salt_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_Keccak_HashUpdate_6_fu_958", "Port" : "data_0"}]},
			{"Name" : "message", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_Keccak_HashUpdate_10_fu_898", "Port" : "data"}]},
			{"Name" : "messageByteLength", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_Keccak_HashFinal_fu_999", "Port" : "KeccakRhoOffsets"},
					{"ID" : "58", "SubInstance" : "grp_Keccak_HashUpdate_6_fu_958", "Port" : "KeccakRhoOffsets"},
					{"ID" : "71", "SubInstance" : "grp_Keccak_HashUpdate_3_fu_972", "Port" : "KeccakRhoOffsets"},
					{"ID" : "19", "SubInstance" : "grp_Keccak_HashSqueeze_1_fu_913", "Port" : "KeccakRhoOffsets"},
					{"ID" : "32", "SubInstance" : "grp_Keccak_HashUpdate_8_fu_927", "Port" : "KeccakRhoOffsets"},
					{"ID" : "45", "SubInstance" : "grp_Keccak_HashUpdate_5133_fu_945", "Port" : "KeccakRhoOffsets"},
					{"ID" : "6", "SubInstance" : "grp_Keccak_HashUpdate_10_fu_898", "Port" : "KeccakRhoOffsets"},
					{"ID" : "84", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_985", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_Keccak_HashFinal_fu_999", "Port" : "KeccakRoundConstants"},
					{"ID" : "58", "SubInstance" : "grp_Keccak_HashUpdate_6_fu_958", "Port" : "KeccakRoundConstants"},
					{"ID" : "71", "SubInstance" : "grp_Keccak_HashUpdate_3_fu_972", "Port" : "KeccakRoundConstants"},
					{"ID" : "19", "SubInstance" : "grp_Keccak_HashSqueeze_1_fu_913", "Port" : "KeccakRoundConstants"},
					{"ID" : "32", "SubInstance" : "grp_Keccak_HashUpdate_8_fu_927", "Port" : "KeccakRoundConstants"},
					{"ID" : "45", "SubInstance" : "grp_Keccak_HashUpdate_5133_fu_945", "Port" : "KeccakRoundConstants"},
					{"ID" : "6", "SubInstance" : "grp_Keccak_HashUpdate_10_fu_898", "Port" : "KeccakRoundConstants"},
					{"ID" : "84", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_985", "Port" : "KeccakRoundConstants"}]},
			{"Name" : "viewOutputs", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_2_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_1_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hash_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctx_sponge_state_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_10_fu_898", "Parent" : "0", "Child" : ["7"],
		"CDFG" : "Keccak_HashUpdate_10",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_189"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_189"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_189", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "databitlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_189", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_189", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_10_fu_898.grp_KeccakP1600_Permute_s_fu_189", "Parent" : "6", "Child" : ["8", "9", "10", "11", "14", "16"],
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
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_10_fu_898.grp_KeccakP1600_Permute_s_fu_189.KeccakRhoOffsets_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_10_fu_898.grp_KeccakP1600_Permute_s_fu_189.KeccakRoundConstants_U", "Parent" : "7"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_10_fu_898.grp_KeccakP1600_Permute_s_fu_189.stateAsWords_U", "Parent" : "7"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_10_fu_898.grp_KeccakP1600_Permute_s_fu_189.grp_theta_fu_225", "Parent" : "7", "Child" : ["12", "13"],
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
	{"ID" : "12", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_10_fu_898.grp_KeccakP1600_Permute_s_fu_189.grp_theta_fu_225.C_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_10_fu_898.grp_KeccakP1600_Permute_s_fu_189.grp_theta_fu_225.D_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_10_fu_898.grp_KeccakP1600_Permute_s_fu_189.grp_chi_fu_230", "Parent" : "7", "Child" : ["15"],
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
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_10_fu_898.grp_KeccakP1600_Permute_s_fu_189.grp_chi_fu_230.C_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_10_fu_898.grp_KeccakP1600_Permute_s_fu_189.grp_pi_fu_235", "Parent" : "7", "Child" : ["17", "18"],
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
	{"ID" : "17", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_10_fu_898.grp_KeccakP1600_Permute_s_fu_189.grp_pi_fu_235.tempA_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_10_fu_898.grp_KeccakP1600_Permute_s_fu_189.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "16"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_1_fu_913", "Parent" : "0", "Child" : ["20"],
		"CDFG" : "Keccak_HashSqueeze_1",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_258"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_258"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_258"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_258", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_258", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_258", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_1_fu_913.grp_KeccakP1600_Permute_s_fu_258", "Parent" : "19", "Child" : ["21", "22", "23", "24", "27", "29"],
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
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_1_fu_913.grp_KeccakP1600_Permute_s_fu_258.KeccakRhoOffsets_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_1_fu_913.grp_KeccakP1600_Permute_s_fu_258.KeccakRoundConstants_U", "Parent" : "20"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_1_fu_913.grp_KeccakP1600_Permute_s_fu_258.stateAsWords_U", "Parent" : "20"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_1_fu_913.grp_KeccakP1600_Permute_s_fu_258.grp_theta_fu_225", "Parent" : "20", "Child" : ["25", "26"],
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
	{"ID" : "25", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_1_fu_913.grp_KeccakP1600_Permute_s_fu_258.grp_theta_fu_225.C_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_1_fu_913.grp_KeccakP1600_Permute_s_fu_258.grp_theta_fu_225.D_U", "Parent" : "24"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_1_fu_913.grp_KeccakP1600_Permute_s_fu_258.grp_chi_fu_230", "Parent" : "20", "Child" : ["28"],
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
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_1_fu_913.grp_KeccakP1600_Permute_s_fu_258.grp_chi_fu_230.C_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_1_fu_913.grp_KeccakP1600_Permute_s_fu_258.grp_pi_fu_235", "Parent" : "20", "Child" : ["30", "31"],
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
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_1_fu_913.grp_KeccakP1600_Permute_s_fu_258.grp_pi_fu_235.tempA_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_1_fu_913.grp_KeccakP1600_Permute_s_fu_258.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "29"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_927", "Parent" : "0", "Child" : ["33"],
		"CDFG" : "Keccak_HashUpdate_8",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_211"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_211"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_211", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_211", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_211", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_927.grp_KeccakP1600_Permute_s_fu_211", "Parent" : "32", "Child" : ["34", "35", "36", "37", "40", "42"],
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
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_927.grp_KeccakP1600_Permute_s_fu_211.KeccakRhoOffsets_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_927.grp_KeccakP1600_Permute_s_fu_211.KeccakRoundConstants_U", "Parent" : "33"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_927.grp_KeccakP1600_Permute_s_fu_211.stateAsWords_U", "Parent" : "33"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_927.grp_KeccakP1600_Permute_s_fu_211.grp_theta_fu_225", "Parent" : "33", "Child" : ["38", "39"],
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
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_927.grp_KeccakP1600_Permute_s_fu_211.grp_theta_fu_225.C_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_927.grp_KeccakP1600_Permute_s_fu_211.grp_theta_fu_225.D_U", "Parent" : "37"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_927.grp_KeccakP1600_Permute_s_fu_211.grp_chi_fu_230", "Parent" : "33", "Child" : ["41"],
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
	{"ID" : "41", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_927.grp_KeccakP1600_Permute_s_fu_211.grp_chi_fu_230.C_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_927.grp_KeccakP1600_Permute_s_fu_211.grp_pi_fu_235", "Parent" : "33", "Child" : ["43", "44"],
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
	{"ID" : "43", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_927.grp_KeccakP1600_Permute_s_fu_211.grp_pi_fu_235.tempA_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_927.grp_KeccakP1600_Permute_s_fu_211.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "42"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_945", "Parent" : "0", "Child" : ["46"],
		"CDFG" : "Keccak_HashUpdate_5133",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_945.grp_KeccakP1600_Permute_s_fu_183", "Parent" : "45", "Child" : ["47", "48", "49", "50", "53", "55"],
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
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_945.grp_KeccakP1600_Permute_s_fu_183.KeccakRhoOffsets_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_945.grp_KeccakP1600_Permute_s_fu_183.KeccakRoundConstants_U", "Parent" : "46"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_945.grp_KeccakP1600_Permute_s_fu_183.stateAsWords_U", "Parent" : "46"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_945.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225", "Parent" : "46", "Child" : ["51", "52"],
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
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_945.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225.C_U", "Parent" : "50"},
	{"ID" : "52", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_945.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225.D_U", "Parent" : "50"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_945.grp_KeccakP1600_Permute_s_fu_183.grp_chi_fu_230", "Parent" : "46", "Child" : ["54"],
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
	{"ID" : "54", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_945.grp_KeccakP1600_Permute_s_fu_183.grp_chi_fu_230.C_U", "Parent" : "53"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_945.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235", "Parent" : "46", "Child" : ["56", "57"],
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
	{"ID" : "56", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_945.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235.tempA_U", "Parent" : "55"},
	{"ID" : "57", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_945.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "55"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_958", "Parent" : "0", "Child" : ["59"],
		"CDFG" : "Keccak_HashUpdate_6",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_958.grp_KeccakP1600_Permute_s_fu_183", "Parent" : "58", "Child" : ["60", "61", "62", "63", "66", "68"],
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
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_958.grp_KeccakP1600_Permute_s_fu_183.KeccakRhoOffsets_U", "Parent" : "59"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_958.grp_KeccakP1600_Permute_s_fu_183.KeccakRoundConstants_U", "Parent" : "59"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_958.grp_KeccakP1600_Permute_s_fu_183.stateAsWords_U", "Parent" : "59"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_958.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225", "Parent" : "59", "Child" : ["64", "65"],
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
	{"ID" : "64", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_958.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225.C_U", "Parent" : "63"},
	{"ID" : "65", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_958.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225.D_U", "Parent" : "63"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_958.grp_KeccakP1600_Permute_s_fu_183.grp_chi_fu_230", "Parent" : "59", "Child" : ["67"],
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
	{"ID" : "67", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_958.grp_KeccakP1600_Permute_s_fu_183.grp_chi_fu_230.C_U", "Parent" : "66"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_958.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235", "Parent" : "59", "Child" : ["69", "70"],
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
	{"ID" : "69", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_958.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235.tempA_U", "Parent" : "68"},
	{"ID" : "70", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_958.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "68"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_972", "Parent" : "0", "Child" : ["72"],
		"CDFG" : "Keccak_HashUpdate_3",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_972.grp_KeccakP1600_Permute_s_fu_183", "Parent" : "71", "Child" : ["73", "74", "75", "76", "79", "81"],
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
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_972.grp_KeccakP1600_Permute_s_fu_183.KeccakRhoOffsets_U", "Parent" : "72"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_972.grp_KeccakP1600_Permute_s_fu_183.KeccakRoundConstants_U", "Parent" : "72"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_972.grp_KeccakP1600_Permute_s_fu_183.stateAsWords_U", "Parent" : "72"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_972.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225", "Parent" : "72", "Child" : ["77", "78"],
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
	{"ID" : "77", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_972.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225.C_U", "Parent" : "76"},
	{"ID" : "78", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_972.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225.D_U", "Parent" : "76"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_972.grp_KeccakP1600_Permute_s_fu_183.grp_chi_fu_230", "Parent" : "72", "Child" : ["80"],
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
	{"ID" : "80", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_972.grp_KeccakP1600_Permute_s_fu_183.grp_chi_fu_230.C_U", "Parent" : "79"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_972.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235", "Parent" : "72", "Child" : ["82", "83"],
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
	{"ID" : "82", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_972.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235.tempA_U", "Parent" : "81"},
	{"ID" : "83", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_972.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "81"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_985", "Parent" : "0", "Child" : ["85"],
		"CDFG" : "Keccak_HashUpdate_1",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_985.grp_KeccakP1600_Permute_s_fu_162", "Parent" : "84", "Child" : ["86", "87", "88", "89", "92", "94"],
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
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_985.grp_KeccakP1600_Permute_s_fu_162.KeccakRhoOffsets_U", "Parent" : "85"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_985.grp_KeccakP1600_Permute_s_fu_162.KeccakRoundConstants_U", "Parent" : "85"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_985.grp_KeccakP1600_Permute_s_fu_162.stateAsWords_U", "Parent" : "85"},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_985.grp_KeccakP1600_Permute_s_fu_162.grp_theta_fu_225", "Parent" : "85", "Child" : ["90", "91"],
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
	{"ID" : "90", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_985.grp_KeccakP1600_Permute_s_fu_162.grp_theta_fu_225.C_U", "Parent" : "89"},
	{"ID" : "91", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_985.grp_KeccakP1600_Permute_s_fu_162.grp_theta_fu_225.D_U", "Parent" : "89"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_985.grp_KeccakP1600_Permute_s_fu_162.grp_chi_fu_230", "Parent" : "85", "Child" : ["93"],
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
	{"ID" : "93", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_985.grp_KeccakP1600_Permute_s_fu_162.grp_chi_fu_230.C_U", "Parent" : "92"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_985.grp_KeccakP1600_Permute_s_fu_162.grp_pi_fu_235", "Parent" : "85", "Child" : ["95", "96"],
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
	{"ID" : "95", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_985.grp_KeccakP1600_Permute_s_fu_162.grp_pi_fu_235.tempA_U", "Parent" : "94"},
	{"ID" : "96", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_985.grp_KeccakP1600_Permute_s_fu_162.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "94"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_999", "Parent" : "0", "Child" : ["98"],
		"CDFG" : "Keccak_HashFinal",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "37175",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_delimitedSu", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_999.grp_KeccakP1600_Permute_s_fu_124", "Parent" : "97", "Child" : ["99", "100", "101", "102", "105", "107"],
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
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_999.grp_KeccakP1600_Permute_s_fu_124.KeccakRhoOffsets_U", "Parent" : "98"},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_999.grp_KeccakP1600_Permute_s_fu_124.KeccakRoundConstants_U", "Parent" : "98"},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_999.grp_KeccakP1600_Permute_s_fu_124.stateAsWords_U", "Parent" : "98"},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_999.grp_KeccakP1600_Permute_s_fu_124.grp_theta_fu_225", "Parent" : "98", "Child" : ["103", "104"],
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
	{"ID" : "103", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_999.grp_KeccakP1600_Permute_s_fu_124.grp_theta_fu_225.C_U", "Parent" : "102"},
	{"ID" : "104", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_999.grp_KeccakP1600_Permute_s_fu_124.grp_theta_fu_225.D_U", "Parent" : "102"},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_999.grp_KeccakP1600_Permute_s_fu_124.grp_chi_fu_230", "Parent" : "98", "Child" : ["106"],
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
	{"ID" : "106", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_999.grp_KeccakP1600_Permute_s_fu_124.grp_chi_fu_230.C_U", "Parent" : "105"},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_999.grp_KeccakP1600_Permute_s_fu_124.grp_pi_fu_235", "Parent" : "98", "Child" : ["108", "109"],
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
	{"ID" : "108", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_999.grp_KeccakP1600_Permute_s_fu_124.grp_pi_fu_235.tempA_U", "Parent" : "107"},
	{"ID" : "109", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_999.grp_KeccakP1600_Permute_s_fu_124.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "107"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashInitializ_fu_1014", "Parent" : "0",
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
	H3_2 {
		circuitOutput {Type I LastRead 12 FirstWrite -1}
		plaintext {Type I LastRead 23 FirstWrite -1}
		as_hashes {Type I LastRead 4 FirstWrite -1}
		challengeBits {Type IO LastRead 38 FirstWrite 3}
		salt_0 {Type I LastRead 4 FirstWrite -1}
		message {Type I LastRead 4 FirstWrite -1}
		messageByteLength {Type I LastRead 3 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}
		viewOutputs {Type I LastRead 12 FirstWrite -1}}
	Keccak_HashUpdate_10 {
		instance_sponge_stat {Type IO LastRead 4 FirstWrite 4}
		instance_sponge_rate {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byte {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 4 FirstWrite -1}
		databitlen {Type I LastRead 0 FirstWrite -1}
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
	Keccak_HashSqueeze_1 {
		instance_sponge_stat {Type IO LastRead 10 FirstWrite 1}
		instance_sponge_rate {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque_21 {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque {Type I LastRead 0 FirstWrite -1}
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
	Keccak_HashUpdate_8 {
		instance_sponge_stat {Type IO LastRead 4 FirstWrite 4}
		instance_sponge_rate {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byte {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 4 FirstWrite -1}
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
	Keccak_HashUpdate_5133 {
		instance_sponge_stat {Type IO LastRead 4 FirstWrite 4}
		instance_sponge_rate {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byte {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 4 FirstWrite -1}
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
	Keccak_HashUpdate_6 {
		instance_sponge_stat {Type IO LastRead 4 FirstWrite 4}
		instance_sponge_rate {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byte {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque {Type I LastRead 0 FirstWrite -1}
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
	Keccak_HashUpdate_3 {
		instance_sponge_stat {Type IO LastRead 4 FirstWrite 4}
		instance_sponge_rate {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byte {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 4 FirstWrite -1}
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
	Keccak_HashUpdate_1 {
		instance_sponge_stat {Type IO LastRead 3 FirstWrite 3}
		instance_sponge_rate {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byte {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque {Type I LastRead 0 FirstWrite -1}
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
	Keccak_HashFinal {
		instance_sponge_stat {Type IO LastRead 4 FirstWrite 1}
		instance_sponge_rate {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byte_42 {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byte {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque_30 {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque {Type I LastRead 0 FirstWrite -1}
		instance_delimitedSu {Type I LastRead 0 FirstWrite -1}
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
	Keccak_HashInitializ {
		instance_sponge_state {Type O LastRead -1 FirstWrite 1}
		instance_sponge_rate_read {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		instance_sponge_squeezing_read {Type I LastRead 0 FirstWrite -1}
		instance_fixedOutputLength_read {Type I LastRead 0 FirstWrite -1}
		instance_delimitedSuffix_read {Type I LastRead 0 FirstWrite -1}}}

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
	as_hashes { ap_memory {  { as_hashes_address0 mem_address 1 15 }  { as_hashes_ce0 mem_ce 1 1 }  { as_hashes_q0 mem_dout 0 8 } } }
	challengeBits { ap_memory {  { challengeBits_address0 mem_address 1 6 }  { challengeBits_ce0 mem_ce 1 1 }  { challengeBits_we0 mem_we 1 1 }  { challengeBits_d0 mem_din 1 8 }  { challengeBits_q0 mem_dout 0 8 } } }
	salt_0 { ap_memory {  { salt_0_address0 mem_address 1 5 }  { salt_0_ce0 mem_ce 1 1 }  { salt_0_q0 mem_dout 0 8 } } }
	message { ap_memory {  { message_address0 mem_address 1 16 }  { message_ce0 mem_ce 1 1 }  { message_q0 mem_dout 0 8 } } }
	messageByteLength { ap_none {  { messageByteLength in_data 0 64 } } }
	viewOutputs { ap_memory {  { viewOutputs_address0 mem_address 1 14 }  { viewOutputs_ce0 mem_ce 1 1 }  { viewOutputs_q0 mem_dout 0 32 } } }
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
	{ as_hashes int 8 regular {array 21024 { 1 3 } 1 1 }  }
	{ challengeBits int 8 regular {array 55 { 2 3 } 1 1 }  }
	{ salt_0 int 8 regular {array 32 { 1 3 } 1 1 }  }
	{ message int 8 regular {array 37336 { 1 3 } 1 1 }  }
	{ messageByteLength int 64 regular  }
	{ viewOutputs int 32 regular {array 10512 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "circuitOutput", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "plaintext", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "as_hashes", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "challengeBits", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "salt_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "message", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "messageByteLength", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "viewOutputs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "viewOutputs","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 656,"step" : 1},{"low" : 0,"up" : 15,"step" : 1}]}]}], "extern" : 0} ]}
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
	{ as_hashes_address0 sc_out sc_lv 15 signal 2 } 
	{ as_hashes_ce0 sc_out sc_logic 1 signal 2 } 
	{ as_hashes_q0 sc_in sc_lv 8 signal 2 } 
	{ challengeBits_address0 sc_out sc_lv 6 signal 3 } 
	{ challengeBits_ce0 sc_out sc_logic 1 signal 3 } 
	{ challengeBits_we0 sc_out sc_logic 1 signal 3 } 
	{ challengeBits_d0 sc_out sc_lv 8 signal 3 } 
	{ challengeBits_q0 sc_in sc_lv 8 signal 3 } 
	{ salt_0_address0 sc_out sc_lv 5 signal 4 } 
	{ salt_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ salt_0_q0 sc_in sc_lv 8 signal 4 } 
	{ message_address0 sc_out sc_lv 16 signal 5 } 
	{ message_ce0 sc_out sc_logic 1 signal 5 } 
	{ message_q0 sc_in sc_lv 8 signal 5 } 
	{ messageByteLength sc_in sc_lv 64 signal 6 } 
	{ viewOutputs_address0 sc_out sc_lv 14 signal 7 } 
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
 	{ "name": "as_hashes_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "as_hashes", "role": "address0" }} , 
 	{ "name": "as_hashes_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "as_hashes", "role": "ce0" }} , 
 	{ "name": "as_hashes_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "as_hashes", "role": "q0" }} , 
 	{ "name": "challengeBits_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "challengeBits", "role": "address0" }} , 
 	{ "name": "challengeBits_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "challengeBits", "role": "ce0" }} , 
 	{ "name": "challengeBits_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "challengeBits", "role": "we0" }} , 
 	{ "name": "challengeBits_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "challengeBits", "role": "d0" }} , 
 	{ "name": "challengeBits_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "challengeBits", "role": "q0" }} , 
 	{ "name": "salt_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "salt_0", "role": "address0" }} , 
 	{ "name": "salt_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "salt_0", "role": "ce0" }} , 
 	{ "name": "salt_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "salt_0", "role": "q0" }} , 
 	{ "name": "message_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "message", "role": "address0" }} , 
 	{ "name": "message_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "message", "role": "ce0" }} , 
 	{ "name": "message_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "message", "role": "q0" }} , 
 	{ "name": "messageByteLength", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "messageByteLength", "role": "default" }} , 
 	{ "name": "viewOutputs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "viewOutputs", "role": "address0" }} , 
 	{ "name": "viewOutputs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "viewOutputs", "role": "ce0" }} , 
 	{ "name": "viewOutputs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "viewOutputs", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "19", "32", "45", "58", "71", "84", "97", "111"],
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
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdate_2_fu_359"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdate_2_fu_359"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_2_fu_372"},
			{"State" : "ap_ST_fsm_state34", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_2_fu_372"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_14_fu_384"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_6_fu_397"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_413"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_8_fu_424"},
			{"State" : "ap_ST_fsm_state30", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_13_fu_436"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_447"},
			{"State" : "ap_ST_fsm_state28", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_447"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_459"},
			{"State" : "ap_ST_fsm_state32", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_459"}],
		"Port" : [
			{"Name" : "circuitOutput", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_HashUpdate_2_fu_359", "Port" : "data"}]},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_HashUpdate_2_fu_359", "Port" : "data"}]},
			{"Name" : "as_hashes", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_KeccakWidth1600_Spon_6_fu_397", "Port" : "data"}]},
			{"Name" : "challengeBits", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "salt_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "71", "SubInstance" : "grp_KeccakWidth1600_Spon_8_fu_424", "Port" : "data_0"}]},
			{"Name" : "message", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_KeccakWidth1600_Spon_14_fu_384", "Port" : "data"}]},
			{"Name" : "messageByteLength", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_HashInit_fu_447", "Port" : "KeccakRhoOffsets"},
					{"ID" : "32", "SubInstance" : "grp_KeccakWidth1600_Spon_14_fu_384", "Port" : "KeccakRhoOffsets"},
					{"ID" : "19", "SubInstance" : "grp_KeccakWidth1600_Spon_2_fu_372", "Port" : "KeccakRhoOffsets"},
					{"ID" : "111", "SubInstance" : "grp_HashFinal_fu_459", "Port" : "KeccakRhoOffsets"},
					{"ID" : "71", "SubInstance" : "grp_KeccakWidth1600_Spon_8_fu_424", "Port" : "KeccakRhoOffsets"},
					{"ID" : "58", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_413", "Port" : "KeccakRhoOffsets"},
					{"ID" : "45", "SubInstance" : "grp_KeccakWidth1600_Spon_6_fu_397", "Port" : "KeccakRhoOffsets"},
					{"ID" : "84", "SubInstance" : "grp_KeccakWidth1600_Spon_13_fu_436", "Port" : "KeccakRhoOffsets"},
					{"ID" : "4", "SubInstance" : "grp_HashUpdate_2_fu_359", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_HashInit_fu_447", "Port" : "KeccakRoundConstants"},
					{"ID" : "32", "SubInstance" : "grp_KeccakWidth1600_Spon_14_fu_384", "Port" : "KeccakRoundConstants"},
					{"ID" : "19", "SubInstance" : "grp_KeccakWidth1600_Spon_2_fu_372", "Port" : "KeccakRoundConstants"},
					{"ID" : "111", "SubInstance" : "grp_HashFinal_fu_459", "Port" : "KeccakRoundConstants"},
					{"ID" : "71", "SubInstance" : "grp_KeccakWidth1600_Spon_8_fu_424", "Port" : "KeccakRoundConstants"},
					{"ID" : "58", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_413", "Port" : "KeccakRoundConstants"},
					{"ID" : "45", "SubInstance" : "grp_KeccakWidth1600_Spon_6_fu_397", "Port" : "KeccakRoundConstants"},
					{"ID" : "84", "SubInstance" : "grp_KeccakWidth1600_Spon_13_fu_436", "Port" : "KeccakRoundConstants"},
					{"ID" : "4", "SubInstance" : "grp_HashUpdate_2_fu_359", "Port" : "KeccakRoundConstants"}]},
			{"Name" : "viewOutputs", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hash_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctx_sponge_state_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_359", "Parent" : "0", "Child" : ["5", "6"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_162"}],
		"Port" : [
			{"Name" : "ctx_sponge_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_162", "Port" : "instance_state"}]},
			{"Name" : "ctx_sponge_byteIOInd", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_162", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_162", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_359.temp_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_359.grp_KeccakWidth1600_Spon_9_fu_162", "Parent" : "4", "Child" : ["7"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_359.grp_KeccakWidth1600_Spon_9_fu_162.grp_KeccakP1600_Permute_s_fu_176", "Parent" : "6", "Child" : ["8", "9", "10", "11", "14", "16"],
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
	{"ID" : "8", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_359.grp_KeccakWidth1600_Spon_9_fu_162.grp_KeccakP1600_Permute_s_fu_176.KeccakRhoOffsets_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_359.grp_KeccakWidth1600_Spon_9_fu_162.grp_KeccakP1600_Permute_s_fu_176.KeccakRoundConstants_U", "Parent" : "7"},
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_359.grp_KeccakWidth1600_Spon_9_fu_162.grp_KeccakP1600_Permute_s_fu_176.stateAsWords_U", "Parent" : "7"},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_359.grp_KeccakWidth1600_Spon_9_fu_162.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225", "Parent" : "7", "Child" : ["12", "13"],
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
	{"ID" : "12", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_359.grp_KeccakWidth1600_Spon_9_fu_162.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.C_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_359.grp_KeccakWidth1600_Spon_9_fu_162.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.D_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_359.grp_KeccakWidth1600_Spon_9_fu_162.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230", "Parent" : "7", "Child" : ["15"],
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
	{"ID" : "15", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_359.grp_KeccakWidth1600_Spon_9_fu_162.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230.C_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_359.grp_KeccakWidth1600_Spon_9_fu_162.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235", "Parent" : "7", "Child" : ["17", "18"],
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
	{"ID" : "17", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_359.grp_KeccakWidth1600_Spon_9_fu_162.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.tempA_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_359.grp_KeccakWidth1600_Spon_9_fu_162.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "16"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_372", "Parent" : "0", "Child" : ["20"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_246"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_246"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_246"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_246", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_246", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_246", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_372.grp_KeccakP1600_Permute_s_fu_246", "Parent" : "19", "Child" : ["21", "22", "23", "24", "27", "29"],
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
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_372.grp_KeccakP1600_Permute_s_fu_246.KeccakRhoOffsets_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_372.grp_KeccakP1600_Permute_s_fu_246.KeccakRoundConstants_U", "Parent" : "20"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_372.grp_KeccakP1600_Permute_s_fu_246.stateAsWords_U", "Parent" : "20"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_372.grp_KeccakP1600_Permute_s_fu_246.grp_theta_fu_225", "Parent" : "20", "Child" : ["25", "26"],
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
	{"ID" : "25", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_372.grp_KeccakP1600_Permute_s_fu_246.grp_theta_fu_225.C_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_372.grp_KeccakP1600_Permute_s_fu_246.grp_theta_fu_225.D_U", "Parent" : "24"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_372.grp_KeccakP1600_Permute_s_fu_246.grp_chi_fu_230", "Parent" : "20", "Child" : ["28"],
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
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_372.grp_KeccakP1600_Permute_s_fu_246.grp_chi_fu_230.C_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_372.grp_KeccakP1600_Permute_s_fu_246.grp_pi_fu_235", "Parent" : "20", "Child" : ["30", "31"],
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
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_372.grp_KeccakP1600_Permute_s_fu_246.grp_pi_fu_235.tempA_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_2_fu_372.grp_KeccakP1600_Permute_s_fu_246.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "29"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_14_fu_384", "Parent" : "0", "Child" : ["33"],
		"CDFG" : "KeccakWidth1600_Spon_14",
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
					{"ID" : "33", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_160", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dataByteLen", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_160", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_160", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_14_fu_384.grp_KeccakP1600_Permute_s_fu_160", "Parent" : "32", "Child" : ["34", "35", "36", "37", "40", "42"],
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
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_14_fu_384.grp_KeccakP1600_Permute_s_fu_160.KeccakRhoOffsets_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_14_fu_384.grp_KeccakP1600_Permute_s_fu_160.KeccakRoundConstants_U", "Parent" : "33"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_14_fu_384.grp_KeccakP1600_Permute_s_fu_160.stateAsWords_U", "Parent" : "33"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_14_fu_384.grp_KeccakP1600_Permute_s_fu_160.grp_theta_fu_225", "Parent" : "33", "Child" : ["38", "39"],
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
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_14_fu_384.grp_KeccakP1600_Permute_s_fu_160.grp_theta_fu_225.C_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_14_fu_384.grp_KeccakP1600_Permute_s_fu_160.grp_theta_fu_225.D_U", "Parent" : "37"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_14_fu_384.grp_KeccakP1600_Permute_s_fu_160.grp_chi_fu_230", "Parent" : "33", "Child" : ["41"],
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
	{"ID" : "41", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_14_fu_384.grp_KeccakP1600_Permute_s_fu_160.grp_chi_fu_230.C_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_14_fu_384.grp_KeccakP1600_Permute_s_fu_160.grp_pi_fu_235", "Parent" : "33", "Child" : ["43", "44"],
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
	{"ID" : "43", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_14_fu_384.grp_KeccakP1600_Permute_s_fu_160.grp_pi_fu_235.tempA_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_14_fu_384.grp_KeccakP1600_Permute_s_fu_160.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "42"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_397", "Parent" : "0", "Child" : ["46"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_397.grp_KeccakP1600_Permute_s_fu_204", "Parent" : "45", "Child" : ["47", "48", "49", "50", "53", "55"],
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
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_397.grp_KeccakP1600_Permute_s_fu_204.KeccakRhoOffsets_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_397.grp_KeccakP1600_Permute_s_fu_204.KeccakRoundConstants_U", "Parent" : "46"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_397.grp_KeccakP1600_Permute_s_fu_204.stateAsWords_U", "Parent" : "46"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_397.grp_KeccakP1600_Permute_s_fu_204.grp_theta_fu_225", "Parent" : "46", "Child" : ["51", "52"],
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
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_397.grp_KeccakP1600_Permute_s_fu_204.grp_theta_fu_225.C_U", "Parent" : "50"},
	{"ID" : "52", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_397.grp_KeccakP1600_Permute_s_fu_204.grp_theta_fu_225.D_U", "Parent" : "50"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_397.grp_KeccakP1600_Permute_s_fu_204.grp_chi_fu_230", "Parent" : "46", "Child" : ["54"],
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
	{"ID" : "54", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_397.grp_KeccakP1600_Permute_s_fu_204.grp_chi_fu_230.C_U", "Parent" : "53"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_397.grp_KeccakP1600_Permute_s_fu_204.grp_pi_fu_235", "Parent" : "46", "Child" : ["56", "57"],
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
	{"ID" : "56", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_397.grp_KeccakP1600_Permute_s_fu_204.grp_pi_fu_235.tempA_U", "Parent" : "55"},
	{"ID" : "57", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_397.grp_KeccakP1600_Permute_s_fu_204.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "55"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_9_fu_413", "Parent" : "0", "Child" : ["59"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_9_fu_413.grp_KeccakP1600_Permute_s_fu_176", "Parent" : "58", "Child" : ["60", "61", "62", "63", "66", "68"],
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
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_9_fu_413.grp_KeccakP1600_Permute_s_fu_176.KeccakRhoOffsets_U", "Parent" : "59"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_9_fu_413.grp_KeccakP1600_Permute_s_fu_176.KeccakRoundConstants_U", "Parent" : "59"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_9_fu_413.grp_KeccakP1600_Permute_s_fu_176.stateAsWords_U", "Parent" : "59"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_9_fu_413.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225", "Parent" : "59", "Child" : ["64", "65"],
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
	{"ID" : "64", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_9_fu_413.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.C_U", "Parent" : "63"},
	{"ID" : "65", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_9_fu_413.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.D_U", "Parent" : "63"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_9_fu_413.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230", "Parent" : "59", "Child" : ["67"],
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
	{"ID" : "67", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_9_fu_413.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230.C_U", "Parent" : "66"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_9_fu_413.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235", "Parent" : "59", "Child" : ["69", "70"],
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
	{"ID" : "69", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_9_fu_413.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.tempA_U", "Parent" : "68"},
	{"ID" : "70", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_9_fu_413.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "68"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_8_fu_424", "Parent" : "0", "Child" : ["72"],
		"CDFG" : "KeccakWidth1600_Spon_8",
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
					{"ID" : "72", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_8_fu_424.grp_KeccakP1600_Permute_s_fu_176", "Parent" : "71", "Child" : ["73", "74", "75", "76", "79", "81"],
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
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_8_fu_424.grp_KeccakP1600_Permute_s_fu_176.KeccakRhoOffsets_U", "Parent" : "72"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_8_fu_424.grp_KeccakP1600_Permute_s_fu_176.KeccakRoundConstants_U", "Parent" : "72"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_8_fu_424.grp_KeccakP1600_Permute_s_fu_176.stateAsWords_U", "Parent" : "72"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_8_fu_424.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225", "Parent" : "72", "Child" : ["77", "78"],
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
	{"ID" : "77", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_8_fu_424.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.C_U", "Parent" : "76"},
	{"ID" : "78", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_8_fu_424.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.D_U", "Parent" : "76"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_8_fu_424.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230", "Parent" : "72", "Child" : ["80"],
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
	{"ID" : "80", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_8_fu_424.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230.C_U", "Parent" : "79"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_8_fu_424.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235", "Parent" : "72", "Child" : ["82", "83"],
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
	{"ID" : "82", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_8_fu_424.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.tempA_U", "Parent" : "81"},
	{"ID" : "83", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_8_fu_424.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "81"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_436", "Parent" : "0", "Child" : ["85"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_436.grp_KeccakP1600_Permute_s_fu_176", "Parent" : "84", "Child" : ["86", "87", "88", "89", "92", "94"],
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
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_436.grp_KeccakP1600_Permute_s_fu_176.KeccakRhoOffsets_U", "Parent" : "85"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_436.grp_KeccakP1600_Permute_s_fu_176.KeccakRoundConstants_U", "Parent" : "85"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_436.grp_KeccakP1600_Permute_s_fu_176.stateAsWords_U", "Parent" : "85"},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_436.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225", "Parent" : "85", "Child" : ["90", "91"],
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
	{"ID" : "90", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_436.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.C_U", "Parent" : "89"},
	{"ID" : "91", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_436.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.D_U", "Parent" : "89"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_436.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230", "Parent" : "85", "Child" : ["93"],
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
	{"ID" : "93", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_436.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230.C_U", "Parent" : "92"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_436.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235", "Parent" : "85", "Child" : ["95", "96"],
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
	{"ID" : "95", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_436.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.tempA_U", "Parent" : "94"},
	{"ID" : "96", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_436.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "94"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_447", "Parent" : "0", "Child" : ["98"],
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
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_12_fu_74"}],
		"Port" : [
			{"Name" : "ctx_sponge_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_KeccakWidth1600_Spon_12_fu_74", "Port" : "instance_state"}]},
			{"Name" : "hashPrefix", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_KeccakWidth1600_Spon_12_fu_74", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_KeccakWidth1600_Spon_12_fu_74", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_447.grp_KeccakWidth1600_Spon_12_fu_74", "Parent" : "97", "Child" : ["99"],
		"CDFG" : "KeccakWidth1600_Spon_12",
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
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_447.grp_KeccakWidth1600_Spon_12_fu_74.grp_KeccakP1600_Permute_s_fu_54", "Parent" : "98", "Child" : ["100", "101", "102", "103", "106", "108"],
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
	{"ID" : "100", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_447.grp_KeccakWidth1600_Spon_12_fu_74.grp_KeccakP1600_Permute_s_fu_54.KeccakRhoOffsets_U", "Parent" : "99"},
	{"ID" : "101", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_447.grp_KeccakWidth1600_Spon_12_fu_74.grp_KeccakP1600_Permute_s_fu_54.KeccakRoundConstants_U", "Parent" : "99"},
	{"ID" : "102", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_447.grp_KeccakWidth1600_Spon_12_fu_74.grp_KeccakP1600_Permute_s_fu_54.stateAsWords_U", "Parent" : "99"},
	{"ID" : "103", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_447.grp_KeccakWidth1600_Spon_12_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225", "Parent" : "99", "Child" : ["104", "105"],
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
	{"ID" : "104", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_447.grp_KeccakWidth1600_Spon_12_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.C_U", "Parent" : "103"},
	{"ID" : "105", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_447.grp_KeccakWidth1600_Spon_12_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.D_U", "Parent" : "103"},
	{"ID" : "106", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_447.grp_KeccakWidth1600_Spon_12_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230", "Parent" : "99", "Child" : ["107"],
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
	{"ID" : "107", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_447.grp_KeccakWidth1600_Spon_12_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230.C_U", "Parent" : "106"},
	{"ID" : "108", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_447.grp_KeccakWidth1600_Spon_12_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235", "Parent" : "99", "Child" : ["109", "110"],
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
	{"ID" : "109", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_447.grp_KeccakWidth1600_Spon_12_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.tempA_U", "Parent" : "108"},
	{"ID" : "110", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_447.grp_KeccakWidth1600_Spon_12_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "108"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_459", "Parent" : "0", "Child" : ["112"],
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
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_459.grp_KeccakP1600_Permute_s_fu_54", "Parent" : "111", "Child" : ["113", "114", "115", "116", "119", "121"],
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
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_459.grp_KeccakP1600_Permute_s_fu_54.KeccakRhoOffsets_U", "Parent" : "112"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_459.grp_KeccakP1600_Permute_s_fu_54.KeccakRoundConstants_U", "Parent" : "112"},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_459.grp_KeccakP1600_Permute_s_fu_54.stateAsWords_U", "Parent" : "112"},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_459.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225", "Parent" : "112", "Child" : ["117", "118"],
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
	{"ID" : "117", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_459.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.C_U", "Parent" : "116"},
	{"ID" : "118", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_459.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.D_U", "Parent" : "116"},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_459.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230", "Parent" : "112", "Child" : ["120"],
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
	{"ID" : "120", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_459.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230.C_U", "Parent" : "119"},
	{"ID" : "121", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_459.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235", "Parent" : "112", "Child" : ["122", "123"],
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
	{"ID" : "122", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_459.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.tempA_U", "Parent" : "121"},
	{"ID" : "123", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_459.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "121"}]}


set ArgLastReadFirstWriteLatency {
	H3_2 {
		circuitOutput {Type I LastRead 2 FirstWrite -1}
		plaintext {Type I LastRead 2 FirstWrite -1}
		as_hashes {Type I LastRead 4 FirstWrite -1}
		challengeBits {Type IO LastRead 17 FirstWrite 1}
		salt_0 {Type I LastRead 4 FirstWrite -1}
		message {Type I LastRead 4 FirstWrite -1}
		messageByteLength {Type I LastRead 1 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}
		viewOutputs {Type I LastRead 5 FirstWrite -1}}
	HashUpdate_2 {
		ctx_sponge_state {Type IO LastRead 4 FirstWrite 4}
		ctx_sponge_byteIOInd {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 2 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	KeccakWidth1600_Spon_9 {
		instance_state {Type IO LastRead 4 FirstWrite 4}
		instance_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 4 FirstWrite -1}
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
		instance_state {Type IO LastRead 10 FirstWrite 1}
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
	KeccakWidth1600_Spon_14 {
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
		data {Type I LastRead 4 FirstWrite -1}
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
	KeccakWidth1600_Spon_9 {
		instance_state {Type IO LastRead 4 FirstWrite 4}
		instance_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 4 FirstWrite -1}
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
	KeccakWidth1600_Spon_8 {
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
	KeccakWidth1600_Spon_13 {
		instance_state {Type IO LastRead 4 FirstWrite 4}
		instance_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 4 FirstWrite -1}
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
	KeccakWidth1600_Spon_12 {
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
	as_hashes { ap_memory {  { as_hashes_address0 mem_address 1 15 }  { as_hashes_ce0 mem_ce 1 1 }  { as_hashes_q0 mem_dout 0 8 } } }
	challengeBits { ap_memory {  { challengeBits_address0 mem_address 1 6 }  { challengeBits_ce0 mem_ce 1 1 }  { challengeBits_we0 mem_we 1 1 }  { challengeBits_d0 mem_din 1 8 }  { challengeBits_q0 mem_dout 0 8 } } }
	salt_0 { ap_memory {  { salt_0_address0 mem_address 1 5 }  { salt_0_ce0 mem_ce 1 1 }  { salt_0_q0 mem_dout 0 8 } } }
	message { ap_memory {  { message_address0 mem_address 1 16 }  { message_ce0 mem_ce 1 1 }  { message_q0 mem_dout 0 8 } } }
	messageByteLength { ap_none {  { messageByteLength in_data 0 64 } } }
	viewOutputs { ap_memory {  { viewOutputs_address0 mem_address 1 14 }  { viewOutputs_ce0 mem_ce 1 1 }  { viewOutputs_q0 mem_dout 0 32 } } }
}
