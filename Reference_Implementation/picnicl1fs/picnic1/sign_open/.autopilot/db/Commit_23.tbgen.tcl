set moduleName Commit_23
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
set C_modelName {Commit_23}
set C_modelType { void 0 }
set C_modelArgList {
	{ seed_0 int 8 regular {array 3504 { 1 3 } 1 1 }  }
	{ seed_offset1 int 8 regular  }
	{ view_inputShare int 32 regular {array 876 { 1 3 } 1 1 }  }
	{ view_inputShare_offset int 8 regular  }
	{ view_communicatedBits int 8 regular {array 16425 { 1 3 } 1 1 }  }
	{ view_communicatedBits_offset int 8 regular  }
	{ view_outputShare int 32 regular {array 876 { 1 3 } 1 1 }  }
	{ view_outputShare_offset int 8 regular  }
	{ hash int 8 regular {array 21024 { 2 3 } 1 1 }  }
	{ hash_offset int 8 regular  }
	{ hash_offset3 int 2 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seed_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "seed_offset1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "view_inputShare", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "view_inputShare_offset", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "view_communicatedBits", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "view_communicatedBits_offset", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "view_outputShare", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "view_outputShare_offset", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "hash", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "hash_offset", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "hash_offset3", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seed_0_address0 sc_out sc_lv 12 signal 0 } 
	{ seed_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ seed_0_q0 sc_in sc_lv 8 signal 0 } 
	{ seed_offset1 sc_in sc_lv 8 signal 1 } 
	{ view_inputShare_address0 sc_out sc_lv 10 signal 2 } 
	{ view_inputShare_ce0 sc_out sc_logic 1 signal 2 } 
	{ view_inputShare_q0 sc_in sc_lv 32 signal 2 } 
	{ view_inputShare_offset sc_in sc_lv 8 signal 3 } 
	{ view_communicatedBits_address0 sc_out sc_lv 15 signal 4 } 
	{ view_communicatedBits_ce0 sc_out sc_logic 1 signal 4 } 
	{ view_communicatedBits_q0 sc_in sc_lv 8 signal 4 } 
	{ view_communicatedBits_offset sc_in sc_lv 8 signal 5 } 
	{ view_outputShare_address0 sc_out sc_lv 10 signal 6 } 
	{ view_outputShare_ce0 sc_out sc_logic 1 signal 6 } 
	{ view_outputShare_q0 sc_in sc_lv 32 signal 6 } 
	{ view_outputShare_offset sc_in sc_lv 8 signal 7 } 
	{ hash_address0 sc_out sc_lv 15 signal 8 } 
	{ hash_ce0 sc_out sc_logic 1 signal 8 } 
	{ hash_we0 sc_out sc_logic 1 signal 8 } 
	{ hash_d0 sc_out sc_lv 8 signal 8 } 
	{ hash_q0 sc_in sc_lv 8 signal 8 } 
	{ hash_offset sc_in sc_lv 8 signal 9 } 
	{ hash_offset3 sc_in sc_lv 2 signal 10 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seed_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "seed_0", "role": "address0" }} , 
 	{ "name": "seed_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seed_0", "role": "ce0" }} , 
 	{ "name": "seed_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seed_0", "role": "q0" }} , 
 	{ "name": "seed_offset1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seed_offset1", "role": "default" }} , 
 	{ "name": "view_inputShare_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "view_inputShare", "role": "address0" }} , 
 	{ "name": "view_inputShare_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view_inputShare", "role": "ce0" }} , 
 	{ "name": "view_inputShare_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "view_inputShare", "role": "q0" }} , 
 	{ "name": "view_inputShare_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "view_inputShare_offset", "role": "default" }} , 
 	{ "name": "view_communicatedBits_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "view_communicatedBits", "role": "address0" }} , 
 	{ "name": "view_communicatedBits_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view_communicatedBits", "role": "ce0" }} , 
 	{ "name": "view_communicatedBits_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "view_communicatedBits", "role": "q0" }} , 
 	{ "name": "view_communicatedBits_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "view_communicatedBits_offset", "role": "default" }} , 
 	{ "name": "view_outputShare_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "view_outputShare", "role": "address0" }} , 
 	{ "name": "view_outputShare_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view_outputShare", "role": "ce0" }} , 
 	{ "name": "view_outputShare_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "view_outputShare", "role": "q0" }} , 
 	{ "name": "view_outputShare_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "view_outputShare_offset", "role": "default" }} , 
 	{ "name": "hash_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "hash", "role": "address0" }} , 
 	{ "name": "hash_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "ce0" }} , 
 	{ "name": "hash_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "we0" }} , 
 	{ "name": "hash_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hash", "role": "d0" }} , 
 	{ "name": "hash_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hash", "role": "q0" }} , 
 	{ "name": "hash_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hash_offset", "role": "default" }} , 
 	{ "name": "hash_offset3", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hash_offset3", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "17", "30", "43"],
		"CDFG" : "Commit_23",
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
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_2_fu_1098"},
			{"State" : "ap_ST_fsm_state72", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_2_fu_1098"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_1113"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_1113"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_1126"},
			{"State" : "ap_ST_fsm_state70", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_1126"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_1136"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_1136"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_1136"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_1136"},
			{"State" : "ap_ST_fsm_state41", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_1136"},
			{"State" : "ap_ST_fsm_state45", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_1136"},
			{"State" : "ap_ST_fsm_state51", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_1136"},
			{"State" : "ap_ST_fsm_state65", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_1136"},
			{"State" : "ap_ST_fsm_state69", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_1136"}],
		"Port" : [
			{"Name" : "seed_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "seed_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "view_inputShare", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "view_inputShare_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "view_communicatedBits", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "view_communicatedBits_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "view_outputShare", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "view_outputShare_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "hash", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_Keccak_HashSqueeze_2_fu_1098", "Port" : "data"}]},
			{"Name" : "hash_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "hash_offset3", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_1136", "Port" : "KeccakRhoOffsets"},
					{"ID" : "30", "SubInstance" : "grp_HashFinal_fu_1126", "Port" : "KeccakRhoOffsets"},
					{"ID" : "4", "SubInstance" : "grp_Keccak_HashSqueeze_2_fu_1098", "Port" : "KeccakRhoOffsets"},
					{"ID" : "17", "SubInstance" : "grp_HashInit_fu_1113", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_1136", "Port" : "KeccakRoundConstants"},
					{"ID" : "30", "SubInstance" : "grp_HashFinal_fu_1126", "Port" : "KeccakRoundConstants"},
					{"ID" : "4", "SubInstance" : "grp_Keccak_HashSqueeze_2_fu_1098", "Port" : "KeccakRoundConstants"},
					{"ID" : "17", "SubInstance" : "grp_HashInit_fu_1113", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_3_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctx_sponge_state_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_1098", "Parent" : "0", "Child" : ["5"],
		"CDFG" : "Keccak_HashSqueeze_2",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_274"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_274"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_274"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_274", "Port" : "state"}]},
			{"Name" : "instance_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_274", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_274", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_1098.grp_KeccakP1600_Permute_s_fu_274", "Parent" : "4", "Child" : ["6", "7", "8", "9", "12", "15"],
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
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_1098.grp_KeccakP1600_Permute_s_fu_274.KeccakRhoOffsets_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_1098.grp_KeccakP1600_Permute_s_fu_274.KeccakRoundConstants_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_1098.grp_KeccakP1600_Permute_s_fu_274.stateAsWords_U", "Parent" : "5"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_1098.grp_KeccakP1600_Permute_s_fu_274.grp_pi_fu_225", "Parent" : "5", "Child" : ["10", "11"],
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
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_1098.grp_KeccakP1600_Permute_s_fu_274.grp_pi_fu_225.tempA_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_1098.grp_KeccakP1600_Permute_s_fu_274.grp_pi_fu_225.crypto_sign_open_bkb_U16", "Parent" : "9"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_1098.grp_KeccakP1600_Permute_s_fu_274.grp_theta_fu_230", "Parent" : "5", "Child" : ["13", "14"],
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
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_1098.grp_KeccakP1600_Permute_s_fu_274.grp_theta_fu_230.C_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_1098.grp_KeccakP1600_Permute_s_fu_274.grp_theta_fu_230.D_U", "Parent" : "12"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_1098.grp_KeccakP1600_Permute_s_fu_274.grp_chi_fu_235", "Parent" : "5", "Child" : ["16"],
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
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_1098.grp_KeccakP1600_Permute_s_fu_274.grp_chi_fu_235.C_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_1113", "Parent" : "0", "Child" : ["18"],
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
					{"ID" : "18", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_116", "Port" : "state"}]},
			{"Name" : "hashPrefix", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_116", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_116", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_1113.grp_KeccakP1600_Permute_s_fu_116", "Parent" : "17", "Child" : ["19", "20", "21", "22", "25", "28"],
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
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_1113.grp_KeccakP1600_Permute_s_fu_116.KeccakRhoOffsets_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_1113.grp_KeccakP1600_Permute_s_fu_116.KeccakRoundConstants_U", "Parent" : "18"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_1113.grp_KeccakP1600_Permute_s_fu_116.stateAsWords_U", "Parent" : "18"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_1113.grp_KeccakP1600_Permute_s_fu_116.grp_pi_fu_225", "Parent" : "18", "Child" : ["23", "24"],
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
	{"ID" : "23", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_1113.grp_KeccakP1600_Permute_s_fu_116.grp_pi_fu_225.tempA_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_1113.grp_KeccakP1600_Permute_s_fu_116.grp_pi_fu_225.crypto_sign_open_bkb_U16", "Parent" : "22"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_1113.grp_KeccakP1600_Permute_s_fu_116.grp_theta_fu_230", "Parent" : "18", "Child" : ["26", "27"],
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
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_1113.grp_KeccakP1600_Permute_s_fu_116.grp_theta_fu_230.C_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_1113.grp_KeccakP1600_Permute_s_fu_116.grp_theta_fu_230.D_U", "Parent" : "25"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_1113.grp_KeccakP1600_Permute_s_fu_116.grp_chi_fu_235", "Parent" : "18", "Child" : ["29"],
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
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_1113.grp_KeccakP1600_Permute_s_fu_116.grp_chi_fu_235.C_U", "Parent" : "28"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_1126", "Parent" : "0", "Child" : ["31"],
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
					{"ID" : "31", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "state"}]},
			{"Name" : "ctx_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_1126.grp_KeccakP1600_Permute_s_fu_54", "Parent" : "30", "Child" : ["32", "33", "34", "35", "38", "41"],
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
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_1126.grp_KeccakP1600_Permute_s_fu_54.KeccakRhoOffsets_U", "Parent" : "31"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_1126.grp_KeccakP1600_Permute_s_fu_54.KeccakRoundConstants_U", "Parent" : "31"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_1126.grp_KeccakP1600_Permute_s_fu_54.stateAsWords_U", "Parent" : "31"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_1126.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_225", "Parent" : "31", "Child" : ["36", "37"],
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
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_1126.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_225.tempA_U", "Parent" : "35"},
	{"ID" : "37", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_1126.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_225.crypto_sign_open_bkb_U16", "Parent" : "35"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_1126.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_230", "Parent" : "31", "Child" : ["39", "40"],
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
	{"ID" : "39", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_1126.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_230.C_U", "Parent" : "38"},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_1126.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_230.D_U", "Parent" : "38"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_1126.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_235", "Parent" : "31", "Child" : ["42"],
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
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_1126.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_235.C_U", "Parent" : "41"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakP1600_Permute_s_fu_1136", "Parent" : "0", "Child" : ["44", "45", "46", "47", "50", "53"],
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
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakP1600_Permute_s_fu_1136.KeccakRhoOffsets_U", "Parent" : "43"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakP1600_Permute_s_fu_1136.KeccakRoundConstants_U", "Parent" : "43"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakP1600_Permute_s_fu_1136.stateAsWords_U", "Parent" : "43"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakP1600_Permute_s_fu_1136.grp_pi_fu_225", "Parent" : "43", "Child" : ["48", "49"],
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
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakP1600_Permute_s_fu_1136.grp_pi_fu_225.tempA_U", "Parent" : "47"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakP1600_Permute_s_fu_1136.grp_pi_fu_225.crypto_sign_open_bkb_U16", "Parent" : "47"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakP1600_Permute_s_fu_1136.grp_theta_fu_230", "Parent" : "43", "Child" : ["51", "52"],
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
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakP1600_Permute_s_fu_1136.grp_theta_fu_230.C_U", "Parent" : "50"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakP1600_Permute_s_fu_1136.grp_theta_fu_230.D_U", "Parent" : "50"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakP1600_Permute_s_fu_1136.grp_chi_fu_235", "Parent" : "43", "Child" : ["54"],
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
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakP1600_Permute_s_fu_1136.grp_chi_fu_235.C_U", "Parent" : "53"}]}


set ArgLastReadFirstWriteLatency {
	Commit_23 {
		seed_0 {Type I LastRead 5 FirstWrite -1}
		seed_offset1 {Type I LastRead 1 FirstWrite -1}
		view_inputShare {Type I LastRead 15 FirstWrite -1}
		view_inputShare_offset {Type I LastRead 1 FirstWrite -1}
		view_communicatedBits {Type I LastRead 21 FirstWrite -1}
		view_communicatedBits_offset {Type I LastRead 1 FirstWrite -1}
		view_outputShare {Type I LastRead 26 FirstWrite -1}
		view_outputShare_offset {Type I LastRead 1 FirstWrite -1}
		hash {Type IO LastRead 11 FirstWrite 10}
		hash_offset {Type I LastRead 1 FirstWrite -1}
		hash_offset3 {Type I LastRead 1 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	Keccak_HashSqueeze_2 {
		instance_sponge_stat {Type IO LastRead 10 FirstWrite 1}
		instance_sponge_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque {Type I LastRead 0 FirstWrite -1}
		data {Type O LastRead -1 FirstWrite 10}
		data_offset {Type I LastRead 0 FirstWrite -1}
		data_offset1 {Type I LastRead 0 FirstWrite -1}
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
	seed_0 { ap_memory {  { seed_0_address0 mem_address 1 12 }  { seed_0_ce0 mem_ce 1 1 }  { seed_0_q0 mem_dout 0 8 } } }
	seed_offset1 { ap_none {  { seed_offset1 in_data 0 8 } } }
	view_inputShare { ap_memory {  { view_inputShare_address0 mem_address 1 10 }  { view_inputShare_ce0 mem_ce 1 1 }  { view_inputShare_q0 mem_dout 0 32 } } }
	view_inputShare_offset { ap_none {  { view_inputShare_offset in_data 0 8 } } }
	view_communicatedBits { ap_memory {  { view_communicatedBits_address0 mem_address 1 15 }  { view_communicatedBits_ce0 mem_ce 1 1 }  { view_communicatedBits_q0 mem_dout 0 8 } } }
	view_communicatedBits_offset { ap_none {  { view_communicatedBits_offset in_data 0 8 } } }
	view_outputShare { ap_memory {  { view_outputShare_address0 mem_address 1 10 }  { view_outputShare_ce0 mem_ce 1 1 }  { view_outputShare_q0 mem_dout 0 32 } } }
	view_outputShare_offset { ap_none {  { view_outputShare_offset in_data 0 8 } } }
	hash { ap_memory {  { hash_address0 mem_address 1 15 }  { hash_ce0 mem_ce 1 1 }  { hash_we0 mem_we 1 1 }  { hash_d0 mem_din 1 8 }  { hash_q0 mem_dout 0 8 } } }
	hash_offset { ap_none {  { hash_offset in_data 0 8 } } }
	hash_offset3 { ap_none {  { hash_offset3 in_data 0 2 } } }
}
set moduleName Commit_23
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
set C_modelName {Commit_23}
set C_modelType { void 0 }
set C_modelArgList {
	{ seed_0 int 8 regular {array 3504 { 1 3 } 1 1 }  }
	{ seed_offset1 int 8 regular  }
	{ view_inputShare int 32 regular {array 876 { 1 3 } 1 1 }  }
	{ view_inputShare_offset int 8 regular  }
	{ view_communicatedBits int 8 regular {array 16425 { 1 3 } 1 1 }  }
	{ view_communicatedBits_offset int 8 regular  }
	{ view_outputShare int 32 regular {array 876 { 1 3 } 1 1 }  }
	{ view_outputShare_offset int 8 regular  }
	{ hash int 8 regular {array 21024 { 2 3 } 1 1 }  }
	{ hash_offset int 8 regular  }
	{ hash_offset3 int 2 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seed_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "seed_offset1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "view_inputShare", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "view_inputShare_offset", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "view_communicatedBits", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "view_communicatedBits_offset", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "view_outputShare", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "view_outputShare_offset", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "hash", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "hash_offset", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "hash_offset3", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seed_0_address0 sc_out sc_lv 12 signal 0 } 
	{ seed_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ seed_0_q0 sc_in sc_lv 8 signal 0 } 
	{ seed_offset1 sc_in sc_lv 8 signal 1 } 
	{ view_inputShare_address0 sc_out sc_lv 10 signal 2 } 
	{ view_inputShare_ce0 sc_out sc_logic 1 signal 2 } 
	{ view_inputShare_q0 sc_in sc_lv 32 signal 2 } 
	{ view_inputShare_offset sc_in sc_lv 8 signal 3 } 
	{ view_communicatedBits_address0 sc_out sc_lv 15 signal 4 } 
	{ view_communicatedBits_ce0 sc_out sc_logic 1 signal 4 } 
	{ view_communicatedBits_q0 sc_in sc_lv 8 signal 4 } 
	{ view_communicatedBits_offset sc_in sc_lv 8 signal 5 } 
	{ view_outputShare_address0 sc_out sc_lv 10 signal 6 } 
	{ view_outputShare_ce0 sc_out sc_logic 1 signal 6 } 
	{ view_outputShare_q0 sc_in sc_lv 32 signal 6 } 
	{ view_outputShare_offset sc_in sc_lv 8 signal 7 } 
	{ hash_address0 sc_out sc_lv 15 signal 8 } 
	{ hash_ce0 sc_out sc_logic 1 signal 8 } 
	{ hash_we0 sc_out sc_logic 1 signal 8 } 
	{ hash_d0 sc_out sc_lv 8 signal 8 } 
	{ hash_q0 sc_in sc_lv 8 signal 8 } 
	{ hash_offset sc_in sc_lv 8 signal 9 } 
	{ hash_offset3 sc_in sc_lv 2 signal 10 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seed_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "seed_0", "role": "address0" }} , 
 	{ "name": "seed_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seed_0", "role": "ce0" }} , 
 	{ "name": "seed_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seed_0", "role": "q0" }} , 
 	{ "name": "seed_offset1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seed_offset1", "role": "default" }} , 
 	{ "name": "view_inputShare_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "view_inputShare", "role": "address0" }} , 
 	{ "name": "view_inputShare_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view_inputShare", "role": "ce0" }} , 
 	{ "name": "view_inputShare_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "view_inputShare", "role": "q0" }} , 
 	{ "name": "view_inputShare_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "view_inputShare_offset", "role": "default" }} , 
 	{ "name": "view_communicatedBits_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "view_communicatedBits", "role": "address0" }} , 
 	{ "name": "view_communicatedBits_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view_communicatedBits", "role": "ce0" }} , 
 	{ "name": "view_communicatedBits_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "view_communicatedBits", "role": "q0" }} , 
 	{ "name": "view_communicatedBits_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "view_communicatedBits_offset", "role": "default" }} , 
 	{ "name": "view_outputShare_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "view_outputShare", "role": "address0" }} , 
 	{ "name": "view_outputShare_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view_outputShare", "role": "ce0" }} , 
 	{ "name": "view_outputShare_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "view_outputShare", "role": "q0" }} , 
 	{ "name": "view_outputShare_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "view_outputShare_offset", "role": "default" }} , 
 	{ "name": "hash_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "hash", "role": "address0" }} , 
 	{ "name": "hash_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "ce0" }} , 
 	{ "name": "hash_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "we0" }} , 
 	{ "name": "hash_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hash", "role": "d0" }} , 
 	{ "name": "hash_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hash", "role": "q0" }} , 
 	{ "name": "hash_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hash_offset", "role": "default" }} , 
 	{ "name": "hash_offset3", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hash_offset3", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "17", "30", "43", "56", "69", "82", "95"],
		"CDFG" : "Commit_23",
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
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_3_fu_318"},
			{"State" : "ap_ST_fsm_state32", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_3_fu_318"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_4_fu_337"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_8_fu_352"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_99_fu_368"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5133_fu_384"},
			{"State" : "ap_ST_fsm_state28", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5133_fu_384"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_397"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_397"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashFinal_fu_412"},
			{"State" : "ap_ST_fsm_state30", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashFinal_fu_412"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashInitializ_fu_427"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashInitializ_fu_427"}],
		"Port" : [
			{"Name" : "seed_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_Keccak_HashUpdate_99_fu_368", "Port" : "data_0"}]},
			{"Name" : "seed_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "view_inputShare", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "view_inputShare_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "view_communicatedBits", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_Keccak_HashUpdate_4_fu_337", "Port" : "data"}]},
			{"Name" : "view_communicatedBits_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "view_outputShare", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "view_outputShare_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "hash", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_Keccak_HashUpdate_8_fu_352", "Port" : "data"},
					{"ID" : "4", "SubInstance" : "grp_Keccak_HashSqueeze_3_fu_318", "Port" : "data"}]},
			{"Name" : "hash_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "hash_offset3", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_Keccak_HashUpdate_8_fu_352", "Port" : "KeccakRhoOffsets"},
					{"ID" : "17", "SubInstance" : "grp_Keccak_HashUpdate_4_fu_337", "Port" : "KeccakRhoOffsets"},
					{"ID" : "43", "SubInstance" : "grp_Keccak_HashUpdate_99_fu_368", "Port" : "KeccakRhoOffsets"},
					{"ID" : "69", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_397", "Port" : "KeccakRhoOffsets"},
					{"ID" : "56", "SubInstance" : "grp_Keccak_HashUpdate_5133_fu_384", "Port" : "KeccakRhoOffsets"},
					{"ID" : "4", "SubInstance" : "grp_Keccak_HashSqueeze_3_fu_318", "Port" : "KeccakRhoOffsets"},
					{"ID" : "82", "SubInstance" : "grp_Keccak_HashFinal_fu_412", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_Keccak_HashUpdate_8_fu_352", "Port" : "KeccakRoundConstants"},
					{"ID" : "17", "SubInstance" : "grp_Keccak_HashUpdate_4_fu_337", "Port" : "KeccakRoundConstants"},
					{"ID" : "43", "SubInstance" : "grp_Keccak_HashUpdate_99_fu_368", "Port" : "KeccakRoundConstants"},
					{"ID" : "69", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_397", "Port" : "KeccakRoundConstants"},
					{"ID" : "56", "SubInstance" : "grp_Keccak_HashUpdate_5133_fu_384", "Port" : "KeccakRoundConstants"},
					{"ID" : "4", "SubInstance" : "grp_Keccak_HashSqueeze_3_fu_318", "Port" : "KeccakRoundConstants"},
					{"ID" : "82", "SubInstance" : "grp_Keccak_HashFinal_fu_412", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_3_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctx_sponge_state_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_3_fu_318", "Parent" : "0", "Child" : ["5"],
		"CDFG" : "Keccak_HashSqueeze_3",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_286"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_286"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_286"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_286", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_286", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_286", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_3_fu_318.grp_KeccakP1600_Permute_s_fu_286", "Parent" : "4", "Child" : ["6", "7", "8", "9", "12", "14"],
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
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_3_fu_318.grp_KeccakP1600_Permute_s_fu_286.KeccakRhoOffsets_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_3_fu_318.grp_KeccakP1600_Permute_s_fu_286.KeccakRoundConstants_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_3_fu_318.grp_KeccakP1600_Permute_s_fu_286.stateAsWords_U", "Parent" : "5"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_3_fu_318.grp_KeccakP1600_Permute_s_fu_286.grp_theta_fu_225", "Parent" : "5", "Child" : ["10", "11"],
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
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_3_fu_318.grp_KeccakP1600_Permute_s_fu_286.grp_theta_fu_225.C_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_3_fu_318.grp_KeccakP1600_Permute_s_fu_286.grp_theta_fu_225.D_U", "Parent" : "9"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_3_fu_318.grp_KeccakP1600_Permute_s_fu_286.grp_chi_fu_230", "Parent" : "5", "Child" : ["13"],
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
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_3_fu_318.grp_KeccakP1600_Permute_s_fu_286.grp_chi_fu_230.C_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_3_fu_318.grp_KeccakP1600_Permute_s_fu_286.grp_pi_fu_235", "Parent" : "5", "Child" : ["15", "16"],
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
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_3_fu_318.grp_KeccakP1600_Permute_s_fu_286.grp_pi_fu_235.tempA_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_3_fu_318.grp_KeccakP1600_Permute_s_fu_286.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "14"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_4_fu_337", "Parent" : "0", "Child" : ["18"],
		"CDFG" : "Keccak_HashUpdate_4",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_187"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_187"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_187", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_187", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_187", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_4_fu_337.grp_KeccakP1600_Permute_s_fu_187", "Parent" : "17", "Child" : ["19", "20", "21", "22", "25", "27"],
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
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_4_fu_337.grp_KeccakP1600_Permute_s_fu_187.KeccakRhoOffsets_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_4_fu_337.grp_KeccakP1600_Permute_s_fu_187.KeccakRoundConstants_U", "Parent" : "18"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_4_fu_337.grp_KeccakP1600_Permute_s_fu_187.stateAsWords_U", "Parent" : "18"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_4_fu_337.grp_KeccakP1600_Permute_s_fu_187.grp_theta_fu_225", "Parent" : "18", "Child" : ["23", "24"],
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
	{"ID" : "23", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_4_fu_337.grp_KeccakP1600_Permute_s_fu_187.grp_theta_fu_225.C_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_4_fu_337.grp_KeccakP1600_Permute_s_fu_187.grp_theta_fu_225.D_U", "Parent" : "22"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_4_fu_337.grp_KeccakP1600_Permute_s_fu_187.grp_chi_fu_230", "Parent" : "18", "Child" : ["26"],
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
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_4_fu_337.grp_KeccakP1600_Permute_s_fu_187.grp_chi_fu_230.C_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_4_fu_337.grp_KeccakP1600_Permute_s_fu_187.grp_pi_fu_235", "Parent" : "18", "Child" : ["28", "29"],
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
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_4_fu_337.grp_KeccakP1600_Permute_s_fu_187.grp_pi_fu_235.tempA_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_4_fu_337.grp_KeccakP1600_Permute_s_fu_187.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "27"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_352", "Parent" : "0", "Child" : ["31"],
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
					{"ID" : "31", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_211", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_211", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_211", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_352.grp_KeccakP1600_Permute_s_fu_211", "Parent" : "30", "Child" : ["32", "33", "34", "35", "38", "40"],
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
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_352.grp_KeccakP1600_Permute_s_fu_211.KeccakRhoOffsets_U", "Parent" : "31"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_352.grp_KeccakP1600_Permute_s_fu_211.KeccakRoundConstants_U", "Parent" : "31"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_352.grp_KeccakP1600_Permute_s_fu_211.stateAsWords_U", "Parent" : "31"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_352.grp_KeccakP1600_Permute_s_fu_211.grp_theta_fu_225", "Parent" : "31", "Child" : ["36", "37"],
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
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_352.grp_KeccakP1600_Permute_s_fu_211.grp_theta_fu_225.C_U", "Parent" : "35"},
	{"ID" : "37", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_352.grp_KeccakP1600_Permute_s_fu_211.grp_theta_fu_225.D_U", "Parent" : "35"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_352.grp_KeccakP1600_Permute_s_fu_211.grp_chi_fu_230", "Parent" : "31", "Child" : ["39"],
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
	{"ID" : "39", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_352.grp_KeccakP1600_Permute_s_fu_211.grp_chi_fu_230.C_U", "Parent" : "38"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_352.grp_KeccakP1600_Permute_s_fu_211.grp_pi_fu_235", "Parent" : "31", "Child" : ["41", "42"],
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
	{"ID" : "41", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_352.grp_KeccakP1600_Permute_s_fu_211.grp_pi_fu_235.tempA_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_352.grp_KeccakP1600_Permute_s_fu_211.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "40"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_99_fu_368", "Parent" : "0", "Child" : ["44"],
		"CDFG" : "Keccak_HashUpdate_99",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_99_fu_368.grp_KeccakP1600_Permute_s_fu_197", "Parent" : "43", "Child" : ["45", "46", "47", "48", "51", "53"],
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
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_99_fu_368.grp_KeccakP1600_Permute_s_fu_197.KeccakRhoOffsets_U", "Parent" : "44"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_99_fu_368.grp_KeccakP1600_Permute_s_fu_197.KeccakRoundConstants_U", "Parent" : "44"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_99_fu_368.grp_KeccakP1600_Permute_s_fu_197.stateAsWords_U", "Parent" : "44"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_99_fu_368.grp_KeccakP1600_Permute_s_fu_197.grp_theta_fu_225", "Parent" : "44", "Child" : ["49", "50"],
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
	{"ID" : "49", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_99_fu_368.grp_KeccakP1600_Permute_s_fu_197.grp_theta_fu_225.C_U", "Parent" : "48"},
	{"ID" : "50", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_99_fu_368.grp_KeccakP1600_Permute_s_fu_197.grp_theta_fu_225.D_U", "Parent" : "48"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_99_fu_368.grp_KeccakP1600_Permute_s_fu_197.grp_chi_fu_230", "Parent" : "44", "Child" : ["52"],
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
	{"ID" : "52", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_99_fu_368.grp_KeccakP1600_Permute_s_fu_197.grp_chi_fu_230.C_U", "Parent" : "51"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_99_fu_368.grp_KeccakP1600_Permute_s_fu_197.grp_pi_fu_235", "Parent" : "44", "Child" : ["54", "55"],
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
	{"ID" : "54", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_99_fu_368.grp_KeccakP1600_Permute_s_fu_197.grp_pi_fu_235.tempA_U", "Parent" : "53"},
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_99_fu_368.grp_KeccakP1600_Permute_s_fu_197.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "53"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_384", "Parent" : "0", "Child" : ["57"],
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
					{"ID" : "57", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_384.grp_KeccakP1600_Permute_s_fu_183", "Parent" : "56", "Child" : ["58", "59", "60", "61", "64", "66"],
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
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_384.grp_KeccakP1600_Permute_s_fu_183.KeccakRhoOffsets_U", "Parent" : "57"},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_384.grp_KeccakP1600_Permute_s_fu_183.KeccakRoundConstants_U", "Parent" : "57"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_384.grp_KeccakP1600_Permute_s_fu_183.stateAsWords_U", "Parent" : "57"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_384.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225", "Parent" : "57", "Child" : ["62", "63"],
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
	{"ID" : "62", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_384.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225.C_U", "Parent" : "61"},
	{"ID" : "63", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_384.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225.D_U", "Parent" : "61"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_384.grp_KeccakP1600_Permute_s_fu_183.grp_chi_fu_230", "Parent" : "57", "Child" : ["65"],
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
	{"ID" : "65", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_384.grp_KeccakP1600_Permute_s_fu_183.grp_chi_fu_230.C_U", "Parent" : "64"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_384.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235", "Parent" : "57", "Child" : ["67", "68"],
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
	{"ID" : "67", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_384.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235.tempA_U", "Parent" : "66"},
	{"ID" : "68", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_384.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "66"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_397", "Parent" : "0", "Child" : ["70"],
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
					{"ID" : "70", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_397.grp_KeccakP1600_Permute_s_fu_162", "Parent" : "69", "Child" : ["71", "72", "73", "74", "77", "79"],
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
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_397.grp_KeccakP1600_Permute_s_fu_162.KeccakRhoOffsets_U", "Parent" : "70"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_397.grp_KeccakP1600_Permute_s_fu_162.KeccakRoundConstants_U", "Parent" : "70"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_397.grp_KeccakP1600_Permute_s_fu_162.stateAsWords_U", "Parent" : "70"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_397.grp_KeccakP1600_Permute_s_fu_162.grp_theta_fu_225", "Parent" : "70", "Child" : ["75", "76"],
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
	{"ID" : "75", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_397.grp_KeccakP1600_Permute_s_fu_162.grp_theta_fu_225.C_U", "Parent" : "74"},
	{"ID" : "76", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_397.grp_KeccakP1600_Permute_s_fu_162.grp_theta_fu_225.D_U", "Parent" : "74"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_397.grp_KeccakP1600_Permute_s_fu_162.grp_chi_fu_230", "Parent" : "70", "Child" : ["78"],
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
	{"ID" : "78", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_397.grp_KeccakP1600_Permute_s_fu_162.grp_chi_fu_230.C_U", "Parent" : "77"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_397.grp_KeccakP1600_Permute_s_fu_162.grp_pi_fu_235", "Parent" : "70", "Child" : ["80", "81"],
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
	{"ID" : "80", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_397.grp_KeccakP1600_Permute_s_fu_162.grp_pi_fu_235.tempA_U", "Parent" : "79"},
	{"ID" : "81", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_397.grp_KeccakP1600_Permute_s_fu_162.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "79"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_412", "Parent" : "0", "Child" : ["83"],
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
					{"ID" : "83", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_delimitedSu", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_412.grp_KeccakP1600_Permute_s_fu_124", "Parent" : "82", "Child" : ["84", "85", "86", "87", "90", "92"],
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
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_412.grp_KeccakP1600_Permute_s_fu_124.KeccakRhoOffsets_U", "Parent" : "83"},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_412.grp_KeccakP1600_Permute_s_fu_124.KeccakRoundConstants_U", "Parent" : "83"},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_412.grp_KeccakP1600_Permute_s_fu_124.stateAsWords_U", "Parent" : "83"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_412.grp_KeccakP1600_Permute_s_fu_124.grp_theta_fu_225", "Parent" : "83", "Child" : ["88", "89"],
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
	{"ID" : "88", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_412.grp_KeccakP1600_Permute_s_fu_124.grp_theta_fu_225.C_U", "Parent" : "87"},
	{"ID" : "89", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_412.grp_KeccakP1600_Permute_s_fu_124.grp_theta_fu_225.D_U", "Parent" : "87"},
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_412.grp_KeccakP1600_Permute_s_fu_124.grp_chi_fu_230", "Parent" : "83", "Child" : ["91"],
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
	{"ID" : "91", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_412.grp_KeccakP1600_Permute_s_fu_124.grp_chi_fu_230.C_U", "Parent" : "90"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_412.grp_KeccakP1600_Permute_s_fu_124.grp_pi_fu_235", "Parent" : "83", "Child" : ["93", "94"],
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
	{"ID" : "93", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_412.grp_KeccakP1600_Permute_s_fu_124.grp_pi_fu_235.tempA_U", "Parent" : "92"},
	{"ID" : "94", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_412.grp_KeccakP1600_Permute_s_fu_124.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "92"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashInitializ_fu_427", "Parent" : "0",
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
	Commit_23 {
		seed_0 {Type I LastRead 4 FirstWrite -1}
		seed_offset1 {Type I LastRead 4 FirstWrite -1}
		view_inputShare {Type I LastRead 17 FirstWrite -1}
		view_inputShare_offset {Type I LastRead 15 FirstWrite -1}
		view_communicatedBits {Type I LastRead 4 FirstWrite -1}
		view_communicatedBits_offset {Type I LastRead 15 FirstWrite -1}
		view_outputShare {Type I LastRead 22 FirstWrite -1}
		view_outputShare_offset {Type I LastRead 15 FirstWrite -1}
		hash {Type IO LastRead 4 FirstWrite -1}
		hash_offset {Type I LastRead 8 FirstWrite -1}
		hash_offset3 {Type I LastRead 8 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	Keccak_HashSqueeze_3 {
		instance_sponge_stat {Type IO LastRead 10 FirstWrite 1}
		instance_sponge_rate {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque_13 {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque {Type I LastRead 0 FirstWrite -1}
		data {Type O LastRead -1 FirstWrite 10}
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
	Keccak_HashUpdate_4 {
		instance_sponge_stat {Type IO LastRead 4 FirstWrite 4}
		instance_sponge_rate {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byte {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 4 FirstWrite -1}
		data_offset {Type I LastRead 0 FirstWrite -1}
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
	Keccak_HashUpdate_99 {
		instance_sponge_stat {Type IO LastRead 4 FirstWrite 4}
		instance_sponge_rate {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byte {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque {Type I LastRead 0 FirstWrite -1}
		data_0 {Type I LastRead 4 FirstWrite -1}
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
	seed_0 { ap_memory {  { seed_0_address0 mem_address 1 12 }  { seed_0_ce0 mem_ce 1 1 }  { seed_0_q0 mem_dout 0 8 } } }
	seed_offset1 { ap_none {  { seed_offset1 in_data 0 8 } } }
	view_inputShare { ap_memory {  { view_inputShare_address0 mem_address 1 10 }  { view_inputShare_ce0 mem_ce 1 1 }  { view_inputShare_q0 mem_dout 0 32 } } }
	view_inputShare_offset { ap_none {  { view_inputShare_offset in_data 0 8 } } }
	view_communicatedBits { ap_memory {  { view_communicatedBits_address0 mem_address 1 15 }  { view_communicatedBits_ce0 mem_ce 1 1 }  { view_communicatedBits_q0 mem_dout 0 8 } } }
	view_communicatedBits_offset { ap_none {  { view_communicatedBits_offset in_data 0 8 } } }
	view_outputShare { ap_memory {  { view_outputShare_address0 mem_address 1 10 }  { view_outputShare_ce0 mem_ce 1 1 }  { view_outputShare_q0 mem_dout 0 32 } } }
	view_outputShare_offset { ap_none {  { view_outputShare_offset in_data 0 8 } } }
	hash { ap_memory {  { hash_address0 mem_address 1 15 }  { hash_ce0 mem_ce 1 1 }  { hash_we0 mem_we 1 1 }  { hash_d0 mem_din 1 8 }  { hash_q0 mem_dout 0 8 } } }
	hash_offset { ap_none {  { hash_offset in_data 0 8 } } }
	hash_offset3 { ap_none {  { hash_offset3 in_data 0 2 } } }
}
set moduleName Commit_23
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
set C_modelName {Commit_23}
set C_modelType { void 0 }
set C_modelArgList {
	{ seed_0 int 8 regular {array 3504 { 1 3 } 1 1 }  }
	{ seed_offset1 int 8 regular  }
	{ view_inputShare int 32 regular {array 876 { 1 3 } 1 1 }  }
	{ view_inputShare_offset int 8 regular  }
	{ view_communicatedBits int 8 regular {array 16425 { 1 3 } 1 1 }  }
	{ view_communicatedBits_offset int 8 regular  }
	{ view_outputShare int 32 regular {array 876 { 1 3 } 1 1 }  }
	{ view_outputShare_offset int 8 regular  }
	{ hash int 8 regular {array 21024 { 2 3 } 1 1 }  }
	{ hash_offset int 8 regular  }
	{ hash_offset3 int 2 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seed_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "seed_offset1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "view_inputShare", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "view_inputShare_offset", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "view_communicatedBits", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "view_communicatedBits_offset", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "view_outputShare", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "view_outputShare_offset", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "hash", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "hash_offset", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "hash_offset3", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seed_0_address0 sc_out sc_lv 12 signal 0 } 
	{ seed_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ seed_0_q0 sc_in sc_lv 8 signal 0 } 
	{ seed_offset1 sc_in sc_lv 8 signal 1 } 
	{ view_inputShare_address0 sc_out sc_lv 10 signal 2 } 
	{ view_inputShare_ce0 sc_out sc_logic 1 signal 2 } 
	{ view_inputShare_q0 sc_in sc_lv 32 signal 2 } 
	{ view_inputShare_offset sc_in sc_lv 8 signal 3 } 
	{ view_communicatedBits_address0 sc_out sc_lv 15 signal 4 } 
	{ view_communicatedBits_ce0 sc_out sc_logic 1 signal 4 } 
	{ view_communicatedBits_q0 sc_in sc_lv 8 signal 4 } 
	{ view_communicatedBits_offset sc_in sc_lv 8 signal 5 } 
	{ view_outputShare_address0 sc_out sc_lv 10 signal 6 } 
	{ view_outputShare_ce0 sc_out sc_logic 1 signal 6 } 
	{ view_outputShare_q0 sc_in sc_lv 32 signal 6 } 
	{ view_outputShare_offset sc_in sc_lv 8 signal 7 } 
	{ hash_address0 sc_out sc_lv 15 signal 8 } 
	{ hash_ce0 sc_out sc_logic 1 signal 8 } 
	{ hash_we0 sc_out sc_logic 1 signal 8 } 
	{ hash_d0 sc_out sc_lv 8 signal 8 } 
	{ hash_q0 sc_in sc_lv 8 signal 8 } 
	{ hash_offset sc_in sc_lv 8 signal 9 } 
	{ hash_offset3 sc_in sc_lv 2 signal 10 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seed_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "seed_0", "role": "address0" }} , 
 	{ "name": "seed_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seed_0", "role": "ce0" }} , 
 	{ "name": "seed_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seed_0", "role": "q0" }} , 
 	{ "name": "seed_offset1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seed_offset1", "role": "default" }} , 
 	{ "name": "view_inputShare_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "view_inputShare", "role": "address0" }} , 
 	{ "name": "view_inputShare_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view_inputShare", "role": "ce0" }} , 
 	{ "name": "view_inputShare_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "view_inputShare", "role": "q0" }} , 
 	{ "name": "view_inputShare_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "view_inputShare_offset", "role": "default" }} , 
 	{ "name": "view_communicatedBits_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "view_communicatedBits", "role": "address0" }} , 
 	{ "name": "view_communicatedBits_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view_communicatedBits", "role": "ce0" }} , 
 	{ "name": "view_communicatedBits_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "view_communicatedBits", "role": "q0" }} , 
 	{ "name": "view_communicatedBits_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "view_communicatedBits_offset", "role": "default" }} , 
 	{ "name": "view_outputShare_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "view_outputShare", "role": "address0" }} , 
 	{ "name": "view_outputShare_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view_outputShare", "role": "ce0" }} , 
 	{ "name": "view_outputShare_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "view_outputShare", "role": "q0" }} , 
 	{ "name": "view_outputShare_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "view_outputShare_offset", "role": "default" }} , 
 	{ "name": "hash_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "hash", "role": "address0" }} , 
 	{ "name": "hash_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "ce0" }} , 
 	{ "name": "hash_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "we0" }} , 
 	{ "name": "hash_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hash", "role": "d0" }} , 
 	{ "name": "hash_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hash", "role": "q0" }} , 
 	{ "name": "hash_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hash_offset", "role": "default" }} , 
 	{ "name": "hash_offset3", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hash_offset3", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "17", "30", "43", "56", "69", "82", "95"],
		"CDFG" : "Commit_23",
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
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_3_fu_402"},
			{"State" : "ap_ST_fsm_state36", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_3_fu_402"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_4_fu_421"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_8_fu_436"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_99_fu_452"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5133_fu_468"},
			{"State" : "ap_ST_fsm_state32", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5133_fu_468"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_481"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_481"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashFinal_fu_496"},
			{"State" : "ap_ST_fsm_state34", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashFinal_fu_496"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashInitializ_fu_511"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashInitializ_fu_511"}],
		"Port" : [
			{"Name" : "seed_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_Keccak_HashUpdate_99_fu_452", "Port" : "data_0"}]},
			{"Name" : "seed_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "view_inputShare", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "view_inputShare_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "view_communicatedBits", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_Keccak_HashUpdate_4_fu_421", "Port" : "data"}]},
			{"Name" : "view_communicatedBits_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "view_outputShare", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "view_outputShare_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "hash", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_Keccak_HashSqueeze_3_fu_402", "Port" : "data"},
					{"ID" : "30", "SubInstance" : "grp_Keccak_HashUpdate_8_fu_436", "Port" : "data"}]},
			{"Name" : "hash_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "hash_offset3", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "grp_Keccak_HashFinal_fu_496", "Port" : "KeccakRhoOffsets"},
					{"ID" : "17", "SubInstance" : "grp_Keccak_HashUpdate_4_fu_421", "Port" : "KeccakRhoOffsets"},
					{"ID" : "69", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_481", "Port" : "KeccakRhoOffsets"},
					{"ID" : "4", "SubInstance" : "grp_Keccak_HashSqueeze_3_fu_402", "Port" : "KeccakRhoOffsets"},
					{"ID" : "56", "SubInstance" : "grp_Keccak_HashUpdate_5133_fu_468", "Port" : "KeccakRhoOffsets"},
					{"ID" : "30", "SubInstance" : "grp_Keccak_HashUpdate_8_fu_436", "Port" : "KeccakRhoOffsets"},
					{"ID" : "43", "SubInstance" : "grp_Keccak_HashUpdate_99_fu_452", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "grp_Keccak_HashFinal_fu_496", "Port" : "KeccakRoundConstants"},
					{"ID" : "17", "SubInstance" : "grp_Keccak_HashUpdate_4_fu_421", "Port" : "KeccakRoundConstants"},
					{"ID" : "69", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_481", "Port" : "KeccakRoundConstants"},
					{"ID" : "4", "SubInstance" : "grp_Keccak_HashSqueeze_3_fu_402", "Port" : "KeccakRoundConstants"},
					{"ID" : "56", "SubInstance" : "grp_Keccak_HashUpdate_5133_fu_468", "Port" : "KeccakRoundConstants"},
					{"ID" : "30", "SubInstance" : "grp_Keccak_HashUpdate_8_fu_436", "Port" : "KeccakRoundConstants"},
					{"ID" : "43", "SubInstance" : "grp_Keccak_HashUpdate_99_fu_452", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_3_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctx_sponge_state_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_3_fu_402", "Parent" : "0", "Child" : ["5"],
		"CDFG" : "Keccak_HashSqueeze_3",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_286"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_286"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_286"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_286", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_286", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_286", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_3_fu_402.grp_KeccakP1600_Permute_s_fu_286", "Parent" : "4", "Child" : ["6", "7", "8", "9", "12", "14"],
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
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_3_fu_402.grp_KeccakP1600_Permute_s_fu_286.KeccakRhoOffsets_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_3_fu_402.grp_KeccakP1600_Permute_s_fu_286.KeccakRoundConstants_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_3_fu_402.grp_KeccakP1600_Permute_s_fu_286.stateAsWords_U", "Parent" : "5"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_3_fu_402.grp_KeccakP1600_Permute_s_fu_286.grp_theta_fu_225", "Parent" : "5", "Child" : ["10", "11"],
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
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_3_fu_402.grp_KeccakP1600_Permute_s_fu_286.grp_theta_fu_225.C_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_3_fu_402.grp_KeccakP1600_Permute_s_fu_286.grp_theta_fu_225.D_U", "Parent" : "9"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_3_fu_402.grp_KeccakP1600_Permute_s_fu_286.grp_chi_fu_230", "Parent" : "5", "Child" : ["13"],
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
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_3_fu_402.grp_KeccakP1600_Permute_s_fu_286.grp_chi_fu_230.C_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_3_fu_402.grp_KeccakP1600_Permute_s_fu_286.grp_pi_fu_235", "Parent" : "5", "Child" : ["15", "16"],
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
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_3_fu_402.grp_KeccakP1600_Permute_s_fu_286.grp_pi_fu_235.tempA_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_3_fu_402.grp_KeccakP1600_Permute_s_fu_286.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "14"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_4_fu_421", "Parent" : "0", "Child" : ["18"],
		"CDFG" : "Keccak_HashUpdate_4",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_187"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_187"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_187", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_187", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_187", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_4_fu_421.grp_KeccakP1600_Permute_s_fu_187", "Parent" : "17", "Child" : ["19", "20", "21", "22", "25", "27"],
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
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_4_fu_421.grp_KeccakP1600_Permute_s_fu_187.KeccakRhoOffsets_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_4_fu_421.grp_KeccakP1600_Permute_s_fu_187.KeccakRoundConstants_U", "Parent" : "18"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_4_fu_421.grp_KeccakP1600_Permute_s_fu_187.stateAsWords_U", "Parent" : "18"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_4_fu_421.grp_KeccakP1600_Permute_s_fu_187.grp_theta_fu_225", "Parent" : "18", "Child" : ["23", "24"],
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
	{"ID" : "23", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_4_fu_421.grp_KeccakP1600_Permute_s_fu_187.grp_theta_fu_225.C_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_4_fu_421.grp_KeccakP1600_Permute_s_fu_187.grp_theta_fu_225.D_U", "Parent" : "22"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_4_fu_421.grp_KeccakP1600_Permute_s_fu_187.grp_chi_fu_230", "Parent" : "18", "Child" : ["26"],
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
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_4_fu_421.grp_KeccakP1600_Permute_s_fu_187.grp_chi_fu_230.C_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_4_fu_421.grp_KeccakP1600_Permute_s_fu_187.grp_pi_fu_235", "Parent" : "18", "Child" : ["28", "29"],
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
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_4_fu_421.grp_KeccakP1600_Permute_s_fu_187.grp_pi_fu_235.tempA_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_4_fu_421.grp_KeccakP1600_Permute_s_fu_187.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "27"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_436", "Parent" : "0", "Child" : ["31"],
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
					{"ID" : "31", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_211", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_211", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_211", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_436.grp_KeccakP1600_Permute_s_fu_211", "Parent" : "30", "Child" : ["32", "33", "34", "35", "38", "40"],
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
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_436.grp_KeccakP1600_Permute_s_fu_211.KeccakRhoOffsets_U", "Parent" : "31"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_436.grp_KeccakP1600_Permute_s_fu_211.KeccakRoundConstants_U", "Parent" : "31"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_436.grp_KeccakP1600_Permute_s_fu_211.stateAsWords_U", "Parent" : "31"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_436.grp_KeccakP1600_Permute_s_fu_211.grp_theta_fu_225", "Parent" : "31", "Child" : ["36", "37"],
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
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_436.grp_KeccakP1600_Permute_s_fu_211.grp_theta_fu_225.C_U", "Parent" : "35"},
	{"ID" : "37", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_436.grp_KeccakP1600_Permute_s_fu_211.grp_theta_fu_225.D_U", "Parent" : "35"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_436.grp_KeccakP1600_Permute_s_fu_211.grp_chi_fu_230", "Parent" : "31", "Child" : ["39"],
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
	{"ID" : "39", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_436.grp_KeccakP1600_Permute_s_fu_211.grp_chi_fu_230.C_U", "Parent" : "38"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_436.grp_KeccakP1600_Permute_s_fu_211.grp_pi_fu_235", "Parent" : "31", "Child" : ["41", "42"],
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
	{"ID" : "41", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_436.grp_KeccakP1600_Permute_s_fu_211.grp_pi_fu_235.tempA_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_436.grp_KeccakP1600_Permute_s_fu_211.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "40"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_99_fu_452", "Parent" : "0", "Child" : ["44"],
		"CDFG" : "Keccak_HashUpdate_99",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_99_fu_452.grp_KeccakP1600_Permute_s_fu_197", "Parent" : "43", "Child" : ["45", "46", "47", "48", "51", "53"],
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
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_99_fu_452.grp_KeccakP1600_Permute_s_fu_197.KeccakRhoOffsets_U", "Parent" : "44"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_99_fu_452.grp_KeccakP1600_Permute_s_fu_197.KeccakRoundConstants_U", "Parent" : "44"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_99_fu_452.grp_KeccakP1600_Permute_s_fu_197.stateAsWords_U", "Parent" : "44"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_99_fu_452.grp_KeccakP1600_Permute_s_fu_197.grp_theta_fu_225", "Parent" : "44", "Child" : ["49", "50"],
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
	{"ID" : "49", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_99_fu_452.grp_KeccakP1600_Permute_s_fu_197.grp_theta_fu_225.C_U", "Parent" : "48"},
	{"ID" : "50", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_99_fu_452.grp_KeccakP1600_Permute_s_fu_197.grp_theta_fu_225.D_U", "Parent" : "48"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_99_fu_452.grp_KeccakP1600_Permute_s_fu_197.grp_chi_fu_230", "Parent" : "44", "Child" : ["52"],
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
	{"ID" : "52", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_99_fu_452.grp_KeccakP1600_Permute_s_fu_197.grp_chi_fu_230.C_U", "Parent" : "51"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_99_fu_452.grp_KeccakP1600_Permute_s_fu_197.grp_pi_fu_235", "Parent" : "44", "Child" : ["54", "55"],
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
	{"ID" : "54", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_99_fu_452.grp_KeccakP1600_Permute_s_fu_197.grp_pi_fu_235.tempA_U", "Parent" : "53"},
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_99_fu_452.grp_KeccakP1600_Permute_s_fu_197.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "53"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_468", "Parent" : "0", "Child" : ["57"],
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
					{"ID" : "57", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_468.grp_KeccakP1600_Permute_s_fu_183", "Parent" : "56", "Child" : ["58", "59", "60", "61", "64", "66"],
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
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_468.grp_KeccakP1600_Permute_s_fu_183.KeccakRhoOffsets_U", "Parent" : "57"},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_468.grp_KeccakP1600_Permute_s_fu_183.KeccakRoundConstants_U", "Parent" : "57"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_468.grp_KeccakP1600_Permute_s_fu_183.stateAsWords_U", "Parent" : "57"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_468.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225", "Parent" : "57", "Child" : ["62", "63"],
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
	{"ID" : "62", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_468.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225.C_U", "Parent" : "61"},
	{"ID" : "63", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_468.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225.D_U", "Parent" : "61"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_468.grp_KeccakP1600_Permute_s_fu_183.grp_chi_fu_230", "Parent" : "57", "Child" : ["65"],
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
	{"ID" : "65", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_468.grp_KeccakP1600_Permute_s_fu_183.grp_chi_fu_230.C_U", "Parent" : "64"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_468.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235", "Parent" : "57", "Child" : ["67", "68"],
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
	{"ID" : "67", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_468.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235.tempA_U", "Parent" : "66"},
	{"ID" : "68", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_468.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "66"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_481", "Parent" : "0", "Child" : ["70"],
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
					{"ID" : "70", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_481.grp_KeccakP1600_Permute_s_fu_162", "Parent" : "69", "Child" : ["71", "72", "73", "74", "77", "79"],
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
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_481.grp_KeccakP1600_Permute_s_fu_162.KeccakRhoOffsets_U", "Parent" : "70"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_481.grp_KeccakP1600_Permute_s_fu_162.KeccakRoundConstants_U", "Parent" : "70"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_481.grp_KeccakP1600_Permute_s_fu_162.stateAsWords_U", "Parent" : "70"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_481.grp_KeccakP1600_Permute_s_fu_162.grp_theta_fu_225", "Parent" : "70", "Child" : ["75", "76"],
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
	{"ID" : "75", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_481.grp_KeccakP1600_Permute_s_fu_162.grp_theta_fu_225.C_U", "Parent" : "74"},
	{"ID" : "76", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_481.grp_KeccakP1600_Permute_s_fu_162.grp_theta_fu_225.D_U", "Parent" : "74"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_481.grp_KeccakP1600_Permute_s_fu_162.grp_chi_fu_230", "Parent" : "70", "Child" : ["78"],
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
	{"ID" : "78", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_481.grp_KeccakP1600_Permute_s_fu_162.grp_chi_fu_230.C_U", "Parent" : "77"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_481.grp_KeccakP1600_Permute_s_fu_162.grp_pi_fu_235", "Parent" : "70", "Child" : ["80", "81"],
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
	{"ID" : "80", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_481.grp_KeccakP1600_Permute_s_fu_162.grp_pi_fu_235.tempA_U", "Parent" : "79"},
	{"ID" : "81", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_481.grp_KeccakP1600_Permute_s_fu_162.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "79"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_496", "Parent" : "0", "Child" : ["83"],
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
					{"ID" : "83", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_delimitedSu", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_496.grp_KeccakP1600_Permute_s_fu_124", "Parent" : "82", "Child" : ["84", "85", "86", "87", "90", "92"],
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
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_496.grp_KeccakP1600_Permute_s_fu_124.KeccakRhoOffsets_U", "Parent" : "83"},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_496.grp_KeccakP1600_Permute_s_fu_124.KeccakRoundConstants_U", "Parent" : "83"},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_496.grp_KeccakP1600_Permute_s_fu_124.stateAsWords_U", "Parent" : "83"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_496.grp_KeccakP1600_Permute_s_fu_124.grp_theta_fu_225", "Parent" : "83", "Child" : ["88", "89"],
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
	{"ID" : "88", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_496.grp_KeccakP1600_Permute_s_fu_124.grp_theta_fu_225.C_U", "Parent" : "87"},
	{"ID" : "89", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_496.grp_KeccakP1600_Permute_s_fu_124.grp_theta_fu_225.D_U", "Parent" : "87"},
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_496.grp_KeccakP1600_Permute_s_fu_124.grp_chi_fu_230", "Parent" : "83", "Child" : ["91"],
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
	{"ID" : "91", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_496.grp_KeccakP1600_Permute_s_fu_124.grp_chi_fu_230.C_U", "Parent" : "90"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_496.grp_KeccakP1600_Permute_s_fu_124.grp_pi_fu_235", "Parent" : "83", "Child" : ["93", "94"],
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
	{"ID" : "93", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_496.grp_KeccakP1600_Permute_s_fu_124.grp_pi_fu_235.tempA_U", "Parent" : "92"},
	{"ID" : "94", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_496.grp_KeccakP1600_Permute_s_fu_124.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "92"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashInitializ_fu_511", "Parent" : "0",
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
	Commit_23 {
		seed_0 {Type I LastRead 4 FirstWrite -1}
		seed_offset1 {Type I LastRead 4 FirstWrite -1}
		view_inputShare {Type I LastRead 19 FirstWrite -1}
		view_inputShare_offset {Type I LastRead 15 FirstWrite -1}
		view_communicatedBits {Type I LastRead 4 FirstWrite -1}
		view_communicatedBits_offset {Type I LastRead 15 FirstWrite -1}
		view_outputShare {Type I LastRead 24 FirstWrite -1}
		view_outputShare_offset {Type I LastRead 15 FirstWrite -1}
		hash {Type IO LastRead 4 FirstWrite -1}
		hash_offset {Type I LastRead 8 FirstWrite -1}
		hash_offset3 {Type I LastRead 8 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	Keccak_HashSqueeze_3 {
		instance_sponge_stat {Type IO LastRead 10 FirstWrite 1}
		instance_sponge_rate {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque_13 {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque {Type I LastRead 0 FirstWrite -1}
		data {Type O LastRead -1 FirstWrite 10}
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
	Keccak_HashUpdate_4 {
		instance_sponge_stat {Type IO LastRead 4 FirstWrite 4}
		instance_sponge_rate {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byte {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 4 FirstWrite -1}
		data_offset {Type I LastRead 0 FirstWrite -1}
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
	Keccak_HashUpdate_99 {
		instance_sponge_stat {Type IO LastRead 4 FirstWrite 4}
		instance_sponge_rate {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byte {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque {Type I LastRead 0 FirstWrite -1}
		data_0 {Type I LastRead 4 FirstWrite -1}
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
	seed_0 { ap_memory {  { seed_0_address0 mem_address 1 12 }  { seed_0_ce0 mem_ce 1 1 }  { seed_0_q0 mem_dout 0 8 } } }
	seed_offset1 { ap_none {  { seed_offset1 in_data 0 8 } } }
	view_inputShare { ap_memory {  { view_inputShare_address0 mem_address 1 10 }  { view_inputShare_ce0 mem_ce 1 1 }  { view_inputShare_q0 mem_dout 0 32 } } }
	view_inputShare_offset { ap_none {  { view_inputShare_offset in_data 0 8 } } }
	view_communicatedBits { ap_memory {  { view_communicatedBits_address0 mem_address 1 15 }  { view_communicatedBits_ce0 mem_ce 1 1 }  { view_communicatedBits_q0 mem_dout 0 8 } } }
	view_communicatedBits_offset { ap_none {  { view_communicatedBits_offset in_data 0 8 } } }
	view_outputShare { ap_memory {  { view_outputShare_address0 mem_address 1 10 }  { view_outputShare_ce0 mem_ce 1 1 }  { view_outputShare_q0 mem_dout 0 32 } } }
	view_outputShare_offset { ap_none {  { view_outputShare_offset in_data 0 8 } } }
	hash { ap_memory {  { hash_address0 mem_address 1 15 }  { hash_ce0 mem_ce 1 1 }  { hash_we0 mem_we 1 1 }  { hash_d0 mem_din 1 8 }  { hash_q0 mem_dout 0 8 } } }
	hash_offset { ap_none {  { hash_offset in_data 0 8 } } }
	hash_offset3 { ap_none {  { hash_offset3 in_data 0 2 } } }
}
set moduleName Commit_23
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
set C_modelName {Commit_23}
set C_modelType { void 0 }
set C_modelArgList {
	{ seed_0 int 8 regular {array 3504 { 1 3 } 1 1 }  }
	{ seed_offset1 int 8 regular  }
	{ view_inputShare int 32 regular {array 876 { 1 1 } 1 1 }  }
	{ view_inputShare_offset int 8 regular  }
	{ view_communicatedBits int 8 regular {array 16425 { 1 3 } 1 1 }  }
	{ view_communicatedBits_offset int 8 regular  }
	{ view_outputShare int 32 regular {array 876 { 1 1 } 1 1 }  }
	{ view_outputShare_offset int 8 regular  }
	{ hash int 8 regular {array 21024 { 2 3 } 1 1 }  }
	{ hash_offset int 8 regular  }
	{ hash_offset3 int 2 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seed_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "seed_offset1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "view_inputShare", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "view_inputShare_offset", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "view_communicatedBits", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "view_communicatedBits_offset", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "view_outputShare", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "view_outputShare_offset", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "hash", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "hash_offset", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "hash_offset3", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 35
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seed_0_address0 sc_out sc_lv 12 signal 0 } 
	{ seed_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ seed_0_q0 sc_in sc_lv 8 signal 0 } 
	{ seed_offset1 sc_in sc_lv 8 signal 1 } 
	{ view_inputShare_address0 sc_out sc_lv 10 signal 2 } 
	{ view_inputShare_ce0 sc_out sc_logic 1 signal 2 } 
	{ view_inputShare_q0 sc_in sc_lv 32 signal 2 } 
	{ view_inputShare_address1 sc_out sc_lv 10 signal 2 } 
	{ view_inputShare_ce1 sc_out sc_logic 1 signal 2 } 
	{ view_inputShare_q1 sc_in sc_lv 32 signal 2 } 
	{ view_inputShare_offset sc_in sc_lv 8 signal 3 } 
	{ view_communicatedBits_address0 sc_out sc_lv 15 signal 4 } 
	{ view_communicatedBits_ce0 sc_out sc_logic 1 signal 4 } 
	{ view_communicatedBits_q0 sc_in sc_lv 8 signal 4 } 
	{ view_communicatedBits_offset sc_in sc_lv 8 signal 5 } 
	{ view_outputShare_address0 sc_out sc_lv 10 signal 6 } 
	{ view_outputShare_ce0 sc_out sc_logic 1 signal 6 } 
	{ view_outputShare_q0 sc_in sc_lv 32 signal 6 } 
	{ view_outputShare_address1 sc_out sc_lv 10 signal 6 } 
	{ view_outputShare_ce1 sc_out sc_logic 1 signal 6 } 
	{ view_outputShare_q1 sc_in sc_lv 32 signal 6 } 
	{ view_outputShare_offset sc_in sc_lv 8 signal 7 } 
	{ hash_address0 sc_out sc_lv 15 signal 8 } 
	{ hash_ce0 sc_out sc_logic 1 signal 8 } 
	{ hash_we0 sc_out sc_logic 1 signal 8 } 
	{ hash_d0 sc_out sc_lv 8 signal 8 } 
	{ hash_q0 sc_in sc_lv 8 signal 8 } 
	{ hash_offset sc_in sc_lv 8 signal 9 } 
	{ hash_offset3 sc_in sc_lv 2 signal 10 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seed_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "seed_0", "role": "address0" }} , 
 	{ "name": "seed_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seed_0", "role": "ce0" }} , 
 	{ "name": "seed_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seed_0", "role": "q0" }} , 
 	{ "name": "seed_offset1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seed_offset1", "role": "default" }} , 
 	{ "name": "view_inputShare_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "view_inputShare", "role": "address0" }} , 
 	{ "name": "view_inputShare_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view_inputShare", "role": "ce0" }} , 
 	{ "name": "view_inputShare_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "view_inputShare", "role": "q0" }} , 
 	{ "name": "view_inputShare_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "view_inputShare", "role": "address1" }} , 
 	{ "name": "view_inputShare_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view_inputShare", "role": "ce1" }} , 
 	{ "name": "view_inputShare_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "view_inputShare", "role": "q1" }} , 
 	{ "name": "view_inputShare_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "view_inputShare_offset", "role": "default" }} , 
 	{ "name": "view_communicatedBits_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "view_communicatedBits", "role": "address0" }} , 
 	{ "name": "view_communicatedBits_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view_communicatedBits", "role": "ce0" }} , 
 	{ "name": "view_communicatedBits_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "view_communicatedBits", "role": "q0" }} , 
 	{ "name": "view_communicatedBits_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "view_communicatedBits_offset", "role": "default" }} , 
 	{ "name": "view_outputShare_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "view_outputShare", "role": "address0" }} , 
 	{ "name": "view_outputShare_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view_outputShare", "role": "ce0" }} , 
 	{ "name": "view_outputShare_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "view_outputShare", "role": "q0" }} , 
 	{ "name": "view_outputShare_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "view_outputShare", "role": "address1" }} , 
 	{ "name": "view_outputShare_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view_outputShare", "role": "ce1" }} , 
 	{ "name": "view_outputShare_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "view_outputShare", "role": "q1" }} , 
 	{ "name": "view_outputShare_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "view_outputShare_offset", "role": "default" }} , 
 	{ "name": "hash_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "hash", "role": "address0" }} , 
 	{ "name": "hash_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "ce0" }} , 
 	{ "name": "hash_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "we0" }} , 
 	{ "name": "hash_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hash", "role": "d0" }} , 
 	{ "name": "hash_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hash", "role": "q0" }} , 
 	{ "name": "hash_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hash_offset", "role": "default" }} , 
 	{ "name": "hash_offset3", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hash_offset3", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "17", "30", "43", "56", "69", "82", "95"],
		"CDFG" : "Commit_23",
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
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_3_fu_558"},
			{"State" : "ap_ST_fsm_state46", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_3_fu_558"},
			{"State" : "ap_ST_fsm_state30", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_4_fu_577"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_8_fu_592"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_99_fu_608"},
			{"State" : "ap_ST_fsm_state28", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5133_fu_624"},
			{"State" : "ap_ST_fsm_state42", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5133_fu_624"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_637"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_637"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashFinal_fu_652"},
			{"State" : "ap_ST_fsm_state44", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashFinal_fu_652"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashInitializ_fu_667"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashInitializ_fu_667"}],
		"Port" : [
			{"Name" : "seed_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_Keccak_HashUpdate_99_fu_608", "Port" : "data_0"}]},
			{"Name" : "seed_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "view_inputShare", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "view_inputShare_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "view_communicatedBits", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_Keccak_HashUpdate_4_fu_577", "Port" : "data"}]},
			{"Name" : "view_communicatedBits_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "view_outputShare", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "view_outputShare_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "hash", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_Keccak_HashUpdate_8_fu_592", "Port" : "data"},
					{"ID" : "4", "SubInstance" : "grp_Keccak_HashSqueeze_3_fu_558", "Port" : "data"}]},
			{"Name" : "hash_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "hash_offset3", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_Keccak_HashUpdate_4_fu_577", "Port" : "KeccakRhoOffsets"},
					{"ID" : "69", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_637", "Port" : "KeccakRhoOffsets"},
					{"ID" : "30", "SubInstance" : "grp_Keccak_HashUpdate_8_fu_592", "Port" : "KeccakRhoOffsets"},
					{"ID" : "56", "SubInstance" : "grp_Keccak_HashUpdate_5133_fu_624", "Port" : "KeccakRhoOffsets"},
					{"ID" : "43", "SubInstance" : "grp_Keccak_HashUpdate_99_fu_608", "Port" : "KeccakRhoOffsets"},
					{"ID" : "4", "SubInstance" : "grp_Keccak_HashSqueeze_3_fu_558", "Port" : "KeccakRhoOffsets"},
					{"ID" : "82", "SubInstance" : "grp_Keccak_HashFinal_fu_652", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_Keccak_HashUpdate_4_fu_577", "Port" : "KeccakRoundConstants"},
					{"ID" : "69", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_637", "Port" : "KeccakRoundConstants"},
					{"ID" : "30", "SubInstance" : "grp_Keccak_HashUpdate_8_fu_592", "Port" : "KeccakRoundConstants"},
					{"ID" : "56", "SubInstance" : "grp_Keccak_HashUpdate_5133_fu_624", "Port" : "KeccakRoundConstants"},
					{"ID" : "43", "SubInstance" : "grp_Keccak_HashUpdate_99_fu_608", "Port" : "KeccakRoundConstants"},
					{"ID" : "4", "SubInstance" : "grp_Keccak_HashSqueeze_3_fu_558", "Port" : "KeccakRoundConstants"},
					{"ID" : "82", "SubInstance" : "grp_Keccak_HashFinal_fu_652", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_3_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctx_sponge_state_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_3_fu_558", "Parent" : "0", "Child" : ["5"],
		"CDFG" : "Keccak_HashSqueeze_3",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_286"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_286"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_286"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_286", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_286", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_286", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_3_fu_558.grp_KeccakP1600_Permute_s_fu_286", "Parent" : "4", "Child" : ["6", "7", "8", "9", "12", "14"],
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
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_3_fu_558.grp_KeccakP1600_Permute_s_fu_286.KeccakRhoOffsets_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_3_fu_558.grp_KeccakP1600_Permute_s_fu_286.KeccakRoundConstants_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_3_fu_558.grp_KeccakP1600_Permute_s_fu_286.stateAsWords_U", "Parent" : "5"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_3_fu_558.grp_KeccakP1600_Permute_s_fu_286.grp_theta_fu_225", "Parent" : "5", "Child" : ["10", "11"],
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
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_3_fu_558.grp_KeccakP1600_Permute_s_fu_286.grp_theta_fu_225.C_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_3_fu_558.grp_KeccakP1600_Permute_s_fu_286.grp_theta_fu_225.D_U", "Parent" : "9"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_3_fu_558.grp_KeccakP1600_Permute_s_fu_286.grp_chi_fu_230", "Parent" : "5", "Child" : ["13"],
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
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_3_fu_558.grp_KeccakP1600_Permute_s_fu_286.grp_chi_fu_230.C_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_3_fu_558.grp_KeccakP1600_Permute_s_fu_286.grp_pi_fu_235", "Parent" : "5", "Child" : ["15", "16"],
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
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_3_fu_558.grp_KeccakP1600_Permute_s_fu_286.grp_pi_fu_235.tempA_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_3_fu_558.grp_KeccakP1600_Permute_s_fu_286.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "14"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_4_fu_577", "Parent" : "0", "Child" : ["18"],
		"CDFG" : "Keccak_HashUpdate_4",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_187"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_187"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_187", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_187", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_187", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_4_fu_577.grp_KeccakP1600_Permute_s_fu_187", "Parent" : "17", "Child" : ["19", "20", "21", "22", "25", "27"],
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
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_4_fu_577.grp_KeccakP1600_Permute_s_fu_187.KeccakRhoOffsets_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_4_fu_577.grp_KeccakP1600_Permute_s_fu_187.KeccakRoundConstants_U", "Parent" : "18"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_4_fu_577.grp_KeccakP1600_Permute_s_fu_187.stateAsWords_U", "Parent" : "18"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_4_fu_577.grp_KeccakP1600_Permute_s_fu_187.grp_theta_fu_225", "Parent" : "18", "Child" : ["23", "24"],
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
	{"ID" : "23", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_4_fu_577.grp_KeccakP1600_Permute_s_fu_187.grp_theta_fu_225.C_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_4_fu_577.grp_KeccakP1600_Permute_s_fu_187.grp_theta_fu_225.D_U", "Parent" : "22"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_4_fu_577.grp_KeccakP1600_Permute_s_fu_187.grp_chi_fu_230", "Parent" : "18", "Child" : ["26"],
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
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_4_fu_577.grp_KeccakP1600_Permute_s_fu_187.grp_chi_fu_230.C_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_4_fu_577.grp_KeccakP1600_Permute_s_fu_187.grp_pi_fu_235", "Parent" : "18", "Child" : ["28", "29"],
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
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_4_fu_577.grp_KeccakP1600_Permute_s_fu_187.grp_pi_fu_235.tempA_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_4_fu_577.grp_KeccakP1600_Permute_s_fu_187.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "27"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_592", "Parent" : "0", "Child" : ["31"],
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
					{"ID" : "31", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_211", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_211", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_211", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_592.grp_KeccakP1600_Permute_s_fu_211", "Parent" : "30", "Child" : ["32", "33", "34", "35", "38", "40"],
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
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_592.grp_KeccakP1600_Permute_s_fu_211.KeccakRhoOffsets_U", "Parent" : "31"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_592.grp_KeccakP1600_Permute_s_fu_211.KeccakRoundConstants_U", "Parent" : "31"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_592.grp_KeccakP1600_Permute_s_fu_211.stateAsWords_U", "Parent" : "31"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_592.grp_KeccakP1600_Permute_s_fu_211.grp_theta_fu_225", "Parent" : "31", "Child" : ["36", "37"],
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
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_592.grp_KeccakP1600_Permute_s_fu_211.grp_theta_fu_225.C_U", "Parent" : "35"},
	{"ID" : "37", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_592.grp_KeccakP1600_Permute_s_fu_211.grp_theta_fu_225.D_U", "Parent" : "35"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_592.grp_KeccakP1600_Permute_s_fu_211.grp_chi_fu_230", "Parent" : "31", "Child" : ["39"],
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
	{"ID" : "39", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_592.grp_KeccakP1600_Permute_s_fu_211.grp_chi_fu_230.C_U", "Parent" : "38"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_592.grp_KeccakP1600_Permute_s_fu_211.grp_pi_fu_235", "Parent" : "31", "Child" : ["41", "42"],
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
	{"ID" : "41", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_592.grp_KeccakP1600_Permute_s_fu_211.grp_pi_fu_235.tempA_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_592.grp_KeccakP1600_Permute_s_fu_211.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "40"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_99_fu_608", "Parent" : "0", "Child" : ["44"],
		"CDFG" : "Keccak_HashUpdate_99",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_99_fu_608.grp_KeccakP1600_Permute_s_fu_197", "Parent" : "43", "Child" : ["45", "46", "47", "48", "51", "53"],
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
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_99_fu_608.grp_KeccakP1600_Permute_s_fu_197.KeccakRhoOffsets_U", "Parent" : "44"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_99_fu_608.grp_KeccakP1600_Permute_s_fu_197.KeccakRoundConstants_U", "Parent" : "44"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_99_fu_608.grp_KeccakP1600_Permute_s_fu_197.stateAsWords_U", "Parent" : "44"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_99_fu_608.grp_KeccakP1600_Permute_s_fu_197.grp_theta_fu_225", "Parent" : "44", "Child" : ["49", "50"],
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
	{"ID" : "49", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_99_fu_608.grp_KeccakP1600_Permute_s_fu_197.grp_theta_fu_225.C_U", "Parent" : "48"},
	{"ID" : "50", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_99_fu_608.grp_KeccakP1600_Permute_s_fu_197.grp_theta_fu_225.D_U", "Parent" : "48"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_99_fu_608.grp_KeccakP1600_Permute_s_fu_197.grp_chi_fu_230", "Parent" : "44", "Child" : ["52"],
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
	{"ID" : "52", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_99_fu_608.grp_KeccakP1600_Permute_s_fu_197.grp_chi_fu_230.C_U", "Parent" : "51"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_99_fu_608.grp_KeccakP1600_Permute_s_fu_197.grp_pi_fu_235", "Parent" : "44", "Child" : ["54", "55"],
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
	{"ID" : "54", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_99_fu_608.grp_KeccakP1600_Permute_s_fu_197.grp_pi_fu_235.tempA_U", "Parent" : "53"},
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_99_fu_608.grp_KeccakP1600_Permute_s_fu_197.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "53"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_624", "Parent" : "0", "Child" : ["57"],
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
					{"ID" : "57", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_624.grp_KeccakP1600_Permute_s_fu_183", "Parent" : "56", "Child" : ["58", "59", "60", "61", "64", "66"],
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
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_624.grp_KeccakP1600_Permute_s_fu_183.KeccakRhoOffsets_U", "Parent" : "57"},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_624.grp_KeccakP1600_Permute_s_fu_183.KeccakRoundConstants_U", "Parent" : "57"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_624.grp_KeccakP1600_Permute_s_fu_183.stateAsWords_U", "Parent" : "57"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_624.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225", "Parent" : "57", "Child" : ["62", "63"],
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
	{"ID" : "62", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_624.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225.C_U", "Parent" : "61"},
	{"ID" : "63", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_624.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225.D_U", "Parent" : "61"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_624.grp_KeccakP1600_Permute_s_fu_183.grp_chi_fu_230", "Parent" : "57", "Child" : ["65"],
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
	{"ID" : "65", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_624.grp_KeccakP1600_Permute_s_fu_183.grp_chi_fu_230.C_U", "Parent" : "64"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_624.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235", "Parent" : "57", "Child" : ["67", "68"],
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
	{"ID" : "67", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_624.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235.tempA_U", "Parent" : "66"},
	{"ID" : "68", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_624.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "66"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_637", "Parent" : "0", "Child" : ["70"],
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
					{"ID" : "70", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_637.grp_KeccakP1600_Permute_s_fu_162", "Parent" : "69", "Child" : ["71", "72", "73", "74", "77", "79"],
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
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_637.grp_KeccakP1600_Permute_s_fu_162.KeccakRhoOffsets_U", "Parent" : "70"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_637.grp_KeccakP1600_Permute_s_fu_162.KeccakRoundConstants_U", "Parent" : "70"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_637.grp_KeccakP1600_Permute_s_fu_162.stateAsWords_U", "Parent" : "70"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_637.grp_KeccakP1600_Permute_s_fu_162.grp_theta_fu_225", "Parent" : "70", "Child" : ["75", "76"],
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
	{"ID" : "75", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_637.grp_KeccakP1600_Permute_s_fu_162.grp_theta_fu_225.C_U", "Parent" : "74"},
	{"ID" : "76", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_637.grp_KeccakP1600_Permute_s_fu_162.grp_theta_fu_225.D_U", "Parent" : "74"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_637.grp_KeccakP1600_Permute_s_fu_162.grp_chi_fu_230", "Parent" : "70", "Child" : ["78"],
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
	{"ID" : "78", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_637.grp_KeccakP1600_Permute_s_fu_162.grp_chi_fu_230.C_U", "Parent" : "77"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_637.grp_KeccakP1600_Permute_s_fu_162.grp_pi_fu_235", "Parent" : "70", "Child" : ["80", "81"],
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
	{"ID" : "80", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_637.grp_KeccakP1600_Permute_s_fu_162.grp_pi_fu_235.tempA_U", "Parent" : "79"},
	{"ID" : "81", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_637.grp_KeccakP1600_Permute_s_fu_162.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "79"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_652", "Parent" : "0", "Child" : ["83"],
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
					{"ID" : "83", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_delimitedSu", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_652.grp_KeccakP1600_Permute_s_fu_124", "Parent" : "82", "Child" : ["84", "85", "86", "87", "90", "92"],
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
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_652.grp_KeccakP1600_Permute_s_fu_124.KeccakRhoOffsets_U", "Parent" : "83"},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_652.grp_KeccakP1600_Permute_s_fu_124.KeccakRoundConstants_U", "Parent" : "83"},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_652.grp_KeccakP1600_Permute_s_fu_124.stateAsWords_U", "Parent" : "83"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_652.grp_KeccakP1600_Permute_s_fu_124.grp_theta_fu_225", "Parent" : "83", "Child" : ["88", "89"],
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
	{"ID" : "88", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_652.grp_KeccakP1600_Permute_s_fu_124.grp_theta_fu_225.C_U", "Parent" : "87"},
	{"ID" : "89", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_652.grp_KeccakP1600_Permute_s_fu_124.grp_theta_fu_225.D_U", "Parent" : "87"},
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_652.grp_KeccakP1600_Permute_s_fu_124.grp_chi_fu_230", "Parent" : "83", "Child" : ["91"],
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
	{"ID" : "91", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_652.grp_KeccakP1600_Permute_s_fu_124.grp_chi_fu_230.C_U", "Parent" : "90"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_652.grp_KeccakP1600_Permute_s_fu_124.grp_pi_fu_235", "Parent" : "83", "Child" : ["93", "94"],
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
	{"ID" : "93", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_652.grp_KeccakP1600_Permute_s_fu_124.grp_pi_fu_235.tempA_U", "Parent" : "92"},
	{"ID" : "94", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_652.grp_KeccakP1600_Permute_s_fu_124.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "92"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashInitializ_fu_667", "Parent" : "0",
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
	Commit_23 {
		seed_0 {Type I LastRead 4 FirstWrite -1}
		seed_offset1 {Type I LastRead 4 FirstWrite -1}
		view_inputShare {Type I LastRead 18 FirstWrite -1}
		view_inputShare_offset {Type I LastRead 15 FirstWrite -1}
		view_communicatedBits {Type I LastRead 4 FirstWrite -1}
		view_communicatedBits_offset {Type I LastRead 15 FirstWrite -1}
		view_outputShare {Type I LastRead 25 FirstWrite -1}
		view_outputShare_offset {Type I LastRead 15 FirstWrite -1}
		hash {Type IO LastRead 4 FirstWrite -1}
		hash_offset {Type I LastRead 8 FirstWrite -1}
		hash_offset3 {Type I LastRead 8 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	Keccak_HashSqueeze_3 {
		instance_sponge_stat {Type IO LastRead 10 FirstWrite 1}
		instance_sponge_rate {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque_13 {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque {Type I LastRead 0 FirstWrite -1}
		data {Type O LastRead -1 FirstWrite 10}
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
	Keccak_HashUpdate_4 {
		instance_sponge_stat {Type IO LastRead 4 FirstWrite 4}
		instance_sponge_rate {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byte {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 4 FirstWrite -1}
		data_offset {Type I LastRead 0 FirstWrite -1}
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
	Keccak_HashUpdate_99 {
		instance_sponge_stat {Type IO LastRead 4 FirstWrite 4}
		instance_sponge_rate {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byte {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque {Type I LastRead 0 FirstWrite -1}
		data_0 {Type I LastRead 4 FirstWrite -1}
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
	seed_0 { ap_memory {  { seed_0_address0 mem_address 1 12 }  { seed_0_ce0 mem_ce 1 1 }  { seed_0_q0 mem_dout 0 8 } } }
	seed_offset1 { ap_none {  { seed_offset1 in_data 0 8 } } }
	view_inputShare { ap_memory {  { view_inputShare_address0 mem_address 1 10 }  { view_inputShare_ce0 mem_ce 1 1 }  { view_inputShare_q0 mem_dout 0 32 }  { view_inputShare_address1 mem_address 1 10 }  { view_inputShare_ce1 mem_ce 1 1 }  { view_inputShare_q1 mem_dout 0 32 } } }
	view_inputShare_offset { ap_none {  { view_inputShare_offset in_data 0 8 } } }
	view_communicatedBits { ap_memory {  { view_communicatedBits_address0 mem_address 1 15 }  { view_communicatedBits_ce0 mem_ce 1 1 }  { view_communicatedBits_q0 mem_dout 0 8 } } }
	view_communicatedBits_offset { ap_none {  { view_communicatedBits_offset in_data 0 8 } } }
	view_outputShare { ap_memory {  { view_outputShare_address0 mem_address 1 10 }  { view_outputShare_ce0 mem_ce 1 1 }  { view_outputShare_q0 mem_dout 0 32 }  { view_outputShare_address1 mem_address 1 10 }  { view_outputShare_ce1 mem_ce 1 1 }  { view_outputShare_q1 mem_dout 0 32 } } }
	view_outputShare_offset { ap_none {  { view_outputShare_offset in_data 0 8 } } }
	hash { ap_memory {  { hash_address0 mem_address 1 15 }  { hash_ce0 mem_ce 1 1 }  { hash_we0 mem_we 1 1 }  { hash_d0 mem_din 1 8 }  { hash_q0 mem_dout 0 8 } } }
	hash_offset { ap_none {  { hash_offset in_data 0 8 } } }
	hash_offset3 { ap_none {  { hash_offset3 in_data 0 2 } } }
}
set moduleName Commit_23
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
set C_modelName {Commit_23}
set C_modelType { void 0 }
set C_modelArgList {
	{ seed_0 int 8 regular {array 3504 { 1 3 } 1 1 }  }
	{ seed_offset1 int 8 regular  }
	{ view_inputShare int 32 regular {array 876 { 1 3 } 1 1 }  }
	{ view_inputShare_offset int 8 regular  }
	{ view_communicatedBits int 8 regular {array 16425 { 1 3 } 1 1 }  }
	{ view_communicatedBits_offset int 8 regular  }
	{ view_outputShare int 32 regular {array 876 { 1 3 } 1 1 }  }
	{ view_outputShare_offset int 8 regular  }
	{ hash int 8 regular {array 21024 { 2 3 } 1 1 }  }
	{ hash_offset int 8 regular  }
	{ hash_offset3 int 2 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seed_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "seed_offset1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "view_inputShare", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "view_inputShare_offset", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "view_communicatedBits", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "view_communicatedBits_offset", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "view_outputShare", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "view_outputShare_offset", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "hash", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "hash_offset", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "hash_offset3", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seed_0_address0 sc_out sc_lv 12 signal 0 } 
	{ seed_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ seed_0_q0 sc_in sc_lv 8 signal 0 } 
	{ seed_offset1 sc_in sc_lv 8 signal 1 } 
	{ view_inputShare_address0 sc_out sc_lv 10 signal 2 } 
	{ view_inputShare_ce0 sc_out sc_logic 1 signal 2 } 
	{ view_inputShare_q0 sc_in sc_lv 32 signal 2 } 
	{ view_inputShare_offset sc_in sc_lv 8 signal 3 } 
	{ view_communicatedBits_address0 sc_out sc_lv 15 signal 4 } 
	{ view_communicatedBits_ce0 sc_out sc_logic 1 signal 4 } 
	{ view_communicatedBits_q0 sc_in sc_lv 8 signal 4 } 
	{ view_communicatedBits_offset sc_in sc_lv 8 signal 5 } 
	{ view_outputShare_address0 sc_out sc_lv 10 signal 6 } 
	{ view_outputShare_ce0 sc_out sc_logic 1 signal 6 } 
	{ view_outputShare_q0 sc_in sc_lv 32 signal 6 } 
	{ view_outputShare_offset sc_in sc_lv 8 signal 7 } 
	{ hash_address0 sc_out sc_lv 15 signal 8 } 
	{ hash_ce0 sc_out sc_logic 1 signal 8 } 
	{ hash_we0 sc_out sc_logic 1 signal 8 } 
	{ hash_d0 sc_out sc_lv 8 signal 8 } 
	{ hash_q0 sc_in sc_lv 8 signal 8 } 
	{ hash_offset sc_in sc_lv 8 signal 9 } 
	{ hash_offset3 sc_in sc_lv 2 signal 10 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seed_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "seed_0", "role": "address0" }} , 
 	{ "name": "seed_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seed_0", "role": "ce0" }} , 
 	{ "name": "seed_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seed_0", "role": "q0" }} , 
 	{ "name": "seed_offset1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seed_offset1", "role": "default" }} , 
 	{ "name": "view_inputShare_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "view_inputShare", "role": "address0" }} , 
 	{ "name": "view_inputShare_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view_inputShare", "role": "ce0" }} , 
 	{ "name": "view_inputShare_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "view_inputShare", "role": "q0" }} , 
 	{ "name": "view_inputShare_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "view_inputShare_offset", "role": "default" }} , 
 	{ "name": "view_communicatedBits_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "view_communicatedBits", "role": "address0" }} , 
 	{ "name": "view_communicatedBits_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view_communicatedBits", "role": "ce0" }} , 
 	{ "name": "view_communicatedBits_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "view_communicatedBits", "role": "q0" }} , 
 	{ "name": "view_communicatedBits_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "view_communicatedBits_offset", "role": "default" }} , 
 	{ "name": "view_outputShare_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "view_outputShare", "role": "address0" }} , 
 	{ "name": "view_outputShare_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view_outputShare", "role": "ce0" }} , 
 	{ "name": "view_outputShare_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "view_outputShare", "role": "q0" }} , 
 	{ "name": "view_outputShare_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "view_outputShare_offset", "role": "default" }} , 
 	{ "name": "hash_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "hash", "role": "address0" }} , 
 	{ "name": "hash_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "ce0" }} , 
 	{ "name": "hash_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "we0" }} , 
 	{ "name": "hash_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hash", "role": "d0" }} , 
 	{ "name": "hash_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hash", "role": "q0" }} , 
 	{ "name": "hash_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hash_offset", "role": "default" }} , 
 	{ "name": "hash_offset3", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hash_offset3", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "17", "30", "43", "56", "69", "82", "95"],
		"CDFG" : "Commit_23",
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
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_3_fu_558"},
			{"State" : "ap_ST_fsm_state44", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_3_fu_558"},
			{"State" : "ap_ST_fsm_state29", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_4_fu_577"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_8_fu_592"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_99_fu_608"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5133_fu_624"},
			{"State" : "ap_ST_fsm_state40", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5133_fu_624"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_637"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_637"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashFinal_fu_652"},
			{"State" : "ap_ST_fsm_state42", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashFinal_fu_652"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashInitializ_fu_667"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashInitializ_fu_667"}],
		"Port" : [
			{"Name" : "seed_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_Keccak_HashUpdate_99_fu_608", "Port" : "data_0"}]},
			{"Name" : "seed_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "view_inputShare", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "view_inputShare_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "view_communicatedBits", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_Keccak_HashUpdate_4_fu_577", "Port" : "data"}]},
			{"Name" : "view_communicatedBits_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "view_outputShare", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "view_outputShare_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "hash", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_Keccak_HashUpdate_8_fu_592", "Port" : "data"},
					{"ID" : "4", "SubInstance" : "grp_Keccak_HashSqueeze_3_fu_558", "Port" : "data"}]},
			{"Name" : "hash_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "hash_offset3", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "grp_Keccak_HashFinal_fu_652", "Port" : "KeccakRhoOffsets"},
					{"ID" : "17", "SubInstance" : "grp_Keccak_HashUpdate_4_fu_577", "Port" : "KeccakRhoOffsets"},
					{"ID" : "56", "SubInstance" : "grp_Keccak_HashUpdate_5133_fu_624", "Port" : "KeccakRhoOffsets"},
					{"ID" : "69", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_637", "Port" : "KeccakRhoOffsets"},
					{"ID" : "30", "SubInstance" : "grp_Keccak_HashUpdate_8_fu_592", "Port" : "KeccakRhoOffsets"},
					{"ID" : "43", "SubInstance" : "grp_Keccak_HashUpdate_99_fu_608", "Port" : "KeccakRhoOffsets"},
					{"ID" : "4", "SubInstance" : "grp_Keccak_HashSqueeze_3_fu_558", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "grp_Keccak_HashFinal_fu_652", "Port" : "KeccakRoundConstants"},
					{"ID" : "17", "SubInstance" : "grp_Keccak_HashUpdate_4_fu_577", "Port" : "KeccakRoundConstants"},
					{"ID" : "56", "SubInstance" : "grp_Keccak_HashUpdate_5133_fu_624", "Port" : "KeccakRoundConstants"},
					{"ID" : "69", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_637", "Port" : "KeccakRoundConstants"},
					{"ID" : "30", "SubInstance" : "grp_Keccak_HashUpdate_8_fu_592", "Port" : "KeccakRoundConstants"},
					{"ID" : "43", "SubInstance" : "grp_Keccak_HashUpdate_99_fu_608", "Port" : "KeccakRoundConstants"},
					{"ID" : "4", "SubInstance" : "grp_Keccak_HashSqueeze_3_fu_558", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_3_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctx_sponge_state_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_3_fu_558", "Parent" : "0", "Child" : ["5"],
		"CDFG" : "Keccak_HashSqueeze_3",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_286"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_286"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_286"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_286", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_286", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_286", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_3_fu_558.grp_KeccakP1600_Permute_s_fu_286", "Parent" : "4", "Child" : ["6", "7", "8", "9", "12", "14"],
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
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_3_fu_558.grp_KeccakP1600_Permute_s_fu_286.KeccakRhoOffsets_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_3_fu_558.grp_KeccakP1600_Permute_s_fu_286.KeccakRoundConstants_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_3_fu_558.grp_KeccakP1600_Permute_s_fu_286.stateAsWords_U", "Parent" : "5"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_3_fu_558.grp_KeccakP1600_Permute_s_fu_286.grp_theta_fu_225", "Parent" : "5", "Child" : ["10", "11"],
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
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_3_fu_558.grp_KeccakP1600_Permute_s_fu_286.grp_theta_fu_225.C_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_3_fu_558.grp_KeccakP1600_Permute_s_fu_286.grp_theta_fu_225.D_U", "Parent" : "9"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_3_fu_558.grp_KeccakP1600_Permute_s_fu_286.grp_chi_fu_230", "Parent" : "5", "Child" : ["13"],
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
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_3_fu_558.grp_KeccakP1600_Permute_s_fu_286.grp_chi_fu_230.C_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_3_fu_558.grp_KeccakP1600_Permute_s_fu_286.grp_pi_fu_235", "Parent" : "5", "Child" : ["15", "16"],
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
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_3_fu_558.grp_KeccakP1600_Permute_s_fu_286.grp_pi_fu_235.tempA_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_3_fu_558.grp_KeccakP1600_Permute_s_fu_286.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "14"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_4_fu_577", "Parent" : "0", "Child" : ["18"],
		"CDFG" : "Keccak_HashUpdate_4",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_187"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_187"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_187", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_187", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_187", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_4_fu_577.grp_KeccakP1600_Permute_s_fu_187", "Parent" : "17", "Child" : ["19", "20", "21", "22", "25", "27"],
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
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_4_fu_577.grp_KeccakP1600_Permute_s_fu_187.KeccakRhoOffsets_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_4_fu_577.grp_KeccakP1600_Permute_s_fu_187.KeccakRoundConstants_U", "Parent" : "18"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_4_fu_577.grp_KeccakP1600_Permute_s_fu_187.stateAsWords_U", "Parent" : "18"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_4_fu_577.grp_KeccakP1600_Permute_s_fu_187.grp_theta_fu_225", "Parent" : "18", "Child" : ["23", "24"],
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
	{"ID" : "23", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_4_fu_577.grp_KeccakP1600_Permute_s_fu_187.grp_theta_fu_225.C_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_4_fu_577.grp_KeccakP1600_Permute_s_fu_187.grp_theta_fu_225.D_U", "Parent" : "22"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_4_fu_577.grp_KeccakP1600_Permute_s_fu_187.grp_chi_fu_230", "Parent" : "18", "Child" : ["26"],
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
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_4_fu_577.grp_KeccakP1600_Permute_s_fu_187.grp_chi_fu_230.C_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_4_fu_577.grp_KeccakP1600_Permute_s_fu_187.grp_pi_fu_235", "Parent" : "18", "Child" : ["28", "29"],
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
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_4_fu_577.grp_KeccakP1600_Permute_s_fu_187.grp_pi_fu_235.tempA_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_4_fu_577.grp_KeccakP1600_Permute_s_fu_187.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "27"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_592", "Parent" : "0", "Child" : ["31"],
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
					{"ID" : "31", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_211", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_211", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_211", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_592.grp_KeccakP1600_Permute_s_fu_211", "Parent" : "30", "Child" : ["32", "33", "34", "35", "38", "40"],
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
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_592.grp_KeccakP1600_Permute_s_fu_211.KeccakRhoOffsets_U", "Parent" : "31"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_592.grp_KeccakP1600_Permute_s_fu_211.KeccakRoundConstants_U", "Parent" : "31"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_592.grp_KeccakP1600_Permute_s_fu_211.stateAsWords_U", "Parent" : "31"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_592.grp_KeccakP1600_Permute_s_fu_211.grp_theta_fu_225", "Parent" : "31", "Child" : ["36", "37"],
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
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_592.grp_KeccakP1600_Permute_s_fu_211.grp_theta_fu_225.C_U", "Parent" : "35"},
	{"ID" : "37", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_592.grp_KeccakP1600_Permute_s_fu_211.grp_theta_fu_225.D_U", "Parent" : "35"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_592.grp_KeccakP1600_Permute_s_fu_211.grp_chi_fu_230", "Parent" : "31", "Child" : ["39"],
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
	{"ID" : "39", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_592.grp_KeccakP1600_Permute_s_fu_211.grp_chi_fu_230.C_U", "Parent" : "38"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_592.grp_KeccakP1600_Permute_s_fu_211.grp_pi_fu_235", "Parent" : "31", "Child" : ["41", "42"],
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
	{"ID" : "41", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_592.grp_KeccakP1600_Permute_s_fu_211.grp_pi_fu_235.tempA_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_592.grp_KeccakP1600_Permute_s_fu_211.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "40"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_99_fu_608", "Parent" : "0", "Child" : ["44"],
		"CDFG" : "Keccak_HashUpdate_99",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_99_fu_608.grp_KeccakP1600_Permute_s_fu_197", "Parent" : "43", "Child" : ["45", "46", "47", "48", "51", "53"],
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
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_99_fu_608.grp_KeccakP1600_Permute_s_fu_197.KeccakRhoOffsets_U", "Parent" : "44"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_99_fu_608.grp_KeccakP1600_Permute_s_fu_197.KeccakRoundConstants_U", "Parent" : "44"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_99_fu_608.grp_KeccakP1600_Permute_s_fu_197.stateAsWords_U", "Parent" : "44"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_99_fu_608.grp_KeccakP1600_Permute_s_fu_197.grp_theta_fu_225", "Parent" : "44", "Child" : ["49", "50"],
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
	{"ID" : "49", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_99_fu_608.grp_KeccakP1600_Permute_s_fu_197.grp_theta_fu_225.C_U", "Parent" : "48"},
	{"ID" : "50", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_99_fu_608.grp_KeccakP1600_Permute_s_fu_197.grp_theta_fu_225.D_U", "Parent" : "48"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_99_fu_608.grp_KeccakP1600_Permute_s_fu_197.grp_chi_fu_230", "Parent" : "44", "Child" : ["52"],
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
	{"ID" : "52", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_99_fu_608.grp_KeccakP1600_Permute_s_fu_197.grp_chi_fu_230.C_U", "Parent" : "51"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_99_fu_608.grp_KeccakP1600_Permute_s_fu_197.grp_pi_fu_235", "Parent" : "44", "Child" : ["54", "55"],
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
	{"ID" : "54", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_99_fu_608.grp_KeccakP1600_Permute_s_fu_197.grp_pi_fu_235.tempA_U", "Parent" : "53"},
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_99_fu_608.grp_KeccakP1600_Permute_s_fu_197.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "53"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_624", "Parent" : "0", "Child" : ["57"],
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
					{"ID" : "57", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_624.grp_KeccakP1600_Permute_s_fu_183", "Parent" : "56", "Child" : ["58", "59", "60", "61", "64", "66"],
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
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_624.grp_KeccakP1600_Permute_s_fu_183.KeccakRhoOffsets_U", "Parent" : "57"},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_624.grp_KeccakP1600_Permute_s_fu_183.KeccakRoundConstants_U", "Parent" : "57"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_624.grp_KeccakP1600_Permute_s_fu_183.stateAsWords_U", "Parent" : "57"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_624.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225", "Parent" : "57", "Child" : ["62", "63"],
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
	{"ID" : "62", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_624.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225.C_U", "Parent" : "61"},
	{"ID" : "63", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_624.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225.D_U", "Parent" : "61"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_624.grp_KeccakP1600_Permute_s_fu_183.grp_chi_fu_230", "Parent" : "57", "Child" : ["65"],
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
	{"ID" : "65", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_624.grp_KeccakP1600_Permute_s_fu_183.grp_chi_fu_230.C_U", "Parent" : "64"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_624.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235", "Parent" : "57", "Child" : ["67", "68"],
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
	{"ID" : "67", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_624.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235.tempA_U", "Parent" : "66"},
	{"ID" : "68", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5133_fu_624.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "66"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_637", "Parent" : "0", "Child" : ["70"],
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
					{"ID" : "70", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_637.grp_KeccakP1600_Permute_s_fu_162", "Parent" : "69", "Child" : ["71", "72", "73", "74", "77", "79"],
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
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_637.grp_KeccakP1600_Permute_s_fu_162.KeccakRhoOffsets_U", "Parent" : "70"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_637.grp_KeccakP1600_Permute_s_fu_162.KeccakRoundConstants_U", "Parent" : "70"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_637.grp_KeccakP1600_Permute_s_fu_162.stateAsWords_U", "Parent" : "70"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_637.grp_KeccakP1600_Permute_s_fu_162.grp_theta_fu_225", "Parent" : "70", "Child" : ["75", "76"],
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
	{"ID" : "75", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_637.grp_KeccakP1600_Permute_s_fu_162.grp_theta_fu_225.C_U", "Parent" : "74"},
	{"ID" : "76", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_637.grp_KeccakP1600_Permute_s_fu_162.grp_theta_fu_225.D_U", "Parent" : "74"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_637.grp_KeccakP1600_Permute_s_fu_162.grp_chi_fu_230", "Parent" : "70", "Child" : ["78"],
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
	{"ID" : "78", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_637.grp_KeccakP1600_Permute_s_fu_162.grp_chi_fu_230.C_U", "Parent" : "77"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_637.grp_KeccakP1600_Permute_s_fu_162.grp_pi_fu_235", "Parent" : "70", "Child" : ["80", "81"],
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
	{"ID" : "80", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_637.grp_KeccakP1600_Permute_s_fu_162.grp_pi_fu_235.tempA_U", "Parent" : "79"},
	{"ID" : "81", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_637.grp_KeccakP1600_Permute_s_fu_162.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "79"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_652", "Parent" : "0", "Child" : ["83"],
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
					{"ID" : "83", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_delimitedSu", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_652.grp_KeccakP1600_Permute_s_fu_124", "Parent" : "82", "Child" : ["84", "85", "86", "87", "90", "92"],
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
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_652.grp_KeccakP1600_Permute_s_fu_124.KeccakRhoOffsets_U", "Parent" : "83"},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_652.grp_KeccakP1600_Permute_s_fu_124.KeccakRoundConstants_U", "Parent" : "83"},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_652.grp_KeccakP1600_Permute_s_fu_124.stateAsWords_U", "Parent" : "83"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_652.grp_KeccakP1600_Permute_s_fu_124.grp_theta_fu_225", "Parent" : "83", "Child" : ["88", "89"],
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
	{"ID" : "88", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_652.grp_KeccakP1600_Permute_s_fu_124.grp_theta_fu_225.C_U", "Parent" : "87"},
	{"ID" : "89", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_652.grp_KeccakP1600_Permute_s_fu_124.grp_theta_fu_225.D_U", "Parent" : "87"},
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_652.grp_KeccakP1600_Permute_s_fu_124.grp_chi_fu_230", "Parent" : "83", "Child" : ["91"],
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
	{"ID" : "91", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_652.grp_KeccakP1600_Permute_s_fu_124.grp_chi_fu_230.C_U", "Parent" : "90"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_652.grp_KeccakP1600_Permute_s_fu_124.grp_pi_fu_235", "Parent" : "83", "Child" : ["93", "94"],
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
	{"ID" : "93", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_652.grp_KeccakP1600_Permute_s_fu_124.grp_pi_fu_235.tempA_U", "Parent" : "92"},
	{"ID" : "94", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_652.grp_KeccakP1600_Permute_s_fu_124.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "92"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashInitializ_fu_667", "Parent" : "0",
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
	Commit_23 {
		seed_0 {Type I LastRead 4 FirstWrite -1}
		seed_offset1 {Type I LastRead 4 FirstWrite -1}
		view_inputShare {Type I LastRead 22 FirstWrite -1}
		view_inputShare_offset {Type I LastRead 15 FirstWrite -1}
		view_communicatedBits {Type I LastRead 4 FirstWrite -1}
		view_communicatedBits_offset {Type I LastRead 15 FirstWrite -1}
		view_outputShare {Type I LastRead 35 FirstWrite -1}
		view_outputShare_offset {Type I LastRead 15 FirstWrite -1}
		hash {Type IO LastRead 4 FirstWrite -1}
		hash_offset {Type I LastRead 8 FirstWrite -1}
		hash_offset3 {Type I LastRead 8 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	Keccak_HashSqueeze_3 {
		instance_sponge_stat {Type IO LastRead 10 FirstWrite 1}
		instance_sponge_rate {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque_13 {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque {Type I LastRead 0 FirstWrite -1}
		data {Type O LastRead -1 FirstWrite 10}
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
	Keccak_HashUpdate_4 {
		instance_sponge_stat {Type IO LastRead 4 FirstWrite 4}
		instance_sponge_rate {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byte {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 4 FirstWrite -1}
		data_offset {Type I LastRead 0 FirstWrite -1}
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
	Keccak_HashUpdate_99 {
		instance_sponge_stat {Type IO LastRead 4 FirstWrite 4}
		instance_sponge_rate {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byte {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque {Type I LastRead 0 FirstWrite -1}
		data_0 {Type I LastRead 4 FirstWrite -1}
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
	seed_0 { ap_memory {  { seed_0_address0 mem_address 1 12 }  { seed_0_ce0 mem_ce 1 1 }  { seed_0_q0 mem_dout 0 8 } } }
	seed_offset1 { ap_none {  { seed_offset1 in_data 0 8 } } }
	view_inputShare { ap_memory {  { view_inputShare_address0 mem_address 1 10 }  { view_inputShare_ce0 mem_ce 1 1 }  { view_inputShare_q0 mem_dout 0 32 } } }
	view_inputShare_offset { ap_none {  { view_inputShare_offset in_data 0 8 } } }
	view_communicatedBits { ap_memory {  { view_communicatedBits_address0 mem_address 1 15 }  { view_communicatedBits_ce0 mem_ce 1 1 }  { view_communicatedBits_q0 mem_dout 0 8 } } }
	view_communicatedBits_offset { ap_none {  { view_communicatedBits_offset in_data 0 8 } } }
	view_outputShare { ap_memory {  { view_outputShare_address0 mem_address 1 10 }  { view_outputShare_ce0 mem_ce 1 1 }  { view_outputShare_q0 mem_dout 0 32 } } }
	view_outputShare_offset { ap_none {  { view_outputShare_offset in_data 0 8 } } }
	hash { ap_memory {  { hash_address0 mem_address 1 15 }  { hash_ce0 mem_ce 1 1 }  { hash_we0 mem_we 1 1 }  { hash_d0 mem_din 1 8 }  { hash_q0 mem_dout 0 8 } } }
	hash_offset { ap_none {  { hash_offset in_data 0 8 } } }
	hash_offset3 { ap_none {  { hash_offset3 in_data 0 2 } } }
}
