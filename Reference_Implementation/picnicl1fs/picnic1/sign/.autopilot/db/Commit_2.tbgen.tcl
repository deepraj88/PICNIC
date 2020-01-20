set moduleName Commit_2
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
set C_modelName {Commit_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ seed int 8 regular {array 10512 { 1 3 } 1 1 }  }
	{ seed_offset int 8 regular  }
	{ seed_offset1 int 3 regular  }
	{ view_inputShare int 32 regular {array 2628 { 1 3 } 1 1 }  }
	{ view_inputShare_offset int 8 regular  }
	{ view_inputShare_offset3 int 3 regular  }
	{ view_communicatedBits int 8 regular {array 49275 { 1 3 } 1 1 }  }
	{ view_communicatedBits_offset int 8 regular  }
	{ view_communicatedBits_offset4 int 3 regular  }
	{ view_outputShare int 32 regular {array 2628 { 1 3 } 1 1 }  }
	{ view_outputShare_offset int 8 regular  }
	{ view_outputShare_offset5 int 3 regular  }
	{ hash int 8 regular {array 21024 { 2 3 } 1 1 }  }
	{ hash_offset int 8 regular  }
	{ hash_offset6 int 3 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seed", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "seed_offset", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "seed_offset1", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "view_inputShare", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "view_inputShare_offset", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "view_inputShare_offset3", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "view_communicatedBits", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "view_communicatedBits_offset", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "view_communicatedBits_offset4", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "view_outputShare", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "view_outputShare_offset", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "view_outputShare_offset5", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "hash", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "hash_offset", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "hash_offset6", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 33
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seed_address0 sc_out sc_lv 14 signal 0 } 
	{ seed_ce0 sc_out sc_logic 1 signal 0 } 
	{ seed_q0 sc_in sc_lv 8 signal 0 } 
	{ seed_offset sc_in sc_lv 8 signal 1 } 
	{ seed_offset1 sc_in sc_lv 3 signal 2 } 
	{ view_inputShare_address0 sc_out sc_lv 12 signal 3 } 
	{ view_inputShare_ce0 sc_out sc_logic 1 signal 3 } 
	{ view_inputShare_q0 sc_in sc_lv 32 signal 3 } 
	{ view_inputShare_offset sc_in sc_lv 8 signal 4 } 
	{ view_inputShare_offset3 sc_in sc_lv 3 signal 5 } 
	{ view_communicatedBits_address0 sc_out sc_lv 16 signal 6 } 
	{ view_communicatedBits_ce0 sc_out sc_logic 1 signal 6 } 
	{ view_communicatedBits_q0 sc_in sc_lv 8 signal 6 } 
	{ view_communicatedBits_offset sc_in sc_lv 8 signal 7 } 
	{ view_communicatedBits_offset4 sc_in sc_lv 3 signal 8 } 
	{ view_outputShare_address0 sc_out sc_lv 12 signal 9 } 
	{ view_outputShare_ce0 sc_out sc_logic 1 signal 9 } 
	{ view_outputShare_q0 sc_in sc_lv 32 signal 9 } 
	{ view_outputShare_offset sc_in sc_lv 8 signal 10 } 
	{ view_outputShare_offset5 sc_in sc_lv 3 signal 11 } 
	{ hash_address0 sc_out sc_lv 15 signal 12 } 
	{ hash_ce0 sc_out sc_logic 1 signal 12 } 
	{ hash_we0 sc_out sc_logic 1 signal 12 } 
	{ hash_d0 sc_out sc_lv 8 signal 12 } 
	{ hash_q0 sc_in sc_lv 8 signal 12 } 
	{ hash_offset sc_in sc_lv 8 signal 13 } 
	{ hash_offset6 sc_in sc_lv 3 signal 14 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seed_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "seed", "role": "address0" }} , 
 	{ "name": "seed_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seed", "role": "ce0" }} , 
 	{ "name": "seed_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seed", "role": "q0" }} , 
 	{ "name": "seed_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seed_offset", "role": "default" }} , 
 	{ "name": "seed_offset1", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "seed_offset1", "role": "default" }} , 
 	{ "name": "view_inputShare_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "view_inputShare", "role": "address0" }} , 
 	{ "name": "view_inputShare_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view_inputShare", "role": "ce0" }} , 
 	{ "name": "view_inputShare_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "view_inputShare", "role": "q0" }} , 
 	{ "name": "view_inputShare_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "view_inputShare_offset", "role": "default" }} , 
 	{ "name": "view_inputShare_offset3", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "view_inputShare_offset3", "role": "default" }} , 
 	{ "name": "view_communicatedBits_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "view_communicatedBits", "role": "address0" }} , 
 	{ "name": "view_communicatedBits_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view_communicatedBits", "role": "ce0" }} , 
 	{ "name": "view_communicatedBits_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "view_communicatedBits", "role": "q0" }} , 
 	{ "name": "view_communicatedBits_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "view_communicatedBits_offset", "role": "default" }} , 
 	{ "name": "view_communicatedBits_offset4", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "view_communicatedBits_offset4", "role": "default" }} , 
 	{ "name": "view_outputShare_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "view_outputShare", "role": "address0" }} , 
 	{ "name": "view_outputShare_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view_outputShare", "role": "ce0" }} , 
 	{ "name": "view_outputShare_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "view_outputShare", "role": "q0" }} , 
 	{ "name": "view_outputShare_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "view_outputShare_offset", "role": "default" }} , 
 	{ "name": "view_outputShare_offset5", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "view_outputShare_offset5", "role": "default" }} , 
 	{ "name": "hash_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "hash", "role": "address0" }} , 
 	{ "name": "hash_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "ce0" }} , 
 	{ "name": "hash_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "we0" }} , 
 	{ "name": "hash_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hash", "role": "d0" }} , 
 	{ "name": "hash_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hash", "role": "q0" }} , 
 	{ "name": "hash_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hash_offset", "role": "default" }} , 
 	{ "name": "hash_offset6", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "hash_offset6", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "17", "31", "44", "57", "70", "83", "96"],
		"CDFG" : "Commit_2",
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
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_5_fu_358"},
			{"State" : "ap_ST_fsm_state32", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_5_fu_358"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_fu_376"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_9_fu_392"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_7_fu_408"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_1186_fu_426"},
			{"State" : "ap_ST_fsm_state28", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_1186_fu_426"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_3_fu_439"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_3_fu_439"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashFinal_fu_454"},
			{"State" : "ap_ST_fsm_state30", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashFinal_fu_454"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashInitializ_fu_469"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashInitializ_fu_469"}],
		"Port" : [
			{"Name" : "seed", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "grp_Keccak_HashUpdate_7_fu_408", "Port" : "data"}]},
			{"Name" : "seed_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "seed_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "view_inputShare", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "view_inputShare_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "view_inputShare_offset3", "Type" : "None", "Direction" : "I"},
			{"Name" : "view_communicatedBits", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_Keccak_HashUpdate_fu_376", "Port" : "data"}]},
			{"Name" : "view_communicatedBits_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "view_communicatedBits_offset4", "Type" : "None", "Direction" : "I"},
			{"Name" : "view_outputShare", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "view_outputShare_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "view_outputShare_offset5", "Type" : "None", "Direction" : "I"},
			{"Name" : "hash", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_Keccak_HashSqueeze_5_fu_358", "Port" : "data"},
					{"ID" : "31", "SubInstance" : "grp_Keccak_HashUpdate_9_fu_392", "Port" : "data"}]},
			{"Name" : "hash_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "hash_offset6", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_Keccak_HashUpdate_1186_fu_426", "Port" : "KeccakRhoOffsets"},
					{"ID" : "17", "SubInstance" : "grp_Keccak_HashUpdate_fu_376", "Port" : "KeccakRhoOffsets"},
					{"ID" : "44", "SubInstance" : "grp_Keccak_HashUpdate_7_fu_408", "Port" : "KeccakRhoOffsets"},
					{"ID" : "70", "SubInstance" : "grp_Keccak_HashUpdate_3_fu_439", "Port" : "KeccakRhoOffsets"},
					{"ID" : "4", "SubInstance" : "grp_Keccak_HashSqueeze_5_fu_358", "Port" : "KeccakRhoOffsets"},
					{"ID" : "83", "SubInstance" : "grp_Keccak_HashFinal_fu_454", "Port" : "KeccakRhoOffsets"},
					{"ID" : "31", "SubInstance" : "grp_Keccak_HashUpdate_9_fu_392", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_Keccak_HashUpdate_1186_fu_426", "Port" : "KeccakRoundConstants"},
					{"ID" : "17", "SubInstance" : "grp_Keccak_HashUpdate_fu_376", "Port" : "KeccakRoundConstants"},
					{"ID" : "44", "SubInstance" : "grp_Keccak_HashUpdate_7_fu_408", "Port" : "KeccakRoundConstants"},
					{"ID" : "70", "SubInstance" : "grp_Keccak_HashUpdate_3_fu_439", "Port" : "KeccakRoundConstants"},
					{"ID" : "4", "SubInstance" : "grp_Keccak_HashSqueeze_5_fu_358", "Port" : "KeccakRoundConstants"},
					{"ID" : "83", "SubInstance" : "grp_Keccak_HashFinal_fu_454", "Port" : "KeccakRoundConstants"},
					{"ID" : "31", "SubInstance" : "grp_Keccak_HashUpdate_9_fu_392", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_5_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctx_sponge_state_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_5_fu_358", "Parent" : "0", "Child" : ["5"],
		"CDFG" : "Keccak_HashSqueeze_5",
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
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_5_fu_358.grp_KeccakP1600_Permute_s_fu_286", "Parent" : "4", "Child" : ["6", "7", "8", "9", "12", "14"],
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
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_5_fu_358.grp_KeccakP1600_Permute_s_fu_286.KeccakRhoOffsets_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_5_fu_358.grp_KeccakP1600_Permute_s_fu_286.KeccakRoundConstants_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_5_fu_358.grp_KeccakP1600_Permute_s_fu_286.stateAsWords_U", "Parent" : "5"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_5_fu_358.grp_KeccakP1600_Permute_s_fu_286.grp_theta_fu_225", "Parent" : "5", "Child" : ["10", "11"],
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
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_5_fu_358.grp_KeccakP1600_Permute_s_fu_286.grp_theta_fu_225.C_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_5_fu_358.grp_KeccakP1600_Permute_s_fu_286.grp_theta_fu_225.D_U", "Parent" : "9"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_5_fu_358.grp_KeccakP1600_Permute_s_fu_286.grp_chi_fu_230", "Parent" : "5", "Child" : ["13"],
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
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_5_fu_358.grp_KeccakP1600_Permute_s_fu_286.grp_chi_fu_230.C_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_5_fu_358.grp_KeccakP1600_Permute_s_fu_286.grp_pi_fu_235", "Parent" : "5", "Child" : ["15", "16"],
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
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_5_fu_358.grp_KeccakP1600_Permute_s_fu_286.grp_pi_fu_235.tempA_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_5_fu_358.grp_KeccakP1600_Permute_s_fu_286.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "14"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_fu_376", "Parent" : "0", "Child" : ["18", "30"],
		"CDFG" : "Keccak_HashUpdate",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_201"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_201"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_201", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_201", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_201", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_fu_376.grp_KeccakP1600_Permute_s_fu_201", "Parent" : "17", "Child" : ["19", "20", "21", "22", "25", "27"],
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
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_fu_376.grp_KeccakP1600_Permute_s_fu_201.KeccakRhoOffsets_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_fu_376.grp_KeccakP1600_Permute_s_fu_201.KeccakRoundConstants_U", "Parent" : "18"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_fu_376.grp_KeccakP1600_Permute_s_fu_201.stateAsWords_U", "Parent" : "18"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_fu_376.grp_KeccakP1600_Permute_s_fu_201.grp_theta_fu_225", "Parent" : "18", "Child" : ["23", "24"],
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
	{"ID" : "23", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_fu_376.grp_KeccakP1600_Permute_s_fu_201.grp_theta_fu_225.C_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_fu_376.grp_KeccakP1600_Permute_s_fu_201.grp_theta_fu_225.D_U", "Parent" : "22"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_fu_376.grp_KeccakP1600_Permute_s_fu_201.grp_chi_fu_230", "Parent" : "18", "Child" : ["26"],
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
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_fu_376.grp_KeccakP1600_Permute_s_fu_201.grp_chi_fu_230.C_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_fu_376.grp_KeccakP1600_Permute_s_fu_201.grp_pi_fu_235", "Parent" : "18", "Child" : ["28", "29"],
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
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_fu_376.grp_KeccakP1600_Permute_s_fu_201.grp_pi_fu_235.tempA_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_fu_376.grp_KeccakP1600_Permute_s_fu_201.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "27"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_fu_376.crypto_sign_am_adocq_U174", "Parent" : "17"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_9_fu_392", "Parent" : "0", "Child" : ["32"],
		"CDFG" : "Keccak_HashUpdate_9",
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
					{"ID" : "32", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_211", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_211", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_211", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_9_fu_392.grp_KeccakP1600_Permute_s_fu_211", "Parent" : "31", "Child" : ["33", "34", "35", "36", "39", "41"],
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
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_9_fu_392.grp_KeccakP1600_Permute_s_fu_211.KeccakRhoOffsets_U", "Parent" : "32"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_9_fu_392.grp_KeccakP1600_Permute_s_fu_211.KeccakRoundConstants_U", "Parent" : "32"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_9_fu_392.grp_KeccakP1600_Permute_s_fu_211.stateAsWords_U", "Parent" : "32"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_9_fu_392.grp_KeccakP1600_Permute_s_fu_211.grp_theta_fu_225", "Parent" : "32", "Child" : ["37", "38"],
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
	{"ID" : "37", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_9_fu_392.grp_KeccakP1600_Permute_s_fu_211.grp_theta_fu_225.C_U", "Parent" : "36"},
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_9_fu_392.grp_KeccakP1600_Permute_s_fu_211.grp_theta_fu_225.D_U", "Parent" : "36"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_9_fu_392.grp_KeccakP1600_Permute_s_fu_211.grp_chi_fu_230", "Parent" : "32", "Child" : ["40"],
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
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_9_fu_392.grp_KeccakP1600_Permute_s_fu_211.grp_chi_fu_230.C_U", "Parent" : "39"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_9_fu_392.grp_KeccakP1600_Permute_s_fu_211.grp_pi_fu_235", "Parent" : "32", "Child" : ["42", "43"],
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
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_9_fu_392.grp_KeccakP1600_Permute_s_fu_211.grp_pi_fu_235.tempA_U", "Parent" : "41"},
	{"ID" : "43", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_9_fu_392.grp_KeccakP1600_Permute_s_fu_211.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "41"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_408", "Parent" : "0", "Child" : ["45"],
		"CDFG" : "Keccak_HashUpdate_7",
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
					{"ID" : "45", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_211", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_211", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_211", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_408.grp_KeccakP1600_Permute_s_fu_211", "Parent" : "44", "Child" : ["46", "47", "48", "49", "52", "54"],
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
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_408.grp_KeccakP1600_Permute_s_fu_211.KeccakRhoOffsets_U", "Parent" : "45"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_408.grp_KeccakP1600_Permute_s_fu_211.KeccakRoundConstants_U", "Parent" : "45"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_408.grp_KeccakP1600_Permute_s_fu_211.stateAsWords_U", "Parent" : "45"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_408.grp_KeccakP1600_Permute_s_fu_211.grp_theta_fu_225", "Parent" : "45", "Child" : ["50", "51"],
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
	{"ID" : "50", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_408.grp_KeccakP1600_Permute_s_fu_211.grp_theta_fu_225.C_U", "Parent" : "49"},
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_408.grp_KeccakP1600_Permute_s_fu_211.grp_theta_fu_225.D_U", "Parent" : "49"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_408.grp_KeccakP1600_Permute_s_fu_211.grp_chi_fu_230", "Parent" : "45", "Child" : ["53"],
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
	{"ID" : "53", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_408.grp_KeccakP1600_Permute_s_fu_211.grp_chi_fu_230.C_U", "Parent" : "52"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_408.grp_KeccakP1600_Permute_s_fu_211.grp_pi_fu_235", "Parent" : "45", "Child" : ["55", "56"],
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
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_408.grp_KeccakP1600_Permute_s_fu_211.grp_pi_fu_235.tempA_U", "Parent" : "54"},
	{"ID" : "56", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_408.grp_KeccakP1600_Permute_s_fu_211.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "54"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1186_fu_426", "Parent" : "0", "Child" : ["58"],
		"CDFG" : "Keccak_HashUpdate_1186",
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
					{"ID" : "58", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1186_fu_426.grp_KeccakP1600_Permute_s_fu_183", "Parent" : "57", "Child" : ["59", "60", "61", "62", "65", "67"],
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
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1186_fu_426.grp_KeccakP1600_Permute_s_fu_183.KeccakRhoOffsets_U", "Parent" : "58"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1186_fu_426.grp_KeccakP1600_Permute_s_fu_183.KeccakRoundConstants_U", "Parent" : "58"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1186_fu_426.grp_KeccakP1600_Permute_s_fu_183.stateAsWords_U", "Parent" : "58"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1186_fu_426.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225", "Parent" : "58", "Child" : ["63", "64"],
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
	{"ID" : "63", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1186_fu_426.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225.C_U", "Parent" : "62"},
	{"ID" : "64", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1186_fu_426.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225.D_U", "Parent" : "62"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1186_fu_426.grp_KeccakP1600_Permute_s_fu_183.grp_chi_fu_230", "Parent" : "58", "Child" : ["66"],
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
	{"ID" : "66", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1186_fu_426.grp_KeccakP1600_Permute_s_fu_183.grp_chi_fu_230.C_U", "Parent" : "65"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1186_fu_426.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235", "Parent" : "58", "Child" : ["68", "69"],
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
	{"ID" : "68", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1186_fu_426.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235.tempA_U", "Parent" : "67"},
	{"ID" : "69", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1186_fu_426.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "67"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_439", "Parent" : "0", "Child" : ["71"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "71", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "71", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "71", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_439.grp_KeccakP1600_Permute_s_fu_162", "Parent" : "70", "Child" : ["72", "73", "74", "75", "78", "80"],
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
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_439.grp_KeccakP1600_Permute_s_fu_162.KeccakRhoOffsets_U", "Parent" : "71"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_439.grp_KeccakP1600_Permute_s_fu_162.KeccakRoundConstants_U", "Parent" : "71"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_439.grp_KeccakP1600_Permute_s_fu_162.stateAsWords_U", "Parent" : "71"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_439.grp_KeccakP1600_Permute_s_fu_162.grp_theta_fu_225", "Parent" : "71", "Child" : ["76", "77"],
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
	{"ID" : "76", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_439.grp_KeccakP1600_Permute_s_fu_162.grp_theta_fu_225.C_U", "Parent" : "75"},
	{"ID" : "77", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_439.grp_KeccakP1600_Permute_s_fu_162.grp_theta_fu_225.D_U", "Parent" : "75"},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_439.grp_KeccakP1600_Permute_s_fu_162.grp_chi_fu_230", "Parent" : "71", "Child" : ["79"],
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
	{"ID" : "79", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_439.grp_KeccakP1600_Permute_s_fu_162.grp_chi_fu_230.C_U", "Parent" : "78"},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_439.grp_KeccakP1600_Permute_s_fu_162.grp_pi_fu_235", "Parent" : "71", "Child" : ["81", "82"],
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
	{"ID" : "81", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_439.grp_KeccakP1600_Permute_s_fu_162.grp_pi_fu_235.tempA_U", "Parent" : "80"},
	{"ID" : "82", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_439.grp_KeccakP1600_Permute_s_fu_162.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "80"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_454", "Parent" : "0", "Child" : ["84"],
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
					{"ID" : "84", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_delimitedSu", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_454.grp_KeccakP1600_Permute_s_fu_124", "Parent" : "83", "Child" : ["85", "86", "87", "88", "91", "93"],
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
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_454.grp_KeccakP1600_Permute_s_fu_124.KeccakRhoOffsets_U", "Parent" : "84"},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_454.grp_KeccakP1600_Permute_s_fu_124.KeccakRoundConstants_U", "Parent" : "84"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_454.grp_KeccakP1600_Permute_s_fu_124.stateAsWords_U", "Parent" : "84"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_454.grp_KeccakP1600_Permute_s_fu_124.grp_theta_fu_225", "Parent" : "84", "Child" : ["89", "90"],
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
	{"ID" : "89", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_454.grp_KeccakP1600_Permute_s_fu_124.grp_theta_fu_225.C_U", "Parent" : "88"},
	{"ID" : "90", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_454.grp_KeccakP1600_Permute_s_fu_124.grp_theta_fu_225.D_U", "Parent" : "88"},
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_454.grp_KeccakP1600_Permute_s_fu_124.grp_chi_fu_230", "Parent" : "84", "Child" : ["92"],
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
	{"ID" : "92", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_454.grp_KeccakP1600_Permute_s_fu_124.grp_chi_fu_230.C_U", "Parent" : "91"},
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_454.grp_KeccakP1600_Permute_s_fu_124.grp_pi_fu_235", "Parent" : "84", "Child" : ["94", "95"],
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
	{"ID" : "94", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_454.grp_KeccakP1600_Permute_s_fu_124.grp_pi_fu_235.tempA_U", "Parent" : "93"},
	{"ID" : "95", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_454.grp_KeccakP1600_Permute_s_fu_124.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "93"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashInitializ_fu_469", "Parent" : "0",
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
	Commit_2 {
		seed {Type I LastRead 4 FirstWrite -1}
		seed_offset {Type I LastRead 4 FirstWrite -1}
		seed_offset1 {Type I LastRead 4 FirstWrite -1}
		view_inputShare {Type I LastRead 17 FirstWrite -1}
		view_inputShare_offset {Type I LastRead 15 FirstWrite -1}
		view_inputShare_offset3 {Type I LastRead 15 FirstWrite -1}
		view_communicatedBits {Type I LastRead 4 FirstWrite -1}
		view_communicatedBits_offset {Type I LastRead 15 FirstWrite -1}
		view_communicatedBits_offset4 {Type I LastRead 15 FirstWrite -1}
		view_outputShare {Type I LastRead 22 FirstWrite -1}
		view_outputShare_offset {Type I LastRead 15 FirstWrite -1}
		view_outputShare_offset5 {Type I LastRead 15 FirstWrite -1}
		hash {Type IO LastRead 4 FirstWrite -1}
		hash_offset {Type I LastRead 8 FirstWrite -1}
		hash_offset6 {Type I LastRead 8 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	Keccak_HashSqueeze_5 {
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
	Keccak_HashUpdate {
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
	Keccak_HashUpdate_9 {
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
	Keccak_HashUpdate_7 {
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
	Keccak_HashUpdate_1186 {
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
	Keccak_HashUpdate_3 {
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
		instance_sponge_sque_33 {Type I LastRead 0 FirstWrite -1}
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
	seed { ap_memory {  { seed_address0 mem_address 1 14 }  { seed_ce0 mem_ce 1 1 }  { seed_q0 mem_dout 0 8 } } }
	seed_offset { ap_none {  { seed_offset in_data 0 8 } } }
	seed_offset1 { ap_none {  { seed_offset1 in_data 0 3 } } }
	view_inputShare { ap_memory {  { view_inputShare_address0 mem_address 1 12 }  { view_inputShare_ce0 mem_ce 1 1 }  { view_inputShare_q0 mem_dout 0 32 } } }
	view_inputShare_offset { ap_none {  { view_inputShare_offset in_data 0 8 } } }
	view_inputShare_offset3 { ap_none {  { view_inputShare_offset3 in_data 0 3 } } }
	view_communicatedBits { ap_memory {  { view_communicatedBits_address0 mem_address 1 16 }  { view_communicatedBits_ce0 mem_ce 1 1 }  { view_communicatedBits_q0 mem_dout 0 8 } } }
	view_communicatedBits_offset { ap_none {  { view_communicatedBits_offset in_data 0 8 } } }
	view_communicatedBits_offset4 { ap_none {  { view_communicatedBits_offset4 in_data 0 3 } } }
	view_outputShare { ap_memory {  { view_outputShare_address0 mem_address 1 12 }  { view_outputShare_ce0 mem_ce 1 1 }  { view_outputShare_q0 mem_dout 0 32 } } }
	view_outputShare_offset { ap_none {  { view_outputShare_offset in_data 0 8 } } }
	view_outputShare_offset5 { ap_none {  { view_outputShare_offset5 in_data 0 3 } } }
	hash { ap_memory {  { hash_address0 mem_address 1 15 }  { hash_ce0 mem_ce 1 1 }  { hash_we0 mem_we 1 1 }  { hash_d0 mem_din 1 8 }  { hash_q0 mem_dout 0 8 } } }
	hash_offset { ap_none {  { hash_offset in_data 0 8 } } }
	hash_offset6 { ap_none {  { hash_offset6 in_data 0 3 } } }
}
set moduleName Commit_2
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
set C_modelName {Commit_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ seed int 8 regular {array 10512 { 1 3 } 1 1 }  }
	{ seed_offset int 8 regular  }
	{ seed_offset1 int 3 regular  }
	{ view_inputShare int 32 regular {array 2628 { 1 3 } 1 1 }  }
	{ view_inputShare_offset int 8 regular  }
	{ view_inputShare_offset3 int 3 regular  }
	{ view_communicatedBits int 8 regular {array 49275 { 1 3 } 1 1 }  }
	{ view_communicatedBits_offset int 8 regular  }
	{ view_communicatedBits_offset4 int 3 regular  }
	{ view_outputShare int 32 regular {array 2628 { 1 3 } 1 1 }  }
	{ view_outputShare_offset int 8 regular  }
	{ view_outputShare_offset5 int 3 regular  }
	{ hash int 8 regular {array 21024 { 2 3 } 1 1 }  }
	{ hash_offset int 8 regular  }
	{ hash_offset6 int 3 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seed", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "seed_offset", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "seed_offset1", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "view_inputShare", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "view_inputShare_offset", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "view_inputShare_offset3", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "view_communicatedBits", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "view_communicatedBits_offset", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "view_communicatedBits_offset4", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "view_outputShare", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "view_outputShare_offset", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "view_outputShare_offset5", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "hash", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "hash_offset", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "hash_offset6", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 33
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seed_address0 sc_out sc_lv 14 signal 0 } 
	{ seed_ce0 sc_out sc_logic 1 signal 0 } 
	{ seed_q0 sc_in sc_lv 8 signal 0 } 
	{ seed_offset sc_in sc_lv 8 signal 1 } 
	{ seed_offset1 sc_in sc_lv 3 signal 2 } 
	{ view_inputShare_address0 sc_out sc_lv 12 signal 3 } 
	{ view_inputShare_ce0 sc_out sc_logic 1 signal 3 } 
	{ view_inputShare_q0 sc_in sc_lv 32 signal 3 } 
	{ view_inputShare_offset sc_in sc_lv 8 signal 4 } 
	{ view_inputShare_offset3 sc_in sc_lv 3 signal 5 } 
	{ view_communicatedBits_address0 sc_out sc_lv 16 signal 6 } 
	{ view_communicatedBits_ce0 sc_out sc_logic 1 signal 6 } 
	{ view_communicatedBits_q0 sc_in sc_lv 8 signal 6 } 
	{ view_communicatedBits_offset sc_in sc_lv 8 signal 7 } 
	{ view_communicatedBits_offset4 sc_in sc_lv 3 signal 8 } 
	{ view_outputShare_address0 sc_out sc_lv 12 signal 9 } 
	{ view_outputShare_ce0 sc_out sc_logic 1 signal 9 } 
	{ view_outputShare_q0 sc_in sc_lv 32 signal 9 } 
	{ view_outputShare_offset sc_in sc_lv 8 signal 10 } 
	{ view_outputShare_offset5 sc_in sc_lv 3 signal 11 } 
	{ hash_address0 sc_out sc_lv 15 signal 12 } 
	{ hash_ce0 sc_out sc_logic 1 signal 12 } 
	{ hash_we0 sc_out sc_logic 1 signal 12 } 
	{ hash_d0 sc_out sc_lv 8 signal 12 } 
	{ hash_q0 sc_in sc_lv 8 signal 12 } 
	{ hash_offset sc_in sc_lv 8 signal 13 } 
	{ hash_offset6 sc_in sc_lv 3 signal 14 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seed_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "seed", "role": "address0" }} , 
 	{ "name": "seed_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seed", "role": "ce0" }} , 
 	{ "name": "seed_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seed", "role": "q0" }} , 
 	{ "name": "seed_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seed_offset", "role": "default" }} , 
 	{ "name": "seed_offset1", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "seed_offset1", "role": "default" }} , 
 	{ "name": "view_inputShare_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "view_inputShare", "role": "address0" }} , 
 	{ "name": "view_inputShare_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view_inputShare", "role": "ce0" }} , 
 	{ "name": "view_inputShare_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "view_inputShare", "role": "q0" }} , 
 	{ "name": "view_inputShare_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "view_inputShare_offset", "role": "default" }} , 
 	{ "name": "view_inputShare_offset3", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "view_inputShare_offset3", "role": "default" }} , 
 	{ "name": "view_communicatedBits_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "view_communicatedBits", "role": "address0" }} , 
 	{ "name": "view_communicatedBits_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view_communicatedBits", "role": "ce0" }} , 
 	{ "name": "view_communicatedBits_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "view_communicatedBits", "role": "q0" }} , 
 	{ "name": "view_communicatedBits_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "view_communicatedBits_offset", "role": "default" }} , 
 	{ "name": "view_communicatedBits_offset4", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "view_communicatedBits_offset4", "role": "default" }} , 
 	{ "name": "view_outputShare_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "view_outputShare", "role": "address0" }} , 
 	{ "name": "view_outputShare_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view_outputShare", "role": "ce0" }} , 
 	{ "name": "view_outputShare_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "view_outputShare", "role": "q0" }} , 
 	{ "name": "view_outputShare_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "view_outputShare_offset", "role": "default" }} , 
 	{ "name": "view_outputShare_offset5", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "view_outputShare_offset5", "role": "default" }} , 
 	{ "name": "hash_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "hash", "role": "address0" }} , 
 	{ "name": "hash_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "ce0" }} , 
 	{ "name": "hash_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "we0" }} , 
 	{ "name": "hash_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hash", "role": "d0" }} , 
 	{ "name": "hash_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hash", "role": "q0" }} , 
 	{ "name": "hash_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hash_offset", "role": "default" }} , 
 	{ "name": "hash_offset6", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "hash_offset6", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "17", "31", "44", "57", "70", "83", "96"],
		"CDFG" : "Commit_2",
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
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_5_fu_438"},
			{"State" : "ap_ST_fsm_state36", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_5_fu_438"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_fu_456"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_9_fu_472"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_7_fu_488"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_1186_fu_506"},
			{"State" : "ap_ST_fsm_state32", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_1186_fu_506"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_3_fu_519"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_3_fu_519"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashFinal_fu_534"},
			{"State" : "ap_ST_fsm_state34", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashFinal_fu_534"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashInitializ_fu_549"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashInitializ_fu_549"}],
		"Port" : [
			{"Name" : "seed", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "grp_Keccak_HashUpdate_7_fu_488", "Port" : "data"}]},
			{"Name" : "seed_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "seed_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "view_inputShare", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "view_inputShare_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "view_inputShare_offset3", "Type" : "None", "Direction" : "I"},
			{"Name" : "view_communicatedBits", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_Keccak_HashUpdate_fu_456", "Port" : "data"}]},
			{"Name" : "view_communicatedBits_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "view_communicatedBits_offset4", "Type" : "None", "Direction" : "I"},
			{"Name" : "view_outputShare", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "view_outputShare_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "view_outputShare_offset5", "Type" : "None", "Direction" : "I"},
			{"Name" : "hash", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_Keccak_HashSqueeze_5_fu_438", "Port" : "data"},
					{"ID" : "31", "SubInstance" : "grp_Keccak_HashUpdate_9_fu_472", "Port" : "data"}]},
			{"Name" : "hash_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "hash_offset6", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_Keccak_HashSqueeze_5_fu_438", "Port" : "KeccakRhoOffsets"},
					{"ID" : "70", "SubInstance" : "grp_Keccak_HashUpdate_3_fu_519", "Port" : "KeccakRhoOffsets"},
					{"ID" : "17", "SubInstance" : "grp_Keccak_HashUpdate_fu_456", "Port" : "KeccakRhoOffsets"},
					{"ID" : "57", "SubInstance" : "grp_Keccak_HashUpdate_1186_fu_506", "Port" : "KeccakRhoOffsets"},
					{"ID" : "44", "SubInstance" : "grp_Keccak_HashUpdate_7_fu_488", "Port" : "KeccakRhoOffsets"},
					{"ID" : "31", "SubInstance" : "grp_Keccak_HashUpdate_9_fu_472", "Port" : "KeccakRhoOffsets"},
					{"ID" : "83", "SubInstance" : "grp_Keccak_HashFinal_fu_534", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_Keccak_HashSqueeze_5_fu_438", "Port" : "KeccakRoundConstants"},
					{"ID" : "70", "SubInstance" : "grp_Keccak_HashUpdate_3_fu_519", "Port" : "KeccakRoundConstants"},
					{"ID" : "17", "SubInstance" : "grp_Keccak_HashUpdate_fu_456", "Port" : "KeccakRoundConstants"},
					{"ID" : "57", "SubInstance" : "grp_Keccak_HashUpdate_1186_fu_506", "Port" : "KeccakRoundConstants"},
					{"ID" : "44", "SubInstance" : "grp_Keccak_HashUpdate_7_fu_488", "Port" : "KeccakRoundConstants"},
					{"ID" : "31", "SubInstance" : "grp_Keccak_HashUpdate_9_fu_472", "Port" : "KeccakRoundConstants"},
					{"ID" : "83", "SubInstance" : "grp_Keccak_HashFinal_fu_534", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_5_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctx_sponge_state_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_5_fu_438", "Parent" : "0", "Child" : ["5"],
		"CDFG" : "Keccak_HashSqueeze_5",
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
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_5_fu_438.grp_KeccakP1600_Permute_s_fu_286", "Parent" : "4", "Child" : ["6", "7", "8", "9", "12", "14"],
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
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_5_fu_438.grp_KeccakP1600_Permute_s_fu_286.KeccakRhoOffsets_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_5_fu_438.grp_KeccakP1600_Permute_s_fu_286.KeccakRoundConstants_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_5_fu_438.grp_KeccakP1600_Permute_s_fu_286.stateAsWords_U", "Parent" : "5"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_5_fu_438.grp_KeccakP1600_Permute_s_fu_286.grp_theta_fu_225", "Parent" : "5", "Child" : ["10", "11"],
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
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_5_fu_438.grp_KeccakP1600_Permute_s_fu_286.grp_theta_fu_225.C_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_5_fu_438.grp_KeccakP1600_Permute_s_fu_286.grp_theta_fu_225.D_U", "Parent" : "9"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_5_fu_438.grp_KeccakP1600_Permute_s_fu_286.grp_chi_fu_230", "Parent" : "5", "Child" : ["13"],
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
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_5_fu_438.grp_KeccakP1600_Permute_s_fu_286.grp_chi_fu_230.C_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_5_fu_438.grp_KeccakP1600_Permute_s_fu_286.grp_pi_fu_235", "Parent" : "5", "Child" : ["15", "16"],
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
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_5_fu_438.grp_KeccakP1600_Permute_s_fu_286.grp_pi_fu_235.tempA_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_5_fu_438.grp_KeccakP1600_Permute_s_fu_286.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "14"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_fu_456", "Parent" : "0", "Child" : ["18", "30"],
		"CDFG" : "Keccak_HashUpdate",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_201"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_201"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_201", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_201", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_201", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_fu_456.grp_KeccakP1600_Permute_s_fu_201", "Parent" : "17", "Child" : ["19", "20", "21", "22", "25", "27"],
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
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_fu_456.grp_KeccakP1600_Permute_s_fu_201.KeccakRhoOffsets_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_fu_456.grp_KeccakP1600_Permute_s_fu_201.KeccakRoundConstants_U", "Parent" : "18"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_fu_456.grp_KeccakP1600_Permute_s_fu_201.stateAsWords_U", "Parent" : "18"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_fu_456.grp_KeccakP1600_Permute_s_fu_201.grp_theta_fu_225", "Parent" : "18", "Child" : ["23", "24"],
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
	{"ID" : "23", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_fu_456.grp_KeccakP1600_Permute_s_fu_201.grp_theta_fu_225.C_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_fu_456.grp_KeccakP1600_Permute_s_fu_201.grp_theta_fu_225.D_U", "Parent" : "22"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_fu_456.grp_KeccakP1600_Permute_s_fu_201.grp_chi_fu_230", "Parent" : "18", "Child" : ["26"],
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
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_fu_456.grp_KeccakP1600_Permute_s_fu_201.grp_chi_fu_230.C_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_fu_456.grp_KeccakP1600_Permute_s_fu_201.grp_pi_fu_235", "Parent" : "18", "Child" : ["28", "29"],
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
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_fu_456.grp_KeccakP1600_Permute_s_fu_201.grp_pi_fu_235.tempA_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_fu_456.grp_KeccakP1600_Permute_s_fu_201.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "27"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_fu_456.crypto_sign_am_adocq_U174", "Parent" : "17"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_9_fu_472", "Parent" : "0", "Child" : ["32"],
		"CDFG" : "Keccak_HashUpdate_9",
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
					{"ID" : "32", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_211", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_211", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_211", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_9_fu_472.grp_KeccakP1600_Permute_s_fu_211", "Parent" : "31", "Child" : ["33", "34", "35", "36", "39", "41"],
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
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_9_fu_472.grp_KeccakP1600_Permute_s_fu_211.KeccakRhoOffsets_U", "Parent" : "32"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_9_fu_472.grp_KeccakP1600_Permute_s_fu_211.KeccakRoundConstants_U", "Parent" : "32"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_9_fu_472.grp_KeccakP1600_Permute_s_fu_211.stateAsWords_U", "Parent" : "32"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_9_fu_472.grp_KeccakP1600_Permute_s_fu_211.grp_theta_fu_225", "Parent" : "32", "Child" : ["37", "38"],
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
	{"ID" : "37", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_9_fu_472.grp_KeccakP1600_Permute_s_fu_211.grp_theta_fu_225.C_U", "Parent" : "36"},
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_9_fu_472.grp_KeccakP1600_Permute_s_fu_211.grp_theta_fu_225.D_U", "Parent" : "36"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_9_fu_472.grp_KeccakP1600_Permute_s_fu_211.grp_chi_fu_230", "Parent" : "32", "Child" : ["40"],
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
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_9_fu_472.grp_KeccakP1600_Permute_s_fu_211.grp_chi_fu_230.C_U", "Parent" : "39"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_9_fu_472.grp_KeccakP1600_Permute_s_fu_211.grp_pi_fu_235", "Parent" : "32", "Child" : ["42", "43"],
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
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_9_fu_472.grp_KeccakP1600_Permute_s_fu_211.grp_pi_fu_235.tempA_U", "Parent" : "41"},
	{"ID" : "43", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_9_fu_472.grp_KeccakP1600_Permute_s_fu_211.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "41"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_488", "Parent" : "0", "Child" : ["45"],
		"CDFG" : "Keccak_HashUpdate_7",
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
					{"ID" : "45", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_211", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_211", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_211", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_488.grp_KeccakP1600_Permute_s_fu_211", "Parent" : "44", "Child" : ["46", "47", "48", "49", "52", "54"],
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
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_488.grp_KeccakP1600_Permute_s_fu_211.KeccakRhoOffsets_U", "Parent" : "45"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_488.grp_KeccakP1600_Permute_s_fu_211.KeccakRoundConstants_U", "Parent" : "45"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_488.grp_KeccakP1600_Permute_s_fu_211.stateAsWords_U", "Parent" : "45"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_488.grp_KeccakP1600_Permute_s_fu_211.grp_theta_fu_225", "Parent" : "45", "Child" : ["50", "51"],
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
	{"ID" : "50", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_488.grp_KeccakP1600_Permute_s_fu_211.grp_theta_fu_225.C_U", "Parent" : "49"},
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_488.grp_KeccakP1600_Permute_s_fu_211.grp_theta_fu_225.D_U", "Parent" : "49"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_488.grp_KeccakP1600_Permute_s_fu_211.grp_chi_fu_230", "Parent" : "45", "Child" : ["53"],
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
	{"ID" : "53", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_488.grp_KeccakP1600_Permute_s_fu_211.grp_chi_fu_230.C_U", "Parent" : "52"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_488.grp_KeccakP1600_Permute_s_fu_211.grp_pi_fu_235", "Parent" : "45", "Child" : ["55", "56"],
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
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_488.grp_KeccakP1600_Permute_s_fu_211.grp_pi_fu_235.tempA_U", "Parent" : "54"},
	{"ID" : "56", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_488.grp_KeccakP1600_Permute_s_fu_211.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "54"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1186_fu_506", "Parent" : "0", "Child" : ["58"],
		"CDFG" : "Keccak_HashUpdate_1186",
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
					{"ID" : "58", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1186_fu_506.grp_KeccakP1600_Permute_s_fu_183", "Parent" : "57", "Child" : ["59", "60", "61", "62", "65", "67"],
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
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1186_fu_506.grp_KeccakP1600_Permute_s_fu_183.KeccakRhoOffsets_U", "Parent" : "58"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1186_fu_506.grp_KeccakP1600_Permute_s_fu_183.KeccakRoundConstants_U", "Parent" : "58"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1186_fu_506.grp_KeccakP1600_Permute_s_fu_183.stateAsWords_U", "Parent" : "58"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1186_fu_506.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225", "Parent" : "58", "Child" : ["63", "64"],
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
	{"ID" : "63", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1186_fu_506.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225.C_U", "Parent" : "62"},
	{"ID" : "64", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1186_fu_506.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225.D_U", "Parent" : "62"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1186_fu_506.grp_KeccakP1600_Permute_s_fu_183.grp_chi_fu_230", "Parent" : "58", "Child" : ["66"],
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
	{"ID" : "66", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1186_fu_506.grp_KeccakP1600_Permute_s_fu_183.grp_chi_fu_230.C_U", "Parent" : "65"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1186_fu_506.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235", "Parent" : "58", "Child" : ["68", "69"],
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
	{"ID" : "68", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1186_fu_506.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235.tempA_U", "Parent" : "67"},
	{"ID" : "69", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1186_fu_506.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "67"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_519", "Parent" : "0", "Child" : ["71"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "71", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "71", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "71", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_519.grp_KeccakP1600_Permute_s_fu_162", "Parent" : "70", "Child" : ["72", "73", "74", "75", "78", "80"],
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
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_519.grp_KeccakP1600_Permute_s_fu_162.KeccakRhoOffsets_U", "Parent" : "71"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_519.grp_KeccakP1600_Permute_s_fu_162.KeccakRoundConstants_U", "Parent" : "71"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_519.grp_KeccakP1600_Permute_s_fu_162.stateAsWords_U", "Parent" : "71"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_519.grp_KeccakP1600_Permute_s_fu_162.grp_theta_fu_225", "Parent" : "71", "Child" : ["76", "77"],
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
	{"ID" : "76", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_519.grp_KeccakP1600_Permute_s_fu_162.grp_theta_fu_225.C_U", "Parent" : "75"},
	{"ID" : "77", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_519.grp_KeccakP1600_Permute_s_fu_162.grp_theta_fu_225.D_U", "Parent" : "75"},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_519.grp_KeccakP1600_Permute_s_fu_162.grp_chi_fu_230", "Parent" : "71", "Child" : ["79"],
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
	{"ID" : "79", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_519.grp_KeccakP1600_Permute_s_fu_162.grp_chi_fu_230.C_U", "Parent" : "78"},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_519.grp_KeccakP1600_Permute_s_fu_162.grp_pi_fu_235", "Parent" : "71", "Child" : ["81", "82"],
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
	{"ID" : "81", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_519.grp_KeccakP1600_Permute_s_fu_162.grp_pi_fu_235.tempA_U", "Parent" : "80"},
	{"ID" : "82", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_519.grp_KeccakP1600_Permute_s_fu_162.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "80"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_534", "Parent" : "0", "Child" : ["84"],
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
					{"ID" : "84", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_delimitedSu", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_534.grp_KeccakP1600_Permute_s_fu_124", "Parent" : "83", "Child" : ["85", "86", "87", "88", "91", "93"],
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
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_534.grp_KeccakP1600_Permute_s_fu_124.KeccakRhoOffsets_U", "Parent" : "84"},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_534.grp_KeccakP1600_Permute_s_fu_124.KeccakRoundConstants_U", "Parent" : "84"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_534.grp_KeccakP1600_Permute_s_fu_124.stateAsWords_U", "Parent" : "84"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_534.grp_KeccakP1600_Permute_s_fu_124.grp_theta_fu_225", "Parent" : "84", "Child" : ["89", "90"],
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
	{"ID" : "89", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_534.grp_KeccakP1600_Permute_s_fu_124.grp_theta_fu_225.C_U", "Parent" : "88"},
	{"ID" : "90", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_534.grp_KeccakP1600_Permute_s_fu_124.grp_theta_fu_225.D_U", "Parent" : "88"},
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_534.grp_KeccakP1600_Permute_s_fu_124.grp_chi_fu_230", "Parent" : "84", "Child" : ["92"],
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
	{"ID" : "92", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_534.grp_KeccakP1600_Permute_s_fu_124.grp_chi_fu_230.C_U", "Parent" : "91"},
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_534.grp_KeccakP1600_Permute_s_fu_124.grp_pi_fu_235", "Parent" : "84", "Child" : ["94", "95"],
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
	{"ID" : "94", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_534.grp_KeccakP1600_Permute_s_fu_124.grp_pi_fu_235.tempA_U", "Parent" : "93"},
	{"ID" : "95", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_534.grp_KeccakP1600_Permute_s_fu_124.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "93"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashInitializ_fu_549", "Parent" : "0",
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
	Commit_2 {
		seed {Type I LastRead 4 FirstWrite -1}
		seed_offset {Type I LastRead 4 FirstWrite -1}
		seed_offset1 {Type I LastRead 4 FirstWrite -1}
		view_inputShare {Type I LastRead 19 FirstWrite -1}
		view_inputShare_offset {Type I LastRead 15 FirstWrite -1}
		view_inputShare_offset3 {Type I LastRead 15 FirstWrite -1}
		view_communicatedBits {Type I LastRead 4 FirstWrite -1}
		view_communicatedBits_offset {Type I LastRead 15 FirstWrite -1}
		view_communicatedBits_offset4 {Type I LastRead 15 FirstWrite -1}
		view_outputShare {Type I LastRead 24 FirstWrite -1}
		view_outputShare_offset {Type I LastRead 15 FirstWrite -1}
		view_outputShare_offset5 {Type I LastRead 15 FirstWrite -1}
		hash {Type IO LastRead 4 FirstWrite -1}
		hash_offset {Type I LastRead 8 FirstWrite -1}
		hash_offset6 {Type I LastRead 8 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	Keccak_HashSqueeze_5 {
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
	Keccak_HashUpdate {
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
	Keccak_HashUpdate_9 {
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
	Keccak_HashUpdate_7 {
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
	Keccak_HashUpdate_1186 {
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
	Keccak_HashUpdate_3 {
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
		instance_sponge_sque_33 {Type I LastRead 0 FirstWrite -1}
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
	seed { ap_memory {  { seed_address0 mem_address 1 14 }  { seed_ce0 mem_ce 1 1 }  { seed_q0 mem_dout 0 8 } } }
	seed_offset { ap_none {  { seed_offset in_data 0 8 } } }
	seed_offset1 { ap_none {  { seed_offset1 in_data 0 3 } } }
	view_inputShare { ap_memory {  { view_inputShare_address0 mem_address 1 12 }  { view_inputShare_ce0 mem_ce 1 1 }  { view_inputShare_q0 mem_dout 0 32 } } }
	view_inputShare_offset { ap_none {  { view_inputShare_offset in_data 0 8 } } }
	view_inputShare_offset3 { ap_none {  { view_inputShare_offset3 in_data 0 3 } } }
	view_communicatedBits { ap_memory {  { view_communicatedBits_address0 mem_address 1 16 }  { view_communicatedBits_ce0 mem_ce 1 1 }  { view_communicatedBits_q0 mem_dout 0 8 } } }
	view_communicatedBits_offset { ap_none {  { view_communicatedBits_offset in_data 0 8 } } }
	view_communicatedBits_offset4 { ap_none {  { view_communicatedBits_offset4 in_data 0 3 } } }
	view_outputShare { ap_memory {  { view_outputShare_address0 mem_address 1 12 }  { view_outputShare_ce0 mem_ce 1 1 }  { view_outputShare_q0 mem_dout 0 32 } } }
	view_outputShare_offset { ap_none {  { view_outputShare_offset in_data 0 8 } } }
	view_outputShare_offset5 { ap_none {  { view_outputShare_offset5 in_data 0 3 } } }
	hash { ap_memory {  { hash_address0 mem_address 1 15 }  { hash_ce0 mem_ce 1 1 }  { hash_we0 mem_we 1 1 }  { hash_d0 mem_din 1 8 }  { hash_q0 mem_dout 0 8 } } }
	hash_offset { ap_none {  { hash_offset in_data 0 8 } } }
	hash_offset6 { ap_none {  { hash_offset6 in_data 0 3 } } }
}
