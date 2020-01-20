set moduleName picnic_sign
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
set C_modelName {picnic_sign}
set C_modelType { int 96 }
set C_modelArgList {
	{ sk_data int 8 regular {array 32 { 1 1 } 1 1 }  }
	{ sk_pk_plaintext int 8 regular {array 32 { 1 1 } 1 1 }  }
	{ sk_pk_ciphertext int 8 regular {array 32 { 1 1 } 1 1 }  }
	{ message int 8 regular {array 3300 { 1 3 } 1 1 }  }
	{ message_len int 64 regular  }
	{ signature int 8 regular {array 136176 { 0 3 } 0 1 }  }
	{ signature_offset int 64 regular  }
	{ viewOutputs int 32 regular {array 42048 { 2 1 } 1 1 } {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sk_data", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sk_pk_plaintext", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sk_pk_ciphertext", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "message", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "message_len", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "signature", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "signature_offset", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "viewOutputs", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "viewOutputs","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1313,"step" : 1},{"low" : 0,"up" : 31,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 96} ]}
# RTL Port declarations: 
set portNum 43
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sk_data_address0 sc_out sc_lv 5 signal 0 } 
	{ sk_data_ce0 sc_out sc_logic 1 signal 0 } 
	{ sk_data_q0 sc_in sc_lv 8 signal 0 } 
	{ sk_data_address1 sc_out sc_lv 5 signal 0 } 
	{ sk_data_ce1 sc_out sc_logic 1 signal 0 } 
	{ sk_data_q1 sc_in sc_lv 8 signal 0 } 
	{ sk_pk_plaintext_address0 sc_out sc_lv 5 signal 1 } 
	{ sk_pk_plaintext_ce0 sc_out sc_logic 1 signal 1 } 
	{ sk_pk_plaintext_q0 sc_in sc_lv 8 signal 1 } 
	{ sk_pk_plaintext_address1 sc_out sc_lv 5 signal 1 } 
	{ sk_pk_plaintext_ce1 sc_out sc_logic 1 signal 1 } 
	{ sk_pk_plaintext_q1 sc_in sc_lv 8 signal 1 } 
	{ sk_pk_ciphertext_address0 sc_out sc_lv 5 signal 2 } 
	{ sk_pk_ciphertext_ce0 sc_out sc_logic 1 signal 2 } 
	{ sk_pk_ciphertext_q0 sc_in sc_lv 8 signal 2 } 
	{ sk_pk_ciphertext_address1 sc_out sc_lv 5 signal 2 } 
	{ sk_pk_ciphertext_ce1 sc_out sc_logic 1 signal 2 } 
	{ sk_pk_ciphertext_q1 sc_in sc_lv 8 signal 2 } 
	{ message_address0 sc_out sc_lv 12 signal 3 } 
	{ message_ce0 sc_out sc_logic 1 signal 3 } 
	{ message_q0 sc_in sc_lv 8 signal 3 } 
	{ message_len sc_in sc_lv 64 signal 4 } 
	{ signature_address0 sc_out sc_lv 18 signal 5 } 
	{ signature_ce0 sc_out sc_logic 1 signal 5 } 
	{ signature_we0 sc_out sc_logic 1 signal 5 } 
	{ signature_d0 sc_out sc_lv 8 signal 5 } 
	{ signature_offset sc_in sc_lv 64 signal 6 } 
	{ viewOutputs_address0 sc_out sc_lv 16 signal 7 } 
	{ viewOutputs_ce0 sc_out sc_logic 1 signal 7 } 
	{ viewOutputs_we0 sc_out sc_logic 1 signal 7 } 
	{ viewOutputs_d0 sc_out sc_lv 32 signal 7 } 
	{ viewOutputs_q0 sc_in sc_lv 32 signal 7 } 
	{ viewOutputs_address1 sc_out sc_lv 16 signal 7 } 
	{ viewOutputs_ce1 sc_out sc_logic 1 signal 7 } 
	{ viewOutputs_q1 sc_in sc_lv 32 signal 7 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 64 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sk_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sk_data", "role": "address0" }} , 
 	{ "name": "sk_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk_data", "role": "ce0" }} , 
 	{ "name": "sk_data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk_data", "role": "q0" }} , 
 	{ "name": "sk_data_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sk_data", "role": "address1" }} , 
 	{ "name": "sk_data_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk_data", "role": "ce1" }} , 
 	{ "name": "sk_data_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk_data", "role": "q1" }} , 
 	{ "name": "sk_pk_plaintext_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sk_pk_plaintext", "role": "address0" }} , 
 	{ "name": "sk_pk_plaintext_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk_pk_plaintext", "role": "ce0" }} , 
 	{ "name": "sk_pk_plaintext_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk_pk_plaintext", "role": "q0" }} , 
 	{ "name": "sk_pk_plaintext_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sk_pk_plaintext", "role": "address1" }} , 
 	{ "name": "sk_pk_plaintext_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk_pk_plaintext", "role": "ce1" }} , 
 	{ "name": "sk_pk_plaintext_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk_pk_plaintext", "role": "q1" }} , 
 	{ "name": "sk_pk_ciphertext_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sk_pk_ciphertext", "role": "address0" }} , 
 	{ "name": "sk_pk_ciphertext_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk_pk_ciphertext", "role": "ce0" }} , 
 	{ "name": "sk_pk_ciphertext_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk_pk_ciphertext", "role": "q0" }} , 
 	{ "name": "sk_pk_ciphertext_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sk_pk_ciphertext", "role": "address1" }} , 
 	{ "name": "sk_pk_ciphertext_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk_pk_ciphertext", "role": "ce1" }} , 
 	{ "name": "sk_pk_ciphertext_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk_pk_ciphertext", "role": "q1" }} , 
 	{ "name": "message_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "message", "role": "address0" }} , 
 	{ "name": "message_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "message", "role": "ce0" }} , 
 	{ "name": "message_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "message", "role": "q0" }} , 
 	{ "name": "message_len", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "message_len", "role": "default" }} , 
 	{ "name": "signature_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "signature", "role": "address0" }} , 
 	{ "name": "signature_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "signature", "role": "ce0" }} , 
 	{ "name": "signature_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "signature", "role": "we0" }} , 
 	{ "name": "signature_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "signature", "role": "d0" }} , 
 	{ "name": "signature_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "signature_offset", "role": "default" }} , 
 	{ "name": "viewOutputs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "viewOutputs", "role": "address0" }} , 
 	{ "name": "viewOutputs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "viewOutputs", "role": "ce0" }} , 
 	{ "name": "viewOutputs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "viewOutputs", "role": "we0" }} , 
 	{ "name": "viewOutputs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "viewOutputs", "role": "d0" }} , 
 	{ "name": "viewOutputs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "viewOutputs", "role": "q0" }} , 
 	{ "name": "viewOutputs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "viewOutputs", "role": "address1" }} , 
 	{ "name": "viewOutputs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "viewOutputs", "role": "ce1" }} , 
 	{ "name": "viewOutputs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "viewOutputs", "role": "q1" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "464"],
		"CDFG" : "picnic_sign",
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
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sign_picnic1_fu_359"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_serializeSignature_fu_388"}],
		"Port" : [
			{"Name" : "sk_data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sk_pk_plaintext", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sk_pk_ciphertext", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "message", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_sign_picnic1_fu_359", "Port" : "message"}]},
			{"Name" : "message_len", "Type" : "None", "Direction" : "I"},
			{"Name" : "signature", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "464", "SubInstance" : "grp_serializeSignature_fu_388", "Port" : "sigBytes"}]},
			{"Name" : "signature_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_sign_picnic1_fu_359", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_sign_picnic1_fu_359", "Port" : "KeccakRoundConstants"}]},
			{"Name" : "temp_matrix", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_sign_picnic1_fu_359", "Port" : "temp_matrix"}]},
			{"Name" : "temp_matrix2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_sign_picnic1_fu_359", "Port" : "temp_matrix2"}]},
			{"Name" : "temp_matrix3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_sign_picnic1_fu_359", "Port" : "temp_matrix3"}]},
			{"Name" : "viewOutputs", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_sign_picnic1_fu_359", "Port" : "viewOutputs"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sig_0_proofs_seed1_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sig_0_proofs_seed2_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sig_0_proofs_inputS_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sig_0_proofs_commun_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sig_0_proofs_view3C_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sig_0_challengeBits_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sig_0_salt_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp2_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp3_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359", "Parent" : "0", "Child" : ["12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "134", "231", "313", "344", "357", "370", "383", "396", "409", "422", "435", "448", "461", "463"],
		"CDFG" : "sign_picnic1",
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
			{"State" : "ap_ST_fsm_state76", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_H3_2_fu_561"},
			{"State" : "ap_ST_fsm_state64", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Commit_2_fu_582"},
			{"State" : "ap_ST_fsm_state66", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Commit_2_fu_582"},
			{"State" : "ap_ST_fsm_state68", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Commit_2_fu_582"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_computeSeeds_2_fu_625"},
			{"State" : "ap_ST_fsm_state62", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mpc_LowMC_2_fu_647"},
			{"State" : "ap_ST_fsm_state43", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_4_fu_666"},
			{"State" : "ap_ST_fsm_state59", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_4_fu_666"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_fu_681"},
			{"State" : "ap_ST_fsm_state29", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_fu_681"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_8_fu_696"},
			{"State" : "ap_ST_fsm_state39", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_8_fu_696"},
			{"State" : "ap_ST_fsm_state47", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_9_fu_711"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_2_fu_721"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_7_fu_731"},
			{"State" : "ap_ST_fsm_state49", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_7_fu_731"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_743"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_743"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_743"},
			{"State" : "ap_ST_fsm_state51", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_743"},
			{"State" : "ap_ST_fsm_state53", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_743"},
			{"State" : "ap_ST_fsm_state55", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_743"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_3_fu_759"},
			{"State" : "ap_ST_fsm_state37", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_3_fu_759"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashFinal_fu_770"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashFinal_fu_770"},
			{"State" : "ap_ST_fsm_state41", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashFinal_fu_770"},
			{"State" : "ap_ST_fsm_state57", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashFinal_fu_770"},
			{"State" : "ap_ST_fsm_state79", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_prove_26_fu_781"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashInitializ_fu_802"},
			{"State" : "ap_ST_fsm_state35", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashInitializ_fu_802"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashInitializ_fu_802"},
			{"State" : "ap_ST_fsm_state45", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashInitializ_fu_802"}],
		"Port" : [
			{"Name" : "privateKey", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "231", "SubInstance" : "grp_computeSeeds_2_fu_625", "Port" : "privateKey"}]},
			{"Name" : "pubKey", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "231", "SubInstance" : "grp_computeSeeds_2_fu_625", "Port" : "publicKey"}]},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "313", "SubInstance" : "grp_mpc_LowMC_2_fu_647", "Port" : "plaintext"},
					{"ID" : "23", "SubInstance" : "grp_H3_2_fu_561", "Port" : "plaintext"},
					{"ID" : "231", "SubInstance" : "grp_computeSeeds_2_fu_625", "Port" : "plaintext"}]},
			{"Name" : "message", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_H3_2_fu_561", "Port" : "message"},
					{"ID" : "231", "SubInstance" : "grp_computeSeeds_2_fu_625", "Port" : "message"}]},
			{"Name" : "messageByteLength", "Type" : "None", "Direction" : "I"},
			{"Name" : "sig_0_proofs_seed1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "461", "SubInstance" : "grp_prove_26_fu_781", "Port" : "proof_0_seed1"}]},
			{"Name" : "sig_0_proofs_seed2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "461", "SubInstance" : "grp_prove_26_fu_781", "Port" : "proof_0_seed2"}]},
			{"Name" : "sig_0_proofs_inputS", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "461", "SubInstance" : "grp_prove_26_fu_781", "Port" : "proof_0_inputShare"}]},
			{"Name" : "sig_0_proofs_commun", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "461", "SubInstance" : "grp_prove_26_fu_781", "Port" : "proof_0_communicatedBits"}]},
			{"Name" : "sig_0_proofs_view3C", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "461", "SubInstance" : "grp_prove_26_fu_781", "Port" : "proof_0_view3Commitment"}]},
			{"Name" : "sig_0_challengeBits", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_H3_2_fu_561", "Port" : "challengeBits_0"}]},
			{"Name" : "sig_0_salt", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "409", "SubInstance" : "grp_Keccak_HashUpdate_7_fu_731", "Port" : "data_0"},
					{"ID" : "23", "SubInstance" : "grp_H3_2_fu_561", "Port" : "salt_0"},
					{"ID" : "231", "SubInstance" : "grp_computeSeeds_2_fu_625", "Port" : "salt_0"}]},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "344", "SubInstance" : "grp_Keccak_HashSqueeze_4_fu_666", "Port" : "KeccakRhoOffsets"},
					{"ID" : "370", "SubInstance" : "grp_Keccak_HashUpdate_8_fu_696", "Port" : "KeccakRhoOffsets"},
					{"ID" : "409", "SubInstance" : "grp_Keccak_HashUpdate_7_fu_731", "Port" : "KeccakRhoOffsets"},
					{"ID" : "357", "SubInstance" : "grp_Keccak_HashSqueeze_fu_681", "Port" : "KeccakRhoOffsets"},
					{"ID" : "383", "SubInstance" : "grp_Keccak_HashUpdate_9_fu_711", "Port" : "KeccakRhoOffsets"},
					{"ID" : "23", "SubInstance" : "grp_H3_2_fu_561", "Port" : "KeccakRhoOffsets"},
					{"ID" : "134", "SubInstance" : "grp_Commit_2_fu_582", "Port" : "KeccakRhoOffsets"},
					{"ID" : "435", "SubInstance" : "grp_Keccak_HashUpdate_3_fu_759", "Port" : "KeccakRhoOffsets"},
					{"ID" : "231", "SubInstance" : "grp_computeSeeds_2_fu_625", "Port" : "KeccakRhoOffsets"},
					{"ID" : "448", "SubInstance" : "grp_Keccak_HashFinal_fu_770", "Port" : "KeccakRhoOffsets"},
					{"ID" : "422", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_743", "Port" : "KeccakRhoOffsets"},
					{"ID" : "396", "SubInstance" : "grp_Keccak_HashUpdate_2_fu_721", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "344", "SubInstance" : "grp_Keccak_HashSqueeze_4_fu_666", "Port" : "KeccakRoundConstants"},
					{"ID" : "370", "SubInstance" : "grp_Keccak_HashUpdate_8_fu_696", "Port" : "KeccakRoundConstants"},
					{"ID" : "409", "SubInstance" : "grp_Keccak_HashUpdate_7_fu_731", "Port" : "KeccakRoundConstants"},
					{"ID" : "357", "SubInstance" : "grp_Keccak_HashSqueeze_fu_681", "Port" : "KeccakRoundConstants"},
					{"ID" : "383", "SubInstance" : "grp_Keccak_HashUpdate_9_fu_711", "Port" : "KeccakRoundConstants"},
					{"ID" : "23", "SubInstance" : "grp_H3_2_fu_561", "Port" : "KeccakRoundConstants"},
					{"ID" : "134", "SubInstance" : "grp_Commit_2_fu_582", "Port" : "KeccakRoundConstants"},
					{"ID" : "435", "SubInstance" : "grp_Keccak_HashUpdate_3_fu_759", "Port" : "KeccakRoundConstants"},
					{"ID" : "231", "SubInstance" : "grp_computeSeeds_2_fu_625", "Port" : "KeccakRoundConstants"},
					{"ID" : "448", "SubInstance" : "grp_Keccak_HashFinal_fu_770", "Port" : "KeccakRoundConstants"},
					{"ID" : "422", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_743", "Port" : "KeccakRoundConstants"},
					{"ID" : "396", "SubInstance" : "grp_Keccak_HashUpdate_2_fu_721", "Port" : "KeccakRoundConstants"}]},
			{"Name" : "temp_matrix", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "313", "SubInstance" : "grp_mpc_LowMC_2_fu_647", "Port" : "temp_matrix"}]},
			{"Name" : "temp_matrix2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "313", "SubInstance" : "grp_mpc_LowMC_2_fu_647", "Port" : "temp_matrix2"}]},
			{"Name" : "temp_matrix3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "313", "SubInstance" : "grp_mpc_LowMC_2_fu_647", "Port" : "temp_matrix3"}]},
			{"Name" : "viewOutputs", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_H3_2_fu_561", "Port" : "viewOutputs"}]}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.ctx_sponge_state_1_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.ctx_sponge_state_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.views_inputShare_U", "Parent" : "11"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.views_communicatedBi_U", "Parent" : "11"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.views_outputShare_U", "Parent" : "11"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.as_hashes_U", "Parent" : "11"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.seeds_seed_U", "Parent" : "11"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.tape_tape_U", "Parent" : "11"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.tape_assign_U", "Parent" : "11"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.slab_assign_U", "Parent" : "11"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.output_U", "Parent" : "11"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561", "Parent" : "11", "Child" : ["24", "25", "26", "27", "28", "29", "42", "55", "68", "81", "94", "107", "120", "133"],
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
			{"State" : "ap_ST_fsm_state85", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_1_fu_1407"},
			{"State" : "ap_ST_fsm_state98", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_1_fu_1407"},
			{"State" : "ap_ST_fsm_state81", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_1419"},
			{"State" : "ap_ST_fsm_state31", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_10_fu_1432"},
			{"State" : "ap_ST_fsm_state28", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_fu_1448"},
			{"State" : "ap_ST_fsm_state54", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_fu_1448"},
			{"State" : "ap_ST_fsm_state77", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_fu_1448"},
			{"State" : "ap_ST_fsm_state94", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_4_fu_1460"},
			{"State" : "ap_ST_fsm_state79", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_7_fu_1471"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_3_fu_1483"},
			{"State" : "ap_ST_fsm_state92", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_3_fu_1483"},
			{"State" : "ap_ST_fsm_state83", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashFinal_fu_1494"},
			{"State" : "ap_ST_fsm_state96", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashFinal_fu_1494"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashInitializ_fu_1505"},
			{"State" : "ap_ST_fsm_state90", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashInitializ_fu_1505"}],
		"Port" : [
			{"Name" : "circuitOutput", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "as_hashes", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_Keccak_HashUpdate_10_fu_1432", "Port" : "data"}]},
			{"Name" : "challengeBits_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "salt_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "94", "SubInstance" : "grp_Keccak_HashUpdate_7_fu_1471", "Port" : "data_0"}]},
			{"Name" : "message", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_1419", "Port" : "data"}]},
			{"Name" : "messageByteLength", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "120", "SubInstance" : "grp_Keccak_HashFinal_fu_1494", "Port" : "KeccakRhoOffsets"},
					{"ID" : "68", "SubInstance" : "grp_Keccak_HashUpdate_fu_1448", "Port" : "KeccakRhoOffsets"},
					{"ID" : "55", "SubInstance" : "grp_Keccak_HashUpdate_10_fu_1432", "Port" : "KeccakRhoOffsets"},
					{"ID" : "42", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_1419", "Port" : "KeccakRhoOffsets"},
					{"ID" : "29", "SubInstance" : "grp_Keccak_HashSqueeze_1_fu_1407", "Port" : "KeccakRhoOffsets"},
					{"ID" : "81", "SubInstance" : "grp_Keccak_HashUpdate_4_fu_1460", "Port" : "KeccakRhoOffsets"},
					{"ID" : "107", "SubInstance" : "grp_Keccak_HashUpdate_3_fu_1483", "Port" : "KeccakRhoOffsets"},
					{"ID" : "94", "SubInstance" : "grp_Keccak_HashUpdate_7_fu_1471", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "120", "SubInstance" : "grp_Keccak_HashFinal_fu_1494", "Port" : "KeccakRoundConstants"},
					{"ID" : "68", "SubInstance" : "grp_Keccak_HashUpdate_fu_1448", "Port" : "KeccakRoundConstants"},
					{"ID" : "55", "SubInstance" : "grp_Keccak_HashUpdate_10_fu_1432", "Port" : "KeccakRoundConstants"},
					{"ID" : "42", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_1419", "Port" : "KeccakRoundConstants"},
					{"ID" : "29", "SubInstance" : "grp_Keccak_HashSqueeze_1_fu_1407", "Port" : "KeccakRoundConstants"},
					{"ID" : "81", "SubInstance" : "grp_Keccak_HashUpdate_4_fu_1460", "Port" : "KeccakRoundConstants"},
					{"ID" : "107", "SubInstance" : "grp_Keccak_HashUpdate_3_fu_1483", "Port" : "KeccakRoundConstants"},
					{"ID" : "94", "SubInstance" : "grp_Keccak_HashUpdate_7_fu_1471", "Port" : "KeccakRoundConstants"}]},
			{"Name" : "viewOutputs", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.temp_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.temp_4_U", "Parent" : "23"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.temp_3_U", "Parent" : "23"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.hash_U", "Parent" : "23"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.ctx_sponge_state_U", "Parent" : "23"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashSqueeze_1_fu_1407", "Parent" : "23", "Child" : ["30"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_247"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_247"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_247"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_247", "Port" : "state"}]},
			{"Name" : "instance_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_247", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_247", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashSqueeze_1_fu_1407.grp_KeccakP1600_Permute_s_fu_247", "Parent" : "29", "Child" : ["31", "32", "33", "34", "37", "39"],
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
	{"ID" : "31", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashSqueeze_1_fu_1407.grp_KeccakP1600_Permute_s_fu_247.KeccakRhoOffsets_U", "Parent" : "30"},
	{"ID" : "32", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashSqueeze_1_fu_1407.grp_KeccakP1600_Permute_s_fu_247.KeccakRoundConstants_U", "Parent" : "30"},
	{"ID" : "33", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashSqueeze_1_fu_1407.grp_KeccakP1600_Permute_s_fu_247.stateAsWords_U", "Parent" : "30"},
	{"ID" : "34", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashSqueeze_1_fu_1407.grp_KeccakP1600_Permute_s_fu_247.grp_theta_fu_225", "Parent" : "30", "Child" : ["35", "36"],
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
	{"ID" : "35", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashSqueeze_1_fu_1407.grp_KeccakP1600_Permute_s_fu_247.grp_theta_fu_225.C_U", "Parent" : "34"},
	{"ID" : "36", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashSqueeze_1_fu_1407.grp_KeccakP1600_Permute_s_fu_247.grp_theta_fu_225.D_U", "Parent" : "34"},
	{"ID" : "37", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashSqueeze_1_fu_1407.grp_KeccakP1600_Permute_s_fu_247.grp_chi_fu_230", "Parent" : "30", "Child" : ["38"],
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
	{"ID" : "38", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashSqueeze_1_fu_1407.grp_KeccakP1600_Permute_s_fu_247.grp_chi_fu_230.C_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashSqueeze_1_fu_1407.grp_KeccakP1600_Permute_s_fu_247.grp_pi_fu_235", "Parent" : "30", "Child" : ["40", "41"],
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
	{"ID" : "40", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashSqueeze_1_fu_1407.grp_KeccakP1600_Permute_s_fu_247.grp_pi_fu_235.tempA_U", "Parent" : "39"},
	{"ID" : "41", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashSqueeze_1_fu_1407.grp_KeccakP1600_Permute_s_fu_247.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "39"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_1_fu_1419", "Parent" : "23", "Child" : ["43"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_168"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_168"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_168", "Port" : "state"}]},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "databitlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_168", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_168", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "43", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_1_fu_1419.grp_KeccakP1600_Permute_s_fu_168", "Parent" : "42", "Child" : ["44", "45", "46", "47", "50", "52"],
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
	{"ID" : "44", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_1_fu_1419.grp_KeccakP1600_Permute_s_fu_168.KeccakRhoOffsets_U", "Parent" : "43"},
	{"ID" : "45", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_1_fu_1419.grp_KeccakP1600_Permute_s_fu_168.KeccakRoundConstants_U", "Parent" : "43"},
	{"ID" : "46", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_1_fu_1419.grp_KeccakP1600_Permute_s_fu_168.stateAsWords_U", "Parent" : "43"},
	{"ID" : "47", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_1_fu_1419.grp_KeccakP1600_Permute_s_fu_168.grp_theta_fu_225", "Parent" : "43", "Child" : ["48", "49"],
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
	{"ID" : "48", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_1_fu_1419.grp_KeccakP1600_Permute_s_fu_168.grp_theta_fu_225.C_U", "Parent" : "47"},
	{"ID" : "49", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_1_fu_1419.grp_KeccakP1600_Permute_s_fu_168.grp_theta_fu_225.D_U", "Parent" : "47"},
	{"ID" : "50", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_1_fu_1419.grp_KeccakP1600_Permute_s_fu_168.grp_chi_fu_230", "Parent" : "43", "Child" : ["51"],
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
	{"ID" : "51", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_1_fu_1419.grp_KeccakP1600_Permute_s_fu_168.grp_chi_fu_230.C_U", "Parent" : "50"},
	{"ID" : "52", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_1_fu_1419.grp_KeccakP1600_Permute_s_fu_168.grp_pi_fu_235", "Parent" : "43", "Child" : ["53", "54"],
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
	{"ID" : "53", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_1_fu_1419.grp_KeccakP1600_Permute_s_fu_168.grp_pi_fu_235.tempA_U", "Parent" : "52"},
	{"ID" : "54", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_1_fu_1419.grp_KeccakP1600_Permute_s_fu_168.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "52"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_10_fu_1432", "Parent" : "23", "Child" : ["56"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204", "Port" : "state"}]},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "56", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_10_fu_1432.grp_KeccakP1600_Permute_s_fu_204", "Parent" : "55", "Child" : ["57", "58", "59", "60", "63", "65"],
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
	{"ID" : "57", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_10_fu_1432.grp_KeccakP1600_Permute_s_fu_204.KeccakRhoOffsets_U", "Parent" : "56"},
	{"ID" : "58", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_10_fu_1432.grp_KeccakP1600_Permute_s_fu_204.KeccakRoundConstants_U", "Parent" : "56"},
	{"ID" : "59", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_10_fu_1432.grp_KeccakP1600_Permute_s_fu_204.stateAsWords_U", "Parent" : "56"},
	{"ID" : "60", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_10_fu_1432.grp_KeccakP1600_Permute_s_fu_204.grp_theta_fu_225", "Parent" : "56", "Child" : ["61", "62"],
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
	{"ID" : "61", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_10_fu_1432.grp_KeccakP1600_Permute_s_fu_204.grp_theta_fu_225.C_U", "Parent" : "60"},
	{"ID" : "62", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_10_fu_1432.grp_KeccakP1600_Permute_s_fu_204.grp_theta_fu_225.D_U", "Parent" : "60"},
	{"ID" : "63", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_10_fu_1432.grp_KeccakP1600_Permute_s_fu_204.grp_chi_fu_230", "Parent" : "56", "Child" : ["64"],
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
	{"ID" : "64", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_10_fu_1432.grp_KeccakP1600_Permute_s_fu_204.grp_chi_fu_230.C_U", "Parent" : "63"},
	{"ID" : "65", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_10_fu_1432.grp_KeccakP1600_Permute_s_fu_204.grp_pi_fu_235", "Parent" : "56", "Child" : ["66", "67"],
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
	{"ID" : "66", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_10_fu_1432.grp_KeccakP1600_Permute_s_fu_204.grp_pi_fu_235.tempA_U", "Parent" : "65"},
	{"ID" : "67", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_10_fu_1432.grp_KeccakP1600_Permute_s_fu_204.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "65"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_fu_1448", "Parent" : "23", "Child" : ["69"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "state"}]},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "69", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_fu_1448.grp_KeccakP1600_Permute_s_fu_176", "Parent" : "68", "Child" : ["70", "71", "72", "73", "76", "78"],
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
	{"ID" : "70", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_fu_1448.grp_KeccakP1600_Permute_s_fu_176.KeccakRhoOffsets_U", "Parent" : "69"},
	{"ID" : "71", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_fu_1448.grp_KeccakP1600_Permute_s_fu_176.KeccakRoundConstants_U", "Parent" : "69"},
	{"ID" : "72", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_fu_1448.grp_KeccakP1600_Permute_s_fu_176.stateAsWords_U", "Parent" : "69"},
	{"ID" : "73", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_fu_1448.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225", "Parent" : "69", "Child" : ["74", "75"],
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
	{"ID" : "74", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_fu_1448.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.C_U", "Parent" : "73"},
	{"ID" : "75", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_fu_1448.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.D_U", "Parent" : "73"},
	{"ID" : "76", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_fu_1448.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230", "Parent" : "69", "Child" : ["77"],
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
	{"ID" : "77", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_fu_1448.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230.C_U", "Parent" : "76"},
	{"ID" : "78", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_fu_1448.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235", "Parent" : "69", "Child" : ["79", "80"],
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
	{"ID" : "79", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_fu_1448.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.tempA_U", "Parent" : "78"},
	{"ID" : "80", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_fu_1448.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "78"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_4_fu_1460", "Parent" : "23", "Child" : ["82"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "state"}]},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "82", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_4_fu_1460.grp_KeccakP1600_Permute_s_fu_176", "Parent" : "81", "Child" : ["83", "84", "85", "86", "89", "91"],
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
	{"ID" : "83", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_4_fu_1460.grp_KeccakP1600_Permute_s_fu_176.KeccakRhoOffsets_U", "Parent" : "82"},
	{"ID" : "84", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_4_fu_1460.grp_KeccakP1600_Permute_s_fu_176.KeccakRoundConstants_U", "Parent" : "82"},
	{"ID" : "85", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_4_fu_1460.grp_KeccakP1600_Permute_s_fu_176.stateAsWords_U", "Parent" : "82"},
	{"ID" : "86", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_4_fu_1460.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225", "Parent" : "82", "Child" : ["87", "88"],
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
	{"ID" : "87", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_4_fu_1460.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.C_U", "Parent" : "86"},
	{"ID" : "88", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_4_fu_1460.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.D_U", "Parent" : "86"},
	{"ID" : "89", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_4_fu_1460.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230", "Parent" : "82", "Child" : ["90"],
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
	{"ID" : "90", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_4_fu_1460.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230.C_U", "Parent" : "89"},
	{"ID" : "91", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_4_fu_1460.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235", "Parent" : "82", "Child" : ["92", "93"],
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
	{"ID" : "92", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_4_fu_1460.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.tempA_U", "Parent" : "91"},
	{"ID" : "93", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_4_fu_1460.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "91"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_7_fu_1471", "Parent" : "23", "Child" : ["95"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "state"}]},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "95", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_7_fu_1471.grp_KeccakP1600_Permute_s_fu_176", "Parent" : "94", "Child" : ["96", "97", "98", "99", "102", "104"],
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
	{"ID" : "96", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_7_fu_1471.grp_KeccakP1600_Permute_s_fu_176.KeccakRhoOffsets_U", "Parent" : "95"},
	{"ID" : "97", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_7_fu_1471.grp_KeccakP1600_Permute_s_fu_176.KeccakRoundConstants_U", "Parent" : "95"},
	{"ID" : "98", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_7_fu_1471.grp_KeccakP1600_Permute_s_fu_176.stateAsWords_U", "Parent" : "95"},
	{"ID" : "99", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_7_fu_1471.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225", "Parent" : "95", "Child" : ["100", "101"],
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
	{"ID" : "100", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_7_fu_1471.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.C_U", "Parent" : "99"},
	{"ID" : "101", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_7_fu_1471.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.D_U", "Parent" : "99"},
	{"ID" : "102", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_7_fu_1471.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230", "Parent" : "95", "Child" : ["103"],
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
	{"ID" : "103", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_7_fu_1471.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230.C_U", "Parent" : "102"},
	{"ID" : "104", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_7_fu_1471.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235", "Parent" : "95", "Child" : ["105", "106"],
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
	{"ID" : "105", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_7_fu_1471.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.tempA_U", "Parent" : "104"},
	{"ID" : "106", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_7_fu_1471.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "104"},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_3_fu_1483", "Parent" : "23", "Child" : ["108"],
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "108", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "state"}]},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "108", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "108", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "108", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_3_fu_1483.grp_KeccakP1600_Permute_s_fu_54", "Parent" : "107", "Child" : ["109", "110", "111", "112", "115", "117"],
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
	{"ID" : "109", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_3_fu_1483.grp_KeccakP1600_Permute_s_fu_54.KeccakRhoOffsets_U", "Parent" : "108"},
	{"ID" : "110", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_3_fu_1483.grp_KeccakP1600_Permute_s_fu_54.KeccakRoundConstants_U", "Parent" : "108"},
	{"ID" : "111", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_3_fu_1483.grp_KeccakP1600_Permute_s_fu_54.stateAsWords_U", "Parent" : "108"},
	{"ID" : "112", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_3_fu_1483.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225", "Parent" : "108", "Child" : ["113", "114"],
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
	{"ID" : "113", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_3_fu_1483.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.C_U", "Parent" : "112"},
	{"ID" : "114", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_3_fu_1483.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.D_U", "Parent" : "112"},
	{"ID" : "115", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_3_fu_1483.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230", "Parent" : "108", "Child" : ["116"],
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
	{"ID" : "116", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_3_fu_1483.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230.C_U", "Parent" : "115"},
	{"ID" : "117", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_3_fu_1483.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235", "Parent" : "108", "Child" : ["118", "119"],
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
	{"ID" : "118", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_3_fu_1483.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.tempA_U", "Parent" : "117"},
	{"ID" : "119", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashUpdate_3_fu_1483.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "117"},
	{"ID" : "120", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashFinal_fu_1494", "Parent" : "23", "Child" : ["121"],
		"CDFG" : "Keccak_HashFinal",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_62"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "121", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_62", "Port" : "state"}]},
			{"Name" : "instance_sponge_byte_68", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "121", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_62", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "121", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_62", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "121", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashFinal_fu_1494.grp_KeccakP1600_Permute_s_fu_62", "Parent" : "120", "Child" : ["122", "123", "124", "125", "128", "130"],
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
	{"ID" : "122", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashFinal_fu_1494.grp_KeccakP1600_Permute_s_fu_62.KeccakRhoOffsets_U", "Parent" : "121"},
	{"ID" : "123", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashFinal_fu_1494.grp_KeccakP1600_Permute_s_fu_62.KeccakRoundConstants_U", "Parent" : "121"},
	{"ID" : "124", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashFinal_fu_1494.grp_KeccakP1600_Permute_s_fu_62.stateAsWords_U", "Parent" : "121"},
	{"ID" : "125", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashFinal_fu_1494.grp_KeccakP1600_Permute_s_fu_62.grp_theta_fu_225", "Parent" : "121", "Child" : ["126", "127"],
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
	{"ID" : "126", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashFinal_fu_1494.grp_KeccakP1600_Permute_s_fu_62.grp_theta_fu_225.C_U", "Parent" : "125"},
	{"ID" : "127", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashFinal_fu_1494.grp_KeccakP1600_Permute_s_fu_62.grp_theta_fu_225.D_U", "Parent" : "125"},
	{"ID" : "128", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashFinal_fu_1494.grp_KeccakP1600_Permute_s_fu_62.grp_chi_fu_230", "Parent" : "121", "Child" : ["129"],
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
	{"ID" : "129", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashFinal_fu_1494.grp_KeccakP1600_Permute_s_fu_62.grp_chi_fu_230.C_U", "Parent" : "128"},
	{"ID" : "130", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashFinal_fu_1494.grp_KeccakP1600_Permute_s_fu_62.grp_pi_fu_235", "Parent" : "121", "Child" : ["131", "132"],
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
	{"ID" : "131", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashFinal_fu_1494.grp_KeccakP1600_Permute_s_fu_62.grp_pi_fu_235.tempA_U", "Parent" : "130"},
	{"ID" : "132", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashFinal_fu_1494.grp_KeccakP1600_Permute_s_fu_62.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "130"},
	{"ID" : "133", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_561.grp_Keccak_HashInitializ_fu_1505", "Parent" : "23",
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
			{"Name" : "instance_sponge_state", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582", "Parent" : "11", "Child" : ["135", "136", "137", "138", "151", "165", "178", "191", "204", "217", "230"],
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
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_5_fu_926"},
			{"State" : "ap_ST_fsm_state68", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_5_fu_926"},
			{"State" : "ap_ST_fsm_state41", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_6_fu_942"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_10_fu_956"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_8_fu_970"},
			{"State" : "ap_ST_fsm_state39", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_fu_986"},
			{"State" : "ap_ST_fsm_state64", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_fu_986"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_3_fu_997"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_3_fu_997"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashFinal_fu_1009"},
			{"State" : "ap_ST_fsm_state66", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashFinal_fu_1009"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashInitializ_fu_1020"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashInitializ_fu_1020"}],
		"Port" : [
			{"Name" : "seed", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "178", "SubInstance" : "grp_Keccak_HashUpdate_8_fu_970", "Port" : "data"}]},
			{"Name" : "seed_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "seed_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "view_inputShare", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "view_inputShare_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "view_inputShare_offset3", "Type" : "None", "Direction" : "I"},
			{"Name" : "view_communicatedBits", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "grp_Keccak_HashUpdate_6_fu_942", "Port" : "data"}]},
			{"Name" : "view_communicatedBits_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "view_communicatedBits_offset4", "Type" : "None", "Direction" : "I"},
			{"Name" : "view_outputShare", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "view_outputShare_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "view_outputShare_offset5", "Type" : "None", "Direction" : "I"},
			{"Name" : "hash", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_Keccak_HashUpdate_10_fu_956", "Port" : "data"},
					{"ID" : "138", "SubInstance" : "grp_Keccak_HashSqueeze_5_fu_926", "Port" : "data"}]},
			{"Name" : "hash_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "hash_offset6", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "grp_Keccak_HashUpdate_6_fu_942", "Port" : "KeccakRhoOffsets"},
					{"ID" : "165", "SubInstance" : "grp_Keccak_HashUpdate_10_fu_956", "Port" : "KeccakRhoOffsets"},
					{"ID" : "138", "SubInstance" : "grp_Keccak_HashSqueeze_5_fu_926", "Port" : "KeccakRhoOffsets"},
					{"ID" : "191", "SubInstance" : "grp_Keccak_HashUpdate_fu_986", "Port" : "KeccakRhoOffsets"},
					{"ID" : "178", "SubInstance" : "grp_Keccak_HashUpdate_8_fu_970", "Port" : "KeccakRhoOffsets"},
					{"ID" : "217", "SubInstance" : "grp_Keccak_HashFinal_fu_1009", "Port" : "KeccakRhoOffsets"},
					{"ID" : "204", "SubInstance" : "grp_Keccak_HashUpdate_3_fu_997", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "grp_Keccak_HashUpdate_6_fu_942", "Port" : "KeccakRoundConstants"},
					{"ID" : "165", "SubInstance" : "grp_Keccak_HashUpdate_10_fu_956", "Port" : "KeccakRoundConstants"},
					{"ID" : "138", "SubInstance" : "grp_Keccak_HashSqueeze_5_fu_926", "Port" : "KeccakRoundConstants"},
					{"ID" : "191", "SubInstance" : "grp_Keccak_HashUpdate_fu_986", "Port" : "KeccakRoundConstants"},
					{"ID" : "178", "SubInstance" : "grp_Keccak_HashUpdate_8_fu_970", "Port" : "KeccakRoundConstants"},
					{"ID" : "217", "SubInstance" : "grp_Keccak_HashFinal_fu_1009", "Port" : "KeccakRoundConstants"},
					{"ID" : "204", "SubInstance" : "grp_Keccak_HashUpdate_3_fu_997", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "135", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.temp_U", "Parent" : "134"},
	{"ID" : "136", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.temp_5_U", "Parent" : "134"},
	{"ID" : "137", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.ctx_sponge_state_U", "Parent" : "134"},
	{"ID" : "138", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashSqueeze_5_fu_926", "Parent" : "134", "Child" : ["139"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_275"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_275"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_275"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_275", "Port" : "state"}]},
			{"Name" : "instance_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_275", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_275", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "139", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashSqueeze_5_fu_926.grp_KeccakP1600_Permute_s_fu_275", "Parent" : "138", "Child" : ["140", "141", "142", "143", "146", "148"],
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
	{"ID" : "140", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashSqueeze_5_fu_926.grp_KeccakP1600_Permute_s_fu_275.KeccakRhoOffsets_U", "Parent" : "139"},
	{"ID" : "141", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashSqueeze_5_fu_926.grp_KeccakP1600_Permute_s_fu_275.KeccakRoundConstants_U", "Parent" : "139"},
	{"ID" : "142", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashSqueeze_5_fu_926.grp_KeccakP1600_Permute_s_fu_275.stateAsWords_U", "Parent" : "139"},
	{"ID" : "143", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashSqueeze_5_fu_926.grp_KeccakP1600_Permute_s_fu_275.grp_theta_fu_225", "Parent" : "139", "Child" : ["144", "145"],
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
	{"ID" : "144", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashSqueeze_5_fu_926.grp_KeccakP1600_Permute_s_fu_275.grp_theta_fu_225.C_U", "Parent" : "143"},
	{"ID" : "145", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashSqueeze_5_fu_926.grp_KeccakP1600_Permute_s_fu_275.grp_theta_fu_225.D_U", "Parent" : "143"},
	{"ID" : "146", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashSqueeze_5_fu_926.grp_KeccakP1600_Permute_s_fu_275.grp_chi_fu_230", "Parent" : "139", "Child" : ["147"],
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
	{"ID" : "147", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashSqueeze_5_fu_926.grp_KeccakP1600_Permute_s_fu_275.grp_chi_fu_230.C_U", "Parent" : "146"},
	{"ID" : "148", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashSqueeze_5_fu_926.grp_KeccakP1600_Permute_s_fu_275.grp_pi_fu_235", "Parent" : "139", "Child" : ["149", "150"],
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
	{"ID" : "149", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashSqueeze_5_fu_926.grp_KeccakP1600_Permute_s_fu_275.grp_pi_fu_235.tempA_U", "Parent" : "148"},
	{"ID" : "150", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashSqueeze_5_fu_926.grp_KeccakP1600_Permute_s_fu_275.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "148"},
	{"ID" : "151", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_6_fu_942", "Parent" : "134", "Child" : ["152", "164"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_194"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_194"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "152", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_194", "Port" : "state"}]},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "152", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_194", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "152", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_194", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "152", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_6_fu_942.grp_KeccakP1600_Permute_s_fu_194", "Parent" : "151", "Child" : ["153", "154", "155", "156", "159", "161"],
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
	{"ID" : "153", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_6_fu_942.grp_KeccakP1600_Permute_s_fu_194.KeccakRhoOffsets_U", "Parent" : "152"},
	{"ID" : "154", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_6_fu_942.grp_KeccakP1600_Permute_s_fu_194.KeccakRoundConstants_U", "Parent" : "152"},
	{"ID" : "155", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_6_fu_942.grp_KeccakP1600_Permute_s_fu_194.stateAsWords_U", "Parent" : "152"},
	{"ID" : "156", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_6_fu_942.grp_KeccakP1600_Permute_s_fu_194.grp_theta_fu_225", "Parent" : "152", "Child" : ["157", "158"],
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
	{"ID" : "157", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_6_fu_942.grp_KeccakP1600_Permute_s_fu_194.grp_theta_fu_225.C_U", "Parent" : "156"},
	{"ID" : "158", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_6_fu_942.grp_KeccakP1600_Permute_s_fu_194.grp_theta_fu_225.D_U", "Parent" : "156"},
	{"ID" : "159", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_6_fu_942.grp_KeccakP1600_Permute_s_fu_194.grp_chi_fu_230", "Parent" : "152", "Child" : ["160"],
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
	{"ID" : "160", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_6_fu_942.grp_KeccakP1600_Permute_s_fu_194.grp_chi_fu_230.C_U", "Parent" : "159"},
	{"ID" : "161", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_6_fu_942.grp_KeccakP1600_Permute_s_fu_194.grp_pi_fu_235", "Parent" : "152", "Child" : ["162", "163"],
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
	{"ID" : "162", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_6_fu_942.grp_KeccakP1600_Permute_s_fu_194.grp_pi_fu_235.tempA_U", "Parent" : "161"},
	{"ID" : "163", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_6_fu_942.grp_KeccakP1600_Permute_s_fu_194.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "161"},
	{"ID" : "164", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_6_fu_942.crypto_sign_am_adocq_U139", "Parent" : "151"},
	{"ID" : "165", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_10_fu_956", "Parent" : "134", "Child" : ["166"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "166", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204", "Port" : "state"}]},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "166", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "166", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "166", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_10_fu_956.grp_KeccakP1600_Permute_s_fu_204", "Parent" : "165", "Child" : ["167", "168", "169", "170", "173", "175"],
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
	{"ID" : "167", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_10_fu_956.grp_KeccakP1600_Permute_s_fu_204.KeccakRhoOffsets_U", "Parent" : "166"},
	{"ID" : "168", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_10_fu_956.grp_KeccakP1600_Permute_s_fu_204.KeccakRoundConstants_U", "Parent" : "166"},
	{"ID" : "169", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_10_fu_956.grp_KeccakP1600_Permute_s_fu_204.stateAsWords_U", "Parent" : "166"},
	{"ID" : "170", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_10_fu_956.grp_KeccakP1600_Permute_s_fu_204.grp_theta_fu_225", "Parent" : "166", "Child" : ["171", "172"],
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
	{"ID" : "171", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_10_fu_956.grp_KeccakP1600_Permute_s_fu_204.grp_theta_fu_225.C_U", "Parent" : "170"},
	{"ID" : "172", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_10_fu_956.grp_KeccakP1600_Permute_s_fu_204.grp_theta_fu_225.D_U", "Parent" : "170"},
	{"ID" : "173", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_10_fu_956.grp_KeccakP1600_Permute_s_fu_204.grp_chi_fu_230", "Parent" : "166", "Child" : ["174"],
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
	{"ID" : "174", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_10_fu_956.grp_KeccakP1600_Permute_s_fu_204.grp_chi_fu_230.C_U", "Parent" : "173"},
	{"ID" : "175", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_10_fu_956.grp_KeccakP1600_Permute_s_fu_204.grp_pi_fu_235", "Parent" : "166", "Child" : ["176", "177"],
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
	{"ID" : "176", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_10_fu_956.grp_KeccakP1600_Permute_s_fu_204.grp_pi_fu_235.tempA_U", "Parent" : "175"},
	{"ID" : "177", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_10_fu_956.grp_KeccakP1600_Permute_s_fu_204.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "175"},
	{"ID" : "178", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_8_fu_970", "Parent" : "134", "Child" : ["179"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204", "Port" : "state"}]},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "179", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_8_fu_970.grp_KeccakP1600_Permute_s_fu_204", "Parent" : "178", "Child" : ["180", "181", "182", "183", "186", "188"],
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
	{"ID" : "180", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_8_fu_970.grp_KeccakP1600_Permute_s_fu_204.KeccakRhoOffsets_U", "Parent" : "179"},
	{"ID" : "181", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_8_fu_970.grp_KeccakP1600_Permute_s_fu_204.KeccakRoundConstants_U", "Parent" : "179"},
	{"ID" : "182", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_8_fu_970.grp_KeccakP1600_Permute_s_fu_204.stateAsWords_U", "Parent" : "179"},
	{"ID" : "183", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_8_fu_970.grp_KeccakP1600_Permute_s_fu_204.grp_theta_fu_225", "Parent" : "179", "Child" : ["184", "185"],
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
	{"ID" : "184", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_8_fu_970.grp_KeccakP1600_Permute_s_fu_204.grp_theta_fu_225.C_U", "Parent" : "183"},
	{"ID" : "185", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_8_fu_970.grp_KeccakP1600_Permute_s_fu_204.grp_theta_fu_225.D_U", "Parent" : "183"},
	{"ID" : "186", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_8_fu_970.grp_KeccakP1600_Permute_s_fu_204.grp_chi_fu_230", "Parent" : "179", "Child" : ["187"],
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
	{"ID" : "187", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_8_fu_970.grp_KeccakP1600_Permute_s_fu_204.grp_chi_fu_230.C_U", "Parent" : "186"},
	{"ID" : "188", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_8_fu_970.grp_KeccakP1600_Permute_s_fu_204.grp_pi_fu_235", "Parent" : "179", "Child" : ["189", "190"],
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
	{"ID" : "189", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_8_fu_970.grp_KeccakP1600_Permute_s_fu_204.grp_pi_fu_235.tempA_U", "Parent" : "188"},
	{"ID" : "190", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_8_fu_970.grp_KeccakP1600_Permute_s_fu_204.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "188"},
	{"ID" : "191", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_fu_986", "Parent" : "134", "Child" : ["192"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "192", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "state"}]},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "192", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "192", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "192", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_fu_986.grp_KeccakP1600_Permute_s_fu_176", "Parent" : "191", "Child" : ["193", "194", "195", "196", "199", "201"],
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
	{"ID" : "193", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_fu_986.grp_KeccakP1600_Permute_s_fu_176.KeccakRhoOffsets_U", "Parent" : "192"},
	{"ID" : "194", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_fu_986.grp_KeccakP1600_Permute_s_fu_176.KeccakRoundConstants_U", "Parent" : "192"},
	{"ID" : "195", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_fu_986.grp_KeccakP1600_Permute_s_fu_176.stateAsWords_U", "Parent" : "192"},
	{"ID" : "196", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_fu_986.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225", "Parent" : "192", "Child" : ["197", "198"],
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
	{"ID" : "197", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_fu_986.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.C_U", "Parent" : "196"},
	{"ID" : "198", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_fu_986.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.D_U", "Parent" : "196"},
	{"ID" : "199", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_fu_986.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230", "Parent" : "192", "Child" : ["200"],
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
	{"ID" : "200", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_fu_986.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230.C_U", "Parent" : "199"},
	{"ID" : "201", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_fu_986.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235", "Parent" : "192", "Child" : ["202", "203"],
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
	{"ID" : "202", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_fu_986.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.tempA_U", "Parent" : "201"},
	{"ID" : "203", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_fu_986.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "201"},
	{"ID" : "204", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_3_fu_997", "Parent" : "134", "Child" : ["205"],
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "205", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "state"}]},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "205", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "205", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "205", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_3_fu_997.grp_KeccakP1600_Permute_s_fu_54", "Parent" : "204", "Child" : ["206", "207", "208", "209", "212", "214"],
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
	{"ID" : "206", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_3_fu_997.grp_KeccakP1600_Permute_s_fu_54.KeccakRhoOffsets_U", "Parent" : "205"},
	{"ID" : "207", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_3_fu_997.grp_KeccakP1600_Permute_s_fu_54.KeccakRoundConstants_U", "Parent" : "205"},
	{"ID" : "208", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_3_fu_997.grp_KeccakP1600_Permute_s_fu_54.stateAsWords_U", "Parent" : "205"},
	{"ID" : "209", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_3_fu_997.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225", "Parent" : "205", "Child" : ["210", "211"],
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
	{"ID" : "210", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_3_fu_997.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.C_U", "Parent" : "209"},
	{"ID" : "211", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_3_fu_997.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.D_U", "Parent" : "209"},
	{"ID" : "212", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_3_fu_997.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230", "Parent" : "205", "Child" : ["213"],
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
	{"ID" : "213", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_3_fu_997.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230.C_U", "Parent" : "212"},
	{"ID" : "214", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_3_fu_997.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235", "Parent" : "205", "Child" : ["215", "216"],
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
	{"ID" : "215", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_3_fu_997.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.tempA_U", "Parent" : "214"},
	{"ID" : "216", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_3_fu_997.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "214"},
	{"ID" : "217", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashFinal_fu_1009", "Parent" : "134", "Child" : ["218"],
		"CDFG" : "Keccak_HashFinal",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_62"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "218", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_62", "Port" : "state"}]},
			{"Name" : "instance_sponge_byte_68", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "218", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_62", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "218", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_62", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "218", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashFinal_fu_1009.grp_KeccakP1600_Permute_s_fu_62", "Parent" : "217", "Child" : ["219", "220", "221", "222", "225", "227"],
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
	{"ID" : "219", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashFinal_fu_1009.grp_KeccakP1600_Permute_s_fu_62.KeccakRhoOffsets_U", "Parent" : "218"},
	{"ID" : "220", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashFinal_fu_1009.grp_KeccakP1600_Permute_s_fu_62.KeccakRoundConstants_U", "Parent" : "218"},
	{"ID" : "221", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashFinal_fu_1009.grp_KeccakP1600_Permute_s_fu_62.stateAsWords_U", "Parent" : "218"},
	{"ID" : "222", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashFinal_fu_1009.grp_KeccakP1600_Permute_s_fu_62.grp_theta_fu_225", "Parent" : "218", "Child" : ["223", "224"],
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
	{"ID" : "223", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashFinal_fu_1009.grp_KeccakP1600_Permute_s_fu_62.grp_theta_fu_225.C_U", "Parent" : "222"},
	{"ID" : "224", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashFinal_fu_1009.grp_KeccakP1600_Permute_s_fu_62.grp_theta_fu_225.D_U", "Parent" : "222"},
	{"ID" : "225", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashFinal_fu_1009.grp_KeccakP1600_Permute_s_fu_62.grp_chi_fu_230", "Parent" : "218", "Child" : ["226"],
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
	{"ID" : "226", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashFinal_fu_1009.grp_KeccakP1600_Permute_s_fu_62.grp_chi_fu_230.C_U", "Parent" : "225"},
	{"ID" : "227", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashFinal_fu_1009.grp_KeccakP1600_Permute_s_fu_62.grp_pi_fu_235", "Parent" : "218", "Child" : ["228", "229"],
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
	{"ID" : "228", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashFinal_fu_1009.grp_KeccakP1600_Permute_s_fu_62.grp_pi_fu_235.tempA_U", "Parent" : "227"},
	{"ID" : "229", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashFinal_fu_1009.grp_KeccakP1600_Permute_s_fu_62.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "227"},
	{"ID" : "230", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Commit_2_fu_582.grp_Keccak_HashInitializ_fu_1020", "Parent" : "134",
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
			{"Name" : "instance_sponge_state", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "231", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625", "Parent" : "11", "Child" : ["232", "233", "234", "235", "236", "249", "262", "275", "288", "301"],
		"CDFG" : "computeSeeds_2",
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
			{"State" : "ap_ST_fsm_state88", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_3_fu_1372"},
			{"State" : "ap_ST_fsm_state89", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_2_fu_1389"},
			{"State" : "ap_ST_fsm_state31", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_1402"},
			{"State" : "ap_ST_fsm_state29", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_fu_1415"},
			{"State" : "ap_ST_fsm_state54", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_fu_1415"},
			{"State" : "ap_ST_fsm_state77", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_fu_1415"},
			{"State" : "ap_ST_fsm_state79", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_1427"},
			{"State" : "ap_ST_fsm_state85", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_1441"}],
		"Port" : [
			{"Name" : "allSeeds_seed", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "236", "SubInstance" : "grp_Keccak_HashSqueeze_3_fu_1372", "Port" : "data"}]},
			{"Name" : "salt_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "249", "SubInstance" : "grp_Keccak_HashSqueeze_2_fu_1389", "Port" : "data_0"}]},
			{"Name" : "privateKey", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "publicKey", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "message", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "262", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_1402", "Port" : "data"}]},
			{"Name" : "messageByteLength", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "275", "SubInstance" : "grp_Keccak_HashUpdate_fu_1415", "Port" : "KeccakRhoOffsets"},
					{"ID" : "262", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_1402", "Port" : "KeccakRhoOffsets"},
					{"ID" : "236", "SubInstance" : "grp_Keccak_HashSqueeze_3_fu_1372", "Port" : "KeccakRhoOffsets"},
					{"ID" : "288", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_1427", "Port" : "KeccakRhoOffsets"},
					{"ID" : "249", "SubInstance" : "grp_Keccak_HashSqueeze_2_fu_1389", "Port" : "KeccakRhoOffsets"},
					{"ID" : "301", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_1441", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "275", "SubInstance" : "grp_Keccak_HashUpdate_fu_1415", "Port" : "KeccakRoundConstants"},
					{"ID" : "262", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_1402", "Port" : "KeccakRoundConstants"},
					{"ID" : "236", "SubInstance" : "grp_Keccak_HashSqueeze_3_fu_1372", "Port" : "KeccakRoundConstants"},
					{"ID" : "288", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_1427", "Port" : "KeccakRoundConstants"},
					{"ID" : "249", "SubInstance" : "grp_Keccak_HashSqueeze_2_fu_1389", "Port" : "KeccakRoundConstants"},
					{"ID" : "301", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_1441", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "232", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.temp_U", "Parent" : "231"},
	{"ID" : "233", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.temp_1_U", "Parent" : "231"},
	{"ID" : "234", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.temp_2_U", "Parent" : "231"},
	{"ID" : "235", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.ctx_sponge_state_U", "Parent" : "231"},
	{"ID" : "236", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashSqueeze_3_fu_1372", "Parent" : "231", "Child" : ["237"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_285"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_285"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_285"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "237", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_285", "Port" : "state"}]},
			{"Name" : "instance_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "237", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_285", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "237", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_285", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "237", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashSqueeze_3_fu_1372.grp_KeccakP1600_Permute_s_fu_285", "Parent" : "236", "Child" : ["238", "239", "240", "241", "244", "246"],
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
	{"ID" : "238", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashSqueeze_3_fu_1372.grp_KeccakP1600_Permute_s_fu_285.KeccakRhoOffsets_U", "Parent" : "237"},
	{"ID" : "239", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashSqueeze_3_fu_1372.grp_KeccakP1600_Permute_s_fu_285.KeccakRoundConstants_U", "Parent" : "237"},
	{"ID" : "240", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashSqueeze_3_fu_1372.grp_KeccakP1600_Permute_s_fu_285.stateAsWords_U", "Parent" : "237"},
	{"ID" : "241", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashSqueeze_3_fu_1372.grp_KeccakP1600_Permute_s_fu_285.grp_theta_fu_225", "Parent" : "237", "Child" : ["242", "243"],
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
	{"ID" : "242", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashSqueeze_3_fu_1372.grp_KeccakP1600_Permute_s_fu_285.grp_theta_fu_225.C_U", "Parent" : "241"},
	{"ID" : "243", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashSqueeze_3_fu_1372.grp_KeccakP1600_Permute_s_fu_285.grp_theta_fu_225.D_U", "Parent" : "241"},
	{"ID" : "244", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashSqueeze_3_fu_1372.grp_KeccakP1600_Permute_s_fu_285.grp_chi_fu_230", "Parent" : "237", "Child" : ["245"],
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
	{"ID" : "245", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashSqueeze_3_fu_1372.grp_KeccakP1600_Permute_s_fu_285.grp_chi_fu_230.C_U", "Parent" : "244"},
	{"ID" : "246", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashSqueeze_3_fu_1372.grp_KeccakP1600_Permute_s_fu_285.grp_pi_fu_235", "Parent" : "237", "Child" : ["247", "248"],
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
	{"ID" : "247", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashSqueeze_3_fu_1372.grp_KeccakP1600_Permute_s_fu_285.grp_pi_fu_235.tempA_U", "Parent" : "246"},
	{"ID" : "248", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashSqueeze_3_fu_1372.grp_KeccakP1600_Permute_s_fu_285.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "246"},
	{"ID" : "249", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashSqueeze_2_fu_1389", "Parent" : "231", "Child" : ["250"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_244"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_244"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_244"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "250", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_244", "Port" : "state"}]},
			{"Name" : "instance_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "250", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_244", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "250", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_244", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "250", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashSqueeze_2_fu_1389.grp_KeccakP1600_Permute_s_fu_244", "Parent" : "249", "Child" : ["251", "252", "253", "254", "257", "259"],
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
	{"ID" : "251", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashSqueeze_2_fu_1389.grp_KeccakP1600_Permute_s_fu_244.KeccakRhoOffsets_U", "Parent" : "250"},
	{"ID" : "252", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashSqueeze_2_fu_1389.grp_KeccakP1600_Permute_s_fu_244.KeccakRoundConstants_U", "Parent" : "250"},
	{"ID" : "253", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashSqueeze_2_fu_1389.grp_KeccakP1600_Permute_s_fu_244.stateAsWords_U", "Parent" : "250"},
	{"ID" : "254", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashSqueeze_2_fu_1389.grp_KeccakP1600_Permute_s_fu_244.grp_theta_fu_225", "Parent" : "250", "Child" : ["255", "256"],
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
	{"ID" : "255", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashSqueeze_2_fu_1389.grp_KeccakP1600_Permute_s_fu_244.grp_theta_fu_225.C_U", "Parent" : "254"},
	{"ID" : "256", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashSqueeze_2_fu_1389.grp_KeccakP1600_Permute_s_fu_244.grp_theta_fu_225.D_U", "Parent" : "254"},
	{"ID" : "257", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashSqueeze_2_fu_1389.grp_KeccakP1600_Permute_s_fu_244.grp_chi_fu_230", "Parent" : "250", "Child" : ["258"],
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
	{"ID" : "258", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashSqueeze_2_fu_1389.grp_KeccakP1600_Permute_s_fu_244.grp_chi_fu_230.C_U", "Parent" : "257"},
	{"ID" : "259", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashSqueeze_2_fu_1389.grp_KeccakP1600_Permute_s_fu_244.grp_pi_fu_235", "Parent" : "250", "Child" : ["260", "261"],
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
	{"ID" : "260", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashSqueeze_2_fu_1389.grp_KeccakP1600_Permute_s_fu_244.grp_pi_fu_235.tempA_U", "Parent" : "259"},
	{"ID" : "261", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashSqueeze_2_fu_1389.grp_KeccakP1600_Permute_s_fu_244.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "259"},
	{"ID" : "262", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_1_fu_1402", "Parent" : "231", "Child" : ["263"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_168"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_168"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "263", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_168", "Port" : "state"}]},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "databitlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "263", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_168", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "263", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_168", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "263", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_1_fu_1402.grp_KeccakP1600_Permute_s_fu_168", "Parent" : "262", "Child" : ["264", "265", "266", "267", "270", "272"],
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
	{"ID" : "264", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_1_fu_1402.grp_KeccakP1600_Permute_s_fu_168.KeccakRhoOffsets_U", "Parent" : "263"},
	{"ID" : "265", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_1_fu_1402.grp_KeccakP1600_Permute_s_fu_168.KeccakRoundConstants_U", "Parent" : "263"},
	{"ID" : "266", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_1_fu_1402.grp_KeccakP1600_Permute_s_fu_168.stateAsWords_U", "Parent" : "263"},
	{"ID" : "267", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_1_fu_1402.grp_KeccakP1600_Permute_s_fu_168.grp_theta_fu_225", "Parent" : "263", "Child" : ["268", "269"],
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
	{"ID" : "268", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_1_fu_1402.grp_KeccakP1600_Permute_s_fu_168.grp_theta_fu_225.C_U", "Parent" : "267"},
	{"ID" : "269", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_1_fu_1402.grp_KeccakP1600_Permute_s_fu_168.grp_theta_fu_225.D_U", "Parent" : "267"},
	{"ID" : "270", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_1_fu_1402.grp_KeccakP1600_Permute_s_fu_168.grp_chi_fu_230", "Parent" : "263", "Child" : ["271"],
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
	{"ID" : "271", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_1_fu_1402.grp_KeccakP1600_Permute_s_fu_168.grp_chi_fu_230.C_U", "Parent" : "270"},
	{"ID" : "272", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_1_fu_1402.grp_KeccakP1600_Permute_s_fu_168.grp_pi_fu_235", "Parent" : "263", "Child" : ["273", "274"],
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
	{"ID" : "273", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_1_fu_1402.grp_KeccakP1600_Permute_s_fu_168.grp_pi_fu_235.tempA_U", "Parent" : "272"},
	{"ID" : "274", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_1_fu_1402.grp_KeccakP1600_Permute_s_fu_168.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "272"},
	{"ID" : "275", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_fu_1415", "Parent" : "231", "Child" : ["276"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "276", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "state"}]},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "276", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "276", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "276", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_fu_1415.grp_KeccakP1600_Permute_s_fu_176", "Parent" : "275", "Child" : ["277", "278", "279", "280", "283", "285"],
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
	{"ID" : "277", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_fu_1415.grp_KeccakP1600_Permute_s_fu_176.KeccakRhoOffsets_U", "Parent" : "276"},
	{"ID" : "278", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_fu_1415.grp_KeccakP1600_Permute_s_fu_176.KeccakRoundConstants_U", "Parent" : "276"},
	{"ID" : "279", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_fu_1415.grp_KeccakP1600_Permute_s_fu_176.stateAsWords_U", "Parent" : "276"},
	{"ID" : "280", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_fu_1415.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225", "Parent" : "276", "Child" : ["281", "282"],
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
	{"ID" : "281", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_fu_1415.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.C_U", "Parent" : "280"},
	{"ID" : "282", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_fu_1415.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.D_U", "Parent" : "280"},
	{"ID" : "283", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_fu_1415.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230", "Parent" : "276", "Child" : ["284"],
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
	{"ID" : "284", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_fu_1415.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230.C_U", "Parent" : "283"},
	{"ID" : "285", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_fu_1415.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235", "Parent" : "276", "Child" : ["286", "287"],
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
	{"ID" : "286", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_fu_1415.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.tempA_U", "Parent" : "285"},
	{"ID" : "287", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_fu_1415.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "285"},
	{"ID" : "288", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_5_fu_1427", "Parent" : "231", "Child" : ["289"],
		"CDFG" : "Keccak_HashUpdate_5",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_173"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_173"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "289", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_173", "Port" : "state"}]},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "289", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_173", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "289", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_173", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "289", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_5_fu_1427.grp_KeccakP1600_Permute_s_fu_173", "Parent" : "288", "Child" : ["290", "291", "292", "293", "296", "298"],
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
	{"ID" : "290", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_5_fu_1427.grp_KeccakP1600_Permute_s_fu_173.KeccakRhoOffsets_U", "Parent" : "289"},
	{"ID" : "291", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_5_fu_1427.grp_KeccakP1600_Permute_s_fu_173.KeccakRoundConstants_U", "Parent" : "289"},
	{"ID" : "292", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_5_fu_1427.grp_KeccakP1600_Permute_s_fu_173.stateAsWords_U", "Parent" : "289"},
	{"ID" : "293", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_5_fu_1427.grp_KeccakP1600_Permute_s_fu_173.grp_theta_fu_225", "Parent" : "289", "Child" : ["294", "295"],
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
	{"ID" : "294", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_5_fu_1427.grp_KeccakP1600_Permute_s_fu_173.grp_theta_fu_225.C_U", "Parent" : "293"},
	{"ID" : "295", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_5_fu_1427.grp_KeccakP1600_Permute_s_fu_173.grp_theta_fu_225.D_U", "Parent" : "293"},
	{"ID" : "296", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_5_fu_1427.grp_KeccakP1600_Permute_s_fu_173.grp_chi_fu_230", "Parent" : "289", "Child" : ["297"],
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
	{"ID" : "297", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_5_fu_1427.grp_KeccakP1600_Permute_s_fu_173.grp_chi_fu_230.C_U", "Parent" : "296"},
	{"ID" : "298", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_5_fu_1427.grp_KeccakP1600_Permute_s_fu_173.grp_pi_fu_235", "Parent" : "289", "Child" : ["299", "300"],
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
	{"ID" : "299", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_5_fu_1427.grp_KeccakP1600_Permute_s_fu_173.grp_pi_fu_235.tempA_U", "Parent" : "298"},
	{"ID" : "300", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_5_fu_1427.grp_KeccakP1600_Permute_s_fu_173.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "298"},
	{"ID" : "301", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_KeccakP1600_Permute_s_fu_1441", "Parent" : "231", "Child" : ["302", "303", "304", "305", "308", "310"],
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
	{"ID" : "302", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_KeccakP1600_Permute_s_fu_1441.KeccakRhoOffsets_U", "Parent" : "301"},
	{"ID" : "303", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_KeccakP1600_Permute_s_fu_1441.KeccakRoundConstants_U", "Parent" : "301"},
	{"ID" : "304", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_KeccakP1600_Permute_s_fu_1441.stateAsWords_U", "Parent" : "301"},
	{"ID" : "305", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_KeccakP1600_Permute_s_fu_1441.grp_theta_fu_225", "Parent" : "301", "Child" : ["306", "307"],
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
	{"ID" : "306", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_KeccakP1600_Permute_s_fu_1441.grp_theta_fu_225.C_U", "Parent" : "305"},
	{"ID" : "307", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_KeccakP1600_Permute_s_fu_1441.grp_theta_fu_225.D_U", "Parent" : "305"},
	{"ID" : "308", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_KeccakP1600_Permute_s_fu_1441.grp_chi_fu_230", "Parent" : "301", "Child" : ["309"],
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
	{"ID" : "309", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_KeccakP1600_Permute_s_fu_1441.grp_chi_fu_230.C_U", "Parent" : "308"},
	{"ID" : "310", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_KeccakP1600_Permute_s_fu_1441.grp_pi_fu_235", "Parent" : "301", "Child" : ["311", "312"],
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
	{"ID" : "311", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_KeccakP1600_Permute_s_fu_1441.grp_pi_fu_235.tempA_U", "Parent" : "310"},
	{"ID" : "312", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_625.grp_KeccakP1600_Permute_s_fu_1441.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "310"},
	{"ID" : "313", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_647", "Parent" : "11", "Child" : ["314", "315", "319", "323", "331", "332", "333", "334", "335", "336", "337", "338", "339", "340", "341", "342", "343"],
		"CDFG" : "mpc_LowMC_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2169249", "EstimateLatencyMax" : "2169249",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_959"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_959"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_959"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_959"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_959"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_959"},
			{"State" : "ap_ST_fsm_state43", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_1_fu_980"},
			{"State" : "ap_ST_fsm_state45", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_1_fu_980"},
			{"State" : "ap_ST_fsm_state47", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_1_fu_980"},
			{"State" : "ap_ST_fsm_state29", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mpc_AND_2_fu_993"},
			{"State" : "ap_ST_fsm_state31", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mpc_AND_2_fu_993"},
			{"State" : "ap_ST_fsm_state33", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mpc_AND_2_fu_993"}],
		"Port" : [
			{"Name" : "tapes_tape", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "323", "SubInstance" : "grp_mpc_AND_2_fu_993", "Port" : "rand_tape"}]},
			{"Name" : "views_inputShare", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "315", "SubInstance" : "grp_matrix_mul_fu_959", "Port" : "state"}]},
			{"Name" : "views_inputShare_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "views_communicatedBi", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "323", "SubInstance" : "grp_mpc_AND_2_fu_993", "Port" : "views_communicatedBi"}]},
			{"Name" : "views_outputShare", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "slab", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "315", "SubInstance" : "grp_matrix_mul_fu_959", "Port" : "output_r"},
					{"ID" : "319", "SubInstance" : "grp_matrix_mul_1_fu_980", "Port" : "output_r"}]},
			{"Name" : "temp_matrix", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "315", "SubInstance" : "grp_matrix_mul_fu_959", "Port" : "temp_matrix"}]},
			{"Name" : "temp_matrix2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "319", "SubInstance" : "grp_matrix_mul_1_fu_980", "Port" : "temp_matrix2"}]},
			{"Name" : "temp_matrix3", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "314", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_647.temp_matrix3_U", "Parent" : "313"},
	{"ID" : "315", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_647.grp_matrix_mul_fu_959", "Parent" : "313", "Child" : ["316", "317", "318"],
		"CDFG" : "matrix_mul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9234", "EstimateLatencyMax" : "9234",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "state", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "state_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "matrix_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_matrix", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "316", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_647.grp_matrix_mul_fu_959.temp_matrix_U", "Parent" : "315"},
	{"ID" : "317", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_647.grp_matrix_mul_fu_959.prod_U", "Parent" : "315"},
	{"ID" : "318", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_647.grp_matrix_mul_fu_959.temp_U", "Parent" : "315"},
	{"ID" : "319", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_647.grp_matrix_mul_1_fu_980", "Parent" : "313", "Child" : ["320", "321", "322"],
		"CDFG" : "matrix_mul_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9234", "EstimateLatencyMax" : "9234",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "state_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "matrix_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_matrix2", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "320", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_647.grp_matrix_mul_1_fu_980.temp_matrix2_U", "Parent" : "319"},
	{"ID" : "321", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_647.grp_matrix_mul_1_fu_980.prod_U", "Parent" : "319"},
	{"ID" : "322", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_647.grp_matrix_mul_1_fu_980.temp_U", "Parent" : "319"},
	{"ID" : "323", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_647.grp_mpc_AND_2_fu_993", "Parent" : "313", "Child" : ["324", "325", "326", "327", "328", "329", "330"],
		"CDFG" : "mpc_AND_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in1_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in1_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in1_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in2_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in2_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in2_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "rand_tape", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rand_pos_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "views_communicatedBi", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "views_communicatedBits_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "324", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_647.grp_mpc_AND_2_fu_993.crypto_sign_mux_3jbC_U80", "Parent" : "323"},
	{"ID" : "325", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_647.grp_mpc_AND_2_fu_993.crypto_sign_mux_3jbC_U81", "Parent" : "323"},
	{"ID" : "326", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_647.grp_mpc_AND_2_fu_993.crypto_sign_mux_3jbC_U82", "Parent" : "323"},
	{"ID" : "327", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_647.grp_mpc_AND_2_fu_993.crypto_sign_mux_3jbC_U83", "Parent" : "323"},
	{"ID" : "328", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_647.grp_mpc_AND_2_fu_993.crypto_sign_mux_3jbC_U84", "Parent" : "323"},
	{"ID" : "329", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_647.grp_mpc_AND_2_fu_993.crypto_sign_mux_3jbC_U85", "Parent" : "323"},
	{"ID" : "330", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_647.grp_mpc_AND_2_fu_993.crypto_sign_ama_akbM_U86", "Parent" : "323"},
	{"ID" : "331", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_647.crypto_sign_mux_4ncg_U106", "Parent" : "313"},
	{"ID" : "332", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_647.crypto_sign_mux_3jbC_U107", "Parent" : "313"},
	{"ID" : "333", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_647.crypto_sign_mux_3jbC_U108", "Parent" : "313"},
	{"ID" : "334", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_647.crypto_sign_mux_3jbC_U109", "Parent" : "313"},
	{"ID" : "335", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_647.crypto_sign_mux_3jbC_U110", "Parent" : "313"},
	{"ID" : "336", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_647.crypto_sign_mux_3jbC_U111", "Parent" : "313"},
	{"ID" : "337", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_647.crypto_sign_mux_3jbC_U112", "Parent" : "313"},
	{"ID" : "338", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_647.crypto_sign_mux_3jbC_U113", "Parent" : "313"},
	{"ID" : "339", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_647.crypto_sign_mux_3jbC_U114", "Parent" : "313"},
	{"ID" : "340", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_647.crypto_sign_mux_3jbC_U115", "Parent" : "313"},
	{"ID" : "341", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_647.crypto_sign_mux_4ncg_U116", "Parent" : "313"},
	{"ID" : "342", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_647.crypto_sign_mux_4ncg_U117", "Parent" : "313"},
	{"ID" : "343", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_647.crypto_sign_mux_4ncg_U118", "Parent" : "313"},
	{"ID" : "344", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashSqueeze_4_fu_666", "Parent" : "11", "Child" : ["345"],
		"CDFG" : "Keccak_HashSqueeze_4",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_241"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_241"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_241"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "345", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_241", "Port" : "state"}]},
			{"Name" : "instance_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "databitlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "345", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_241", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "345", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_241", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "345", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashSqueeze_4_fu_666.grp_KeccakP1600_Permute_s_fu_241", "Parent" : "344", "Child" : ["346", "347", "348", "349", "352", "354"],
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
	{"ID" : "346", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashSqueeze_4_fu_666.grp_KeccakP1600_Permute_s_fu_241.KeccakRhoOffsets_U", "Parent" : "345"},
	{"ID" : "347", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashSqueeze_4_fu_666.grp_KeccakP1600_Permute_s_fu_241.KeccakRoundConstants_U", "Parent" : "345"},
	{"ID" : "348", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashSqueeze_4_fu_666.grp_KeccakP1600_Permute_s_fu_241.stateAsWords_U", "Parent" : "345"},
	{"ID" : "349", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashSqueeze_4_fu_666.grp_KeccakP1600_Permute_s_fu_241.grp_theta_fu_225", "Parent" : "345", "Child" : ["350", "351"],
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
	{"ID" : "350", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashSqueeze_4_fu_666.grp_KeccakP1600_Permute_s_fu_241.grp_theta_fu_225.C_U", "Parent" : "349"},
	{"ID" : "351", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashSqueeze_4_fu_666.grp_KeccakP1600_Permute_s_fu_241.grp_theta_fu_225.D_U", "Parent" : "349"},
	{"ID" : "352", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashSqueeze_4_fu_666.grp_KeccakP1600_Permute_s_fu_241.grp_chi_fu_230", "Parent" : "345", "Child" : ["353"],
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
	{"ID" : "353", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashSqueeze_4_fu_666.grp_KeccakP1600_Permute_s_fu_241.grp_chi_fu_230.C_U", "Parent" : "352"},
	{"ID" : "354", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashSqueeze_4_fu_666.grp_KeccakP1600_Permute_s_fu_241.grp_pi_fu_235", "Parent" : "345", "Child" : ["355", "356"],
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
	{"ID" : "355", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashSqueeze_4_fu_666.grp_KeccakP1600_Permute_s_fu_241.grp_pi_fu_235.tempA_U", "Parent" : "354"},
	{"ID" : "356", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashSqueeze_4_fu_666.grp_KeccakP1600_Permute_s_fu_241.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "354"},
	{"ID" : "357", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashSqueeze_fu_681", "Parent" : "11", "Child" : ["358"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_239"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_239"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_239"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "358", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_239", "Port" : "state"}]},
			{"Name" : "instance_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "databitlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "358", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_239", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "358", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_239", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "358", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashSqueeze_fu_681.grp_KeccakP1600_Permute_s_fu_239", "Parent" : "357", "Child" : ["359", "360", "361", "362", "365", "367"],
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
	{"ID" : "359", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashSqueeze_fu_681.grp_KeccakP1600_Permute_s_fu_239.KeccakRhoOffsets_U", "Parent" : "358"},
	{"ID" : "360", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashSqueeze_fu_681.grp_KeccakP1600_Permute_s_fu_239.KeccakRoundConstants_U", "Parent" : "358"},
	{"ID" : "361", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashSqueeze_fu_681.grp_KeccakP1600_Permute_s_fu_239.stateAsWords_U", "Parent" : "358"},
	{"ID" : "362", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashSqueeze_fu_681.grp_KeccakP1600_Permute_s_fu_239.grp_theta_fu_225", "Parent" : "358", "Child" : ["363", "364"],
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
	{"ID" : "363", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashSqueeze_fu_681.grp_KeccakP1600_Permute_s_fu_239.grp_theta_fu_225.C_U", "Parent" : "362"},
	{"ID" : "364", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashSqueeze_fu_681.grp_KeccakP1600_Permute_s_fu_239.grp_theta_fu_225.D_U", "Parent" : "362"},
	{"ID" : "365", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashSqueeze_fu_681.grp_KeccakP1600_Permute_s_fu_239.grp_chi_fu_230", "Parent" : "358", "Child" : ["366"],
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
	{"ID" : "366", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashSqueeze_fu_681.grp_KeccakP1600_Permute_s_fu_239.grp_chi_fu_230.C_U", "Parent" : "365"},
	{"ID" : "367", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashSqueeze_fu_681.grp_KeccakP1600_Permute_s_fu_239.grp_pi_fu_235", "Parent" : "358", "Child" : ["368", "369"],
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
	{"ID" : "368", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashSqueeze_fu_681.grp_KeccakP1600_Permute_s_fu_239.grp_pi_fu_235.tempA_U", "Parent" : "367"},
	{"ID" : "369", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashSqueeze_fu_681.grp_KeccakP1600_Permute_s_fu_239.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "367"},
	{"ID" : "370", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_8_fu_696", "Parent" : "11", "Child" : ["371"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "371", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204", "Port" : "state"}]},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "371", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "371", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "371", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_8_fu_696.grp_KeccakP1600_Permute_s_fu_204", "Parent" : "370", "Child" : ["372", "373", "374", "375", "378", "380"],
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
	{"ID" : "372", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_8_fu_696.grp_KeccakP1600_Permute_s_fu_204.KeccakRhoOffsets_U", "Parent" : "371"},
	{"ID" : "373", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_8_fu_696.grp_KeccakP1600_Permute_s_fu_204.KeccakRoundConstants_U", "Parent" : "371"},
	{"ID" : "374", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_8_fu_696.grp_KeccakP1600_Permute_s_fu_204.stateAsWords_U", "Parent" : "371"},
	{"ID" : "375", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_8_fu_696.grp_KeccakP1600_Permute_s_fu_204.grp_theta_fu_225", "Parent" : "371", "Child" : ["376", "377"],
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
	{"ID" : "376", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_8_fu_696.grp_KeccakP1600_Permute_s_fu_204.grp_theta_fu_225.C_U", "Parent" : "375"},
	{"ID" : "377", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_8_fu_696.grp_KeccakP1600_Permute_s_fu_204.grp_theta_fu_225.D_U", "Parent" : "375"},
	{"ID" : "378", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_8_fu_696.grp_KeccakP1600_Permute_s_fu_204.grp_chi_fu_230", "Parent" : "371", "Child" : ["379"],
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
	{"ID" : "379", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_8_fu_696.grp_KeccakP1600_Permute_s_fu_204.grp_chi_fu_230.C_U", "Parent" : "378"},
	{"ID" : "380", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_8_fu_696.grp_KeccakP1600_Permute_s_fu_204.grp_pi_fu_235", "Parent" : "371", "Child" : ["381", "382"],
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
	{"ID" : "381", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_8_fu_696.grp_KeccakP1600_Permute_s_fu_204.grp_pi_fu_235.tempA_U", "Parent" : "380"},
	{"ID" : "382", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_8_fu_696.grp_KeccakP1600_Permute_s_fu_204.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "380"},
	{"ID" : "383", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_9_fu_711", "Parent" : "11", "Child" : ["384"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_168"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_168"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "384", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_168", "Port" : "state"}]},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "384", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_168", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "384", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_168", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "384", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_9_fu_711.grp_KeccakP1600_Permute_s_fu_168", "Parent" : "383", "Child" : ["385", "386", "387", "388", "391", "393"],
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
	{"ID" : "385", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_9_fu_711.grp_KeccakP1600_Permute_s_fu_168.KeccakRhoOffsets_U", "Parent" : "384"},
	{"ID" : "386", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_9_fu_711.grp_KeccakP1600_Permute_s_fu_168.KeccakRoundConstants_U", "Parent" : "384"},
	{"ID" : "387", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_9_fu_711.grp_KeccakP1600_Permute_s_fu_168.stateAsWords_U", "Parent" : "384"},
	{"ID" : "388", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_9_fu_711.grp_KeccakP1600_Permute_s_fu_168.grp_theta_fu_225", "Parent" : "384", "Child" : ["389", "390"],
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
	{"ID" : "389", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_9_fu_711.grp_KeccakP1600_Permute_s_fu_168.grp_theta_fu_225.C_U", "Parent" : "388"},
	{"ID" : "390", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_9_fu_711.grp_KeccakP1600_Permute_s_fu_168.grp_theta_fu_225.D_U", "Parent" : "388"},
	{"ID" : "391", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_9_fu_711.grp_KeccakP1600_Permute_s_fu_168.grp_chi_fu_230", "Parent" : "384", "Child" : ["392"],
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
	{"ID" : "392", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_9_fu_711.grp_KeccakP1600_Permute_s_fu_168.grp_chi_fu_230.C_U", "Parent" : "391"},
	{"ID" : "393", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_9_fu_711.grp_KeccakP1600_Permute_s_fu_168.grp_pi_fu_235", "Parent" : "384", "Child" : ["394", "395"],
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
	{"ID" : "394", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_9_fu_711.grp_KeccakP1600_Permute_s_fu_168.grp_pi_fu_235.tempA_U", "Parent" : "393"},
	{"ID" : "395", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_9_fu_711.grp_KeccakP1600_Permute_s_fu_168.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "393"},
	{"ID" : "396", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_2_fu_721", "Parent" : "11", "Child" : ["397"],
		"CDFG" : "Keccak_HashUpdate_2",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_166"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_166"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "397", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_166", "Port" : "state"}]},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "397", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_166", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "397", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_166", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "397", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_2_fu_721.grp_KeccakP1600_Permute_s_fu_166", "Parent" : "396", "Child" : ["398", "399", "400", "401", "404", "406"],
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
	{"ID" : "398", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_2_fu_721.grp_KeccakP1600_Permute_s_fu_166.KeccakRhoOffsets_U", "Parent" : "397"},
	{"ID" : "399", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_2_fu_721.grp_KeccakP1600_Permute_s_fu_166.KeccakRoundConstants_U", "Parent" : "397"},
	{"ID" : "400", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_2_fu_721.grp_KeccakP1600_Permute_s_fu_166.stateAsWords_U", "Parent" : "397"},
	{"ID" : "401", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_2_fu_721.grp_KeccakP1600_Permute_s_fu_166.grp_theta_fu_225", "Parent" : "397", "Child" : ["402", "403"],
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
	{"ID" : "402", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_2_fu_721.grp_KeccakP1600_Permute_s_fu_166.grp_theta_fu_225.C_U", "Parent" : "401"},
	{"ID" : "403", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_2_fu_721.grp_KeccakP1600_Permute_s_fu_166.grp_theta_fu_225.D_U", "Parent" : "401"},
	{"ID" : "404", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_2_fu_721.grp_KeccakP1600_Permute_s_fu_166.grp_chi_fu_230", "Parent" : "397", "Child" : ["405"],
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
	{"ID" : "405", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_2_fu_721.grp_KeccakP1600_Permute_s_fu_166.grp_chi_fu_230.C_U", "Parent" : "404"},
	{"ID" : "406", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_2_fu_721.grp_KeccakP1600_Permute_s_fu_166.grp_pi_fu_235", "Parent" : "397", "Child" : ["407", "408"],
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
	{"ID" : "407", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_2_fu_721.grp_KeccakP1600_Permute_s_fu_166.grp_pi_fu_235.tempA_U", "Parent" : "406"},
	{"ID" : "408", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_2_fu_721.grp_KeccakP1600_Permute_s_fu_166.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "406"},
	{"ID" : "409", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_7_fu_731", "Parent" : "11", "Child" : ["410"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "410", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "state"}]},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "410", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "410", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "410", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_7_fu_731.grp_KeccakP1600_Permute_s_fu_176", "Parent" : "409", "Child" : ["411", "412", "413", "414", "417", "419"],
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
	{"ID" : "411", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_7_fu_731.grp_KeccakP1600_Permute_s_fu_176.KeccakRhoOffsets_U", "Parent" : "410"},
	{"ID" : "412", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_7_fu_731.grp_KeccakP1600_Permute_s_fu_176.KeccakRoundConstants_U", "Parent" : "410"},
	{"ID" : "413", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_7_fu_731.grp_KeccakP1600_Permute_s_fu_176.stateAsWords_U", "Parent" : "410"},
	{"ID" : "414", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_7_fu_731.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225", "Parent" : "410", "Child" : ["415", "416"],
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
	{"ID" : "415", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_7_fu_731.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.C_U", "Parent" : "414"},
	{"ID" : "416", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_7_fu_731.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.D_U", "Parent" : "414"},
	{"ID" : "417", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_7_fu_731.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230", "Parent" : "410", "Child" : ["418"],
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
	{"ID" : "418", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_7_fu_731.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230.C_U", "Parent" : "417"},
	{"ID" : "419", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_7_fu_731.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235", "Parent" : "410", "Child" : ["420", "421"],
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
	{"ID" : "420", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_7_fu_731.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.tempA_U", "Parent" : "419"},
	{"ID" : "421", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_7_fu_731.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "419"},
	{"ID" : "422", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_5_fu_743", "Parent" : "11", "Child" : ["423"],
		"CDFG" : "Keccak_HashUpdate_5",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_173"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_173"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "423", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_173", "Port" : "state"}]},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "423", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_173", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "423", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_173", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "423", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_5_fu_743.grp_KeccakP1600_Permute_s_fu_173", "Parent" : "422", "Child" : ["424", "425", "426", "427", "430", "432"],
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
	{"ID" : "424", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_5_fu_743.grp_KeccakP1600_Permute_s_fu_173.KeccakRhoOffsets_U", "Parent" : "423"},
	{"ID" : "425", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_5_fu_743.grp_KeccakP1600_Permute_s_fu_173.KeccakRoundConstants_U", "Parent" : "423"},
	{"ID" : "426", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_5_fu_743.grp_KeccakP1600_Permute_s_fu_173.stateAsWords_U", "Parent" : "423"},
	{"ID" : "427", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_5_fu_743.grp_KeccakP1600_Permute_s_fu_173.grp_theta_fu_225", "Parent" : "423", "Child" : ["428", "429"],
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
	{"ID" : "428", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_5_fu_743.grp_KeccakP1600_Permute_s_fu_173.grp_theta_fu_225.C_U", "Parent" : "427"},
	{"ID" : "429", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_5_fu_743.grp_KeccakP1600_Permute_s_fu_173.grp_theta_fu_225.D_U", "Parent" : "427"},
	{"ID" : "430", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_5_fu_743.grp_KeccakP1600_Permute_s_fu_173.grp_chi_fu_230", "Parent" : "423", "Child" : ["431"],
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
	{"ID" : "431", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_5_fu_743.grp_KeccakP1600_Permute_s_fu_173.grp_chi_fu_230.C_U", "Parent" : "430"},
	{"ID" : "432", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_5_fu_743.grp_KeccakP1600_Permute_s_fu_173.grp_pi_fu_235", "Parent" : "423", "Child" : ["433", "434"],
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
	{"ID" : "433", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_5_fu_743.grp_KeccakP1600_Permute_s_fu_173.grp_pi_fu_235.tempA_U", "Parent" : "432"},
	{"ID" : "434", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_5_fu_743.grp_KeccakP1600_Permute_s_fu_173.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "432"},
	{"ID" : "435", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_3_fu_759", "Parent" : "11", "Child" : ["436"],
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "436", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "state"}]},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "436", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "436", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "436", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_3_fu_759.grp_KeccakP1600_Permute_s_fu_54", "Parent" : "435", "Child" : ["437", "438", "439", "440", "443", "445"],
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
	{"ID" : "437", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_3_fu_759.grp_KeccakP1600_Permute_s_fu_54.KeccakRhoOffsets_U", "Parent" : "436"},
	{"ID" : "438", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_3_fu_759.grp_KeccakP1600_Permute_s_fu_54.KeccakRoundConstants_U", "Parent" : "436"},
	{"ID" : "439", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_3_fu_759.grp_KeccakP1600_Permute_s_fu_54.stateAsWords_U", "Parent" : "436"},
	{"ID" : "440", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_3_fu_759.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225", "Parent" : "436", "Child" : ["441", "442"],
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
	{"ID" : "441", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_3_fu_759.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.C_U", "Parent" : "440"},
	{"ID" : "442", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_3_fu_759.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.D_U", "Parent" : "440"},
	{"ID" : "443", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_3_fu_759.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230", "Parent" : "436", "Child" : ["444"],
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
	{"ID" : "444", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_3_fu_759.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230.C_U", "Parent" : "443"},
	{"ID" : "445", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_3_fu_759.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235", "Parent" : "436", "Child" : ["446", "447"],
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
	{"ID" : "446", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_3_fu_759.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.tempA_U", "Parent" : "445"},
	{"ID" : "447", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashUpdate_3_fu_759.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "445"},
	{"ID" : "448", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashFinal_fu_770", "Parent" : "11", "Child" : ["449"],
		"CDFG" : "Keccak_HashFinal",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_62"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "449", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_62", "Port" : "state"}]},
			{"Name" : "instance_sponge_byte_68", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "449", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_62", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "449", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_62", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "449", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashFinal_fu_770.grp_KeccakP1600_Permute_s_fu_62", "Parent" : "448", "Child" : ["450", "451", "452", "453", "456", "458"],
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
	{"ID" : "450", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashFinal_fu_770.grp_KeccakP1600_Permute_s_fu_62.KeccakRhoOffsets_U", "Parent" : "449"},
	{"ID" : "451", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashFinal_fu_770.grp_KeccakP1600_Permute_s_fu_62.KeccakRoundConstants_U", "Parent" : "449"},
	{"ID" : "452", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashFinal_fu_770.grp_KeccakP1600_Permute_s_fu_62.stateAsWords_U", "Parent" : "449"},
	{"ID" : "453", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashFinal_fu_770.grp_KeccakP1600_Permute_s_fu_62.grp_theta_fu_225", "Parent" : "449", "Child" : ["454", "455"],
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
	{"ID" : "454", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashFinal_fu_770.grp_KeccakP1600_Permute_s_fu_62.grp_theta_fu_225.C_U", "Parent" : "453"},
	{"ID" : "455", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashFinal_fu_770.grp_KeccakP1600_Permute_s_fu_62.grp_theta_fu_225.D_U", "Parent" : "453"},
	{"ID" : "456", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashFinal_fu_770.grp_KeccakP1600_Permute_s_fu_62.grp_chi_fu_230", "Parent" : "449", "Child" : ["457"],
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
	{"ID" : "457", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashFinal_fu_770.grp_KeccakP1600_Permute_s_fu_62.grp_chi_fu_230.C_U", "Parent" : "456"},
	{"ID" : "458", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashFinal_fu_770.grp_KeccakP1600_Permute_s_fu_62.grp_pi_fu_235", "Parent" : "449", "Child" : ["459", "460"],
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
	{"ID" : "459", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashFinal_fu_770.grp_KeccakP1600_Permute_s_fu_62.grp_pi_fu_235.tempA_U", "Parent" : "458"},
	{"ID" : "460", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashFinal_fu_770.grp_KeccakP1600_Permute_s_fu_62.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "458"},
	{"ID" : "461", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_prove_26_fu_781", "Parent" : "11", "Child" : ["462"],
		"CDFG" : "prove_26",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "548", "EstimateLatencyMax" : "564",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "proof_0_seed1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "proof_seed1_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "proof_0_seed2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "proof_0_inputShare", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "proof_0_communicatedBits", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "proof_0_view3Commitment", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "challenge", "Type" : "None", "Direction" : "I"},
			{"Name" : "seeds_seed", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "views_inputShare", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "views_communicatedBits", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "commitments_hashes", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "462", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_prove_26_fu_781.crypto_sign_am_adrcU_U177", "Parent" : "461"},
	{"ID" : "463", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_Keccak_HashInitializ_fu_802", "Parent" : "11",
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
			{"Name" : "instance_sponge_state", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "464", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_serializeSignature_fu_388", "Parent" : "0",
		"CDFG" : "serializeSignature",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "240749", "EstimateLatencyMax" : "258707",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "sig_0_proofs_seed1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sig_0_proofs_seed2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sig_0_proofs_inputS", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sig_0_proofs_commun", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sig_0_proofs_view3C", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sig_0_challengeBits", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sig_0_salt", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sigBytes", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sigBytes_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	picnic_sign {
		sk_data {Type I LastRead 6 FirstWrite -1}
		sk_pk_plaintext {Type I LastRead 6 FirstWrite -1}
		sk_pk_ciphertext {Type I LastRead 6 FirstWrite -1}
		message {Type I LastRead 4 FirstWrite -1}
		message_len {Type I LastRead 0 FirstWrite -1}
		signature {Type O LastRead -1 FirstWrite 2}
		signature_offset {Type I LastRead 0 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}
		temp_matrix {Type I LastRead -1 FirstWrite -1}
		temp_matrix2 {Type I LastRead -1 FirstWrite -1}
		temp_matrix3 {Type I LastRead -1 FirstWrite -1}
		viewOutputs {Type IO LastRead 9 FirstWrite -1}}
	sign_picnic1 {
		privateKey {Type I LastRead 29 FirstWrite -1}
		pubKey {Type I LastRead 17 FirstWrite -1}
		plaintext {Type I LastRead 25 FirstWrite -1}
		message {Type I LastRead 4 FirstWrite -1}
		messageByteLength {Type I LastRead 0 FirstWrite -1}
		sig_0_proofs_seed1 {Type O LastRead -1 FirstWrite 2}
		sig_0_proofs_seed2 {Type O LastRead -1 FirstWrite 3}
		sig_0_proofs_inputS {Type O LastRead -1 FirstWrite 4}
		sig_0_proofs_commun {Type O LastRead -1 FirstWrite 6}
		sig_0_proofs_view3C {Type O LastRead -1 FirstWrite 7}
		sig_0_challengeBits {Type IO LastRead 32 FirstWrite 3}
		sig_0_salt {Type IO LastRead 4 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}
		temp_matrix {Type I LastRead -1 FirstWrite -1}
		temp_matrix2 {Type I LastRead -1 FirstWrite -1}
		temp_matrix3 {Type I LastRead -1 FirstWrite -1}
		viewOutputs {Type IO LastRead 9 FirstWrite -1}}
	H3_2 {
		circuitOutput {Type I LastRead 10 FirstWrite -1}
		plaintext {Type I LastRead 18 FirstWrite -1}
		as_hashes {Type I LastRead 4 FirstWrite -1}
		challengeBits_0 {Type IO LastRead 32 FirstWrite 3}
		salt_0 {Type I LastRead 4 FirstWrite -1}
		message {Type I LastRead 4 FirstWrite -1}
		messageByteLength {Type I LastRead 3 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}
		viewOutputs {Type I LastRead 9 FirstWrite -1}}
	Keccak_HashSqueeze_1 {
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
	theta {
		A {Type IO LastRead 5 FirstWrite 6}}
	chi {
		A {Type IO LastRead 4 FirstWrite 4}}
	pi {
		A {Type IO LastRead 2 FirstWrite 14}}
	Keccak_HashUpdate_1 {
		instance_sponge_stat {Type IO LastRead 4 FirstWrite 4}
		instance_sponge_byte {Type I LastRead 0 FirstWrite -1}
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
	Keccak_HashUpdate_10 {
		instance_sponge_stat {Type IO LastRead 4 FirstWrite 4}
		instance_sponge_byte {Type I LastRead 0 FirstWrite -1}
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
	Keccak_HashUpdate {
		instance_sponge_stat {Type IO LastRead 4 FirstWrite 4}
		instance_sponge_byte {Type I LastRead 0 FirstWrite -1}
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
	Keccak_HashUpdate_4 {
		instance_sponge_stat {Type IO LastRead 4 FirstWrite 4}
		instance_sponge_byte {Type I LastRead 0 FirstWrite -1}
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
	Keccak_HashUpdate_7 {
		instance_sponge_stat {Type IO LastRead 4 FirstWrite 4}
		instance_sponge_byte {Type I LastRead 0 FirstWrite -1}
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
		instance_sponge_stat {Type IO LastRead 2 FirstWrite 3}
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
		instance_sponge_stat {Type IO LastRead 2 FirstWrite 1}
		instance_sponge_byte_68 {Type I LastRead 5 FirstWrite -1}
		instance_sponge_byte {Type I LastRead 0 FirstWrite -1}
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
		instance_sponge_state {Type O LastRead -1 FirstWrite 1}}
	Commit_2 {
		seed {Type I LastRead 4 FirstWrite -1}
		seed_offset {Type I LastRead 4 FirstWrite -1}
		seed_offset1 {Type I LastRead 4 FirstWrite -1}
		view_inputShare {Type I LastRead 20 FirstWrite -1}
		view_inputShare_offset {Type I LastRead 15 FirstWrite -1}
		view_inputShare_offset3 {Type I LastRead 15 FirstWrite -1}
		view_communicatedBits {Type I LastRead 4 FirstWrite -1}
		view_communicatedBits_offset {Type I LastRead 15 FirstWrite -1}
		view_communicatedBits_offset4 {Type I LastRead 15 FirstWrite -1}
		view_outputShare {Type I LastRead 30 FirstWrite -1}
		view_outputShare_offset {Type I LastRead 15 FirstWrite -1}
		view_outputShare_offset5 {Type I LastRead 15 FirstWrite -1}
		hash {Type IO LastRead 4 FirstWrite -1}
		hash_offset {Type I LastRead 8 FirstWrite -1}
		hash_offset6 {Type I LastRead 8 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	Keccak_HashSqueeze_5 {
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
	theta {
		A {Type IO LastRead 5 FirstWrite 6}}
	chi {
		A {Type IO LastRead 4 FirstWrite 4}}
	pi {
		A {Type IO LastRead 2 FirstWrite 14}}
	Keccak_HashUpdate_6 {
		instance_sponge_stat {Type IO LastRead 4 FirstWrite 4}
		instance_sponge_byte {Type I LastRead 0 FirstWrite -1}
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
	Keccak_HashUpdate_10 {
		instance_sponge_stat {Type IO LastRead 4 FirstWrite 4}
		instance_sponge_byte {Type I LastRead 0 FirstWrite -1}
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
	Keccak_HashUpdate_8 {
		instance_sponge_stat {Type IO LastRead 4 FirstWrite 4}
		instance_sponge_byte {Type I LastRead 0 FirstWrite -1}
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
	Keccak_HashUpdate {
		instance_sponge_stat {Type IO LastRead 4 FirstWrite 4}
		instance_sponge_byte {Type I LastRead 0 FirstWrite -1}
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
		instance_sponge_stat {Type IO LastRead 2 FirstWrite 3}
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
		instance_sponge_stat {Type IO LastRead 2 FirstWrite 1}
		instance_sponge_byte_68 {Type I LastRead 5 FirstWrite -1}
		instance_sponge_byte {Type I LastRead 0 FirstWrite -1}
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
		instance_sponge_state {Type O LastRead -1 FirstWrite 1}}
	computeSeeds_2 {
		allSeeds_seed {Type O LastRead -1 FirstWrite 10}
		salt_0 {Type O LastRead -1 FirstWrite 10}
		privateKey {Type I LastRead 7 FirstWrite -1}
		publicKey {Type I LastRead 17 FirstWrite -1}
		plaintext {Type I LastRead 25 FirstWrite -1}
		message {Type I LastRead 4 FirstWrite -1}
		messageByteLength {Type I LastRead 0 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	Keccak_HashSqueeze_3 {
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
	theta {
		A {Type IO LastRead 5 FirstWrite 6}}
	chi {
		A {Type IO LastRead 4 FirstWrite 4}}
	pi {
		A {Type IO LastRead 2 FirstWrite 14}}
	Keccak_HashSqueeze_2 {
		instance_sponge_stat {Type IO LastRead 10 FirstWrite 1}
		instance_sponge_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque {Type I LastRead 0 FirstWrite -1}
		data_0 {Type O LastRead -1 FirstWrite 10}
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
		instance_sponge_stat {Type IO LastRead 4 FirstWrite 4}
		instance_sponge_byte {Type I LastRead 0 FirstWrite -1}
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
	Keccak_HashUpdate {
		instance_sponge_stat {Type IO LastRead 4 FirstWrite 4}
		instance_sponge_byte {Type I LastRead 0 FirstWrite -1}
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
	Keccak_HashUpdate_5 {
		instance_sponge_stat {Type IO LastRead 3 FirstWrite 3}
		instance_sponge_byte {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
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
	mpc_LowMC_2 {
		tapes_tape {Type I LastRead 2 FirstWrite -1}
		views_inputShare {Type I LastRead 2 FirstWrite -1}
		views_inputShare_offset {Type I LastRead 0 FirstWrite -1}
		views_communicatedBi {Type IO LastRead 3 FirstWrite 4}
		views_outputShare {Type O LastRead -1 FirstWrite 13}
		plaintext {Type I LastRead 2 FirstWrite -1}
		slab {Type IO LastRead 28 FirstWrite 1}
		temp_matrix {Type I LastRead -1 FirstWrite -1}
		temp_matrix2 {Type I LastRead -1 FirstWrite -1}
		temp_matrix3 {Type I LastRead -1 FirstWrite -1}}
	matrix_mul {
		output_r {Type O LastRead -1 FirstWrite 3}
		output_offset {Type I LastRead 0 FirstWrite -1}
		state {Type I LastRead 2 FirstWrite -1}
		state_offset {Type I LastRead 0 FirstWrite -1}
		state_offset1 {Type I LastRead 0 FirstWrite -1}
		matrix_offset {Type I LastRead 0 FirstWrite -1}
		temp_matrix {Type I LastRead -1 FirstWrite -1}}
	matrix_mul_1 {
		output_r {Type IO LastRead 2 FirstWrite 3}
		state_offset {Type I LastRead 0 FirstWrite -1}
		matrix_offset {Type I LastRead 0 FirstWrite -1}
		temp_matrix2 {Type I LastRead -1 FirstWrite -1}}
	mpc_AND_2 {
		in1_0_read {Type I LastRead 2 FirstWrite -1}
		in1_1_read {Type I LastRead 2 FirstWrite -1}
		in1_2_read {Type I LastRead 2 FirstWrite -1}
		in2_0_read {Type I LastRead 2 FirstWrite -1}
		in2_1_read {Type I LastRead 2 FirstWrite -1}
		in2_2_read {Type I LastRead 2 FirstWrite -1}
		out_0_read {Type I LastRead 2 FirstWrite -1}
		out_1_read {Type I LastRead 2 FirstWrite -1}
		out_2_read {Type I LastRead 2 FirstWrite -1}
		rand_tape {Type I LastRead 2 FirstWrite -1}
		rand_pos_read {Type I LastRead 0 FirstWrite -1}
		views_communicatedBi {Type IO LastRead 3 FirstWrite 4}
		views_communicatedBits_offset {Type I LastRead 2 FirstWrite -1}}
	Keccak_HashSqueeze_4 {
		instance_sponge_stat {Type IO LastRead 10 FirstWrite 1}
		instance_sponge_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque {Type I LastRead 0 FirstWrite -1}
		data {Type O LastRead -1 FirstWrite 10}
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
	Keccak_HashSqueeze {
		instance_sponge_stat {Type IO LastRead 10 FirstWrite 1}
		instance_sponge_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque {Type I LastRead 0 FirstWrite -1}
		data {Type O LastRead -1 FirstWrite 10}
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
	Keccak_HashUpdate_8 {
		instance_sponge_stat {Type IO LastRead 4 FirstWrite 4}
		instance_sponge_byte {Type I LastRead 0 FirstWrite -1}
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
	Keccak_HashUpdate_2 {
		instance_sponge_stat {Type IO LastRead 4 FirstWrite 4}
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
	Keccak_HashUpdate_7 {
		instance_sponge_stat {Type IO LastRead 4 FirstWrite 4}
		instance_sponge_byte {Type I LastRead 0 FirstWrite -1}
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
	Keccak_HashUpdate_5 {
		instance_sponge_stat {Type IO LastRead 3 FirstWrite 3}
		instance_sponge_byte {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
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
		instance_sponge_stat {Type IO LastRead 2 FirstWrite 3}
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
		instance_sponge_stat {Type IO LastRead 2 FirstWrite 1}
		instance_sponge_byte_68 {Type I LastRead 5 FirstWrite -1}
		instance_sponge_byte {Type I LastRead 0 FirstWrite -1}
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
	prove_26 {
		proof_0_seed1 {Type O LastRead -1 FirstWrite 2}
		proof_seed1_offset1 {Type I LastRead 0 FirstWrite -1}
		proof_0_seed2 {Type O LastRead -1 FirstWrite 3}
		proof_0_inputShare {Type O LastRead -1 FirstWrite 4}
		proof_0_communicatedBits {Type O LastRead -1 FirstWrite 6}
		proof_0_view3Commitment {Type O LastRead -1 FirstWrite 7}
		challenge {Type I LastRead 0 FirstWrite -1}
		seeds_seed {Type I LastRead 3 FirstWrite -1}
		views_inputShare {Type I LastRead 3 FirstWrite -1}
		views_communicatedBits {Type I LastRead 5 FirstWrite -1}
		commitments_hashes {Type I LastRead 6 FirstWrite -1}}
	Keccak_HashInitializ {
		instance_sponge_state {Type O LastRead -1 FirstWrite 1}}
	serializeSignature {
		sig_0_proofs_seed1 {Type I LastRead 7 FirstWrite -1}
		sig_0_proofs_seed2 {Type I LastRead 8 FirstWrite -1}
		sig_0_proofs_inputS {Type I LastRead 9 FirstWrite -1}
		sig_0_proofs_commun {Type I LastRead 6 FirstWrite -1}
		sig_0_proofs_view3C {Type I LastRead 5 FirstWrite -1}
		sig_0_challengeBits {Type I LastRead 3 FirstWrite -1}
		sig_0_salt {Type I LastRead 2 FirstWrite -1}
		sigBytes {Type O LastRead -1 FirstWrite 2}
		sigBytes_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	sk_data { ap_memory {  { sk_data_address0 mem_address 1 5 }  { sk_data_ce0 mem_ce 1 1 }  { sk_data_q0 mem_dout 0 8 }  { sk_data_address1 mem_address 1 5 }  { sk_data_ce1 mem_ce 1 1 }  { sk_data_q1 mem_dout 0 8 } } }
	sk_pk_plaintext { ap_memory {  { sk_pk_plaintext_address0 mem_address 1 5 }  { sk_pk_plaintext_ce0 mem_ce 1 1 }  { sk_pk_plaintext_q0 mem_dout 0 8 }  { sk_pk_plaintext_address1 mem_address 1 5 }  { sk_pk_plaintext_ce1 mem_ce 1 1 }  { sk_pk_plaintext_q1 mem_dout 0 8 } } }
	sk_pk_ciphertext { ap_memory {  { sk_pk_ciphertext_address0 mem_address 1 5 }  { sk_pk_ciphertext_ce0 mem_ce 1 1 }  { sk_pk_ciphertext_q0 mem_dout 0 8 }  { sk_pk_ciphertext_address1 mem_address 1 5 }  { sk_pk_ciphertext_ce1 mem_ce 1 1 }  { sk_pk_ciphertext_q1 mem_dout 0 8 } } }
	message { ap_memory {  { message_address0 mem_address 1 12 }  { message_ce0 mem_ce 1 1 }  { message_q0 mem_dout 0 8 } } }
	message_len { ap_none {  { message_len in_data 0 64 } } }
	signature { ap_memory {  { signature_address0 mem_address 1 18 }  { signature_ce0 mem_ce 1 1 }  { signature_we0 mem_we 1 1 }  { signature_d0 mem_din 1 8 } } }
	signature_offset { ap_none {  { signature_offset in_data 0 64 } } }
	viewOutputs { ap_memory {  { viewOutputs_address0 mem_address 1 16 }  { viewOutputs_ce0 mem_ce 1 1 }  { viewOutputs_we0 mem_we 1 1 }  { viewOutputs_d0 mem_din 1 32 }  { viewOutputs_q0 mem_dout 0 32 }  { viewOutputs_address1 mem_address 1 16 }  { viewOutputs_ce1 mem_ce 1 1 }  { viewOutputs_q1 mem_dout 0 32 } } }
}
set moduleName picnic_sign
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
set C_modelName {picnic_sign}
set C_modelType { int 96 }
set C_modelArgList {
	{ sk_data int 8 regular {array 32 { 1 1 } 1 1 }  }
	{ sk_pk_plaintext int 8 regular {array 32 { 1 1 } 1 1 }  }
	{ sk_pk_ciphertext int 8 regular {array 32 { 1 1 } 1 1 }  }
	{ message int 8 regular {array 3300 { 1 3 } 1 1 }  }
	{ message_len int 64 regular  }
	{ signature int 8 regular {array 136176 { 0 3 } 0 1 }  }
	{ signature_offset int 64 regular  }
	{ viewOutputs int 32 regular {array 42048 { 2 1 } 1 1 } {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sk_data", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sk_pk_plaintext", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sk_pk_ciphertext", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "message", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "message_len", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "signature", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "signature_offset", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "viewOutputs", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "viewOutputs","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1313,"step" : 1},{"low" : 0,"up" : 31,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 96} ]}
# RTL Port declarations: 
set portNum 43
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sk_data_address0 sc_out sc_lv 5 signal 0 } 
	{ sk_data_ce0 sc_out sc_logic 1 signal 0 } 
	{ sk_data_q0 sc_in sc_lv 8 signal 0 } 
	{ sk_data_address1 sc_out sc_lv 5 signal 0 } 
	{ sk_data_ce1 sc_out sc_logic 1 signal 0 } 
	{ sk_data_q1 sc_in sc_lv 8 signal 0 } 
	{ sk_pk_plaintext_address0 sc_out sc_lv 5 signal 1 } 
	{ sk_pk_plaintext_ce0 sc_out sc_logic 1 signal 1 } 
	{ sk_pk_plaintext_q0 sc_in sc_lv 8 signal 1 } 
	{ sk_pk_plaintext_address1 sc_out sc_lv 5 signal 1 } 
	{ sk_pk_plaintext_ce1 sc_out sc_logic 1 signal 1 } 
	{ sk_pk_plaintext_q1 sc_in sc_lv 8 signal 1 } 
	{ sk_pk_ciphertext_address0 sc_out sc_lv 5 signal 2 } 
	{ sk_pk_ciphertext_ce0 sc_out sc_logic 1 signal 2 } 
	{ sk_pk_ciphertext_q0 sc_in sc_lv 8 signal 2 } 
	{ sk_pk_ciphertext_address1 sc_out sc_lv 5 signal 2 } 
	{ sk_pk_ciphertext_ce1 sc_out sc_logic 1 signal 2 } 
	{ sk_pk_ciphertext_q1 sc_in sc_lv 8 signal 2 } 
	{ message_address0 sc_out sc_lv 12 signal 3 } 
	{ message_ce0 sc_out sc_logic 1 signal 3 } 
	{ message_q0 sc_in sc_lv 8 signal 3 } 
	{ message_len sc_in sc_lv 64 signal 4 } 
	{ signature_address0 sc_out sc_lv 18 signal 5 } 
	{ signature_ce0 sc_out sc_logic 1 signal 5 } 
	{ signature_we0 sc_out sc_logic 1 signal 5 } 
	{ signature_d0 sc_out sc_lv 8 signal 5 } 
	{ signature_offset sc_in sc_lv 64 signal 6 } 
	{ viewOutputs_address0 sc_out sc_lv 16 signal 7 } 
	{ viewOutputs_ce0 sc_out sc_logic 1 signal 7 } 
	{ viewOutputs_we0 sc_out sc_logic 1 signal 7 } 
	{ viewOutputs_d0 sc_out sc_lv 32 signal 7 } 
	{ viewOutputs_q0 sc_in sc_lv 32 signal 7 } 
	{ viewOutputs_address1 sc_out sc_lv 16 signal 7 } 
	{ viewOutputs_ce1 sc_out sc_logic 1 signal 7 } 
	{ viewOutputs_q1 sc_in sc_lv 32 signal 7 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 64 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sk_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sk_data", "role": "address0" }} , 
 	{ "name": "sk_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk_data", "role": "ce0" }} , 
 	{ "name": "sk_data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk_data", "role": "q0" }} , 
 	{ "name": "sk_data_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sk_data", "role": "address1" }} , 
 	{ "name": "sk_data_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk_data", "role": "ce1" }} , 
 	{ "name": "sk_data_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk_data", "role": "q1" }} , 
 	{ "name": "sk_pk_plaintext_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sk_pk_plaintext", "role": "address0" }} , 
 	{ "name": "sk_pk_plaintext_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk_pk_plaintext", "role": "ce0" }} , 
 	{ "name": "sk_pk_plaintext_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk_pk_plaintext", "role": "q0" }} , 
 	{ "name": "sk_pk_plaintext_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sk_pk_plaintext", "role": "address1" }} , 
 	{ "name": "sk_pk_plaintext_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk_pk_plaintext", "role": "ce1" }} , 
 	{ "name": "sk_pk_plaintext_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk_pk_plaintext", "role": "q1" }} , 
 	{ "name": "sk_pk_ciphertext_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sk_pk_ciphertext", "role": "address0" }} , 
 	{ "name": "sk_pk_ciphertext_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk_pk_ciphertext", "role": "ce0" }} , 
 	{ "name": "sk_pk_ciphertext_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk_pk_ciphertext", "role": "q0" }} , 
 	{ "name": "sk_pk_ciphertext_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sk_pk_ciphertext", "role": "address1" }} , 
 	{ "name": "sk_pk_ciphertext_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk_pk_ciphertext", "role": "ce1" }} , 
 	{ "name": "sk_pk_ciphertext_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk_pk_ciphertext", "role": "q1" }} , 
 	{ "name": "message_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "message", "role": "address0" }} , 
 	{ "name": "message_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "message", "role": "ce0" }} , 
 	{ "name": "message_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "message", "role": "q0" }} , 
 	{ "name": "message_len", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "message_len", "role": "default" }} , 
 	{ "name": "signature_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "signature", "role": "address0" }} , 
 	{ "name": "signature_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "signature", "role": "ce0" }} , 
 	{ "name": "signature_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "signature", "role": "we0" }} , 
 	{ "name": "signature_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "signature", "role": "d0" }} , 
 	{ "name": "signature_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "signature_offset", "role": "default" }} , 
 	{ "name": "viewOutputs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "viewOutputs", "role": "address0" }} , 
 	{ "name": "viewOutputs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "viewOutputs", "role": "ce0" }} , 
 	{ "name": "viewOutputs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "viewOutputs", "role": "we0" }} , 
 	{ "name": "viewOutputs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "viewOutputs", "role": "d0" }} , 
 	{ "name": "viewOutputs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "viewOutputs", "role": "q0" }} , 
 	{ "name": "viewOutputs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "viewOutputs", "role": "address1" }} , 
 	{ "name": "viewOutputs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "viewOutputs", "role": "ce1" }} , 
 	{ "name": "viewOutputs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "viewOutputs", "role": "q1" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "433"],
		"CDFG" : "picnic_sign",
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
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sign_picnic1_fu_359"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_serializeSignature_fu_388"}],
		"Port" : [
			{"Name" : "sk_data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sk_pk_plaintext", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sk_pk_ciphertext", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "message", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_sign_picnic1_fu_359", "Port" : "message"}]},
			{"Name" : "message_len", "Type" : "None", "Direction" : "I"},
			{"Name" : "signature", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "433", "SubInstance" : "grp_serializeSignature_fu_388", "Port" : "sigBytes"}]},
			{"Name" : "signature_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_sign_picnic1_fu_359", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_sign_picnic1_fu_359", "Port" : "KeccakRoundConstants"}]},
			{"Name" : "temp_matrix", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_sign_picnic1_fu_359", "Port" : "temp_matrix"}]},
			{"Name" : "temp_matrix2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_sign_picnic1_fu_359", "Port" : "temp_matrix2"}]},
			{"Name" : "temp_matrix3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_sign_picnic1_fu_359", "Port" : "temp_matrix3"}]},
			{"Name" : "viewOutputs", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_sign_picnic1_fu_359", "Port" : "viewOutputs"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sig_0_proofs_seed1_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sig_0_proofs_seed2_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sig_0_proofs_inputS_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sig_0_proofs_commun_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sig_0_proofs_view3C_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sig_0_challengeBits_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sig_0_salt_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp2_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp3_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359", "Parent" : "0", "Child" : ["12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "146", "227", "258", "271", "284", "299", "312", "326", "339", "352", "365", "378", "391", "404", "418", "431"],
		"CDFG" : "sign_picnic1",
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
			{"State" : "ap_ST_fsm_state228", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_H3_2_fu_3143"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_computeSeeds_2_fu_3164"},
			{"State" : "ap_ST_fsm_state58", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mpc_LowMC_2_fu_3186"},
			{"State" : "ap_ST_fsm_state39", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_1_fu_3205"},
			{"State" : "ap_ST_fsm_state55", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_1_fu_3205"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_5_fu_3220"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_5_fu_3220"},
			{"State" : "ap_ST_fsm_state104", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdate_2_fu_3235"},
			{"State" : "ap_ST_fsm_state108", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdate_2_fu_3235"},
			{"State" : "ap_ST_fsm_state158", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdate_2_fu_3235"},
			{"State" : "ap_ST_fsm_state162", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdate_2_fu_3235"},
			{"State" : "ap_ST_fsm_state212", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdate_2_fu_3235"},
			{"State" : "ap_ST_fsm_state216", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdate_2_fu_3235"},
			{"State" : "ap_ST_fsm_state98", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_fu_3252"},
			{"State" : "ap_ST_fsm_state112", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_fu_3252"},
			{"State" : "ap_ST_fsm_state152", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_fu_3252"},
			{"State" : "ap_ST_fsm_state166", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_fu_3252"},
			{"State" : "ap_ST_fsm_state206", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_fu_3252"},
			{"State" : "ap_ST_fsm_state220", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_fu_3252"},
			{"State" : "ap_ST_fsm_state106", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_10_fu_3270"},
			{"State" : "ap_ST_fsm_state160", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_10_fu_3270"},
			{"State" : "ap_ST_fsm_state214", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_10_fu_3270"},
			{"State" : "ap_ST_fsm_state102", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_14_fu_3287"},
			{"State" : "ap_ST_fsm_state156", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_14_fu_3287"},
			{"State" : "ap_ST_fsm_state210", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_14_fu_3287"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_7_fu_3304"},
			{"State" : "ap_ST_fsm_state35", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_7_fu_3304"},
			{"State" : "ap_ST_fsm_state94", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_7_fu_3304"},
			{"State" : "ap_ST_fsm_state148", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_7_fu_3304"},
			{"State" : "ap_ST_fsm_state202", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_7_fu_3304"},
			{"State" : "ap_ST_fsm_state43", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_6_fu_3321"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_13_fu_3332"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_8_fu_3343"},
			{"State" : "ap_ST_fsm_state45", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_8_fu_3343"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_3355"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_3355"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_3355"},
			{"State" : "ap_ST_fsm_state47", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_3355"},
			{"State" : "ap_ST_fsm_state49", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_3355"},
			{"State" : "ap_ST_fsm_state51", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_3355"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_3371"},
			{"State" : "ap_ST_fsm_state33", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_3371"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_3371"},
			{"State" : "ap_ST_fsm_state41", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_3371"},
			{"State" : "ap_ST_fsm_state92", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_3371"},
			{"State" : "ap_ST_fsm_state100", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_3371"},
			{"State" : "ap_ST_fsm_state146", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_3371"},
			{"State" : "ap_ST_fsm_state154", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_3371"},
			{"State" : "ap_ST_fsm_state200", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_3371"},
			{"State" : "ap_ST_fsm_state208", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_3371"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_3385"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_3385"},
			{"State" : "ap_ST_fsm_state37", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_3385"},
			{"State" : "ap_ST_fsm_state53", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_3385"},
			{"State" : "ap_ST_fsm_state96", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_3385"},
			{"State" : "ap_ST_fsm_state110", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_3385"},
			{"State" : "ap_ST_fsm_state150", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_3385"},
			{"State" : "ap_ST_fsm_state164", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_3385"},
			{"State" : "ap_ST_fsm_state204", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_3385"},
			{"State" : "ap_ST_fsm_state218", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_3385"},
			{"State" : "ap_ST_fsm_state231", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_prove_26_fu_3395"}],
		"Port" : [
			{"Name" : "privateKey", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "grp_computeSeeds_2_fu_3164", "Port" : "privateKey"}]},
			{"Name" : "pubKey", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "grp_computeSeeds_2_fu_3164", "Port" : "publicKey"}]},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_H3_2_fu_3143", "Port" : "plaintext"},
					{"ID" : "146", "SubInstance" : "grp_computeSeeds_2_fu_3164", "Port" : "plaintext"},
					{"ID" : "227", "SubInstance" : "grp_mpc_LowMC_2_fu_3186", "Port" : "plaintext"}]},
			{"Name" : "message", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_H3_2_fu_3143", "Port" : "message"},
					{"ID" : "146", "SubInstance" : "grp_computeSeeds_2_fu_3164", "Port" : "message"}]},
			{"Name" : "messageByteLength", "Type" : "None", "Direction" : "I"},
			{"Name" : "sig_0_proofs_seed1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "431", "SubInstance" : "grp_prove_26_fu_3395", "Port" : "proof_0_seed1"}]},
			{"Name" : "sig_0_proofs_seed2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "431", "SubInstance" : "grp_prove_26_fu_3395", "Port" : "proof_0_seed2"}]},
			{"Name" : "sig_0_proofs_inputS", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "431", "SubInstance" : "grp_prove_26_fu_3395", "Port" : "proof_0_inputShare"}]},
			{"Name" : "sig_0_proofs_commun", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "431", "SubInstance" : "grp_prove_26_fu_3395", "Port" : "proof_0_communicatedBits"}]},
			{"Name" : "sig_0_proofs_view3C", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "431", "SubInstance" : "grp_prove_26_fu_3395", "Port" : "proof_0_view3Commitment"}]},
			{"Name" : "sig_0_challengeBits", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_H3_2_fu_3143", "Port" : "challengeBits_0"}]},
			{"Name" : "sig_0_salt", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_H3_2_fu_3143", "Port" : "salt_0"},
					{"ID" : "378", "SubInstance" : "grp_KeccakWidth1600_Spon_8_fu_3343", "Port" : "data_0"},
					{"ID" : "146", "SubInstance" : "grp_computeSeeds_2_fu_3164", "Port" : "salt_0"}]},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "271", "SubInstance" : "grp_KeccakWidth1600_Spon_5_fu_3220", "Port" : "KeccakRhoOffsets"},
					{"ID" : "35", "SubInstance" : "grp_H3_2_fu_3143", "Port" : "KeccakRhoOffsets"},
					{"ID" : "284", "SubInstance" : "grp_HashUpdate_2_fu_3235", "Port" : "KeccakRhoOffsets"},
					{"ID" : "404", "SubInstance" : "grp_HashInit_fu_3371", "Port" : "KeccakRhoOffsets"},
					{"ID" : "299", "SubInstance" : "grp_KeccakWidth1600_Spon_fu_3252", "Port" : "KeccakRhoOffsets"},
					{"ID" : "339", "SubInstance" : "grp_KeccakWidth1600_Spon_7_fu_3304", "Port" : "KeccakRhoOffsets"},
					{"ID" : "312", "SubInstance" : "grp_KeccakWidth1600_Spon_10_fu_3270", "Port" : "KeccakRhoOffsets"},
					{"ID" : "391", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_3355", "Port" : "KeccakRhoOffsets"},
					{"ID" : "365", "SubInstance" : "grp_KeccakWidth1600_Spon_13_fu_3332", "Port" : "KeccakRhoOffsets"},
					{"ID" : "352", "SubInstance" : "grp_KeccakWidth1600_Spon_6_fu_3321", "Port" : "KeccakRhoOffsets"},
					{"ID" : "418", "SubInstance" : "grp_HashFinal_fu_3385", "Port" : "KeccakRhoOffsets"},
					{"ID" : "378", "SubInstance" : "grp_KeccakWidth1600_Spon_8_fu_3343", "Port" : "KeccakRhoOffsets"},
					{"ID" : "258", "SubInstance" : "grp_KeccakWidth1600_Spon_1_fu_3205", "Port" : "KeccakRhoOffsets"},
					{"ID" : "146", "SubInstance" : "grp_computeSeeds_2_fu_3164", "Port" : "KeccakRhoOffsets"},
					{"ID" : "326", "SubInstance" : "grp_KeccakWidth1600_Spon_14_fu_3287", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "271", "SubInstance" : "grp_KeccakWidth1600_Spon_5_fu_3220", "Port" : "KeccakRoundConstants"},
					{"ID" : "35", "SubInstance" : "grp_H3_2_fu_3143", "Port" : "KeccakRoundConstants"},
					{"ID" : "284", "SubInstance" : "grp_HashUpdate_2_fu_3235", "Port" : "KeccakRoundConstants"},
					{"ID" : "404", "SubInstance" : "grp_HashInit_fu_3371", "Port" : "KeccakRoundConstants"},
					{"ID" : "299", "SubInstance" : "grp_KeccakWidth1600_Spon_fu_3252", "Port" : "KeccakRoundConstants"},
					{"ID" : "339", "SubInstance" : "grp_KeccakWidth1600_Spon_7_fu_3304", "Port" : "KeccakRoundConstants"},
					{"ID" : "312", "SubInstance" : "grp_KeccakWidth1600_Spon_10_fu_3270", "Port" : "KeccakRoundConstants"},
					{"ID" : "391", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_3355", "Port" : "KeccakRoundConstants"},
					{"ID" : "365", "SubInstance" : "grp_KeccakWidth1600_Spon_13_fu_3332", "Port" : "KeccakRoundConstants"},
					{"ID" : "352", "SubInstance" : "grp_KeccakWidth1600_Spon_6_fu_3321", "Port" : "KeccakRoundConstants"},
					{"ID" : "418", "SubInstance" : "grp_HashFinal_fu_3385", "Port" : "KeccakRoundConstants"},
					{"ID" : "378", "SubInstance" : "grp_KeccakWidth1600_Spon_8_fu_3343", "Port" : "KeccakRoundConstants"},
					{"ID" : "258", "SubInstance" : "grp_KeccakWidth1600_Spon_1_fu_3205", "Port" : "KeccakRoundConstants"},
					{"ID" : "146", "SubInstance" : "grp_computeSeeds_2_fu_3164", "Port" : "KeccakRoundConstants"},
					{"ID" : "326", "SubInstance" : "grp_KeccakWidth1600_Spon_14_fu_3287", "Port" : "KeccakRoundConstants"}]},
			{"Name" : "temp_matrix", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "227", "SubInstance" : "grp_mpc_LowMC_2_fu_3186", "Port" : "temp_matrix"}]},
			{"Name" : "temp_matrix2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "227", "SubInstance" : "grp_mpc_LowMC_2_fu_3186", "Port" : "temp_matrix2"}]},
			{"Name" : "temp_matrix3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "227", "SubInstance" : "grp_mpc_LowMC_2_fu_3186", "Port" : "temp_matrix3"}]},
			{"Name" : "viewOutputs", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_H3_2_fu_3143", "Port" : "viewOutputs"}]}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.ctx_sponge_state_4_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.views_outputShare277_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.views_communicatedBi_U", "Parent" : "11"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.views_inputShare227_U", "Parent" : "11"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.ctx_sponge_state_3_U", "Parent" : "11"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.views_outputShare165_U", "Parent" : "11"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.views_communicatedBi_1_U", "Parent" : "11"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.views_inputShare115_U", "Parent" : "11"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.ctx_sponge_state_2_U", "Parent" : "11"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.views_outputShare74_U", "Parent" : "11"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.views_communicatedBi_2_U", "Parent" : "11"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.views_inputShare27_U", "Parent" : "11"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.ctx_sponge_state_1_U", "Parent" : "11"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.ctx_sponge_state_U", "Parent" : "11"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.views_inputShare_U", "Parent" : "11"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.views_communicatedBi_3_U", "Parent" : "11"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.views_outputShare_U", "Parent" : "11"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.as_hashes_U", "Parent" : "11"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.seeds_seed_U", "Parent" : "11"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.tape_tape_U", "Parent" : "11"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.tape_assign_U", "Parent" : "11"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.slab_assign_U", "Parent" : "11"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.output_U", "Parent" : "11"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143", "Parent" : "11", "Child" : ["36", "37", "38", "39", "40", "41", "54", "67", "80", "93", "106", "119", "133"],
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
			{"State" : "ap_ST_fsm_state30", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_4_fu_530"},
			{"State" : "ap_ST_fsm_state41", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_4_fu_530"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_542"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_14_fu_555"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_16_fu_570"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_16_fu_570"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_16_fu_570"},
			{"State" : "ap_ST_fsm_state37", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_12_fu_581"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_8_fu_592"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_604"},
			{"State" : "ap_ST_fsm_state35", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_604"},
			{"State" : "ap_ST_fsm_state28", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_616"},
			{"State" : "ap_ST_fsm_state39", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_616"}],
		"Port" : [
			{"Name" : "circuitOutput", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "as_hashes", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "grp_KeccakWidth1600_Spon_14_fu_555", "Port" : "data"}]},
			{"Name" : "challengeBits_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "salt_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "106", "SubInstance" : "grp_KeccakWidth1600_Spon_8_fu_592", "Port" : "data_0"}]},
			{"Name" : "message", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_542", "Port" : "data"}]},
			{"Name" : "messageByteLength", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "grp_KeccakWidth1600_Spon_16_fu_570", "Port" : "KeccakRhoOffsets"},
					{"ID" : "93", "SubInstance" : "grp_KeccakWidth1600_Spon_12_fu_581", "Port" : "KeccakRhoOffsets"},
					{"ID" : "54", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_542", "Port" : "KeccakRhoOffsets"},
					{"ID" : "119", "SubInstance" : "grp_HashInit_fu_604", "Port" : "KeccakRhoOffsets"},
					{"ID" : "67", "SubInstance" : "grp_KeccakWidth1600_Spon_14_fu_555", "Port" : "KeccakRhoOffsets"},
					{"ID" : "106", "SubInstance" : "grp_KeccakWidth1600_Spon_8_fu_592", "Port" : "KeccakRhoOffsets"},
					{"ID" : "41", "SubInstance" : "grp_KeccakWidth1600_Spon_4_fu_530", "Port" : "KeccakRhoOffsets"},
					{"ID" : "133", "SubInstance" : "grp_HashFinal_fu_616", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "grp_KeccakWidth1600_Spon_16_fu_570", "Port" : "KeccakRoundConstants"},
					{"ID" : "93", "SubInstance" : "grp_KeccakWidth1600_Spon_12_fu_581", "Port" : "KeccakRoundConstants"},
					{"ID" : "54", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_542", "Port" : "KeccakRoundConstants"},
					{"ID" : "119", "SubInstance" : "grp_HashInit_fu_604", "Port" : "KeccakRoundConstants"},
					{"ID" : "67", "SubInstance" : "grp_KeccakWidth1600_Spon_14_fu_555", "Port" : "KeccakRoundConstants"},
					{"ID" : "106", "SubInstance" : "grp_KeccakWidth1600_Spon_8_fu_592", "Port" : "KeccakRoundConstants"},
					{"ID" : "41", "SubInstance" : "grp_KeccakWidth1600_Spon_4_fu_530", "Port" : "KeccakRoundConstants"},
					{"ID" : "133", "SubInstance" : "grp_HashFinal_fu_616", "Port" : "KeccakRoundConstants"}]},
			{"Name" : "viewOutputs", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.temp_2_U", "Parent" : "35"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.temp_U", "Parent" : "35"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.temp_1_U", "Parent" : "35"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.hash_U", "Parent" : "35"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.ctx_sponge_state_U", "Parent" : "35"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_4_fu_530", "Parent" : "35", "Child" : ["42"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_247"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_247"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_247"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_247", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_247", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_247", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_4_fu_530.grp_KeccakP1600_Permute_s_fu_247", "Parent" : "41", "Child" : ["43", "44", "45", "46", "49", "51"],
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
	{"ID" : "43", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_4_fu_530.grp_KeccakP1600_Permute_s_fu_247.KeccakRhoOffsets_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_4_fu_530.grp_KeccakP1600_Permute_s_fu_247.KeccakRoundConstants_U", "Parent" : "42"},
	{"ID" : "45", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_4_fu_530.grp_KeccakP1600_Permute_s_fu_247.stateAsWords_U", "Parent" : "42"},
	{"ID" : "46", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_4_fu_530.grp_KeccakP1600_Permute_s_fu_247.grp_theta_fu_225", "Parent" : "42", "Child" : ["47", "48"],
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
	{"ID" : "47", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_4_fu_530.grp_KeccakP1600_Permute_s_fu_247.grp_theta_fu_225.C_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_4_fu_530.grp_KeccakP1600_Permute_s_fu_247.grp_theta_fu_225.D_U", "Parent" : "46"},
	{"ID" : "49", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_4_fu_530.grp_KeccakP1600_Permute_s_fu_247.grp_chi_fu_230", "Parent" : "42", "Child" : ["50"],
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
	{"ID" : "50", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_4_fu_530.grp_KeccakP1600_Permute_s_fu_247.grp_chi_fu_230.C_U", "Parent" : "49"},
	{"ID" : "51", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_4_fu_530.grp_KeccakP1600_Permute_s_fu_247.grp_pi_fu_235", "Parent" : "42", "Child" : ["52", "53"],
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
	{"ID" : "52", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_4_fu_530.grp_KeccakP1600_Permute_s_fu_247.grp_pi_fu_235.tempA_U", "Parent" : "51"},
	{"ID" : "53", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_4_fu_530.grp_KeccakP1600_Permute_s_fu_247.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "51"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_15_fu_542", "Parent" : "35", "Child" : ["55"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_158"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_158"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_158", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dataByteLen", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_158", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_158", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_15_fu_542.grp_KeccakP1600_Permute_s_fu_158", "Parent" : "54", "Child" : ["56", "57", "58", "59", "62", "64"],
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
	{"ID" : "56", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_15_fu_542.grp_KeccakP1600_Permute_s_fu_158.KeccakRhoOffsets_U", "Parent" : "55"},
	{"ID" : "57", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_15_fu_542.grp_KeccakP1600_Permute_s_fu_158.KeccakRoundConstants_U", "Parent" : "55"},
	{"ID" : "58", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_15_fu_542.grp_KeccakP1600_Permute_s_fu_158.stateAsWords_U", "Parent" : "55"},
	{"ID" : "59", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_15_fu_542.grp_KeccakP1600_Permute_s_fu_158.grp_theta_fu_225", "Parent" : "55", "Child" : ["60", "61"],
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
	{"ID" : "60", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_15_fu_542.grp_KeccakP1600_Permute_s_fu_158.grp_theta_fu_225.C_U", "Parent" : "59"},
	{"ID" : "61", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_15_fu_542.grp_KeccakP1600_Permute_s_fu_158.grp_theta_fu_225.D_U", "Parent" : "59"},
	{"ID" : "62", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_15_fu_542.grp_KeccakP1600_Permute_s_fu_158.grp_chi_fu_230", "Parent" : "55", "Child" : ["63"],
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
	{"ID" : "63", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_15_fu_542.grp_KeccakP1600_Permute_s_fu_158.grp_chi_fu_230.C_U", "Parent" : "62"},
	{"ID" : "64", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_15_fu_542.grp_KeccakP1600_Permute_s_fu_158.grp_pi_fu_235", "Parent" : "55", "Child" : ["65", "66"],
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
	{"ID" : "65", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_15_fu_542.grp_KeccakP1600_Permute_s_fu_158.grp_pi_fu_235.tempA_U", "Parent" : "64"},
	{"ID" : "66", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_15_fu_542.grp_KeccakP1600_Permute_s_fu_158.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "64"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_14_fu_555", "Parent" : "35", "Child" : ["68"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "68", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_14_fu_555.grp_KeccakP1600_Permute_s_fu_204", "Parent" : "67", "Child" : ["69", "70", "71", "72", "75", "77"],
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
	{"ID" : "69", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_14_fu_555.grp_KeccakP1600_Permute_s_fu_204.KeccakRhoOffsets_U", "Parent" : "68"},
	{"ID" : "70", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_14_fu_555.grp_KeccakP1600_Permute_s_fu_204.KeccakRoundConstants_U", "Parent" : "68"},
	{"ID" : "71", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_14_fu_555.grp_KeccakP1600_Permute_s_fu_204.stateAsWords_U", "Parent" : "68"},
	{"ID" : "72", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_14_fu_555.grp_KeccakP1600_Permute_s_fu_204.grp_theta_fu_225", "Parent" : "68", "Child" : ["73", "74"],
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
	{"ID" : "73", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_14_fu_555.grp_KeccakP1600_Permute_s_fu_204.grp_theta_fu_225.C_U", "Parent" : "72"},
	{"ID" : "74", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_14_fu_555.grp_KeccakP1600_Permute_s_fu_204.grp_theta_fu_225.D_U", "Parent" : "72"},
	{"ID" : "75", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_14_fu_555.grp_KeccakP1600_Permute_s_fu_204.grp_chi_fu_230", "Parent" : "68", "Child" : ["76"],
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
	{"ID" : "76", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_14_fu_555.grp_KeccakP1600_Permute_s_fu_204.grp_chi_fu_230.C_U", "Parent" : "75"},
	{"ID" : "77", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_14_fu_555.grp_KeccakP1600_Permute_s_fu_204.grp_pi_fu_235", "Parent" : "68", "Child" : ["78", "79"],
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
	{"ID" : "78", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_14_fu_555.grp_KeccakP1600_Permute_s_fu_204.grp_pi_fu_235.tempA_U", "Parent" : "77"},
	{"ID" : "79", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_14_fu_555.grp_KeccakP1600_Permute_s_fu_204.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "77"},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_16_fu_570", "Parent" : "35", "Child" : ["81"],
		"CDFG" : "KeccakWidth1600_Spon_16",
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
					{"ID" : "81", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "81", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_16_fu_570.grp_KeccakP1600_Permute_s_fu_176", "Parent" : "80", "Child" : ["82", "83", "84", "85", "88", "90"],
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
	{"ID" : "82", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_16_fu_570.grp_KeccakP1600_Permute_s_fu_176.KeccakRhoOffsets_U", "Parent" : "81"},
	{"ID" : "83", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_16_fu_570.grp_KeccakP1600_Permute_s_fu_176.KeccakRoundConstants_U", "Parent" : "81"},
	{"ID" : "84", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_16_fu_570.grp_KeccakP1600_Permute_s_fu_176.stateAsWords_U", "Parent" : "81"},
	{"ID" : "85", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_16_fu_570.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225", "Parent" : "81", "Child" : ["86", "87"],
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
	{"ID" : "86", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_16_fu_570.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.C_U", "Parent" : "85"},
	{"ID" : "87", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_16_fu_570.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.D_U", "Parent" : "85"},
	{"ID" : "88", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_16_fu_570.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230", "Parent" : "81", "Child" : ["89"],
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
	{"ID" : "89", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_16_fu_570.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230.C_U", "Parent" : "88"},
	{"ID" : "90", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_16_fu_570.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235", "Parent" : "81", "Child" : ["91", "92"],
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
	{"ID" : "91", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_16_fu_570.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.tempA_U", "Parent" : "90"},
	{"ID" : "92", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_16_fu_570.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "90"},
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_12_fu_581", "Parent" : "35", "Child" : ["94"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "94", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "94", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "94", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "94", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_12_fu_581.grp_KeccakP1600_Permute_s_fu_176", "Parent" : "93", "Child" : ["95", "96", "97", "98", "101", "103"],
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
	{"ID" : "95", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_12_fu_581.grp_KeccakP1600_Permute_s_fu_176.KeccakRhoOffsets_U", "Parent" : "94"},
	{"ID" : "96", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_12_fu_581.grp_KeccakP1600_Permute_s_fu_176.KeccakRoundConstants_U", "Parent" : "94"},
	{"ID" : "97", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_12_fu_581.grp_KeccakP1600_Permute_s_fu_176.stateAsWords_U", "Parent" : "94"},
	{"ID" : "98", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_12_fu_581.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225", "Parent" : "94", "Child" : ["99", "100"],
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
	{"ID" : "99", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_12_fu_581.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.C_U", "Parent" : "98"},
	{"ID" : "100", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_12_fu_581.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.D_U", "Parent" : "98"},
	{"ID" : "101", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_12_fu_581.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230", "Parent" : "94", "Child" : ["102"],
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
	{"ID" : "102", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_12_fu_581.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230.C_U", "Parent" : "101"},
	{"ID" : "103", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_12_fu_581.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235", "Parent" : "94", "Child" : ["104", "105"],
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
	{"ID" : "104", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_12_fu_581.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.tempA_U", "Parent" : "103"},
	{"ID" : "105", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_12_fu_581.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "103"},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_8_fu_592", "Parent" : "35", "Child" : ["107"],
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
					{"ID" : "107", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "107", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "107", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "107", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_8_fu_592.grp_KeccakP1600_Permute_s_fu_176", "Parent" : "106", "Child" : ["108", "109", "110", "111", "114", "116"],
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
	{"ID" : "108", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_8_fu_592.grp_KeccakP1600_Permute_s_fu_176.KeccakRhoOffsets_U", "Parent" : "107"},
	{"ID" : "109", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_8_fu_592.grp_KeccakP1600_Permute_s_fu_176.KeccakRoundConstants_U", "Parent" : "107"},
	{"ID" : "110", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_8_fu_592.grp_KeccakP1600_Permute_s_fu_176.stateAsWords_U", "Parent" : "107"},
	{"ID" : "111", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_8_fu_592.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225", "Parent" : "107", "Child" : ["112", "113"],
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
	{"ID" : "112", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_8_fu_592.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.C_U", "Parent" : "111"},
	{"ID" : "113", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_8_fu_592.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.D_U", "Parent" : "111"},
	{"ID" : "114", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_8_fu_592.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230", "Parent" : "107", "Child" : ["115"],
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
	{"ID" : "115", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_8_fu_592.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230.C_U", "Parent" : "114"},
	{"ID" : "116", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_8_fu_592.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235", "Parent" : "107", "Child" : ["117", "118"],
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
	{"ID" : "117", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_8_fu_592.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.tempA_U", "Parent" : "116"},
	{"ID" : "118", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_8_fu_592.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "116"},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_HashInit_fu_604", "Parent" : "35", "Child" : ["120"],
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
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_11_fu_74"}],
		"Port" : [
			{"Name" : "ctx_sponge_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "120", "SubInstance" : "grp_KeccakWidth1600_Spon_11_fu_74", "Port" : "instance_state"}]},
			{"Name" : "hashPrefix", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "120", "SubInstance" : "grp_KeccakWidth1600_Spon_11_fu_74", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "120", "SubInstance" : "grp_KeccakWidth1600_Spon_11_fu_74", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "120", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_HashInit_fu_604.grp_KeccakWidth1600_Spon_11_fu_74", "Parent" : "119", "Child" : ["121"],
		"CDFG" : "KeccakWidth1600_Spon_11",
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
					{"ID" : "121", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "state"}]},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "121", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "121", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "121", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_HashInit_fu_604.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54", "Parent" : "120", "Child" : ["122", "123", "124", "125", "128", "130"],
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
	{"ID" : "122", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_HashInit_fu_604.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.KeccakRhoOffsets_U", "Parent" : "121"},
	{"ID" : "123", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_HashInit_fu_604.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.KeccakRoundConstants_U", "Parent" : "121"},
	{"ID" : "124", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_HashInit_fu_604.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.stateAsWords_U", "Parent" : "121"},
	{"ID" : "125", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_HashInit_fu_604.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225", "Parent" : "121", "Child" : ["126", "127"],
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
	{"ID" : "126", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_HashInit_fu_604.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.C_U", "Parent" : "125"},
	{"ID" : "127", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_HashInit_fu_604.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.D_U", "Parent" : "125"},
	{"ID" : "128", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_HashInit_fu_604.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230", "Parent" : "121", "Child" : ["129"],
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
	{"ID" : "129", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_HashInit_fu_604.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230.C_U", "Parent" : "128"},
	{"ID" : "130", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_HashInit_fu_604.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235", "Parent" : "121", "Child" : ["131", "132"],
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
	{"ID" : "131", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_HashInit_fu_604.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.tempA_U", "Parent" : "130"},
	{"ID" : "132", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_HashInit_fu_604.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "130"},
	{"ID" : "133", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_HashFinal_fu_616", "Parent" : "35", "Child" : ["134"],
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
					{"ID" : "134", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "state"}]},
			{"Name" : "ctx_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "134", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "134", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "134", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_HashFinal_fu_616.grp_KeccakP1600_Permute_s_fu_54", "Parent" : "133", "Child" : ["135", "136", "137", "138", "141", "143"],
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
	{"ID" : "135", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_HashFinal_fu_616.grp_KeccakP1600_Permute_s_fu_54.KeccakRhoOffsets_U", "Parent" : "134"},
	{"ID" : "136", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_HashFinal_fu_616.grp_KeccakP1600_Permute_s_fu_54.KeccakRoundConstants_U", "Parent" : "134"},
	{"ID" : "137", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_HashFinal_fu_616.grp_KeccakP1600_Permute_s_fu_54.stateAsWords_U", "Parent" : "134"},
	{"ID" : "138", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_HashFinal_fu_616.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225", "Parent" : "134", "Child" : ["139", "140"],
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
	{"ID" : "139", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_HashFinal_fu_616.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.C_U", "Parent" : "138"},
	{"ID" : "140", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_HashFinal_fu_616.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.D_U", "Parent" : "138"},
	{"ID" : "141", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_HashFinal_fu_616.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230", "Parent" : "134", "Child" : ["142"],
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
	{"ID" : "142", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_HashFinal_fu_616.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230.C_U", "Parent" : "141"},
	{"ID" : "143", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_HashFinal_fu_616.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235", "Parent" : "134", "Child" : ["144", "145"],
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
	{"ID" : "144", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_HashFinal_fu_616.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.tempA_U", "Parent" : "143"},
	{"ID" : "145", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_3143.grp_HashFinal_fu_616.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "143"},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164", "Parent" : "11", "Child" : ["147", "148", "161", "176", "189", "202", "215"],
		"CDFG" : "computeSeeds_2",
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
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_2_fu_158"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdate_2_1360_fu_175"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdate_2_1360_fu_175"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdate_2_1360_fu_175"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_3_fu_190"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_203"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_216"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_230"}],
		"Port" : [
			{"Name" : "allSeeds_seed", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "148", "SubInstance" : "grp_KeccakWidth1600_Spon_2_fu_158", "Port" : "data"}]},
			{"Name" : "salt_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "176", "SubInstance" : "grp_KeccakWidth1600_Spon_3_fu_190", "Port" : "data_0"}]},
			{"Name" : "privateKey", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "161", "SubInstance" : "grp_HashUpdate_2_1360_fu_175", "Port" : "data"}]},
			{"Name" : "publicKey", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "161", "SubInstance" : "grp_HashUpdate_2_1360_fu_175", "Port" : "data"}]},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "161", "SubInstance" : "grp_HashUpdate_2_1360_fu_175", "Port" : "data"}]},
			{"Name" : "message", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "189", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_203", "Port" : "data"}]},
			{"Name" : "messageByteLength", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "176", "SubInstance" : "grp_KeccakWidth1600_Spon_3_fu_190", "Port" : "KeccakRhoOffsets"},
					{"ID" : "202", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_216", "Port" : "KeccakRhoOffsets"},
					{"ID" : "189", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_203", "Port" : "KeccakRhoOffsets"},
					{"ID" : "148", "SubInstance" : "grp_KeccakWidth1600_Spon_2_fu_158", "Port" : "KeccakRhoOffsets"},
					{"ID" : "161", "SubInstance" : "grp_HashUpdate_2_1360_fu_175", "Port" : "KeccakRhoOffsets"},
					{"ID" : "215", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_230", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "176", "SubInstance" : "grp_KeccakWidth1600_Spon_3_fu_190", "Port" : "KeccakRoundConstants"},
					{"ID" : "202", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_216", "Port" : "KeccakRoundConstants"},
					{"ID" : "189", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_203", "Port" : "KeccakRoundConstants"},
					{"ID" : "148", "SubInstance" : "grp_KeccakWidth1600_Spon_2_fu_158", "Port" : "KeccakRoundConstants"},
					{"ID" : "161", "SubInstance" : "grp_HashUpdate_2_1360_fu_175", "Port" : "KeccakRoundConstants"},
					{"ID" : "215", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_230", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "147", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.ctx_sponge_state_U", "Parent" : "146"},
	{"ID" : "148", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_2_fu_158", "Parent" : "146", "Child" : ["149"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_285"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_285"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_285"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "149", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_285", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "149", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_285", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "149", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_285", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "149", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_2_fu_158.grp_KeccakP1600_Permute_s_fu_285", "Parent" : "148", "Child" : ["150", "151", "152", "153", "156", "158"],
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
	{"ID" : "150", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_2_fu_158.grp_KeccakP1600_Permute_s_fu_285.KeccakRhoOffsets_U", "Parent" : "149"},
	{"ID" : "151", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_2_fu_158.grp_KeccakP1600_Permute_s_fu_285.KeccakRoundConstants_U", "Parent" : "149"},
	{"ID" : "152", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_2_fu_158.grp_KeccakP1600_Permute_s_fu_285.stateAsWords_U", "Parent" : "149"},
	{"ID" : "153", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_2_fu_158.grp_KeccakP1600_Permute_s_fu_285.grp_theta_fu_225", "Parent" : "149", "Child" : ["154", "155"],
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
	{"ID" : "154", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_2_fu_158.grp_KeccakP1600_Permute_s_fu_285.grp_theta_fu_225.C_U", "Parent" : "153"},
	{"ID" : "155", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_2_fu_158.grp_KeccakP1600_Permute_s_fu_285.grp_theta_fu_225.D_U", "Parent" : "153"},
	{"ID" : "156", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_2_fu_158.grp_KeccakP1600_Permute_s_fu_285.grp_chi_fu_230", "Parent" : "149", "Child" : ["157"],
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
	{"ID" : "157", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_2_fu_158.grp_KeccakP1600_Permute_s_fu_285.grp_chi_fu_230.C_U", "Parent" : "156"},
	{"ID" : "158", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_2_fu_158.grp_KeccakP1600_Permute_s_fu_285.grp_pi_fu_235", "Parent" : "149", "Child" : ["159", "160"],
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
	{"ID" : "159", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_2_fu_158.grp_KeccakP1600_Permute_s_fu_285.grp_pi_fu_235.tempA_U", "Parent" : "158"},
	{"ID" : "160", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_2_fu_158.grp_KeccakP1600_Permute_s_fu_285.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "158"},
	{"ID" : "161", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_HashUpdate_2_1360_fu_175", "Parent" : "146", "Child" : ["162", "163"],
		"CDFG" : "HashUpdate_2_1360",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_16_fu_162"}],
		"Port" : [
			{"Name" : "ctx_sponge_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "163", "SubInstance" : "grp_KeccakWidth1600_Spon_16_fu_162", "Port" : "instance_state"}]},
			{"Name" : "ctx_sponge_byteIOInd", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "163", "SubInstance" : "grp_KeccakWidth1600_Spon_16_fu_162", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "163", "SubInstance" : "grp_KeccakWidth1600_Spon_16_fu_162", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "162", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_HashUpdate_2_1360_fu_175.temp_U", "Parent" : "161"},
	{"ID" : "163", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_HashUpdate_2_1360_fu_175.grp_KeccakWidth1600_Spon_16_fu_162", "Parent" : "161", "Child" : ["164"],
		"CDFG" : "KeccakWidth1600_Spon_16",
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
					{"ID" : "164", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "164", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_HashUpdate_2_1360_fu_175.grp_KeccakWidth1600_Spon_16_fu_162.grp_KeccakP1600_Permute_s_fu_176", "Parent" : "163", "Child" : ["165", "166", "167", "168", "171", "173"],
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
	{"ID" : "165", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_HashUpdate_2_1360_fu_175.grp_KeccakWidth1600_Spon_16_fu_162.grp_KeccakP1600_Permute_s_fu_176.KeccakRhoOffsets_U", "Parent" : "164"},
	{"ID" : "166", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_HashUpdate_2_1360_fu_175.grp_KeccakWidth1600_Spon_16_fu_162.grp_KeccakP1600_Permute_s_fu_176.KeccakRoundConstants_U", "Parent" : "164"},
	{"ID" : "167", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_HashUpdate_2_1360_fu_175.grp_KeccakWidth1600_Spon_16_fu_162.grp_KeccakP1600_Permute_s_fu_176.stateAsWords_U", "Parent" : "164"},
	{"ID" : "168", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_HashUpdate_2_1360_fu_175.grp_KeccakWidth1600_Spon_16_fu_162.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225", "Parent" : "164", "Child" : ["169", "170"],
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
	{"ID" : "169", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_HashUpdate_2_1360_fu_175.grp_KeccakWidth1600_Spon_16_fu_162.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.C_U", "Parent" : "168"},
	{"ID" : "170", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_HashUpdate_2_1360_fu_175.grp_KeccakWidth1600_Spon_16_fu_162.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.D_U", "Parent" : "168"},
	{"ID" : "171", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_HashUpdate_2_1360_fu_175.grp_KeccakWidth1600_Spon_16_fu_162.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230", "Parent" : "164", "Child" : ["172"],
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
	{"ID" : "172", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_HashUpdate_2_1360_fu_175.grp_KeccakWidth1600_Spon_16_fu_162.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230.C_U", "Parent" : "171"},
	{"ID" : "173", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_HashUpdate_2_1360_fu_175.grp_KeccakWidth1600_Spon_16_fu_162.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235", "Parent" : "164", "Child" : ["174", "175"],
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
	{"ID" : "174", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_HashUpdate_2_1360_fu_175.grp_KeccakWidth1600_Spon_16_fu_162.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.tempA_U", "Parent" : "173"},
	{"ID" : "175", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_HashUpdate_2_1360_fu_175.grp_KeccakWidth1600_Spon_16_fu_162.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "173"},
	{"ID" : "176", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_3_fu_190", "Parent" : "146", "Child" : ["177"],
		"CDFG" : "KeccakWidth1600_Spon_3",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_244"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_244"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_244"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "177", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_244", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "177", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_244", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "177", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_244", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "177", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_3_fu_190.grp_KeccakP1600_Permute_s_fu_244", "Parent" : "176", "Child" : ["178", "179", "180", "181", "184", "186"],
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
	{"ID" : "178", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_3_fu_190.grp_KeccakP1600_Permute_s_fu_244.KeccakRhoOffsets_U", "Parent" : "177"},
	{"ID" : "179", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_3_fu_190.grp_KeccakP1600_Permute_s_fu_244.KeccakRoundConstants_U", "Parent" : "177"},
	{"ID" : "180", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_3_fu_190.grp_KeccakP1600_Permute_s_fu_244.stateAsWords_U", "Parent" : "177"},
	{"ID" : "181", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_3_fu_190.grp_KeccakP1600_Permute_s_fu_244.grp_theta_fu_225", "Parent" : "177", "Child" : ["182", "183"],
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
	{"ID" : "182", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_3_fu_190.grp_KeccakP1600_Permute_s_fu_244.grp_theta_fu_225.C_U", "Parent" : "181"},
	{"ID" : "183", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_3_fu_190.grp_KeccakP1600_Permute_s_fu_244.grp_theta_fu_225.D_U", "Parent" : "181"},
	{"ID" : "184", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_3_fu_190.grp_KeccakP1600_Permute_s_fu_244.grp_chi_fu_230", "Parent" : "177", "Child" : ["185"],
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
	{"ID" : "185", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_3_fu_190.grp_KeccakP1600_Permute_s_fu_244.grp_chi_fu_230.C_U", "Parent" : "184"},
	{"ID" : "186", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_3_fu_190.grp_KeccakP1600_Permute_s_fu_244.grp_pi_fu_235", "Parent" : "177", "Child" : ["187", "188"],
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
	{"ID" : "187", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_3_fu_190.grp_KeccakP1600_Permute_s_fu_244.grp_pi_fu_235.tempA_U", "Parent" : "186"},
	{"ID" : "188", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_3_fu_190.grp_KeccakP1600_Permute_s_fu_244.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "186"},
	{"ID" : "189", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_15_fu_203", "Parent" : "146", "Child" : ["190"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_158"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_158"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "190", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_158", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dataByteLen", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "190", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_158", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "190", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_158", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "190", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_15_fu_203.grp_KeccakP1600_Permute_s_fu_158", "Parent" : "189", "Child" : ["191", "192", "193", "194", "197", "199"],
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
	{"ID" : "191", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_15_fu_203.grp_KeccakP1600_Permute_s_fu_158.KeccakRhoOffsets_U", "Parent" : "190"},
	{"ID" : "192", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_15_fu_203.grp_KeccakP1600_Permute_s_fu_158.KeccakRoundConstants_U", "Parent" : "190"},
	{"ID" : "193", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_15_fu_203.grp_KeccakP1600_Permute_s_fu_158.stateAsWords_U", "Parent" : "190"},
	{"ID" : "194", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_15_fu_203.grp_KeccakP1600_Permute_s_fu_158.grp_theta_fu_225", "Parent" : "190", "Child" : ["195", "196"],
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
	{"ID" : "195", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_15_fu_203.grp_KeccakP1600_Permute_s_fu_158.grp_theta_fu_225.C_U", "Parent" : "194"},
	{"ID" : "196", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_15_fu_203.grp_KeccakP1600_Permute_s_fu_158.grp_theta_fu_225.D_U", "Parent" : "194"},
	{"ID" : "197", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_15_fu_203.grp_KeccakP1600_Permute_s_fu_158.grp_chi_fu_230", "Parent" : "190", "Child" : ["198"],
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
	{"ID" : "198", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_15_fu_203.grp_KeccakP1600_Permute_s_fu_158.grp_chi_fu_230.C_U", "Parent" : "197"},
	{"ID" : "199", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_15_fu_203.grp_KeccakP1600_Permute_s_fu_158.grp_pi_fu_235", "Parent" : "190", "Child" : ["200", "201"],
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
	{"ID" : "200", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_15_fu_203.grp_KeccakP1600_Permute_s_fu_158.grp_pi_fu_235.tempA_U", "Parent" : "199"},
	{"ID" : "201", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_15_fu_203.grp_KeccakP1600_Permute_s_fu_158.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "199"},
	{"ID" : "202", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_9_fu_216", "Parent" : "146", "Child" : ["203"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_173"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_173"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_173", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_173", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_173", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "203", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_9_fu_216.grp_KeccakP1600_Permute_s_fu_173", "Parent" : "202", "Child" : ["204", "205", "206", "207", "210", "212"],
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
	{"ID" : "204", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_9_fu_216.grp_KeccakP1600_Permute_s_fu_173.KeccakRhoOffsets_U", "Parent" : "203"},
	{"ID" : "205", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_9_fu_216.grp_KeccakP1600_Permute_s_fu_173.KeccakRoundConstants_U", "Parent" : "203"},
	{"ID" : "206", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_9_fu_216.grp_KeccakP1600_Permute_s_fu_173.stateAsWords_U", "Parent" : "203"},
	{"ID" : "207", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_9_fu_216.grp_KeccakP1600_Permute_s_fu_173.grp_theta_fu_225", "Parent" : "203", "Child" : ["208", "209"],
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
	{"ID" : "208", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_9_fu_216.grp_KeccakP1600_Permute_s_fu_173.grp_theta_fu_225.C_U", "Parent" : "207"},
	{"ID" : "209", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_9_fu_216.grp_KeccakP1600_Permute_s_fu_173.grp_theta_fu_225.D_U", "Parent" : "207"},
	{"ID" : "210", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_9_fu_216.grp_KeccakP1600_Permute_s_fu_173.grp_chi_fu_230", "Parent" : "203", "Child" : ["211"],
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
	{"ID" : "211", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_9_fu_216.grp_KeccakP1600_Permute_s_fu_173.grp_chi_fu_230.C_U", "Parent" : "210"},
	{"ID" : "212", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_9_fu_216.grp_KeccakP1600_Permute_s_fu_173.grp_pi_fu_235", "Parent" : "203", "Child" : ["213", "214"],
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
	{"ID" : "213", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_9_fu_216.grp_KeccakP1600_Permute_s_fu_173.grp_pi_fu_235.tempA_U", "Parent" : "212"},
	{"ID" : "214", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_9_fu_216.grp_KeccakP1600_Permute_s_fu_173.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "212"},
	{"ID" : "215", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakP1600_Permute_s_fu_230", "Parent" : "146", "Child" : ["216", "217", "218", "219", "222", "224"],
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
	{"ID" : "216", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakP1600_Permute_s_fu_230.KeccakRhoOffsets_U", "Parent" : "215"},
	{"ID" : "217", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakP1600_Permute_s_fu_230.KeccakRoundConstants_U", "Parent" : "215"},
	{"ID" : "218", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakP1600_Permute_s_fu_230.stateAsWords_U", "Parent" : "215"},
	{"ID" : "219", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakP1600_Permute_s_fu_230.grp_theta_fu_225", "Parent" : "215", "Child" : ["220", "221"],
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
	{"ID" : "220", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakP1600_Permute_s_fu_230.grp_theta_fu_225.C_U", "Parent" : "219"},
	{"ID" : "221", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakP1600_Permute_s_fu_230.grp_theta_fu_225.D_U", "Parent" : "219"},
	{"ID" : "222", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakP1600_Permute_s_fu_230.grp_chi_fu_230", "Parent" : "215", "Child" : ["223"],
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
	{"ID" : "223", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakP1600_Permute_s_fu_230.grp_chi_fu_230.C_U", "Parent" : "222"},
	{"ID" : "224", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakP1600_Permute_s_fu_230.grp_pi_fu_235", "Parent" : "215", "Child" : ["225", "226"],
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
	{"ID" : "225", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakP1600_Permute_s_fu_230.grp_pi_fu_235.tempA_U", "Parent" : "224"},
	{"ID" : "226", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_3164.grp_KeccakP1600_Permute_s_fu_230.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "224"},
	{"ID" : "227", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_3186", "Parent" : "11", "Child" : ["228", "229", "233", "237", "245", "246", "247", "248", "249", "250", "251", "252", "253", "254", "255", "256", "257"],
		"CDFG" : "mpc_LowMC_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2169249", "EstimateLatencyMax" : "2169249",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_955"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_955"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_955"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_955"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_955"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_955"},
			{"State" : "ap_ST_fsm_state43", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_1_fu_976"},
			{"State" : "ap_ST_fsm_state45", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_1_fu_976"},
			{"State" : "ap_ST_fsm_state47", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_1_fu_976"},
			{"State" : "ap_ST_fsm_state29", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mpc_AND_2_fu_989"},
			{"State" : "ap_ST_fsm_state31", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mpc_AND_2_fu_989"},
			{"State" : "ap_ST_fsm_state33", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mpc_AND_2_fu_989"}],
		"Port" : [
			{"Name" : "tapes_tape", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "237", "SubInstance" : "grp_mpc_AND_2_fu_989", "Port" : "rand_tape"}]},
			{"Name" : "views_inputShare", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "229", "SubInstance" : "grp_matrix_mul_fu_955", "Port" : "state"}]},
			{"Name" : "views_inputShare_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "views_communicatedBi", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "237", "SubInstance" : "grp_mpc_AND_2_fu_989", "Port" : "views_communicatedBi"}]},
			{"Name" : "views_outputShare", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "slab", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "229", "SubInstance" : "grp_matrix_mul_fu_955", "Port" : "output_r"},
					{"ID" : "233", "SubInstance" : "grp_matrix_mul_1_fu_976", "Port" : "output_r"}]},
			{"Name" : "temp_matrix", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "229", "SubInstance" : "grp_matrix_mul_fu_955", "Port" : "temp_matrix"}]},
			{"Name" : "temp_matrix2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "233", "SubInstance" : "grp_matrix_mul_1_fu_976", "Port" : "temp_matrix2"}]},
			{"Name" : "temp_matrix3", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "228", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_3186.temp_matrix3_U", "Parent" : "227"},
	{"ID" : "229", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_3186.grp_matrix_mul_fu_955", "Parent" : "227", "Child" : ["230", "231", "232"],
		"CDFG" : "matrix_mul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9234", "EstimateLatencyMax" : "9234",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "state", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "state_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "matrix_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_matrix", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "230", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_3186.grp_matrix_mul_fu_955.temp_matrix_U", "Parent" : "229"},
	{"ID" : "231", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_3186.grp_matrix_mul_fu_955.prod_U", "Parent" : "229"},
	{"ID" : "232", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_3186.grp_matrix_mul_fu_955.temp_U", "Parent" : "229"},
	{"ID" : "233", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_3186.grp_matrix_mul_1_fu_976", "Parent" : "227", "Child" : ["234", "235", "236"],
		"CDFG" : "matrix_mul_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9234", "EstimateLatencyMax" : "9234",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "state_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "matrix_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_matrix2", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "234", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_3186.grp_matrix_mul_1_fu_976.temp_matrix2_U", "Parent" : "233"},
	{"ID" : "235", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_3186.grp_matrix_mul_1_fu_976.prod_U", "Parent" : "233"},
	{"ID" : "236", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_3186.grp_matrix_mul_1_fu_976.temp_U", "Parent" : "233"},
	{"ID" : "237", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_3186.grp_mpc_AND_2_fu_989", "Parent" : "227", "Child" : ["238", "239", "240", "241", "242", "243", "244"],
		"CDFG" : "mpc_AND_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in1_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in1_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in1_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in2_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in2_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in2_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "rand_tape", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rand_pos_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "views_communicatedBi", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "views_communicatedBits_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "238", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_3186.grp_mpc_AND_2_fu_989.crypto_sign_mux_3ibs_U85", "Parent" : "237"},
	{"ID" : "239", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_3186.grp_mpc_AND_2_fu_989.crypto_sign_mux_3ibs_U86", "Parent" : "237"},
	{"ID" : "240", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_3186.grp_mpc_AND_2_fu_989.crypto_sign_mux_3ibs_U87", "Parent" : "237"},
	{"ID" : "241", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_3186.grp_mpc_AND_2_fu_989.crypto_sign_mux_3ibs_U88", "Parent" : "237"},
	{"ID" : "242", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_3186.grp_mpc_AND_2_fu_989.crypto_sign_mux_3ibs_U89", "Parent" : "237"},
	{"ID" : "243", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_3186.grp_mpc_AND_2_fu_989.crypto_sign_mux_3ibs_U90", "Parent" : "237"},
	{"ID" : "244", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_3186.grp_mpc_AND_2_fu_989.crypto_sign_ama_ajbC_U91", "Parent" : "237"},
	{"ID" : "245", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_3186.crypto_sign_mux_4mb6_U111", "Parent" : "227"},
	{"ID" : "246", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_3186.crypto_sign_mux_3ibs_U112", "Parent" : "227"},
	{"ID" : "247", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_3186.crypto_sign_mux_3ibs_U113", "Parent" : "227"},
	{"ID" : "248", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_3186.crypto_sign_mux_3ibs_U114", "Parent" : "227"},
	{"ID" : "249", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_3186.crypto_sign_mux_3ibs_U115", "Parent" : "227"},
	{"ID" : "250", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_3186.crypto_sign_mux_3ibs_U116", "Parent" : "227"},
	{"ID" : "251", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_3186.crypto_sign_mux_3ibs_U117", "Parent" : "227"},
	{"ID" : "252", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_3186.crypto_sign_mux_3ibs_U118", "Parent" : "227"},
	{"ID" : "253", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_3186.crypto_sign_mux_3ibs_U119", "Parent" : "227"},
	{"ID" : "254", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_3186.crypto_sign_mux_3ibs_U120", "Parent" : "227"},
	{"ID" : "255", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_3186.crypto_sign_mux_4mb6_U121", "Parent" : "227"},
	{"ID" : "256", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_3186.crypto_sign_mux_4mb6_U122", "Parent" : "227"},
	{"ID" : "257", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_3186.crypto_sign_mux_4mb6_U123", "Parent" : "227"},
	{"ID" : "258", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_1_fu_3205", "Parent" : "11", "Child" : ["259"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_245"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_245"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_245"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "259", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_245", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dataByteLen", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "259", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_245", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "259", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_245", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "259", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_1_fu_3205.grp_KeccakP1600_Permute_s_fu_245", "Parent" : "258", "Child" : ["260", "261", "262", "263", "266", "268"],
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
	{"ID" : "260", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_1_fu_3205.grp_KeccakP1600_Permute_s_fu_245.KeccakRhoOffsets_U", "Parent" : "259"},
	{"ID" : "261", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_1_fu_3205.grp_KeccakP1600_Permute_s_fu_245.KeccakRoundConstants_U", "Parent" : "259"},
	{"ID" : "262", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_1_fu_3205.grp_KeccakP1600_Permute_s_fu_245.stateAsWords_U", "Parent" : "259"},
	{"ID" : "263", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_1_fu_3205.grp_KeccakP1600_Permute_s_fu_245.grp_theta_fu_225", "Parent" : "259", "Child" : ["264", "265"],
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
	{"ID" : "264", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_1_fu_3205.grp_KeccakP1600_Permute_s_fu_245.grp_theta_fu_225.C_U", "Parent" : "263"},
	{"ID" : "265", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_1_fu_3205.grp_KeccakP1600_Permute_s_fu_245.grp_theta_fu_225.D_U", "Parent" : "263"},
	{"ID" : "266", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_1_fu_3205.grp_KeccakP1600_Permute_s_fu_245.grp_chi_fu_230", "Parent" : "259", "Child" : ["267"],
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
	{"ID" : "267", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_1_fu_3205.grp_KeccakP1600_Permute_s_fu_245.grp_chi_fu_230.C_U", "Parent" : "266"},
	{"ID" : "268", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_1_fu_3205.grp_KeccakP1600_Permute_s_fu_245.grp_pi_fu_235", "Parent" : "259", "Child" : ["269", "270"],
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
	{"ID" : "269", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_1_fu_3205.grp_KeccakP1600_Permute_s_fu_245.grp_pi_fu_235.tempA_U", "Parent" : "268"},
	{"ID" : "270", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_1_fu_3205.grp_KeccakP1600_Permute_s_fu_245.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "268"},
	{"ID" : "271", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_5_fu_3220", "Parent" : "11", "Child" : ["272"],
		"CDFG" : "KeccakWidth1600_Spon_5",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_243"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_243"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_243"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "272", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_243", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dataByteLen", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "272", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_243", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "272", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_243", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "272", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_5_fu_3220.grp_KeccakP1600_Permute_s_fu_243", "Parent" : "271", "Child" : ["273", "274", "275", "276", "279", "281"],
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
	{"ID" : "273", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_5_fu_3220.grp_KeccakP1600_Permute_s_fu_243.KeccakRhoOffsets_U", "Parent" : "272"},
	{"ID" : "274", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_5_fu_3220.grp_KeccakP1600_Permute_s_fu_243.KeccakRoundConstants_U", "Parent" : "272"},
	{"ID" : "275", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_5_fu_3220.grp_KeccakP1600_Permute_s_fu_243.stateAsWords_U", "Parent" : "272"},
	{"ID" : "276", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_5_fu_3220.grp_KeccakP1600_Permute_s_fu_243.grp_theta_fu_225", "Parent" : "272", "Child" : ["277", "278"],
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
	{"ID" : "277", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_5_fu_3220.grp_KeccakP1600_Permute_s_fu_243.grp_theta_fu_225.C_U", "Parent" : "276"},
	{"ID" : "278", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_5_fu_3220.grp_KeccakP1600_Permute_s_fu_243.grp_theta_fu_225.D_U", "Parent" : "276"},
	{"ID" : "279", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_5_fu_3220.grp_KeccakP1600_Permute_s_fu_243.grp_chi_fu_230", "Parent" : "272", "Child" : ["280"],
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
	{"ID" : "280", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_5_fu_3220.grp_KeccakP1600_Permute_s_fu_243.grp_chi_fu_230.C_U", "Parent" : "279"},
	{"ID" : "281", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_5_fu_3220.grp_KeccakP1600_Permute_s_fu_243.grp_pi_fu_235", "Parent" : "272", "Child" : ["282", "283"],
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
	{"ID" : "282", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_5_fu_3220.grp_KeccakP1600_Permute_s_fu_243.grp_pi_fu_235.tempA_U", "Parent" : "281"},
	{"ID" : "283", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_5_fu_3220.grp_KeccakP1600_Permute_s_fu_243.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "281"},
	{"ID" : "284", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashUpdate_2_fu_3235", "Parent" : "11", "Child" : ["285", "286"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_16_fu_188"}],
		"Port" : [
			{"Name" : "ctx_sponge_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "286", "SubInstance" : "grp_KeccakWidth1600_Spon_16_fu_188", "Port" : "instance_state"}]},
			{"Name" : "ctx_sponge_byteIOInd", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "286", "SubInstance" : "grp_KeccakWidth1600_Spon_16_fu_188", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "286", "SubInstance" : "grp_KeccakWidth1600_Spon_16_fu_188", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "285", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashUpdate_2_fu_3235.temp_U", "Parent" : "284"},
	{"ID" : "286", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashUpdate_2_fu_3235.grp_KeccakWidth1600_Spon_16_fu_188", "Parent" : "284", "Child" : ["287"],
		"CDFG" : "KeccakWidth1600_Spon_16",
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
					{"ID" : "287", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "287", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "287", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "287", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashUpdate_2_fu_3235.grp_KeccakWidth1600_Spon_16_fu_188.grp_KeccakP1600_Permute_s_fu_176", "Parent" : "286", "Child" : ["288", "289", "290", "291", "294", "296"],
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
	{"ID" : "288", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashUpdate_2_fu_3235.grp_KeccakWidth1600_Spon_16_fu_188.grp_KeccakP1600_Permute_s_fu_176.KeccakRhoOffsets_U", "Parent" : "287"},
	{"ID" : "289", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashUpdate_2_fu_3235.grp_KeccakWidth1600_Spon_16_fu_188.grp_KeccakP1600_Permute_s_fu_176.KeccakRoundConstants_U", "Parent" : "287"},
	{"ID" : "290", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashUpdate_2_fu_3235.grp_KeccakWidth1600_Spon_16_fu_188.grp_KeccakP1600_Permute_s_fu_176.stateAsWords_U", "Parent" : "287"},
	{"ID" : "291", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashUpdate_2_fu_3235.grp_KeccakWidth1600_Spon_16_fu_188.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225", "Parent" : "287", "Child" : ["292", "293"],
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
	{"ID" : "292", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashUpdate_2_fu_3235.grp_KeccakWidth1600_Spon_16_fu_188.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.C_U", "Parent" : "291"},
	{"ID" : "293", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashUpdate_2_fu_3235.grp_KeccakWidth1600_Spon_16_fu_188.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.D_U", "Parent" : "291"},
	{"ID" : "294", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashUpdate_2_fu_3235.grp_KeccakWidth1600_Spon_16_fu_188.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230", "Parent" : "287", "Child" : ["295"],
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
	{"ID" : "295", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashUpdate_2_fu_3235.grp_KeccakWidth1600_Spon_16_fu_188.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230.C_U", "Parent" : "294"},
	{"ID" : "296", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashUpdate_2_fu_3235.grp_KeccakWidth1600_Spon_16_fu_188.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235", "Parent" : "287", "Child" : ["297", "298"],
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
	{"ID" : "297", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashUpdate_2_fu_3235.grp_KeccakWidth1600_Spon_16_fu_188.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.tempA_U", "Parent" : "296"},
	{"ID" : "298", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashUpdate_2_fu_3235.grp_KeccakWidth1600_Spon_16_fu_188.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "296"},
	{"ID" : "299", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_fu_3252", "Parent" : "11", "Child" : ["300"],
		"CDFG" : "KeccakWidth1600_Spon",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_275"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_275"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_275"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "300", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_275", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "300", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_275", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "300", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_275", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "300", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_fu_3252.grp_KeccakP1600_Permute_s_fu_275", "Parent" : "299", "Child" : ["301", "302", "303", "304", "307", "309"],
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
	{"ID" : "301", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_fu_3252.grp_KeccakP1600_Permute_s_fu_275.KeccakRhoOffsets_U", "Parent" : "300"},
	{"ID" : "302", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_fu_3252.grp_KeccakP1600_Permute_s_fu_275.KeccakRoundConstants_U", "Parent" : "300"},
	{"ID" : "303", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_fu_3252.grp_KeccakP1600_Permute_s_fu_275.stateAsWords_U", "Parent" : "300"},
	{"ID" : "304", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_fu_3252.grp_KeccakP1600_Permute_s_fu_275.grp_theta_fu_225", "Parent" : "300", "Child" : ["305", "306"],
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
	{"ID" : "305", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_fu_3252.grp_KeccakP1600_Permute_s_fu_275.grp_theta_fu_225.C_U", "Parent" : "304"},
	{"ID" : "306", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_fu_3252.grp_KeccakP1600_Permute_s_fu_275.grp_theta_fu_225.D_U", "Parent" : "304"},
	{"ID" : "307", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_fu_3252.grp_KeccakP1600_Permute_s_fu_275.grp_chi_fu_230", "Parent" : "300", "Child" : ["308"],
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
	{"ID" : "308", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_fu_3252.grp_KeccakP1600_Permute_s_fu_275.grp_chi_fu_230.C_U", "Parent" : "307"},
	{"ID" : "309", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_fu_3252.grp_KeccakP1600_Permute_s_fu_275.grp_pi_fu_235", "Parent" : "300", "Child" : ["310", "311"],
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
	{"ID" : "310", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_fu_3252.grp_KeccakP1600_Permute_s_fu_275.grp_pi_fu_235.tempA_U", "Parent" : "309"},
	{"ID" : "311", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_fu_3252.grp_KeccakP1600_Permute_s_fu_275.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "309"},
	{"ID" : "312", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_10_fu_3270", "Parent" : "11", "Child" : ["313", "325"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_194"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_194"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "313", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_194", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "313", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_194", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "313", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_194", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "313", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_10_fu_3270.grp_KeccakP1600_Permute_s_fu_194", "Parent" : "312", "Child" : ["314", "315", "316", "317", "320", "322"],
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
	{"ID" : "314", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_10_fu_3270.grp_KeccakP1600_Permute_s_fu_194.KeccakRhoOffsets_U", "Parent" : "313"},
	{"ID" : "315", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_10_fu_3270.grp_KeccakP1600_Permute_s_fu_194.KeccakRoundConstants_U", "Parent" : "313"},
	{"ID" : "316", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_10_fu_3270.grp_KeccakP1600_Permute_s_fu_194.stateAsWords_U", "Parent" : "313"},
	{"ID" : "317", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_10_fu_3270.grp_KeccakP1600_Permute_s_fu_194.grp_theta_fu_225", "Parent" : "313", "Child" : ["318", "319"],
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
	{"ID" : "318", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_10_fu_3270.grp_KeccakP1600_Permute_s_fu_194.grp_theta_fu_225.C_U", "Parent" : "317"},
	{"ID" : "319", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_10_fu_3270.grp_KeccakP1600_Permute_s_fu_194.grp_theta_fu_225.D_U", "Parent" : "317"},
	{"ID" : "320", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_10_fu_3270.grp_KeccakP1600_Permute_s_fu_194.grp_chi_fu_230", "Parent" : "313", "Child" : ["321"],
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
	{"ID" : "321", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_10_fu_3270.grp_KeccakP1600_Permute_s_fu_194.grp_chi_fu_230.C_U", "Parent" : "320"},
	{"ID" : "322", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_10_fu_3270.grp_KeccakP1600_Permute_s_fu_194.grp_pi_fu_235", "Parent" : "313", "Child" : ["323", "324"],
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
	{"ID" : "323", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_10_fu_3270.grp_KeccakP1600_Permute_s_fu_194.grp_pi_fu_235.tempA_U", "Parent" : "322"},
	{"ID" : "324", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_10_fu_3270.grp_KeccakP1600_Permute_s_fu_194.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "322"},
	{"ID" : "325", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_10_fu_3270.crypto_sign_am_adncg_U149", "Parent" : "312"},
	{"ID" : "326", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_14_fu_3287", "Parent" : "11", "Child" : ["327"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "327", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "327", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "327", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "327", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_14_fu_3287.grp_KeccakP1600_Permute_s_fu_204", "Parent" : "326", "Child" : ["328", "329", "330", "331", "334", "336"],
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
	{"ID" : "328", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_14_fu_3287.grp_KeccakP1600_Permute_s_fu_204.KeccakRhoOffsets_U", "Parent" : "327"},
	{"ID" : "329", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_14_fu_3287.grp_KeccakP1600_Permute_s_fu_204.KeccakRoundConstants_U", "Parent" : "327"},
	{"ID" : "330", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_14_fu_3287.grp_KeccakP1600_Permute_s_fu_204.stateAsWords_U", "Parent" : "327"},
	{"ID" : "331", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_14_fu_3287.grp_KeccakP1600_Permute_s_fu_204.grp_theta_fu_225", "Parent" : "327", "Child" : ["332", "333"],
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
	{"ID" : "332", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_14_fu_3287.grp_KeccakP1600_Permute_s_fu_204.grp_theta_fu_225.C_U", "Parent" : "331"},
	{"ID" : "333", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_14_fu_3287.grp_KeccakP1600_Permute_s_fu_204.grp_theta_fu_225.D_U", "Parent" : "331"},
	{"ID" : "334", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_14_fu_3287.grp_KeccakP1600_Permute_s_fu_204.grp_chi_fu_230", "Parent" : "327", "Child" : ["335"],
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
	{"ID" : "335", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_14_fu_3287.grp_KeccakP1600_Permute_s_fu_204.grp_chi_fu_230.C_U", "Parent" : "334"},
	{"ID" : "336", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_14_fu_3287.grp_KeccakP1600_Permute_s_fu_204.grp_pi_fu_235", "Parent" : "327", "Child" : ["337", "338"],
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
	{"ID" : "337", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_14_fu_3287.grp_KeccakP1600_Permute_s_fu_204.grp_pi_fu_235.tempA_U", "Parent" : "336"},
	{"ID" : "338", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_14_fu_3287.grp_KeccakP1600_Permute_s_fu_204.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "336"},
	{"ID" : "339", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_7_fu_3304", "Parent" : "11", "Child" : ["340"],
		"CDFG" : "KeccakWidth1600_Spon_7",
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
					{"ID" : "340", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "340", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "340", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "340", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_7_fu_3304.grp_KeccakP1600_Permute_s_fu_204", "Parent" : "339", "Child" : ["341", "342", "343", "344", "347", "349"],
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
	{"ID" : "341", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_7_fu_3304.grp_KeccakP1600_Permute_s_fu_204.KeccakRhoOffsets_U", "Parent" : "340"},
	{"ID" : "342", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_7_fu_3304.grp_KeccakP1600_Permute_s_fu_204.KeccakRoundConstants_U", "Parent" : "340"},
	{"ID" : "343", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_7_fu_3304.grp_KeccakP1600_Permute_s_fu_204.stateAsWords_U", "Parent" : "340"},
	{"ID" : "344", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_7_fu_3304.grp_KeccakP1600_Permute_s_fu_204.grp_theta_fu_225", "Parent" : "340", "Child" : ["345", "346"],
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
	{"ID" : "345", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_7_fu_3304.grp_KeccakP1600_Permute_s_fu_204.grp_theta_fu_225.C_U", "Parent" : "344"},
	{"ID" : "346", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_7_fu_3304.grp_KeccakP1600_Permute_s_fu_204.grp_theta_fu_225.D_U", "Parent" : "344"},
	{"ID" : "347", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_7_fu_3304.grp_KeccakP1600_Permute_s_fu_204.grp_chi_fu_230", "Parent" : "340", "Child" : ["348"],
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
	{"ID" : "348", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_7_fu_3304.grp_KeccakP1600_Permute_s_fu_204.grp_chi_fu_230.C_U", "Parent" : "347"},
	{"ID" : "349", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_7_fu_3304.grp_KeccakP1600_Permute_s_fu_204.grp_pi_fu_235", "Parent" : "340", "Child" : ["350", "351"],
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
	{"ID" : "350", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_7_fu_3304.grp_KeccakP1600_Permute_s_fu_204.grp_pi_fu_235.tempA_U", "Parent" : "349"},
	{"ID" : "351", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_7_fu_3304.grp_KeccakP1600_Permute_s_fu_204.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "349"},
	{"ID" : "352", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_6_fu_3321", "Parent" : "11", "Child" : ["353"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_178"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_178"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "353", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_178", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "353", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_178", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "353", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_178", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "353", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_6_fu_3321.grp_KeccakP1600_Permute_s_fu_178", "Parent" : "352", "Child" : ["354", "355", "356", "357", "360", "362"],
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
	{"ID" : "354", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_6_fu_3321.grp_KeccakP1600_Permute_s_fu_178.KeccakRhoOffsets_U", "Parent" : "353"},
	{"ID" : "355", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_6_fu_3321.grp_KeccakP1600_Permute_s_fu_178.KeccakRoundConstants_U", "Parent" : "353"},
	{"ID" : "356", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_6_fu_3321.grp_KeccakP1600_Permute_s_fu_178.stateAsWords_U", "Parent" : "353"},
	{"ID" : "357", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_6_fu_3321.grp_KeccakP1600_Permute_s_fu_178.grp_theta_fu_225", "Parent" : "353", "Child" : ["358", "359"],
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
	{"ID" : "358", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_6_fu_3321.grp_KeccakP1600_Permute_s_fu_178.grp_theta_fu_225.C_U", "Parent" : "357"},
	{"ID" : "359", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_6_fu_3321.grp_KeccakP1600_Permute_s_fu_178.grp_theta_fu_225.D_U", "Parent" : "357"},
	{"ID" : "360", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_6_fu_3321.grp_KeccakP1600_Permute_s_fu_178.grp_chi_fu_230", "Parent" : "353", "Child" : ["361"],
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
	{"ID" : "361", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_6_fu_3321.grp_KeccakP1600_Permute_s_fu_178.grp_chi_fu_230.C_U", "Parent" : "360"},
	{"ID" : "362", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_6_fu_3321.grp_KeccakP1600_Permute_s_fu_178.grp_pi_fu_235", "Parent" : "353", "Child" : ["363", "364"],
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
	{"ID" : "363", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_6_fu_3321.grp_KeccakP1600_Permute_s_fu_178.grp_pi_fu_235.tempA_U", "Parent" : "362"},
	{"ID" : "364", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_6_fu_3321.grp_KeccakP1600_Permute_s_fu_178.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "362"},
	{"ID" : "365", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_13_fu_3332", "Parent" : "11", "Child" : ["366"],
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
					{"ID" : "366", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "366", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "366", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "366", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_13_fu_3332.grp_KeccakP1600_Permute_s_fu_176", "Parent" : "365", "Child" : ["367", "368", "369", "370", "373", "375"],
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
	{"ID" : "367", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_13_fu_3332.grp_KeccakP1600_Permute_s_fu_176.KeccakRhoOffsets_U", "Parent" : "366"},
	{"ID" : "368", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_13_fu_3332.grp_KeccakP1600_Permute_s_fu_176.KeccakRoundConstants_U", "Parent" : "366"},
	{"ID" : "369", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_13_fu_3332.grp_KeccakP1600_Permute_s_fu_176.stateAsWords_U", "Parent" : "366"},
	{"ID" : "370", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_13_fu_3332.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225", "Parent" : "366", "Child" : ["371", "372"],
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
	{"ID" : "371", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_13_fu_3332.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.C_U", "Parent" : "370"},
	{"ID" : "372", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_13_fu_3332.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.D_U", "Parent" : "370"},
	{"ID" : "373", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_13_fu_3332.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230", "Parent" : "366", "Child" : ["374"],
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
	{"ID" : "374", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_13_fu_3332.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230.C_U", "Parent" : "373"},
	{"ID" : "375", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_13_fu_3332.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235", "Parent" : "366", "Child" : ["376", "377"],
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
	{"ID" : "376", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_13_fu_3332.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.tempA_U", "Parent" : "375"},
	{"ID" : "377", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_13_fu_3332.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "375"},
	{"ID" : "378", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_8_fu_3343", "Parent" : "11", "Child" : ["379"],
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
					{"ID" : "379", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "379", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "379", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "379", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_8_fu_3343.grp_KeccakP1600_Permute_s_fu_176", "Parent" : "378", "Child" : ["380", "381", "382", "383", "386", "388"],
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
	{"ID" : "380", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_8_fu_3343.grp_KeccakP1600_Permute_s_fu_176.KeccakRhoOffsets_U", "Parent" : "379"},
	{"ID" : "381", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_8_fu_3343.grp_KeccakP1600_Permute_s_fu_176.KeccakRoundConstants_U", "Parent" : "379"},
	{"ID" : "382", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_8_fu_3343.grp_KeccakP1600_Permute_s_fu_176.stateAsWords_U", "Parent" : "379"},
	{"ID" : "383", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_8_fu_3343.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225", "Parent" : "379", "Child" : ["384", "385"],
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
	{"ID" : "384", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_8_fu_3343.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.C_U", "Parent" : "383"},
	{"ID" : "385", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_8_fu_3343.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.D_U", "Parent" : "383"},
	{"ID" : "386", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_8_fu_3343.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230", "Parent" : "379", "Child" : ["387"],
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
	{"ID" : "387", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_8_fu_3343.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230.C_U", "Parent" : "386"},
	{"ID" : "388", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_8_fu_3343.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235", "Parent" : "379", "Child" : ["389", "390"],
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
	{"ID" : "389", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_8_fu_3343.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.tempA_U", "Parent" : "388"},
	{"ID" : "390", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_8_fu_3343.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "388"},
	{"ID" : "391", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_9_fu_3355", "Parent" : "11", "Child" : ["392"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_173"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_173"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "392", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_173", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "392", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_173", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "392", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_173", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "392", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_9_fu_3355.grp_KeccakP1600_Permute_s_fu_173", "Parent" : "391", "Child" : ["393", "394", "395", "396", "399", "401"],
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
	{"ID" : "393", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_9_fu_3355.grp_KeccakP1600_Permute_s_fu_173.KeccakRhoOffsets_U", "Parent" : "392"},
	{"ID" : "394", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_9_fu_3355.grp_KeccakP1600_Permute_s_fu_173.KeccakRoundConstants_U", "Parent" : "392"},
	{"ID" : "395", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_9_fu_3355.grp_KeccakP1600_Permute_s_fu_173.stateAsWords_U", "Parent" : "392"},
	{"ID" : "396", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_9_fu_3355.grp_KeccakP1600_Permute_s_fu_173.grp_theta_fu_225", "Parent" : "392", "Child" : ["397", "398"],
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
	{"ID" : "397", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_9_fu_3355.grp_KeccakP1600_Permute_s_fu_173.grp_theta_fu_225.C_U", "Parent" : "396"},
	{"ID" : "398", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_9_fu_3355.grp_KeccakP1600_Permute_s_fu_173.grp_theta_fu_225.D_U", "Parent" : "396"},
	{"ID" : "399", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_9_fu_3355.grp_KeccakP1600_Permute_s_fu_173.grp_chi_fu_230", "Parent" : "392", "Child" : ["400"],
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
	{"ID" : "400", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_9_fu_3355.grp_KeccakP1600_Permute_s_fu_173.grp_chi_fu_230.C_U", "Parent" : "399"},
	{"ID" : "401", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_9_fu_3355.grp_KeccakP1600_Permute_s_fu_173.grp_pi_fu_235", "Parent" : "392", "Child" : ["402", "403"],
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
	{"ID" : "402", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_9_fu_3355.grp_KeccakP1600_Permute_s_fu_173.grp_pi_fu_235.tempA_U", "Parent" : "401"},
	{"ID" : "403", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_9_fu_3355.grp_KeccakP1600_Permute_s_fu_173.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "401"},
	{"ID" : "404", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashInit_fu_3371", "Parent" : "11", "Child" : ["405"],
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
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_11_fu_74"}],
		"Port" : [
			{"Name" : "ctx_sponge_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "405", "SubInstance" : "grp_KeccakWidth1600_Spon_11_fu_74", "Port" : "instance_state"}]},
			{"Name" : "hashPrefix", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "405", "SubInstance" : "grp_KeccakWidth1600_Spon_11_fu_74", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "405", "SubInstance" : "grp_KeccakWidth1600_Spon_11_fu_74", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "405", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashInit_fu_3371.grp_KeccakWidth1600_Spon_11_fu_74", "Parent" : "404", "Child" : ["406"],
		"CDFG" : "KeccakWidth1600_Spon_11",
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
					{"ID" : "406", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "state"}]},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "406", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "406", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "406", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashInit_fu_3371.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54", "Parent" : "405", "Child" : ["407", "408", "409", "410", "413", "415"],
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
	{"ID" : "407", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashInit_fu_3371.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.KeccakRhoOffsets_U", "Parent" : "406"},
	{"ID" : "408", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashInit_fu_3371.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.KeccakRoundConstants_U", "Parent" : "406"},
	{"ID" : "409", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashInit_fu_3371.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.stateAsWords_U", "Parent" : "406"},
	{"ID" : "410", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashInit_fu_3371.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225", "Parent" : "406", "Child" : ["411", "412"],
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
	{"ID" : "411", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashInit_fu_3371.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.C_U", "Parent" : "410"},
	{"ID" : "412", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashInit_fu_3371.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.D_U", "Parent" : "410"},
	{"ID" : "413", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashInit_fu_3371.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230", "Parent" : "406", "Child" : ["414"],
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
	{"ID" : "414", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashInit_fu_3371.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230.C_U", "Parent" : "413"},
	{"ID" : "415", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashInit_fu_3371.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235", "Parent" : "406", "Child" : ["416", "417"],
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
	{"ID" : "416", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashInit_fu_3371.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.tempA_U", "Parent" : "415"},
	{"ID" : "417", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashInit_fu_3371.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "415"},
	{"ID" : "418", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashFinal_fu_3385", "Parent" : "11", "Child" : ["419"],
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
					{"ID" : "419", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "state"}]},
			{"Name" : "ctx_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "419", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "419", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "419", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashFinal_fu_3385.grp_KeccakP1600_Permute_s_fu_54", "Parent" : "418", "Child" : ["420", "421", "422", "423", "426", "428"],
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
	{"ID" : "420", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashFinal_fu_3385.grp_KeccakP1600_Permute_s_fu_54.KeccakRhoOffsets_U", "Parent" : "419"},
	{"ID" : "421", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashFinal_fu_3385.grp_KeccakP1600_Permute_s_fu_54.KeccakRoundConstants_U", "Parent" : "419"},
	{"ID" : "422", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashFinal_fu_3385.grp_KeccakP1600_Permute_s_fu_54.stateAsWords_U", "Parent" : "419"},
	{"ID" : "423", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashFinal_fu_3385.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225", "Parent" : "419", "Child" : ["424", "425"],
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
	{"ID" : "424", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashFinal_fu_3385.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.C_U", "Parent" : "423"},
	{"ID" : "425", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashFinal_fu_3385.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.D_U", "Parent" : "423"},
	{"ID" : "426", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashFinal_fu_3385.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230", "Parent" : "419", "Child" : ["427"],
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
	{"ID" : "427", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashFinal_fu_3385.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230.C_U", "Parent" : "426"},
	{"ID" : "428", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashFinal_fu_3385.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235", "Parent" : "419", "Child" : ["429", "430"],
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
	{"ID" : "429", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashFinal_fu_3385.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.tempA_U", "Parent" : "428"},
	{"ID" : "430", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashFinal_fu_3385.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "428"},
	{"ID" : "431", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_prove_26_fu_3395", "Parent" : "11", "Child" : ["432"],
		"CDFG" : "prove_26",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "548", "EstimateLatencyMax" : "564",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "proof_0_seed1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "proof_seed1_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "proof_0_seed2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "proof_0_inputShare", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "proof_0_communicatedBits", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "proof_0_view3Commitment", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "challenge", "Type" : "None", "Direction" : "I"},
			{"Name" : "seeds_seed", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "views_inputShare", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "views_communicatedBits", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "commitments_hashes", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "432", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_prove_26_fu_3395.crypto_sign_am_adpcA_U172", "Parent" : "431"},
	{"ID" : "433", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_serializeSignature_fu_388", "Parent" : "0",
		"CDFG" : "serializeSignature",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "240749", "EstimateLatencyMax" : "258707",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "sig_0_proofs_seed1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sig_0_proofs_seed2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sig_0_proofs_inputS", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sig_0_proofs_commun", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sig_0_proofs_view3C", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sig_0_challengeBits", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sig_0_salt", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sigBytes", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sigBytes_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	picnic_sign {
		sk_data {Type I LastRead 6 FirstWrite -1}
		sk_pk_plaintext {Type I LastRead 6 FirstWrite -1}
		sk_pk_ciphertext {Type I LastRead 6 FirstWrite -1}
		message {Type I LastRead 4 FirstWrite -1}
		message_len {Type I LastRead 0 FirstWrite -1}
		signature {Type O LastRead -1 FirstWrite 2}
		signature_offset {Type I LastRead 0 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}
		temp_matrix {Type I LastRead -1 FirstWrite -1}
		temp_matrix2 {Type I LastRead -1 FirstWrite -1}
		temp_matrix3 {Type I LastRead -1 FirstWrite -1}
		viewOutputs {Type IO LastRead 6 FirstWrite -1}}
	sign_picnic1 {
		privateKey {Type I LastRead 27 FirstWrite -1}
		pubKey {Type I LastRead 2 FirstWrite -1}
		plaintext {Type I LastRead 8 FirstWrite -1}
		message {Type I LastRead 4 FirstWrite -1}
		messageByteLength {Type I LastRead 0 FirstWrite -1}
		sig_0_proofs_seed1 {Type O LastRead -1 FirstWrite 2}
		sig_0_proofs_seed2 {Type O LastRead -1 FirstWrite 3}
		sig_0_proofs_inputS {Type O LastRead -1 FirstWrite 4}
		sig_0_proofs_commun {Type O LastRead -1 FirstWrite 6}
		sig_0_proofs_view3C {Type O LastRead -1 FirstWrite 7}
		sig_0_challengeBits {Type IO LastRead 20 FirstWrite 1}
		sig_0_salt {Type IO LastRead 4 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}
		temp_matrix {Type I LastRead -1 FirstWrite -1}
		temp_matrix2 {Type I LastRead -1 FirstWrite -1}
		temp_matrix3 {Type I LastRead -1 FirstWrite -1}
		viewOutputs {Type IO LastRead 6 FirstWrite -1}}
	H3_2 {
		circuitOutput {Type I LastRead 5 FirstWrite -1}
		plaintext {Type I LastRead 8 FirstWrite -1}
		as_hashes {Type I LastRead 4 FirstWrite -1}
		challengeBits_0 {Type IO LastRead 20 FirstWrite 1}
		salt_0 {Type I LastRead 4 FirstWrite -1}
		message {Type I LastRead 4 FirstWrite -1}
		messageByteLength {Type I LastRead 1 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}
		viewOutputs {Type I LastRead 5 FirstWrite -1}}
	KeccakWidth1600_Spon_4 {
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
	KeccakWidth1600_Spon_15 {
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
	KeccakWidth1600_Spon_14 {
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
	KeccakWidth1600_Spon_16 {
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
	KeccakWidth1600_Spon_12 {
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
	HashInit {
		ctx_sponge_state {Type IO LastRead 2 FirstWrite 1}
		hashPrefix {Type I LastRead 0 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	KeccakWidth1600_Spon_11 {
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
		A {Type IO LastRead 2 FirstWrite 14}}
	computeSeeds_2 {
		allSeeds_seed {Type O LastRead -1 FirstWrite 10}
		salt_0 {Type O LastRead -1 FirstWrite 10}
		privateKey {Type I LastRead 2 FirstWrite -1}
		publicKey {Type I LastRead 2 FirstWrite -1}
		plaintext {Type I LastRead 2 FirstWrite -1}
		message {Type I LastRead 4 FirstWrite -1}
		messageByteLength {Type I LastRead 0 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	KeccakWidth1600_Spon_2 {
		instance_state {Type IO LastRead 10 FirstWrite 1}
		instance_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		instance_squeezing_read {Type I LastRead 0 FirstWrite -1}
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
	HashUpdate_2_1360 {
		ctx_sponge_state {Type IO LastRead 4 FirstWrite 4}
		ctx_sponge_byteIOInd {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 2 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	KeccakWidth1600_Spon_16 {
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
	KeccakWidth1600_Spon_3 {
		instance_state {Type IO LastRead 10 FirstWrite 1}
		instance_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		instance_squeezing_read {Type I LastRead 0 FirstWrite -1}
		data_0 {Type O LastRead -1 FirstWrite 10}
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
	KeccakWidth1600_Spon_9 {
		instance_state {Type IO LastRead 3 FirstWrite 3}
		instance_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
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
	mpc_LowMC_2 {
		tapes_tape {Type I LastRead 2 FirstWrite -1}
		views_inputShare {Type I LastRead 2 FirstWrite -1}
		views_inputShare_offset {Type I LastRead 0 FirstWrite -1}
		views_communicatedBi {Type IO LastRead 3 FirstWrite 4}
		views_outputShare {Type O LastRead -1 FirstWrite 13}
		plaintext {Type I LastRead 2 FirstWrite -1}
		slab {Type IO LastRead 28 FirstWrite 1}
		temp_matrix {Type I LastRead -1 FirstWrite -1}
		temp_matrix2 {Type I LastRead -1 FirstWrite -1}
		temp_matrix3 {Type I LastRead -1 FirstWrite -1}}
	matrix_mul {
		output_r {Type O LastRead -1 FirstWrite 3}
		output_offset {Type I LastRead 0 FirstWrite -1}
		state {Type I LastRead 2 FirstWrite -1}
		state_offset {Type I LastRead 0 FirstWrite -1}
		state_offset1 {Type I LastRead 0 FirstWrite -1}
		matrix_offset {Type I LastRead 0 FirstWrite -1}
		temp_matrix {Type I LastRead -1 FirstWrite -1}}
	matrix_mul_1 {
		output_r {Type IO LastRead 2 FirstWrite 3}
		state_offset {Type I LastRead 0 FirstWrite -1}
		matrix_offset {Type I LastRead 0 FirstWrite -1}
		temp_matrix2 {Type I LastRead -1 FirstWrite -1}}
	mpc_AND_2 {
		in1_0_read {Type I LastRead 2 FirstWrite -1}
		in1_1_read {Type I LastRead 2 FirstWrite -1}
		in1_2_read {Type I LastRead 2 FirstWrite -1}
		in2_0_read {Type I LastRead 2 FirstWrite -1}
		in2_1_read {Type I LastRead 2 FirstWrite -1}
		in2_2_read {Type I LastRead 2 FirstWrite -1}
		out_0_read {Type I LastRead 2 FirstWrite -1}
		out_1_read {Type I LastRead 2 FirstWrite -1}
		out_2_read {Type I LastRead 2 FirstWrite -1}
		rand_tape {Type I LastRead 2 FirstWrite -1}
		rand_pos_read {Type I LastRead 0 FirstWrite -1}
		views_communicatedBi {Type IO LastRead 3 FirstWrite 4}
		views_communicatedBits_offset {Type I LastRead 2 FirstWrite -1}}
	KeccakWidth1600_Spon_1 {
		instance_state {Type IO LastRead 10 FirstWrite 1}
		instance_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		instance_squeezing_read {Type I LastRead 0 FirstWrite -1}
		data {Type O LastRead -1 FirstWrite 10}
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
	KeccakWidth1600_Spon_5 {
		instance_state {Type IO LastRead 10 FirstWrite 1}
		instance_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		instance_squeezing_read {Type I LastRead 0 FirstWrite -1}
		data {Type O LastRead -1 FirstWrite 10}
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
	HashUpdate_2 {
		ctx_sponge_state {Type IO LastRead 4 FirstWrite 4}
		ctx_sponge_byteIOInd {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 2 FirstWrite -1}
		data_offset {Type I LastRead 0 FirstWrite -1}
		data_offset1 {Type I LastRead 0 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	KeccakWidth1600_Spon_16 {
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
	KeccakWidth1600_Spon {
		instance_state {Type IO LastRead 10 FirstWrite 1}
		instance_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		instance_squeezing_read {Type I LastRead 0 FirstWrite -1}
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
	KeccakWidth1600_Spon_10 {
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
	KeccakWidth1600_Spon_14 {
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
	KeccakWidth1600_Spon_7 {
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
	KeccakWidth1600_Spon_6 {
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
	KeccakWidth1600_Spon_9 {
		instance_state {Type IO LastRead 3 FirstWrite 3}
		instance_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
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
	KeccakWidth1600_Spon_11 {
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
		A {Type IO LastRead 2 FirstWrite 14}}
	prove_26 {
		proof_0_seed1 {Type O LastRead -1 FirstWrite 2}
		proof_seed1_offset1 {Type I LastRead 0 FirstWrite -1}
		proof_0_seed2 {Type O LastRead -1 FirstWrite 3}
		proof_0_inputShare {Type O LastRead -1 FirstWrite 4}
		proof_0_communicatedBits {Type O LastRead -1 FirstWrite 6}
		proof_0_view3Commitment {Type O LastRead -1 FirstWrite 7}
		challenge {Type I LastRead 0 FirstWrite -1}
		seeds_seed {Type I LastRead 3 FirstWrite -1}
		views_inputShare {Type I LastRead 3 FirstWrite -1}
		views_communicatedBits {Type I LastRead 5 FirstWrite -1}
		commitments_hashes {Type I LastRead 6 FirstWrite -1}}
	serializeSignature {
		sig_0_proofs_seed1 {Type I LastRead 7 FirstWrite -1}
		sig_0_proofs_seed2 {Type I LastRead 8 FirstWrite -1}
		sig_0_proofs_inputS {Type I LastRead 9 FirstWrite -1}
		sig_0_proofs_commun {Type I LastRead 6 FirstWrite -1}
		sig_0_proofs_view3C {Type I LastRead 5 FirstWrite -1}
		sig_0_challengeBits {Type I LastRead 3 FirstWrite -1}
		sig_0_salt {Type I LastRead 2 FirstWrite -1}
		sigBytes {Type O LastRead -1 FirstWrite 2}
		sigBytes_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	sk_data { ap_memory {  { sk_data_address0 mem_address 1 5 }  { sk_data_ce0 mem_ce 1 1 }  { sk_data_q0 mem_dout 0 8 }  { sk_data_address1 mem_address 1 5 }  { sk_data_ce1 mem_ce 1 1 }  { sk_data_q1 mem_dout 0 8 } } }
	sk_pk_plaintext { ap_memory {  { sk_pk_plaintext_address0 mem_address 1 5 }  { sk_pk_plaintext_ce0 mem_ce 1 1 }  { sk_pk_plaintext_q0 mem_dout 0 8 }  { sk_pk_plaintext_address1 mem_address 1 5 }  { sk_pk_plaintext_ce1 mem_ce 1 1 }  { sk_pk_plaintext_q1 mem_dout 0 8 } } }
	sk_pk_ciphertext { ap_memory {  { sk_pk_ciphertext_address0 mem_address 1 5 }  { sk_pk_ciphertext_ce0 mem_ce 1 1 }  { sk_pk_ciphertext_q0 mem_dout 0 8 }  { sk_pk_ciphertext_address1 mem_address 1 5 }  { sk_pk_ciphertext_ce1 mem_ce 1 1 }  { sk_pk_ciphertext_q1 mem_dout 0 8 } } }
	message { ap_memory {  { message_address0 mem_address 1 12 }  { message_ce0 mem_ce 1 1 }  { message_q0 mem_dout 0 8 } } }
	message_len { ap_none {  { message_len in_data 0 64 } } }
	signature { ap_memory {  { signature_address0 mem_address 1 18 }  { signature_ce0 mem_ce 1 1 }  { signature_we0 mem_we 1 1 }  { signature_d0 mem_din 1 8 } } }
	signature_offset { ap_none {  { signature_offset in_data 0 64 } } }
	viewOutputs { ap_memory {  { viewOutputs_address0 mem_address 1 16 }  { viewOutputs_ce0 mem_ce 1 1 }  { viewOutputs_we0 mem_we 1 1 }  { viewOutputs_d0 mem_din 1 32 }  { viewOutputs_q0 mem_dout 0 32 }  { viewOutputs_address1 mem_address 1 16 }  { viewOutputs_ce1 mem_ce 1 1 }  { viewOutputs_q1 mem_dout 0 32 } } }
}
