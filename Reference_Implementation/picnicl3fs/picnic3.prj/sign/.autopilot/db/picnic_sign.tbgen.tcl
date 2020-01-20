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
	{ signature int 8 regular {array 80084 { 0 3 } 0 1 }  }
	{ signature_offset int 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sk_data", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sk_pk_plaintext", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sk_pk_ciphertext", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "message", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "message_len", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "signature", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "signature_offset", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 96} ]}
# RTL Port declarations: 
set portNum 35
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
	{ signature_address0 sc_out sc_lv 17 signal 5 } 
	{ signature_ce0 sc_out sc_logic 1 signal 5 } 
	{ signature_we0 sc_out sc_logic 1 signal 5 } 
	{ signature_d0 sc_out sc_lv 8 signal 5 } 
	{ signature_offset sc_in sc_lv 64 signal 6 } 
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
 	{ "name": "signature_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "signature", "role": "address0" }} , 
 	{ "name": "signature_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "signature", "role": "ce0" }} , 
 	{ "name": "signature_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "signature", "role": "we0" }} , 
 	{ "name": "signature_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "signature", "role": "d0" }} , 
 	{ "name": "signature_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "signature_offset", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "434"],
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
					{"ID" : "434", "SubInstance" : "grp_serializeSignature_fu_388", "Port" : "sigBytes"}]},
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
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359", "Parent" : "0", "Child" : ["12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "147", "228", "259", "272", "285", "298", "311", "326", "339", "352", "365", "379", "392", "405", "419", "432"],
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
			{"State" : "ap_ST_fsm_state702", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_H3_2_fu_17328"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_computeSeeds_2_fu_17349"},
			{"State" : "ap_ST_fsm_state58", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mpc_LowMC_2_fu_17371"},
			{"State" : "ap_ST_fsm_state39", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_1_fu_17390"},
			{"State" : "ap_ST_fsm_state55", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_1_fu_17390"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_5_fu_17405"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_5_fu_17405"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_8_fu_17420"},
			{"State" : "ap_ST_fsm_state45", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_8_fu_17420"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_17432"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_17432"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_17432"},
			{"State" : "ap_ST_fsm_state47", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_17432"},
			{"State" : "ap_ST_fsm_state49", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_17432"},
			{"State" : "ap_ST_fsm_state51", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_17432"},
			{"State" : "ap_ST_fsm_state262", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdate_2_2_fu_17448"},
			{"State" : "ap_ST_fsm_state266", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdate_2_2_fu_17448"},
			{"State" : "ap_ST_fsm_state474", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdate_2_2_fu_17448"},
			{"State" : "ap_ST_fsm_state478", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdate_2_2_fu_17448"},
			{"State" : "ap_ST_fsm_state686", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdate_2_2_fu_17448"},
			{"State" : "ap_ST_fsm_state690", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdate_2_2_fu_17448"},
			{"State" : "ap_ST_fsm_state256", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_fu_17465"},
			{"State" : "ap_ST_fsm_state270", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_fu_17465"},
			{"State" : "ap_ST_fsm_state468", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_fu_17465"},
			{"State" : "ap_ST_fsm_state482", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_fu_17465"},
			{"State" : "ap_ST_fsm_state680", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_fu_17465"},
			{"State" : "ap_ST_fsm_state694", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_fu_17465"},
			{"State" : "ap_ST_fsm_state260", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_14_fu_17483"},
			{"State" : "ap_ST_fsm_state472", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_14_fu_17483"},
			{"State" : "ap_ST_fsm_state684", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_14_fu_17483"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_7_fu_17500"},
			{"State" : "ap_ST_fsm_state35", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_7_fu_17500"},
			{"State" : "ap_ST_fsm_state252", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_7_fu_17500"},
			{"State" : "ap_ST_fsm_state464", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_7_fu_17500"},
			{"State" : "ap_ST_fsm_state676", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_7_fu_17500"},
			{"State" : "ap_ST_fsm_state264", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_10_fu_17517"},
			{"State" : "ap_ST_fsm_state476", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_10_fu_17517"},
			{"State" : "ap_ST_fsm_state688", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_10_fu_17517"},
			{"State" : "ap_ST_fsm_state43", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_6_fu_17534"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_13_fu_17545"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_17556"},
			{"State" : "ap_ST_fsm_state33", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_17556"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_17556"},
			{"State" : "ap_ST_fsm_state41", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_17556"},
			{"State" : "ap_ST_fsm_state250", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_17556"},
			{"State" : "ap_ST_fsm_state258", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_17556"},
			{"State" : "ap_ST_fsm_state462", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_17556"},
			{"State" : "ap_ST_fsm_state470", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_17556"},
			{"State" : "ap_ST_fsm_state674", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_17556"},
			{"State" : "ap_ST_fsm_state682", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_17556"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_17570"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_17570"},
			{"State" : "ap_ST_fsm_state37", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_17570"},
			{"State" : "ap_ST_fsm_state53", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_17570"},
			{"State" : "ap_ST_fsm_state254", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_17570"},
			{"State" : "ap_ST_fsm_state268", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_17570"},
			{"State" : "ap_ST_fsm_state466", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_17570"},
			{"State" : "ap_ST_fsm_state480", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_17570"},
			{"State" : "ap_ST_fsm_state678", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_17570"},
			{"State" : "ap_ST_fsm_state692", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_17570"},
			{"State" : "ap_ST_fsm_state706", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_prove_26_fu_17580"}],
		"Port" : [
			{"Name" : "privateKey", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "147", "SubInstance" : "grp_computeSeeds_2_fu_17349", "Port" : "privateKey"}]},
			{"Name" : "pubKey", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "147", "SubInstance" : "grp_computeSeeds_2_fu_17349", "Port" : "publicKey"}]},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "147", "SubInstance" : "grp_computeSeeds_2_fu_17349", "Port" : "plaintext"},
					{"ID" : "36", "SubInstance" : "grp_H3_2_fu_17328", "Port" : "plaintext"},
					{"ID" : "228", "SubInstance" : "grp_mpc_LowMC_2_fu_17371", "Port" : "plaintext"}]},
			{"Name" : "message", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "147", "SubInstance" : "grp_computeSeeds_2_fu_17349", "Port" : "message"},
					{"ID" : "36", "SubInstance" : "grp_H3_2_fu_17328", "Port" : "message"}]},
			{"Name" : "messageByteLength", "Type" : "None", "Direction" : "I"},
			{"Name" : "sig_0_proofs_seed1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "432", "SubInstance" : "grp_prove_26_fu_17580", "Port" : "proof_0_seed1"}]},
			{"Name" : "sig_0_proofs_seed2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "432", "SubInstance" : "grp_prove_26_fu_17580", "Port" : "proof_0_seed2"}]},
			{"Name" : "sig_0_proofs_inputS", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "432", "SubInstance" : "grp_prove_26_fu_17580", "Port" : "proof_0_inputShare"}]},
			{"Name" : "sig_0_proofs_commun", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "432", "SubInstance" : "grp_prove_26_fu_17580", "Port" : "proof_0_communicatedBits"}]},
			{"Name" : "sig_0_proofs_view3C", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "432", "SubInstance" : "grp_prove_26_fu_17580", "Port" : "proof_0_view3Commitment"}]},
			{"Name" : "sig_0_challengeBits", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_H3_2_fu_17328", "Port" : "challengeBits_0"}]},
			{"Name" : "sig_0_salt", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "147", "SubInstance" : "grp_computeSeeds_2_fu_17349", "Port" : "salt_0"},
					{"ID" : "36", "SubInstance" : "grp_H3_2_fu_17328", "Port" : "salt_0"},
					{"ID" : "285", "SubInstance" : "grp_KeccakWidth1600_Spon_8_fu_17420", "Port" : "data_0"}]},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "379", "SubInstance" : "grp_KeccakWidth1600_Spon_6_fu_17534", "Port" : "KeccakRhoOffsets"},
					{"ID" : "352", "SubInstance" : "grp_KeccakWidth1600_Spon_7_fu_17500", "Port" : "KeccakRhoOffsets"},
					{"ID" : "311", "SubInstance" : "grp_HashUpdate_2_2_fu_17448", "Port" : "KeccakRhoOffsets"},
					{"ID" : "405", "SubInstance" : "grp_HashInit_fu_17556", "Port" : "KeccakRhoOffsets"},
					{"ID" : "147", "SubInstance" : "grp_computeSeeds_2_fu_17349", "Port" : "KeccakRhoOffsets"},
					{"ID" : "259", "SubInstance" : "grp_KeccakWidth1600_Spon_1_fu_17390", "Port" : "KeccakRhoOffsets"},
					{"ID" : "419", "SubInstance" : "grp_HashFinal_fu_17570", "Port" : "KeccakRhoOffsets"},
					{"ID" : "392", "SubInstance" : "grp_KeccakWidth1600_Spon_13_fu_17545", "Port" : "KeccakRhoOffsets"},
					{"ID" : "339", "SubInstance" : "grp_KeccakWidth1600_Spon_14_fu_17483", "Port" : "KeccakRhoOffsets"},
					{"ID" : "298", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_17432", "Port" : "KeccakRhoOffsets"},
					{"ID" : "326", "SubInstance" : "grp_KeccakWidth1600_Spon_fu_17465", "Port" : "KeccakRhoOffsets"},
					{"ID" : "272", "SubInstance" : "grp_KeccakWidth1600_Spon_5_fu_17405", "Port" : "KeccakRhoOffsets"},
					{"ID" : "36", "SubInstance" : "grp_H3_2_fu_17328", "Port" : "KeccakRhoOffsets"},
					{"ID" : "285", "SubInstance" : "grp_KeccakWidth1600_Spon_8_fu_17420", "Port" : "KeccakRhoOffsets"},
					{"ID" : "365", "SubInstance" : "grp_KeccakWidth1600_Spon_10_fu_17517", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "379", "SubInstance" : "grp_KeccakWidth1600_Spon_6_fu_17534", "Port" : "KeccakRoundConstants"},
					{"ID" : "352", "SubInstance" : "grp_KeccakWidth1600_Spon_7_fu_17500", "Port" : "KeccakRoundConstants"},
					{"ID" : "311", "SubInstance" : "grp_HashUpdate_2_2_fu_17448", "Port" : "KeccakRoundConstants"},
					{"ID" : "405", "SubInstance" : "grp_HashInit_fu_17556", "Port" : "KeccakRoundConstants"},
					{"ID" : "147", "SubInstance" : "grp_computeSeeds_2_fu_17349", "Port" : "KeccakRoundConstants"},
					{"ID" : "259", "SubInstance" : "grp_KeccakWidth1600_Spon_1_fu_17390", "Port" : "KeccakRoundConstants"},
					{"ID" : "419", "SubInstance" : "grp_HashFinal_fu_17570", "Port" : "KeccakRoundConstants"},
					{"ID" : "392", "SubInstance" : "grp_KeccakWidth1600_Spon_13_fu_17545", "Port" : "KeccakRoundConstants"},
					{"ID" : "339", "SubInstance" : "grp_KeccakWidth1600_Spon_14_fu_17483", "Port" : "KeccakRoundConstants"},
					{"ID" : "298", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_17432", "Port" : "KeccakRoundConstants"},
					{"ID" : "326", "SubInstance" : "grp_KeccakWidth1600_Spon_fu_17465", "Port" : "KeccakRoundConstants"},
					{"ID" : "272", "SubInstance" : "grp_KeccakWidth1600_Spon_5_fu_17405", "Port" : "KeccakRoundConstants"},
					{"ID" : "36", "SubInstance" : "grp_H3_2_fu_17328", "Port" : "KeccakRoundConstants"},
					{"ID" : "285", "SubInstance" : "grp_KeccakWidth1600_Spon_8_fu_17420", "Port" : "KeccakRoundConstants"},
					{"ID" : "365", "SubInstance" : "grp_KeccakWidth1600_Spon_10_fu_17517", "Port" : "KeccakRoundConstants"}]},
			{"Name" : "temp_matrix", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "228", "SubInstance" : "grp_mpc_LowMC_2_fu_17371", "Port" : "temp_matrix"}]},
			{"Name" : "temp_matrix2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "228", "SubInstance" : "grp_mpc_LowMC_2_fu_17371", "Port" : "temp_matrix2"}]},
			{"Name" : "temp_matrix3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "228", "SubInstance" : "grp_mpc_LowMC_2_fu_17371", "Port" : "temp_matrix3"}]},
			{"Name" : "viewOutputs", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_H3_2_fu_17328", "Port" : "viewOutputs"}]}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.viewOutputs_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.ctx_sponge_state_4_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.views_outputShare121_U", "Parent" : "11"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.views_communicatedBi_U", "Parent" : "11"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.views_inputShare845_U", "Parent" : "11"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.ctx_sponge_state_3_U", "Parent" : "11"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.views_outputShare789_U", "Parent" : "11"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.views_communicatedBi_1_U", "Parent" : "11"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.views_inputShare424_U", "Parent" : "11"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.ctx_sponge_state_2_U", "Parent" : "11"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.views_outputShare389_U", "Parent" : "11"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.views_communicatedBi_2_U", "Parent" : "11"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.views_inputShare27_U", "Parent" : "11"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.ctx_sponge_state_1_U", "Parent" : "11"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.ctx_sponge_state_U", "Parent" : "11"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.views_inputShare_U", "Parent" : "11"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.views_communicatedBi_3_U", "Parent" : "11"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.views_outputShare_U", "Parent" : "11"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.as_hashes_U", "Parent" : "11"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.seeds_seed_U", "Parent" : "11"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.tape_tape_U", "Parent" : "11"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.tape_assign_U", "Parent" : "11"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.slab_assign_U", "Parent" : "11"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.output_U", "Parent" : "11"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328", "Parent" : "11", "Child" : ["37", "38", "39", "40", "41", "42", "55", "68", "81", "94", "107", "120", "134"],
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
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_543"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_8_fu_556"},
			{"State" : "ap_ST_fsm_state30", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_4_fu_568"},
			{"State" : "ap_ST_fsm_state38", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_4_fu_568"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_14_fu_580"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_16_fu_595"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_16_fu_595"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_16_fu_595"},
			{"State" : "ap_ST_fsm_state34", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_12_fu_606"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_617"},
			{"State" : "ap_ST_fsm_state32", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_617"},
			{"State" : "ap_ST_fsm_state28", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_629"},
			{"State" : "ap_ST_fsm_state36", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_629"}],
		"Port" : [
			{"Name" : "circuitOutput", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "as_hashes", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_KeccakWidth1600_Spon_14_fu_580", "Port" : "data"}]},
			{"Name" : "challengeBits_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "salt_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_KeccakWidth1600_Spon_8_fu_556", "Port" : "data_0"}]},
			{"Name" : "message", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_543", "Port" : "data"}]},
			{"Name" : "messageByteLength", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_543", "Port" : "KeccakRhoOffsets"},
					{"ID" : "55", "SubInstance" : "grp_KeccakWidth1600_Spon_8_fu_556", "Port" : "KeccakRhoOffsets"},
					{"ID" : "68", "SubInstance" : "grp_KeccakWidth1600_Spon_4_fu_568", "Port" : "KeccakRhoOffsets"},
					{"ID" : "81", "SubInstance" : "grp_KeccakWidth1600_Spon_14_fu_580", "Port" : "KeccakRhoOffsets"},
					{"ID" : "94", "SubInstance" : "grp_KeccakWidth1600_Spon_16_fu_595", "Port" : "KeccakRhoOffsets"},
					{"ID" : "107", "SubInstance" : "grp_KeccakWidth1600_Spon_12_fu_606", "Port" : "KeccakRhoOffsets"},
					{"ID" : "120", "SubInstance" : "grp_HashInit_fu_617", "Port" : "KeccakRhoOffsets"},
					{"ID" : "134", "SubInstance" : "grp_HashFinal_fu_629", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_543", "Port" : "KeccakRoundConstants"},
					{"ID" : "55", "SubInstance" : "grp_KeccakWidth1600_Spon_8_fu_556", "Port" : "KeccakRoundConstants"},
					{"ID" : "68", "SubInstance" : "grp_KeccakWidth1600_Spon_4_fu_568", "Port" : "KeccakRoundConstants"},
					{"ID" : "81", "SubInstance" : "grp_KeccakWidth1600_Spon_14_fu_580", "Port" : "KeccakRoundConstants"},
					{"ID" : "94", "SubInstance" : "grp_KeccakWidth1600_Spon_16_fu_595", "Port" : "KeccakRoundConstants"},
					{"ID" : "107", "SubInstance" : "grp_KeccakWidth1600_Spon_12_fu_606", "Port" : "KeccakRoundConstants"},
					{"ID" : "120", "SubInstance" : "grp_HashInit_fu_617", "Port" : "KeccakRoundConstants"},
					{"ID" : "134", "SubInstance" : "grp_HashFinal_fu_629", "Port" : "KeccakRoundConstants"}]},
			{"Name" : "viewOutputs", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.temp_2_U", "Parent" : "36"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.temp_U", "Parent" : "36"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.temp_1_U", "Parent" : "36"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.hash_U", "Parent" : "36"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.ctx_sponge_state_U", "Parent" : "36"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_15_fu_543", "Parent" : "36", "Child" : ["43"],
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
					{"ID" : "43", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_158", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dataByteLen", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_158", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_158", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "43", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_15_fu_543.grp_KeccakP1600_Permute_s_fu_158", "Parent" : "42", "Child" : ["44", "45", "46", "47", "50", "52"],
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
	{"ID" : "44", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_15_fu_543.grp_KeccakP1600_Permute_s_fu_158.KeccakRhoOffsets_U", "Parent" : "43"},
	{"ID" : "45", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_15_fu_543.grp_KeccakP1600_Permute_s_fu_158.KeccakRoundConstants_U", "Parent" : "43"},
	{"ID" : "46", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_15_fu_543.grp_KeccakP1600_Permute_s_fu_158.stateAsWords_U", "Parent" : "43"},
	{"ID" : "47", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_15_fu_543.grp_KeccakP1600_Permute_s_fu_158.grp_theta_fu_225", "Parent" : "43", "Child" : ["48", "49"],
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
	{"ID" : "48", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_15_fu_543.grp_KeccakP1600_Permute_s_fu_158.grp_theta_fu_225.C_U", "Parent" : "47"},
	{"ID" : "49", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_15_fu_543.grp_KeccakP1600_Permute_s_fu_158.grp_theta_fu_225.D_U", "Parent" : "47"},
	{"ID" : "50", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_15_fu_543.grp_KeccakP1600_Permute_s_fu_158.grp_chi_fu_230", "Parent" : "43", "Child" : ["51"],
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
	{"ID" : "51", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_15_fu_543.grp_KeccakP1600_Permute_s_fu_158.grp_chi_fu_230.C_U", "Parent" : "50"},
	{"ID" : "52", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_15_fu_543.grp_KeccakP1600_Permute_s_fu_158.grp_pi_fu_235", "Parent" : "43", "Child" : ["53", "54"],
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
	{"ID" : "53", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_15_fu_543.grp_KeccakP1600_Permute_s_fu_158.grp_pi_fu_235.tempA_U", "Parent" : "52"},
	{"ID" : "54", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_15_fu_543.grp_KeccakP1600_Permute_s_fu_158.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "52"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_8_fu_556", "Parent" : "36", "Child" : ["56"],
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
					{"ID" : "56", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "56", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_8_fu_556.grp_KeccakP1600_Permute_s_fu_176", "Parent" : "55", "Child" : ["57", "58", "59", "60", "63", "65"],
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
	{"ID" : "57", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_8_fu_556.grp_KeccakP1600_Permute_s_fu_176.KeccakRhoOffsets_U", "Parent" : "56"},
	{"ID" : "58", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_8_fu_556.grp_KeccakP1600_Permute_s_fu_176.KeccakRoundConstants_U", "Parent" : "56"},
	{"ID" : "59", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_8_fu_556.grp_KeccakP1600_Permute_s_fu_176.stateAsWords_U", "Parent" : "56"},
	{"ID" : "60", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_8_fu_556.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225", "Parent" : "56", "Child" : ["61", "62"],
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
	{"ID" : "61", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_8_fu_556.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.C_U", "Parent" : "60"},
	{"ID" : "62", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_8_fu_556.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.D_U", "Parent" : "60"},
	{"ID" : "63", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_8_fu_556.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230", "Parent" : "56", "Child" : ["64"],
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
	{"ID" : "64", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_8_fu_556.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230.C_U", "Parent" : "63"},
	{"ID" : "65", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_8_fu_556.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235", "Parent" : "56", "Child" : ["66", "67"],
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
	{"ID" : "66", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_8_fu_556.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.tempA_U", "Parent" : "65"},
	{"ID" : "67", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_8_fu_556.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "65"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_4_fu_568", "Parent" : "36", "Child" : ["69"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_154"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_154"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_154", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_154", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_154", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "69", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_4_fu_568.grp_KeccakP1600_Permute_s_fu_154", "Parent" : "68", "Child" : ["70", "71", "72", "73", "76", "78"],
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
	{"ID" : "70", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_4_fu_568.grp_KeccakP1600_Permute_s_fu_154.KeccakRhoOffsets_U", "Parent" : "69"},
	{"ID" : "71", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_4_fu_568.grp_KeccakP1600_Permute_s_fu_154.KeccakRoundConstants_U", "Parent" : "69"},
	{"ID" : "72", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_4_fu_568.grp_KeccakP1600_Permute_s_fu_154.stateAsWords_U", "Parent" : "69"},
	{"ID" : "73", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_4_fu_568.grp_KeccakP1600_Permute_s_fu_154.grp_theta_fu_225", "Parent" : "69", "Child" : ["74", "75"],
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
	{"ID" : "74", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_4_fu_568.grp_KeccakP1600_Permute_s_fu_154.grp_theta_fu_225.C_U", "Parent" : "73"},
	{"ID" : "75", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_4_fu_568.grp_KeccakP1600_Permute_s_fu_154.grp_theta_fu_225.D_U", "Parent" : "73"},
	{"ID" : "76", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_4_fu_568.grp_KeccakP1600_Permute_s_fu_154.grp_chi_fu_230", "Parent" : "69", "Child" : ["77"],
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
	{"ID" : "77", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_4_fu_568.grp_KeccakP1600_Permute_s_fu_154.grp_chi_fu_230.C_U", "Parent" : "76"},
	{"ID" : "78", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_4_fu_568.grp_KeccakP1600_Permute_s_fu_154.grp_pi_fu_235", "Parent" : "69", "Child" : ["79", "80"],
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
	{"ID" : "79", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_4_fu_568.grp_KeccakP1600_Permute_s_fu_154.grp_pi_fu_235.tempA_U", "Parent" : "78"},
	{"ID" : "80", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_4_fu_568.grp_KeccakP1600_Permute_s_fu_154.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "78"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_14_fu_580", "Parent" : "36", "Child" : ["82"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_123"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_123", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_123", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_123", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "82", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_14_fu_580.grp_KeccakP1600_Permute_s_fu_123", "Parent" : "81", "Child" : ["83", "84", "85", "86", "89", "91"],
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
	{"ID" : "83", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_14_fu_580.grp_KeccakP1600_Permute_s_fu_123.KeccakRhoOffsets_U", "Parent" : "82"},
	{"ID" : "84", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_14_fu_580.grp_KeccakP1600_Permute_s_fu_123.KeccakRoundConstants_U", "Parent" : "82"},
	{"ID" : "85", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_14_fu_580.grp_KeccakP1600_Permute_s_fu_123.stateAsWords_U", "Parent" : "82"},
	{"ID" : "86", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_14_fu_580.grp_KeccakP1600_Permute_s_fu_123.grp_theta_fu_225", "Parent" : "82", "Child" : ["87", "88"],
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
	{"ID" : "87", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_14_fu_580.grp_KeccakP1600_Permute_s_fu_123.grp_theta_fu_225.C_U", "Parent" : "86"},
	{"ID" : "88", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_14_fu_580.grp_KeccakP1600_Permute_s_fu_123.grp_theta_fu_225.D_U", "Parent" : "86"},
	{"ID" : "89", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_14_fu_580.grp_KeccakP1600_Permute_s_fu_123.grp_chi_fu_230", "Parent" : "82", "Child" : ["90"],
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
	{"ID" : "90", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_14_fu_580.grp_KeccakP1600_Permute_s_fu_123.grp_chi_fu_230.C_U", "Parent" : "89"},
	{"ID" : "91", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_14_fu_580.grp_KeccakP1600_Permute_s_fu_123.grp_pi_fu_235", "Parent" : "82", "Child" : ["92", "93"],
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
	{"ID" : "92", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_14_fu_580.grp_KeccakP1600_Permute_s_fu_123.grp_pi_fu_235.tempA_U", "Parent" : "91"},
	{"ID" : "93", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_14_fu_580.grp_KeccakP1600_Permute_s_fu_123.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "91"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_16_fu_595", "Parent" : "36", "Child" : ["95"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "95", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_16_fu_595.grp_KeccakP1600_Permute_s_fu_91", "Parent" : "94", "Child" : ["96", "97", "98", "99", "102", "104"],
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
	{"ID" : "96", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_16_fu_595.grp_KeccakP1600_Permute_s_fu_91.KeccakRhoOffsets_U", "Parent" : "95"},
	{"ID" : "97", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_16_fu_595.grp_KeccakP1600_Permute_s_fu_91.KeccakRoundConstants_U", "Parent" : "95"},
	{"ID" : "98", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_16_fu_595.grp_KeccakP1600_Permute_s_fu_91.stateAsWords_U", "Parent" : "95"},
	{"ID" : "99", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_16_fu_595.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225", "Parent" : "95", "Child" : ["100", "101"],
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
	{"ID" : "100", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_16_fu_595.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225.C_U", "Parent" : "99"},
	{"ID" : "101", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_16_fu_595.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225.D_U", "Parent" : "99"},
	{"ID" : "102", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_16_fu_595.grp_KeccakP1600_Permute_s_fu_91.grp_chi_fu_230", "Parent" : "95", "Child" : ["103"],
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
	{"ID" : "103", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_16_fu_595.grp_KeccakP1600_Permute_s_fu_91.grp_chi_fu_230.C_U", "Parent" : "102"},
	{"ID" : "104", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_16_fu_595.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235", "Parent" : "95", "Child" : ["105", "106"],
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
	{"ID" : "105", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_16_fu_595.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235.tempA_U", "Parent" : "104"},
	{"ID" : "106", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_16_fu_595.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "104"},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_12_fu_606", "Parent" : "36", "Child" : ["108"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "108", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "108", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "108", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "108", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_12_fu_606.grp_KeccakP1600_Permute_s_fu_91", "Parent" : "107", "Child" : ["109", "110", "111", "112", "115", "117"],
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
	{"ID" : "109", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_12_fu_606.grp_KeccakP1600_Permute_s_fu_91.KeccakRhoOffsets_U", "Parent" : "108"},
	{"ID" : "110", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_12_fu_606.grp_KeccakP1600_Permute_s_fu_91.KeccakRoundConstants_U", "Parent" : "108"},
	{"ID" : "111", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_12_fu_606.grp_KeccakP1600_Permute_s_fu_91.stateAsWords_U", "Parent" : "108"},
	{"ID" : "112", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_12_fu_606.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225", "Parent" : "108", "Child" : ["113", "114"],
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
	{"ID" : "113", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_12_fu_606.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225.C_U", "Parent" : "112"},
	{"ID" : "114", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_12_fu_606.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225.D_U", "Parent" : "112"},
	{"ID" : "115", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_12_fu_606.grp_KeccakP1600_Permute_s_fu_91.grp_chi_fu_230", "Parent" : "108", "Child" : ["116"],
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
	{"ID" : "116", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_12_fu_606.grp_KeccakP1600_Permute_s_fu_91.grp_chi_fu_230.C_U", "Parent" : "115"},
	{"ID" : "117", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_12_fu_606.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235", "Parent" : "108", "Child" : ["118", "119"],
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
	{"ID" : "118", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_12_fu_606.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235.tempA_U", "Parent" : "117"},
	{"ID" : "119", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_12_fu_606.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "117"},
	{"ID" : "120", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_HashInit_fu_617", "Parent" : "36", "Child" : ["121"],
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
					{"ID" : "121", "SubInstance" : "grp_KeccakWidth1600_Spon_11_fu_74", "Port" : "instance_state"}]},
			{"Name" : "hashPrefix", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "121", "SubInstance" : "grp_KeccakWidth1600_Spon_11_fu_74", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "121", "SubInstance" : "grp_KeccakWidth1600_Spon_11_fu_74", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "121", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_HashInit_fu_617.grp_KeccakWidth1600_Spon_11_fu_74", "Parent" : "120", "Child" : ["122"],
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
					{"ID" : "122", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "state"}]},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "122", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "122", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "122", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_HashInit_fu_617.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54", "Parent" : "121", "Child" : ["123", "124", "125", "126", "129", "131"],
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
	{"ID" : "123", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_HashInit_fu_617.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.KeccakRhoOffsets_U", "Parent" : "122"},
	{"ID" : "124", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_HashInit_fu_617.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.KeccakRoundConstants_U", "Parent" : "122"},
	{"ID" : "125", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_HashInit_fu_617.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.stateAsWords_U", "Parent" : "122"},
	{"ID" : "126", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_HashInit_fu_617.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225", "Parent" : "122", "Child" : ["127", "128"],
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
	{"ID" : "127", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_HashInit_fu_617.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.C_U", "Parent" : "126"},
	{"ID" : "128", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_HashInit_fu_617.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.D_U", "Parent" : "126"},
	{"ID" : "129", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_HashInit_fu_617.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230", "Parent" : "122", "Child" : ["130"],
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
	{"ID" : "130", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_HashInit_fu_617.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230.C_U", "Parent" : "129"},
	{"ID" : "131", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_HashInit_fu_617.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235", "Parent" : "122", "Child" : ["132", "133"],
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
	{"ID" : "132", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_HashInit_fu_617.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.tempA_U", "Parent" : "131"},
	{"ID" : "133", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_HashInit_fu_617.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "131"},
	{"ID" : "134", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_HashFinal_fu_629", "Parent" : "36", "Child" : ["135"],
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
					{"ID" : "135", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "state"}]},
			{"Name" : "ctx_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "135", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "135", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "135", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_HashFinal_fu_629.grp_KeccakP1600_Permute_s_fu_54", "Parent" : "134", "Child" : ["136", "137", "138", "139", "142", "144"],
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
	{"ID" : "136", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_HashFinal_fu_629.grp_KeccakP1600_Permute_s_fu_54.KeccakRhoOffsets_U", "Parent" : "135"},
	{"ID" : "137", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_HashFinal_fu_629.grp_KeccakP1600_Permute_s_fu_54.KeccakRoundConstants_U", "Parent" : "135"},
	{"ID" : "138", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_HashFinal_fu_629.grp_KeccakP1600_Permute_s_fu_54.stateAsWords_U", "Parent" : "135"},
	{"ID" : "139", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_HashFinal_fu_629.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225", "Parent" : "135", "Child" : ["140", "141"],
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
	{"ID" : "140", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_HashFinal_fu_629.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.C_U", "Parent" : "139"},
	{"ID" : "141", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_HashFinal_fu_629.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.D_U", "Parent" : "139"},
	{"ID" : "142", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_HashFinal_fu_629.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230", "Parent" : "135", "Child" : ["143"],
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
	{"ID" : "143", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_HashFinal_fu_629.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230.C_U", "Parent" : "142"},
	{"ID" : "144", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_HashFinal_fu_629.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235", "Parent" : "135", "Child" : ["145", "146"],
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
	{"ID" : "145", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_HashFinal_fu_629.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.tempA_U", "Parent" : "144"},
	{"ID" : "146", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_HashFinal_fu_629.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "144"},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349", "Parent" : "11", "Child" : ["148", "149", "162", "175", "188", "201", "216"],
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
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_3_fu_160"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_173"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_186"},
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_2_fu_200"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdate_2_fu_217"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdate_2_fu_217"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdate_2_fu_217"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_232"}],
		"Port" : [
			{"Name" : "allSeeds_seed", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "188", "SubInstance" : "grp_KeccakWidth1600_Spon_2_fu_200", "Port" : "data"}]},
			{"Name" : "salt_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "149", "SubInstance" : "grp_KeccakWidth1600_Spon_3_fu_160", "Port" : "data_0"}]},
			{"Name" : "privateKey", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_HashUpdate_2_fu_217", "Port" : "data"}]},
			{"Name" : "publicKey", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_HashUpdate_2_fu_217", "Port" : "data"}]},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_HashUpdate_2_fu_217", "Port" : "data"}]},
			{"Name" : "message", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "162", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_173", "Port" : "data"}]},
			{"Name" : "messageByteLength", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "149", "SubInstance" : "grp_KeccakWidth1600_Spon_3_fu_160", "Port" : "KeccakRhoOffsets"},
					{"ID" : "162", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_173", "Port" : "KeccakRhoOffsets"},
					{"ID" : "175", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_186", "Port" : "KeccakRhoOffsets"},
					{"ID" : "188", "SubInstance" : "grp_KeccakWidth1600_Spon_2_fu_200", "Port" : "KeccakRhoOffsets"},
					{"ID" : "201", "SubInstance" : "grp_HashUpdate_2_fu_217", "Port" : "KeccakRhoOffsets"},
					{"ID" : "216", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_232", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "149", "SubInstance" : "grp_KeccakWidth1600_Spon_3_fu_160", "Port" : "KeccakRoundConstants"},
					{"ID" : "162", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_173", "Port" : "KeccakRoundConstants"},
					{"ID" : "175", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_186", "Port" : "KeccakRoundConstants"},
					{"ID" : "188", "SubInstance" : "grp_KeccakWidth1600_Spon_2_fu_200", "Port" : "KeccakRoundConstants"},
					{"ID" : "201", "SubInstance" : "grp_HashUpdate_2_fu_217", "Port" : "KeccakRoundConstants"},
					{"ID" : "216", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_232", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "148", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.ctx_sponge_state_U", "Parent" : "147"},
	{"ID" : "149", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_3_fu_160", "Parent" : "147", "Child" : ["150"],
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
					{"ID" : "150", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_244", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "150", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_244", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "150", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_244", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "150", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_3_fu_160.grp_KeccakP1600_Permute_s_fu_244", "Parent" : "149", "Child" : ["151", "152", "153", "154", "157", "159"],
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
	{"ID" : "151", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_3_fu_160.grp_KeccakP1600_Permute_s_fu_244.KeccakRhoOffsets_U", "Parent" : "150"},
	{"ID" : "152", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_3_fu_160.grp_KeccakP1600_Permute_s_fu_244.KeccakRoundConstants_U", "Parent" : "150"},
	{"ID" : "153", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_3_fu_160.grp_KeccakP1600_Permute_s_fu_244.stateAsWords_U", "Parent" : "150"},
	{"ID" : "154", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_3_fu_160.grp_KeccakP1600_Permute_s_fu_244.grp_theta_fu_225", "Parent" : "150", "Child" : ["155", "156"],
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
	{"ID" : "155", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_3_fu_160.grp_KeccakP1600_Permute_s_fu_244.grp_theta_fu_225.C_U", "Parent" : "154"},
	{"ID" : "156", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_3_fu_160.grp_KeccakP1600_Permute_s_fu_244.grp_theta_fu_225.D_U", "Parent" : "154"},
	{"ID" : "157", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_3_fu_160.grp_KeccakP1600_Permute_s_fu_244.grp_chi_fu_230", "Parent" : "150", "Child" : ["158"],
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
	{"ID" : "158", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_3_fu_160.grp_KeccakP1600_Permute_s_fu_244.grp_chi_fu_230.C_U", "Parent" : "157"},
	{"ID" : "159", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_3_fu_160.grp_KeccakP1600_Permute_s_fu_244.grp_pi_fu_235", "Parent" : "150", "Child" : ["160", "161"],
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
	{"ID" : "160", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_3_fu_160.grp_KeccakP1600_Permute_s_fu_244.grp_pi_fu_235.tempA_U", "Parent" : "159"},
	{"ID" : "161", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_3_fu_160.grp_KeccakP1600_Permute_s_fu_244.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "159"},
	{"ID" : "162", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_15_fu_173", "Parent" : "147", "Child" : ["163"],
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
					{"ID" : "163", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_158", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dataByteLen", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "163", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_158", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "163", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_158", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "163", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_15_fu_173.grp_KeccakP1600_Permute_s_fu_158", "Parent" : "162", "Child" : ["164", "165", "166", "167", "170", "172"],
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
	{"ID" : "164", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_15_fu_173.grp_KeccakP1600_Permute_s_fu_158.KeccakRhoOffsets_U", "Parent" : "163"},
	{"ID" : "165", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_15_fu_173.grp_KeccakP1600_Permute_s_fu_158.KeccakRoundConstants_U", "Parent" : "163"},
	{"ID" : "166", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_15_fu_173.grp_KeccakP1600_Permute_s_fu_158.stateAsWords_U", "Parent" : "163"},
	{"ID" : "167", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_15_fu_173.grp_KeccakP1600_Permute_s_fu_158.grp_theta_fu_225", "Parent" : "163", "Child" : ["168", "169"],
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
	{"ID" : "168", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_15_fu_173.grp_KeccakP1600_Permute_s_fu_158.grp_theta_fu_225.C_U", "Parent" : "167"},
	{"ID" : "169", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_15_fu_173.grp_KeccakP1600_Permute_s_fu_158.grp_theta_fu_225.D_U", "Parent" : "167"},
	{"ID" : "170", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_15_fu_173.grp_KeccakP1600_Permute_s_fu_158.grp_chi_fu_230", "Parent" : "163", "Child" : ["171"],
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
	{"ID" : "171", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_15_fu_173.grp_KeccakP1600_Permute_s_fu_158.grp_chi_fu_230.C_U", "Parent" : "170"},
	{"ID" : "172", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_15_fu_173.grp_KeccakP1600_Permute_s_fu_158.grp_pi_fu_235", "Parent" : "163", "Child" : ["173", "174"],
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
	{"ID" : "173", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_15_fu_173.grp_KeccakP1600_Permute_s_fu_158.grp_pi_fu_235.tempA_U", "Parent" : "172"},
	{"ID" : "174", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_15_fu_173.grp_KeccakP1600_Permute_s_fu_158.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "172"},
	{"ID" : "175", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_9_fu_186", "Parent" : "147", "Child" : ["176"],
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
					{"ID" : "176", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_173", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "176", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_173", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "176", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_173", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "176", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_9_fu_186.grp_KeccakP1600_Permute_s_fu_173", "Parent" : "175", "Child" : ["177", "178", "179", "180", "183", "185"],
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
	{"ID" : "177", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_9_fu_186.grp_KeccakP1600_Permute_s_fu_173.KeccakRhoOffsets_U", "Parent" : "176"},
	{"ID" : "178", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_9_fu_186.grp_KeccakP1600_Permute_s_fu_173.KeccakRoundConstants_U", "Parent" : "176"},
	{"ID" : "179", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_9_fu_186.grp_KeccakP1600_Permute_s_fu_173.stateAsWords_U", "Parent" : "176"},
	{"ID" : "180", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_9_fu_186.grp_KeccakP1600_Permute_s_fu_173.grp_theta_fu_225", "Parent" : "176", "Child" : ["181", "182"],
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
	{"ID" : "181", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_9_fu_186.grp_KeccakP1600_Permute_s_fu_173.grp_theta_fu_225.C_U", "Parent" : "180"},
	{"ID" : "182", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_9_fu_186.grp_KeccakP1600_Permute_s_fu_173.grp_theta_fu_225.D_U", "Parent" : "180"},
	{"ID" : "183", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_9_fu_186.grp_KeccakP1600_Permute_s_fu_173.grp_chi_fu_230", "Parent" : "176", "Child" : ["184"],
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
	{"ID" : "184", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_9_fu_186.grp_KeccakP1600_Permute_s_fu_173.grp_chi_fu_230.C_U", "Parent" : "183"},
	{"ID" : "185", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_9_fu_186.grp_KeccakP1600_Permute_s_fu_173.grp_pi_fu_235", "Parent" : "176", "Child" : ["186", "187"],
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
	{"ID" : "186", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_9_fu_186.grp_KeccakP1600_Permute_s_fu_173.grp_pi_fu_235.tempA_U", "Parent" : "185"},
	{"ID" : "187", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_9_fu_186.grp_KeccakP1600_Permute_s_fu_173.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "185"},
	{"ID" : "188", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_2_fu_200", "Parent" : "147", "Child" : ["189"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_199"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_199"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "189", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_199", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "189", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_199", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "189", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_199", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "189", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_2_fu_200.grp_KeccakP1600_Permute_s_fu_199", "Parent" : "188", "Child" : ["190", "191", "192", "193", "196", "198"],
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
	{"ID" : "190", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_2_fu_200.grp_KeccakP1600_Permute_s_fu_199.KeccakRhoOffsets_U", "Parent" : "189"},
	{"ID" : "191", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_2_fu_200.grp_KeccakP1600_Permute_s_fu_199.KeccakRoundConstants_U", "Parent" : "189"},
	{"ID" : "192", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_2_fu_200.grp_KeccakP1600_Permute_s_fu_199.stateAsWords_U", "Parent" : "189"},
	{"ID" : "193", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_2_fu_200.grp_KeccakP1600_Permute_s_fu_199.grp_theta_fu_225", "Parent" : "189", "Child" : ["194", "195"],
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
	{"ID" : "194", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_2_fu_200.grp_KeccakP1600_Permute_s_fu_199.grp_theta_fu_225.C_U", "Parent" : "193"},
	{"ID" : "195", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_2_fu_200.grp_KeccakP1600_Permute_s_fu_199.grp_theta_fu_225.D_U", "Parent" : "193"},
	{"ID" : "196", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_2_fu_200.grp_KeccakP1600_Permute_s_fu_199.grp_chi_fu_230", "Parent" : "189", "Child" : ["197"],
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
	{"ID" : "197", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_2_fu_200.grp_KeccakP1600_Permute_s_fu_199.grp_chi_fu_230.C_U", "Parent" : "196"},
	{"ID" : "198", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_2_fu_200.grp_KeccakP1600_Permute_s_fu_199.grp_pi_fu_235", "Parent" : "189", "Child" : ["199", "200"],
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
	{"ID" : "199", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_2_fu_200.grp_KeccakP1600_Permute_s_fu_199.grp_pi_fu_235.tempA_U", "Parent" : "198"},
	{"ID" : "200", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_2_fu_200.grp_KeccakP1600_Permute_s_fu_199.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "198"},
	{"ID" : "201", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_HashUpdate_2_fu_217", "Parent" : "147", "Child" : ["202", "203"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_16_fu_161"}],
		"Port" : [
			{"Name" : "ctx_sponge_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "grp_KeccakWidth1600_Spon_16_fu_161", "Port" : "instance_state"}]},
			{"Name" : "ctx_sponge_byteIOInd", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "grp_KeccakWidth1600_Spon_16_fu_161", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "grp_KeccakWidth1600_Spon_16_fu_161", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "202", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_HashUpdate_2_fu_217.temp_U", "Parent" : "201"},
	{"ID" : "203", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_HashUpdate_2_fu_217.grp_KeccakWidth1600_Spon_16_fu_161", "Parent" : "201", "Child" : ["204"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "204", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "204", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "204", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "204", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_HashUpdate_2_fu_217.grp_KeccakWidth1600_Spon_16_fu_161.grp_KeccakP1600_Permute_s_fu_91", "Parent" : "203", "Child" : ["205", "206", "207", "208", "211", "213"],
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
	{"ID" : "205", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_HashUpdate_2_fu_217.grp_KeccakWidth1600_Spon_16_fu_161.grp_KeccakP1600_Permute_s_fu_91.KeccakRhoOffsets_U", "Parent" : "204"},
	{"ID" : "206", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_HashUpdate_2_fu_217.grp_KeccakWidth1600_Spon_16_fu_161.grp_KeccakP1600_Permute_s_fu_91.KeccakRoundConstants_U", "Parent" : "204"},
	{"ID" : "207", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_HashUpdate_2_fu_217.grp_KeccakWidth1600_Spon_16_fu_161.grp_KeccakP1600_Permute_s_fu_91.stateAsWords_U", "Parent" : "204"},
	{"ID" : "208", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_HashUpdate_2_fu_217.grp_KeccakWidth1600_Spon_16_fu_161.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225", "Parent" : "204", "Child" : ["209", "210"],
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
	{"ID" : "209", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_HashUpdate_2_fu_217.grp_KeccakWidth1600_Spon_16_fu_161.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225.C_U", "Parent" : "208"},
	{"ID" : "210", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_HashUpdate_2_fu_217.grp_KeccakWidth1600_Spon_16_fu_161.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225.D_U", "Parent" : "208"},
	{"ID" : "211", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_HashUpdate_2_fu_217.grp_KeccakWidth1600_Spon_16_fu_161.grp_KeccakP1600_Permute_s_fu_91.grp_chi_fu_230", "Parent" : "204", "Child" : ["212"],
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
	{"ID" : "212", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_HashUpdate_2_fu_217.grp_KeccakWidth1600_Spon_16_fu_161.grp_KeccakP1600_Permute_s_fu_91.grp_chi_fu_230.C_U", "Parent" : "211"},
	{"ID" : "213", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_HashUpdate_2_fu_217.grp_KeccakWidth1600_Spon_16_fu_161.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235", "Parent" : "204", "Child" : ["214", "215"],
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
	{"ID" : "214", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_HashUpdate_2_fu_217.grp_KeccakWidth1600_Spon_16_fu_161.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235.tempA_U", "Parent" : "213"},
	{"ID" : "215", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_HashUpdate_2_fu_217.grp_KeccakWidth1600_Spon_16_fu_161.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "213"},
	{"ID" : "216", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakP1600_Permute_s_fu_232", "Parent" : "147", "Child" : ["217", "218", "219", "220", "223", "225"],
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
	{"ID" : "217", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakP1600_Permute_s_fu_232.KeccakRhoOffsets_U", "Parent" : "216"},
	{"ID" : "218", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakP1600_Permute_s_fu_232.KeccakRoundConstants_U", "Parent" : "216"},
	{"ID" : "219", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakP1600_Permute_s_fu_232.stateAsWords_U", "Parent" : "216"},
	{"ID" : "220", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakP1600_Permute_s_fu_232.grp_theta_fu_225", "Parent" : "216", "Child" : ["221", "222"],
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
	{"ID" : "221", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakP1600_Permute_s_fu_232.grp_theta_fu_225.C_U", "Parent" : "220"},
	{"ID" : "222", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakP1600_Permute_s_fu_232.grp_theta_fu_225.D_U", "Parent" : "220"},
	{"ID" : "223", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakP1600_Permute_s_fu_232.grp_chi_fu_230", "Parent" : "216", "Child" : ["224"],
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
	{"ID" : "224", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakP1600_Permute_s_fu_232.grp_chi_fu_230.C_U", "Parent" : "223"},
	{"ID" : "225", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakP1600_Permute_s_fu_232.grp_pi_fu_235", "Parent" : "216", "Child" : ["226", "227"],
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
	{"ID" : "226", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakP1600_Permute_s_fu_232.grp_pi_fu_235.tempA_U", "Parent" : "225"},
	{"ID" : "227", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakP1600_Permute_s_fu_232.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "225"},
	{"ID" : "228", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371", "Parent" : "11", "Child" : ["229", "230", "234", "238", "246", "247", "248", "249", "250", "251", "252", "253", "254", "255", "256", "257", "258"],
		"CDFG" : "mpc_LowMC_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1014493", "EstimateLatencyMax" : "1014493",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_969"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_969"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_969"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_969"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_969"},
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_969"},
			{"State" : "ap_ST_fsm_state44", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_1_fu_990"},
			{"State" : "ap_ST_fsm_state46", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_1_fu_990"},
			{"State" : "ap_ST_fsm_state48", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_1_fu_990"},
			{"State" : "ap_ST_fsm_state30", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mpc_AND_2_fu_1003"},
			{"State" : "ap_ST_fsm_state32", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mpc_AND_2_fu_1003"},
			{"State" : "ap_ST_fsm_state34", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mpc_AND_2_fu_1003"}],
		"Port" : [
			{"Name" : "tapes_tape", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "238", "SubInstance" : "grp_mpc_AND_2_fu_1003", "Port" : "rand_tape"}]},
			{"Name" : "views_inputShare", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "230", "SubInstance" : "grp_matrix_mul_fu_969", "Port" : "state"}]},
			{"Name" : "views_inputShare_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "views_communicatedBi", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "238", "SubInstance" : "grp_mpc_AND_2_fu_1003", "Port" : "views_communicatedBi"}]},
			{"Name" : "views_outputShare", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "slab", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "230", "SubInstance" : "grp_matrix_mul_fu_969", "Port" : "output_r"},
					{"ID" : "234", "SubInstance" : "grp_matrix_mul_1_fu_990", "Port" : "output_r"}]},
			{"Name" : "temp_matrix", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "230", "SubInstance" : "grp_matrix_mul_fu_969", "Port" : "temp_matrix"}]},
			{"Name" : "temp_matrix2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "234", "SubInstance" : "grp_matrix_mul_1_fu_990", "Port" : "temp_matrix2"}]},
			{"Name" : "temp_matrix3", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "229", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371.temp_matrix3_U", "Parent" : "228"},
	{"ID" : "230", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371.grp_matrix_mul_fu_969", "Parent" : "228", "Child" : ["231", "232", "233"],
		"CDFG" : "matrix_mul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5390", "EstimateLatencyMax" : "5390",
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
	{"ID" : "231", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371.grp_matrix_mul_fu_969.temp_matrix_U", "Parent" : "230"},
	{"ID" : "232", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371.grp_matrix_mul_fu_969.prod_U", "Parent" : "230"},
	{"ID" : "233", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371.grp_matrix_mul_fu_969.temp_U", "Parent" : "230"},
	{"ID" : "234", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371.grp_matrix_mul_1_fu_990", "Parent" : "228", "Child" : ["235", "236", "237"],
		"CDFG" : "matrix_mul_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5390", "EstimateLatencyMax" : "5390",
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
	{"ID" : "235", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371.grp_matrix_mul_1_fu_990.temp_matrix2_U", "Parent" : "234"},
	{"ID" : "236", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371.grp_matrix_mul_1_fu_990.prod_U", "Parent" : "234"},
	{"ID" : "237", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371.grp_matrix_mul_1_fu_990.temp_U", "Parent" : "234"},
	{"ID" : "238", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371.grp_mpc_AND_2_fu_1003", "Parent" : "228", "Child" : ["239", "240", "241", "242", "243", "244", "245"],
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
	{"ID" : "239", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371.grp_mpc_AND_2_fu_1003.crypto_sign_mux_3hbi_U85", "Parent" : "238"},
	{"ID" : "240", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371.grp_mpc_AND_2_fu_1003.crypto_sign_mux_3hbi_U86", "Parent" : "238"},
	{"ID" : "241", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371.grp_mpc_AND_2_fu_1003.crypto_sign_mux_3hbi_U87", "Parent" : "238"},
	{"ID" : "242", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371.grp_mpc_AND_2_fu_1003.crypto_sign_mux_3hbi_U88", "Parent" : "238"},
	{"ID" : "243", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371.grp_mpc_AND_2_fu_1003.crypto_sign_mux_3hbi_U89", "Parent" : "238"},
	{"ID" : "244", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371.grp_mpc_AND_2_fu_1003.crypto_sign_mux_3hbi_U90", "Parent" : "238"},
	{"ID" : "245", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371.grp_mpc_AND_2_fu_1003.crypto_sign_ama_aibs_U91", "Parent" : "238"},
	{"ID" : "246", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371.crypto_sign_mux_4lbW_U111", "Parent" : "228"},
	{"ID" : "247", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371.crypto_sign_mux_3hbi_U112", "Parent" : "228"},
	{"ID" : "248", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371.crypto_sign_mux_3hbi_U113", "Parent" : "228"},
	{"ID" : "249", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371.crypto_sign_mux_3hbi_U114", "Parent" : "228"},
	{"ID" : "250", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371.crypto_sign_mux_3hbi_U115", "Parent" : "228"},
	{"ID" : "251", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371.crypto_sign_mux_3hbi_U116", "Parent" : "228"},
	{"ID" : "252", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371.crypto_sign_mux_3hbi_U117", "Parent" : "228"},
	{"ID" : "253", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371.crypto_sign_mux_3hbi_U118", "Parent" : "228"},
	{"ID" : "254", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371.crypto_sign_mux_3hbi_U119", "Parent" : "228"},
	{"ID" : "255", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371.crypto_sign_mux_3hbi_U120", "Parent" : "228"},
	{"ID" : "256", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371.crypto_sign_mux_4lbW_U121", "Parent" : "228"},
	{"ID" : "257", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371.crypto_sign_mux_4lbW_U122", "Parent" : "228"},
	{"ID" : "258", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371.crypto_sign_mux_4lbW_U123", "Parent" : "228"},
	{"ID" : "259", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_1_fu_17390", "Parent" : "11", "Child" : ["260"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_244"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_244"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_244"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "260", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_244", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dataByteLen", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "260", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_244", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "260", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_244", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "260", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_1_fu_17390.grp_KeccakP1600_Permute_s_fu_244", "Parent" : "259", "Child" : ["261", "262", "263", "264", "267", "269"],
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
	{"ID" : "261", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_1_fu_17390.grp_KeccakP1600_Permute_s_fu_244.KeccakRhoOffsets_U", "Parent" : "260"},
	{"ID" : "262", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_1_fu_17390.grp_KeccakP1600_Permute_s_fu_244.KeccakRoundConstants_U", "Parent" : "260"},
	{"ID" : "263", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_1_fu_17390.grp_KeccakP1600_Permute_s_fu_244.stateAsWords_U", "Parent" : "260"},
	{"ID" : "264", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_1_fu_17390.grp_KeccakP1600_Permute_s_fu_244.grp_theta_fu_225", "Parent" : "260", "Child" : ["265", "266"],
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
	{"ID" : "265", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_1_fu_17390.grp_KeccakP1600_Permute_s_fu_244.grp_theta_fu_225.C_U", "Parent" : "264"},
	{"ID" : "266", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_1_fu_17390.grp_KeccakP1600_Permute_s_fu_244.grp_theta_fu_225.D_U", "Parent" : "264"},
	{"ID" : "267", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_1_fu_17390.grp_KeccakP1600_Permute_s_fu_244.grp_chi_fu_230", "Parent" : "260", "Child" : ["268"],
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
	{"ID" : "268", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_1_fu_17390.grp_KeccakP1600_Permute_s_fu_244.grp_chi_fu_230.C_U", "Parent" : "267"},
	{"ID" : "269", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_1_fu_17390.grp_KeccakP1600_Permute_s_fu_244.grp_pi_fu_235", "Parent" : "260", "Child" : ["270", "271"],
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
	{"ID" : "270", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_1_fu_17390.grp_KeccakP1600_Permute_s_fu_244.grp_pi_fu_235.tempA_U", "Parent" : "269"},
	{"ID" : "271", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_1_fu_17390.grp_KeccakP1600_Permute_s_fu_244.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "269"},
	{"ID" : "272", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_5_fu_17405", "Parent" : "11", "Child" : ["273"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_242"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_242"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_242"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "273", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_242", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dataByteLen", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "273", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_242", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "273", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_242", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "273", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_5_fu_17405.grp_KeccakP1600_Permute_s_fu_242", "Parent" : "272", "Child" : ["274", "275", "276", "277", "280", "282"],
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
	{"ID" : "274", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_5_fu_17405.grp_KeccakP1600_Permute_s_fu_242.KeccakRhoOffsets_U", "Parent" : "273"},
	{"ID" : "275", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_5_fu_17405.grp_KeccakP1600_Permute_s_fu_242.KeccakRoundConstants_U", "Parent" : "273"},
	{"ID" : "276", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_5_fu_17405.grp_KeccakP1600_Permute_s_fu_242.stateAsWords_U", "Parent" : "273"},
	{"ID" : "277", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_5_fu_17405.grp_KeccakP1600_Permute_s_fu_242.grp_theta_fu_225", "Parent" : "273", "Child" : ["278", "279"],
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
	{"ID" : "278", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_5_fu_17405.grp_KeccakP1600_Permute_s_fu_242.grp_theta_fu_225.C_U", "Parent" : "277"},
	{"ID" : "279", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_5_fu_17405.grp_KeccakP1600_Permute_s_fu_242.grp_theta_fu_225.D_U", "Parent" : "277"},
	{"ID" : "280", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_5_fu_17405.grp_KeccakP1600_Permute_s_fu_242.grp_chi_fu_230", "Parent" : "273", "Child" : ["281"],
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
	{"ID" : "281", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_5_fu_17405.grp_KeccakP1600_Permute_s_fu_242.grp_chi_fu_230.C_U", "Parent" : "280"},
	{"ID" : "282", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_5_fu_17405.grp_KeccakP1600_Permute_s_fu_242.grp_pi_fu_235", "Parent" : "273", "Child" : ["283", "284"],
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
	{"ID" : "283", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_5_fu_17405.grp_KeccakP1600_Permute_s_fu_242.grp_pi_fu_235.tempA_U", "Parent" : "282"},
	{"ID" : "284", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_5_fu_17405.grp_KeccakP1600_Permute_s_fu_242.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "282"},
	{"ID" : "285", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_8_fu_17420", "Parent" : "11", "Child" : ["286"],
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
					{"ID" : "286", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "286", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "286", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "286", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_8_fu_17420.grp_KeccakP1600_Permute_s_fu_176", "Parent" : "285", "Child" : ["287", "288", "289", "290", "293", "295"],
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
	{"ID" : "287", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_8_fu_17420.grp_KeccakP1600_Permute_s_fu_176.KeccakRhoOffsets_U", "Parent" : "286"},
	{"ID" : "288", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_8_fu_17420.grp_KeccakP1600_Permute_s_fu_176.KeccakRoundConstants_U", "Parent" : "286"},
	{"ID" : "289", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_8_fu_17420.grp_KeccakP1600_Permute_s_fu_176.stateAsWords_U", "Parent" : "286"},
	{"ID" : "290", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_8_fu_17420.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225", "Parent" : "286", "Child" : ["291", "292"],
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
	{"ID" : "291", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_8_fu_17420.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.C_U", "Parent" : "290"},
	{"ID" : "292", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_8_fu_17420.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.D_U", "Parent" : "290"},
	{"ID" : "293", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_8_fu_17420.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230", "Parent" : "286", "Child" : ["294"],
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
	{"ID" : "294", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_8_fu_17420.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230.C_U", "Parent" : "293"},
	{"ID" : "295", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_8_fu_17420.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235", "Parent" : "286", "Child" : ["296", "297"],
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
	{"ID" : "296", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_8_fu_17420.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.tempA_U", "Parent" : "295"},
	{"ID" : "297", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_8_fu_17420.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "295"},
	{"ID" : "298", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_9_fu_17432", "Parent" : "11", "Child" : ["299"],
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
					{"ID" : "299", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_173", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "299", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_173", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "299", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_173", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "299", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_9_fu_17432.grp_KeccakP1600_Permute_s_fu_173", "Parent" : "298", "Child" : ["300", "301", "302", "303", "306", "308"],
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
	{"ID" : "300", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_9_fu_17432.grp_KeccakP1600_Permute_s_fu_173.KeccakRhoOffsets_U", "Parent" : "299"},
	{"ID" : "301", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_9_fu_17432.grp_KeccakP1600_Permute_s_fu_173.KeccakRoundConstants_U", "Parent" : "299"},
	{"ID" : "302", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_9_fu_17432.grp_KeccakP1600_Permute_s_fu_173.stateAsWords_U", "Parent" : "299"},
	{"ID" : "303", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_9_fu_17432.grp_KeccakP1600_Permute_s_fu_173.grp_theta_fu_225", "Parent" : "299", "Child" : ["304", "305"],
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
	{"ID" : "304", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_9_fu_17432.grp_KeccakP1600_Permute_s_fu_173.grp_theta_fu_225.C_U", "Parent" : "303"},
	{"ID" : "305", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_9_fu_17432.grp_KeccakP1600_Permute_s_fu_173.grp_theta_fu_225.D_U", "Parent" : "303"},
	{"ID" : "306", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_9_fu_17432.grp_KeccakP1600_Permute_s_fu_173.grp_chi_fu_230", "Parent" : "299", "Child" : ["307"],
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
	{"ID" : "307", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_9_fu_17432.grp_KeccakP1600_Permute_s_fu_173.grp_chi_fu_230.C_U", "Parent" : "306"},
	{"ID" : "308", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_9_fu_17432.grp_KeccakP1600_Permute_s_fu_173.grp_pi_fu_235", "Parent" : "299", "Child" : ["309", "310"],
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
	{"ID" : "309", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_9_fu_17432.grp_KeccakP1600_Permute_s_fu_173.grp_pi_fu_235.tempA_U", "Parent" : "308"},
	{"ID" : "310", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_9_fu_17432.grp_KeccakP1600_Permute_s_fu_173.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "308"},
	{"ID" : "311", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashUpdate_2_2_fu_17448", "Parent" : "11", "Child" : ["312", "313"],
		"CDFG" : "HashUpdate_2_2",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_16_fu_193"}],
		"Port" : [
			{"Name" : "ctx_sponge_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "313", "SubInstance" : "grp_KeccakWidth1600_Spon_16_fu_193", "Port" : "instance_state"}]},
			{"Name" : "ctx_sponge_byteIOInd", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "313", "SubInstance" : "grp_KeccakWidth1600_Spon_16_fu_193", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "313", "SubInstance" : "grp_KeccakWidth1600_Spon_16_fu_193", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "312", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashUpdate_2_2_fu_17448.temp_U", "Parent" : "311"},
	{"ID" : "313", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashUpdate_2_2_fu_17448.grp_KeccakWidth1600_Spon_16_fu_193", "Parent" : "311", "Child" : ["314"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "314", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "314", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "314", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "314", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashUpdate_2_2_fu_17448.grp_KeccakWidth1600_Spon_16_fu_193.grp_KeccakP1600_Permute_s_fu_91", "Parent" : "313", "Child" : ["315", "316", "317", "318", "321", "323"],
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
	{"ID" : "315", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashUpdate_2_2_fu_17448.grp_KeccakWidth1600_Spon_16_fu_193.grp_KeccakP1600_Permute_s_fu_91.KeccakRhoOffsets_U", "Parent" : "314"},
	{"ID" : "316", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashUpdate_2_2_fu_17448.grp_KeccakWidth1600_Spon_16_fu_193.grp_KeccakP1600_Permute_s_fu_91.KeccakRoundConstants_U", "Parent" : "314"},
	{"ID" : "317", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashUpdate_2_2_fu_17448.grp_KeccakWidth1600_Spon_16_fu_193.grp_KeccakP1600_Permute_s_fu_91.stateAsWords_U", "Parent" : "314"},
	{"ID" : "318", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashUpdate_2_2_fu_17448.grp_KeccakWidth1600_Spon_16_fu_193.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225", "Parent" : "314", "Child" : ["319", "320"],
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
	{"ID" : "319", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashUpdate_2_2_fu_17448.grp_KeccakWidth1600_Spon_16_fu_193.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225.C_U", "Parent" : "318"},
	{"ID" : "320", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashUpdate_2_2_fu_17448.grp_KeccakWidth1600_Spon_16_fu_193.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225.D_U", "Parent" : "318"},
	{"ID" : "321", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashUpdate_2_2_fu_17448.grp_KeccakWidth1600_Spon_16_fu_193.grp_KeccakP1600_Permute_s_fu_91.grp_chi_fu_230", "Parent" : "314", "Child" : ["322"],
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
	{"ID" : "322", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashUpdate_2_2_fu_17448.grp_KeccakWidth1600_Spon_16_fu_193.grp_KeccakP1600_Permute_s_fu_91.grp_chi_fu_230.C_U", "Parent" : "321"},
	{"ID" : "323", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashUpdate_2_2_fu_17448.grp_KeccakWidth1600_Spon_16_fu_193.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235", "Parent" : "314", "Child" : ["324", "325"],
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
	{"ID" : "324", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashUpdate_2_2_fu_17448.grp_KeccakWidth1600_Spon_16_fu_193.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235.tempA_U", "Parent" : "323"},
	{"ID" : "325", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashUpdate_2_2_fu_17448.grp_KeccakWidth1600_Spon_16_fu_193.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "323"},
	{"ID" : "326", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_fu_17465", "Parent" : "11", "Child" : ["327"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_186"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_186"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "327", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_186", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "327", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_186", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "327", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_186", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "327", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_fu_17465.grp_KeccakP1600_Permute_s_fu_186", "Parent" : "326", "Child" : ["328", "329", "330", "331", "334", "336"],
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
	{"ID" : "328", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_fu_17465.grp_KeccakP1600_Permute_s_fu_186.KeccakRhoOffsets_U", "Parent" : "327"},
	{"ID" : "329", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_fu_17465.grp_KeccakP1600_Permute_s_fu_186.KeccakRoundConstants_U", "Parent" : "327"},
	{"ID" : "330", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_fu_17465.grp_KeccakP1600_Permute_s_fu_186.stateAsWords_U", "Parent" : "327"},
	{"ID" : "331", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_fu_17465.grp_KeccakP1600_Permute_s_fu_186.grp_theta_fu_225", "Parent" : "327", "Child" : ["332", "333"],
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
	{"ID" : "332", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_fu_17465.grp_KeccakP1600_Permute_s_fu_186.grp_theta_fu_225.C_U", "Parent" : "331"},
	{"ID" : "333", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_fu_17465.grp_KeccakP1600_Permute_s_fu_186.grp_theta_fu_225.D_U", "Parent" : "331"},
	{"ID" : "334", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_fu_17465.grp_KeccakP1600_Permute_s_fu_186.grp_chi_fu_230", "Parent" : "327", "Child" : ["335"],
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
	{"ID" : "335", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_fu_17465.grp_KeccakP1600_Permute_s_fu_186.grp_chi_fu_230.C_U", "Parent" : "334"},
	{"ID" : "336", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_fu_17465.grp_KeccakP1600_Permute_s_fu_186.grp_pi_fu_235", "Parent" : "327", "Child" : ["337", "338"],
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
	{"ID" : "337", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_fu_17465.grp_KeccakP1600_Permute_s_fu_186.grp_pi_fu_235.tempA_U", "Parent" : "336"},
	{"ID" : "338", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_fu_17465.grp_KeccakP1600_Permute_s_fu_186.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "336"},
	{"ID" : "339", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_14_fu_17483", "Parent" : "11", "Child" : ["340"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_123"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "340", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_123", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "340", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_123", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "340", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_123", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "340", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_14_fu_17483.grp_KeccakP1600_Permute_s_fu_123", "Parent" : "339", "Child" : ["341", "342", "343", "344", "347", "349"],
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
	{"ID" : "341", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_14_fu_17483.grp_KeccakP1600_Permute_s_fu_123.KeccakRhoOffsets_U", "Parent" : "340"},
	{"ID" : "342", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_14_fu_17483.grp_KeccakP1600_Permute_s_fu_123.KeccakRoundConstants_U", "Parent" : "340"},
	{"ID" : "343", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_14_fu_17483.grp_KeccakP1600_Permute_s_fu_123.stateAsWords_U", "Parent" : "340"},
	{"ID" : "344", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_14_fu_17483.grp_KeccakP1600_Permute_s_fu_123.grp_theta_fu_225", "Parent" : "340", "Child" : ["345", "346"],
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
	{"ID" : "345", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_14_fu_17483.grp_KeccakP1600_Permute_s_fu_123.grp_theta_fu_225.C_U", "Parent" : "344"},
	{"ID" : "346", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_14_fu_17483.grp_KeccakP1600_Permute_s_fu_123.grp_theta_fu_225.D_U", "Parent" : "344"},
	{"ID" : "347", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_14_fu_17483.grp_KeccakP1600_Permute_s_fu_123.grp_chi_fu_230", "Parent" : "340", "Child" : ["348"],
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
	{"ID" : "348", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_14_fu_17483.grp_KeccakP1600_Permute_s_fu_123.grp_chi_fu_230.C_U", "Parent" : "347"},
	{"ID" : "349", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_14_fu_17483.grp_KeccakP1600_Permute_s_fu_123.grp_pi_fu_235", "Parent" : "340", "Child" : ["350", "351"],
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
	{"ID" : "350", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_14_fu_17483.grp_KeccakP1600_Permute_s_fu_123.grp_pi_fu_235.tempA_U", "Parent" : "349"},
	{"ID" : "351", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_14_fu_17483.grp_KeccakP1600_Permute_s_fu_123.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "349"},
	{"ID" : "352", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_7_fu_17500", "Parent" : "11", "Child" : ["353"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_123"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "353", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_123", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "353", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_123", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "353", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_123", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "353", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_7_fu_17500.grp_KeccakP1600_Permute_s_fu_123", "Parent" : "352", "Child" : ["354", "355", "356", "357", "360", "362"],
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
	{"ID" : "354", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_7_fu_17500.grp_KeccakP1600_Permute_s_fu_123.KeccakRhoOffsets_U", "Parent" : "353"},
	{"ID" : "355", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_7_fu_17500.grp_KeccakP1600_Permute_s_fu_123.KeccakRoundConstants_U", "Parent" : "353"},
	{"ID" : "356", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_7_fu_17500.grp_KeccakP1600_Permute_s_fu_123.stateAsWords_U", "Parent" : "353"},
	{"ID" : "357", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_7_fu_17500.grp_KeccakP1600_Permute_s_fu_123.grp_theta_fu_225", "Parent" : "353", "Child" : ["358", "359"],
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
	{"ID" : "358", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_7_fu_17500.grp_KeccakP1600_Permute_s_fu_123.grp_theta_fu_225.C_U", "Parent" : "357"},
	{"ID" : "359", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_7_fu_17500.grp_KeccakP1600_Permute_s_fu_123.grp_theta_fu_225.D_U", "Parent" : "357"},
	{"ID" : "360", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_7_fu_17500.grp_KeccakP1600_Permute_s_fu_123.grp_chi_fu_230", "Parent" : "353", "Child" : ["361"],
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
	{"ID" : "361", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_7_fu_17500.grp_KeccakP1600_Permute_s_fu_123.grp_chi_fu_230.C_U", "Parent" : "360"},
	{"ID" : "362", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_7_fu_17500.grp_KeccakP1600_Permute_s_fu_123.grp_pi_fu_235", "Parent" : "353", "Child" : ["363", "364"],
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
	{"ID" : "363", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_7_fu_17500.grp_KeccakP1600_Permute_s_fu_123.grp_pi_fu_235.tempA_U", "Parent" : "362"},
	{"ID" : "364", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_7_fu_17500.grp_KeccakP1600_Permute_s_fu_123.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "362"},
	{"ID" : "365", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_10_fu_17517", "Parent" : "11", "Child" : ["366", "378"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_117"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "366", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_117", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "366", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_117", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "366", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_117", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "366", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_10_fu_17517.grp_KeccakP1600_Permute_s_fu_117", "Parent" : "365", "Child" : ["367", "368", "369", "370", "373", "375"],
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
	{"ID" : "367", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_10_fu_17517.grp_KeccakP1600_Permute_s_fu_117.KeccakRhoOffsets_U", "Parent" : "366"},
	{"ID" : "368", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_10_fu_17517.grp_KeccakP1600_Permute_s_fu_117.KeccakRoundConstants_U", "Parent" : "366"},
	{"ID" : "369", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_10_fu_17517.grp_KeccakP1600_Permute_s_fu_117.stateAsWords_U", "Parent" : "366"},
	{"ID" : "370", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_10_fu_17517.grp_KeccakP1600_Permute_s_fu_117.grp_theta_fu_225", "Parent" : "366", "Child" : ["371", "372"],
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
	{"ID" : "371", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_10_fu_17517.grp_KeccakP1600_Permute_s_fu_117.grp_theta_fu_225.C_U", "Parent" : "370"},
	{"ID" : "372", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_10_fu_17517.grp_KeccakP1600_Permute_s_fu_117.grp_theta_fu_225.D_U", "Parent" : "370"},
	{"ID" : "373", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_10_fu_17517.grp_KeccakP1600_Permute_s_fu_117.grp_chi_fu_230", "Parent" : "366", "Child" : ["374"],
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
	{"ID" : "374", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_10_fu_17517.grp_KeccakP1600_Permute_s_fu_117.grp_chi_fu_230.C_U", "Parent" : "373"},
	{"ID" : "375", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_10_fu_17517.grp_KeccakP1600_Permute_s_fu_117.grp_pi_fu_235", "Parent" : "366", "Child" : ["376", "377"],
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
	{"ID" : "376", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_10_fu_17517.grp_KeccakP1600_Permute_s_fu_117.grp_pi_fu_235.tempA_U", "Parent" : "375"},
	{"ID" : "377", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_10_fu_17517.grp_KeccakP1600_Permute_s_fu_117.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "375"},
	{"ID" : "378", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_10_fu_17517.crypto_sign_am_admb6_U149", "Parent" : "365"},
	{"ID" : "379", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_6_fu_17534", "Parent" : "11", "Child" : ["380"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_93"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "380", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_93", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "380", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_93", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "380", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_93", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "380", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_6_fu_17534.grp_KeccakP1600_Permute_s_fu_93", "Parent" : "379", "Child" : ["381", "382", "383", "384", "387", "389"],
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
	{"ID" : "381", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_6_fu_17534.grp_KeccakP1600_Permute_s_fu_93.KeccakRhoOffsets_U", "Parent" : "380"},
	{"ID" : "382", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_6_fu_17534.grp_KeccakP1600_Permute_s_fu_93.KeccakRoundConstants_U", "Parent" : "380"},
	{"ID" : "383", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_6_fu_17534.grp_KeccakP1600_Permute_s_fu_93.stateAsWords_U", "Parent" : "380"},
	{"ID" : "384", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_6_fu_17534.grp_KeccakP1600_Permute_s_fu_93.grp_theta_fu_225", "Parent" : "380", "Child" : ["385", "386"],
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
	{"ID" : "385", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_6_fu_17534.grp_KeccakP1600_Permute_s_fu_93.grp_theta_fu_225.C_U", "Parent" : "384"},
	{"ID" : "386", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_6_fu_17534.grp_KeccakP1600_Permute_s_fu_93.grp_theta_fu_225.D_U", "Parent" : "384"},
	{"ID" : "387", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_6_fu_17534.grp_KeccakP1600_Permute_s_fu_93.grp_chi_fu_230", "Parent" : "380", "Child" : ["388"],
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
	{"ID" : "388", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_6_fu_17534.grp_KeccakP1600_Permute_s_fu_93.grp_chi_fu_230.C_U", "Parent" : "387"},
	{"ID" : "389", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_6_fu_17534.grp_KeccakP1600_Permute_s_fu_93.grp_pi_fu_235", "Parent" : "380", "Child" : ["390", "391"],
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
	{"ID" : "390", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_6_fu_17534.grp_KeccakP1600_Permute_s_fu_93.grp_pi_fu_235.tempA_U", "Parent" : "389"},
	{"ID" : "391", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_6_fu_17534.grp_KeccakP1600_Permute_s_fu_93.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "389"},
	{"ID" : "392", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_13_fu_17545", "Parent" : "11", "Child" : ["393"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "393", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "393", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "393", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "393", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_13_fu_17545.grp_KeccakP1600_Permute_s_fu_91", "Parent" : "392", "Child" : ["394", "395", "396", "397", "400", "402"],
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
	{"ID" : "394", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_13_fu_17545.grp_KeccakP1600_Permute_s_fu_91.KeccakRhoOffsets_U", "Parent" : "393"},
	{"ID" : "395", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_13_fu_17545.grp_KeccakP1600_Permute_s_fu_91.KeccakRoundConstants_U", "Parent" : "393"},
	{"ID" : "396", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_13_fu_17545.grp_KeccakP1600_Permute_s_fu_91.stateAsWords_U", "Parent" : "393"},
	{"ID" : "397", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_13_fu_17545.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225", "Parent" : "393", "Child" : ["398", "399"],
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
	{"ID" : "398", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_13_fu_17545.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225.C_U", "Parent" : "397"},
	{"ID" : "399", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_13_fu_17545.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225.D_U", "Parent" : "397"},
	{"ID" : "400", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_13_fu_17545.grp_KeccakP1600_Permute_s_fu_91.grp_chi_fu_230", "Parent" : "393", "Child" : ["401"],
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
	{"ID" : "401", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_13_fu_17545.grp_KeccakP1600_Permute_s_fu_91.grp_chi_fu_230.C_U", "Parent" : "400"},
	{"ID" : "402", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_13_fu_17545.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235", "Parent" : "393", "Child" : ["403", "404"],
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
	{"ID" : "403", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_13_fu_17545.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235.tempA_U", "Parent" : "402"},
	{"ID" : "404", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_13_fu_17545.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "402"},
	{"ID" : "405", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashInit_fu_17556", "Parent" : "11", "Child" : ["406"],
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
					{"ID" : "406", "SubInstance" : "grp_KeccakWidth1600_Spon_11_fu_74", "Port" : "instance_state"}]},
			{"Name" : "hashPrefix", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "406", "SubInstance" : "grp_KeccakWidth1600_Spon_11_fu_74", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "406", "SubInstance" : "grp_KeccakWidth1600_Spon_11_fu_74", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "406", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashInit_fu_17556.grp_KeccakWidth1600_Spon_11_fu_74", "Parent" : "405", "Child" : ["407"],
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
					{"ID" : "407", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "state"}]},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "407", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "407", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "407", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashInit_fu_17556.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54", "Parent" : "406", "Child" : ["408", "409", "410", "411", "414", "416"],
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
	{"ID" : "408", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashInit_fu_17556.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.KeccakRhoOffsets_U", "Parent" : "407"},
	{"ID" : "409", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashInit_fu_17556.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.KeccakRoundConstants_U", "Parent" : "407"},
	{"ID" : "410", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashInit_fu_17556.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.stateAsWords_U", "Parent" : "407"},
	{"ID" : "411", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashInit_fu_17556.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225", "Parent" : "407", "Child" : ["412", "413"],
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
	{"ID" : "412", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashInit_fu_17556.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.C_U", "Parent" : "411"},
	{"ID" : "413", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashInit_fu_17556.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.D_U", "Parent" : "411"},
	{"ID" : "414", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashInit_fu_17556.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230", "Parent" : "407", "Child" : ["415"],
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
	{"ID" : "415", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashInit_fu_17556.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230.C_U", "Parent" : "414"},
	{"ID" : "416", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashInit_fu_17556.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235", "Parent" : "407", "Child" : ["417", "418"],
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
	{"ID" : "417", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashInit_fu_17556.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.tempA_U", "Parent" : "416"},
	{"ID" : "418", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashInit_fu_17556.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "416"},
	{"ID" : "419", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashFinal_fu_17570", "Parent" : "11", "Child" : ["420"],
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
					{"ID" : "420", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "state"}]},
			{"Name" : "ctx_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "420", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "420", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "420", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashFinal_fu_17570.grp_KeccakP1600_Permute_s_fu_54", "Parent" : "419", "Child" : ["421", "422", "423", "424", "427", "429"],
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
	{"ID" : "421", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashFinal_fu_17570.grp_KeccakP1600_Permute_s_fu_54.KeccakRhoOffsets_U", "Parent" : "420"},
	{"ID" : "422", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashFinal_fu_17570.grp_KeccakP1600_Permute_s_fu_54.KeccakRoundConstants_U", "Parent" : "420"},
	{"ID" : "423", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashFinal_fu_17570.grp_KeccakP1600_Permute_s_fu_54.stateAsWords_U", "Parent" : "420"},
	{"ID" : "424", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashFinal_fu_17570.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225", "Parent" : "420", "Child" : ["425", "426"],
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
	{"ID" : "425", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashFinal_fu_17570.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.C_U", "Parent" : "424"},
	{"ID" : "426", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashFinal_fu_17570.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.D_U", "Parent" : "424"},
	{"ID" : "427", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashFinal_fu_17570.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230", "Parent" : "420", "Child" : ["428"],
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
	{"ID" : "428", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashFinal_fu_17570.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230.C_U", "Parent" : "427"},
	{"ID" : "429", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashFinal_fu_17570.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235", "Parent" : "420", "Child" : ["430", "431"],
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
	{"ID" : "430", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashFinal_fu_17570.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.tempA_U", "Parent" : "429"},
	{"ID" : "431", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashFinal_fu_17570.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "429"},
	{"ID" : "432", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_prove_26_fu_17580", "Parent" : "11", "Child" : ["433"],
		"CDFG" : "prove_26",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "424", "EstimateLatencyMax" : "436",
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
	{"ID" : "433", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_prove_26_fu_17580.crypto_sign_am_adocq_U172", "Parent" : "432"},
	{"ID" : "434", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_serializeSignature_fu_388", "Parent" : "0",
		"CDFG" : "serializeSignature",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "140058", "EstimateLatencyMax" : "150257",
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
		viewOutputs {Type IO LastRead -1 FirstWrite -1}}
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
		viewOutputs {Type IO LastRead -1 FirstWrite -1}}
	H3_2 {
		circuitOutput {Type I LastRead 5 FirstWrite -1}
		plaintext {Type I LastRead 8 FirstWrite -1}
		as_hashes {Type I LastRead 3 FirstWrite -1}
		challengeBits_0 {Type IO LastRead 20 FirstWrite 1}
		salt_0 {Type I LastRead 4 FirstWrite -1}
		message {Type I LastRead 4 FirstWrite -1}
		messageByteLength {Type I LastRead 1 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}
		viewOutputs {Type I LastRead 5 FirstWrite -1}}
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
	KeccakWidth1600_Spon_4 {
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
	KeccakWidth1600_Spon_14 {
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
	KeccakWidth1600_Spon_16 {
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
	KeccakWidth1600_Spon_12 {
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
	KeccakWidth1600_Spon_2 {
		instance_state {Type IO LastRead 9 FirstWrite 1}
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
	HashUpdate_2 {
		ctx_sponge_state {Type IO LastRead 3 FirstWrite 4}
		ctx_sponge_byteIOInd {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 2 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	KeccakWidth1600_Spon_16 {
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
		slab {Type IO LastRead 29 FirstWrite 1}
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
	HashUpdate_2_2 {
		ctx_sponge_state {Type IO LastRead 3 FirstWrite 4}
		ctx_sponge_byteIOInd {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 2 FirstWrite -1}
		data_offset {Type I LastRead 0 FirstWrite -1}
		data_offset1 {Type I LastRead 0 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	KeccakWidth1600_Spon_16 {
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
	KeccakWidth1600_Spon {
		instance_state {Type IO LastRead 9 FirstWrite 1}
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
	KeccakWidth1600_Spon_14 {
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
	KeccakWidth1600_Spon_7 {
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
	KeccakWidth1600_Spon_10 {
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
	KeccakWidth1600_Spon_6 {
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
	KeccakWidth1600_Spon_13 {
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
	signature { ap_memory {  { signature_address0 mem_address 1 17 }  { signature_ce0 mem_ce 1 1 }  { signature_we0 mem_we 1 1 }  { signature_d0 mem_din 1 8 } } }
	signature_offset { ap_none {  { signature_offset in_data 0 64 } } }
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
	{ signature int 8 regular {array 80084 { 0 3 } 0 1 }  }
	{ signature_offset int 64 regular  }
	{ viewOutputs int 32 regular {array 23688 { 2 1 } 1 1 } {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sk_data", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sk_pk_plaintext", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sk_pk_ciphertext", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "message", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "message_len", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "signature", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "signature_offset", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "viewOutputs", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "viewOutputs","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 986,"step" : 1},{"low" : 0,"up" : 23,"step" : 1}]}]}], "extern" : 0} , 
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
	{ signature_address0 sc_out sc_lv 17 signal 5 } 
	{ signature_ce0 sc_out sc_logic 1 signal 5 } 
	{ signature_we0 sc_out sc_logic 1 signal 5 } 
	{ signature_d0 sc_out sc_lv 8 signal 5 } 
	{ signature_offset sc_in sc_lv 64 signal 6 } 
	{ viewOutputs_address0 sc_out sc_lv 15 signal 7 } 
	{ viewOutputs_ce0 sc_out sc_logic 1 signal 7 } 
	{ viewOutputs_we0 sc_out sc_logic 1 signal 7 } 
	{ viewOutputs_d0 sc_out sc_lv 32 signal 7 } 
	{ viewOutputs_q0 sc_in sc_lv 32 signal 7 } 
	{ viewOutputs_address1 sc_out sc_lv 15 signal 7 } 
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
 	{ "name": "signature_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "signature", "role": "address0" }} , 
 	{ "name": "signature_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "signature", "role": "ce0" }} , 
 	{ "name": "signature_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "signature", "role": "we0" }} , 
 	{ "name": "signature_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "signature", "role": "d0" }} , 
 	{ "name": "signature_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "signature_offset", "role": "default" }} , 
 	{ "name": "viewOutputs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "viewOutputs", "role": "address0" }} , 
 	{ "name": "viewOutputs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "viewOutputs", "role": "ce0" }} , 
 	{ "name": "viewOutputs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "viewOutputs", "role": "we0" }} , 
 	{ "name": "viewOutputs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "viewOutputs", "role": "d0" }} , 
 	{ "name": "viewOutputs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "viewOutputs", "role": "q0" }} , 
 	{ "name": "viewOutputs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "viewOutputs", "role": "address1" }} , 
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
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359", "Parent" : "0", "Child" : ["12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "146", "227", "258", "271", "284", "297", "310", "325", "338", "351", "364", "378", "391", "404", "418", "431"],
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
			{"State" : "ap_ST_fsm_state702", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_H3_2_fu_17328"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_computeSeeds_2_fu_17349"},
			{"State" : "ap_ST_fsm_state58", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mpc_LowMC_2_fu_17371"},
			{"State" : "ap_ST_fsm_state39", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_1_fu_17390"},
			{"State" : "ap_ST_fsm_state55", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_1_fu_17390"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_5_fu_17405"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_5_fu_17405"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_8_fu_17420"},
			{"State" : "ap_ST_fsm_state45", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_8_fu_17420"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_17432"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_17432"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_17432"},
			{"State" : "ap_ST_fsm_state47", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_17432"},
			{"State" : "ap_ST_fsm_state49", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_17432"},
			{"State" : "ap_ST_fsm_state51", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_17432"},
			{"State" : "ap_ST_fsm_state262", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdate_2_2_fu_17448"},
			{"State" : "ap_ST_fsm_state266", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdate_2_2_fu_17448"},
			{"State" : "ap_ST_fsm_state474", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdate_2_2_fu_17448"},
			{"State" : "ap_ST_fsm_state478", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdate_2_2_fu_17448"},
			{"State" : "ap_ST_fsm_state686", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdate_2_2_fu_17448"},
			{"State" : "ap_ST_fsm_state690", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdate_2_2_fu_17448"},
			{"State" : "ap_ST_fsm_state256", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_fu_17465"},
			{"State" : "ap_ST_fsm_state270", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_fu_17465"},
			{"State" : "ap_ST_fsm_state468", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_fu_17465"},
			{"State" : "ap_ST_fsm_state482", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_fu_17465"},
			{"State" : "ap_ST_fsm_state680", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_fu_17465"},
			{"State" : "ap_ST_fsm_state694", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_fu_17465"},
			{"State" : "ap_ST_fsm_state260", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_14_fu_17483"},
			{"State" : "ap_ST_fsm_state472", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_14_fu_17483"},
			{"State" : "ap_ST_fsm_state684", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_14_fu_17483"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_7_fu_17500"},
			{"State" : "ap_ST_fsm_state35", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_7_fu_17500"},
			{"State" : "ap_ST_fsm_state252", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_7_fu_17500"},
			{"State" : "ap_ST_fsm_state464", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_7_fu_17500"},
			{"State" : "ap_ST_fsm_state676", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_7_fu_17500"},
			{"State" : "ap_ST_fsm_state264", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_10_fu_17517"},
			{"State" : "ap_ST_fsm_state476", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_10_fu_17517"},
			{"State" : "ap_ST_fsm_state688", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_10_fu_17517"},
			{"State" : "ap_ST_fsm_state43", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_6_fu_17534"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_13_fu_17545"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_17556"},
			{"State" : "ap_ST_fsm_state33", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_17556"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_17556"},
			{"State" : "ap_ST_fsm_state41", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_17556"},
			{"State" : "ap_ST_fsm_state250", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_17556"},
			{"State" : "ap_ST_fsm_state258", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_17556"},
			{"State" : "ap_ST_fsm_state462", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_17556"},
			{"State" : "ap_ST_fsm_state470", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_17556"},
			{"State" : "ap_ST_fsm_state674", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_17556"},
			{"State" : "ap_ST_fsm_state682", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_17556"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_17570"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_17570"},
			{"State" : "ap_ST_fsm_state37", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_17570"},
			{"State" : "ap_ST_fsm_state53", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_17570"},
			{"State" : "ap_ST_fsm_state254", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_17570"},
			{"State" : "ap_ST_fsm_state268", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_17570"},
			{"State" : "ap_ST_fsm_state466", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_17570"},
			{"State" : "ap_ST_fsm_state480", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_17570"},
			{"State" : "ap_ST_fsm_state678", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_17570"},
			{"State" : "ap_ST_fsm_state692", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_17570"},
			{"State" : "ap_ST_fsm_state706", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_prove_26_fu_17580"}],
		"Port" : [
			{"Name" : "privateKey", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "grp_computeSeeds_2_fu_17349", "Port" : "privateKey"}]},
			{"Name" : "pubKey", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "grp_computeSeeds_2_fu_17349", "Port" : "publicKey"}]},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "227", "SubInstance" : "grp_mpc_LowMC_2_fu_17371", "Port" : "plaintext"},
					{"ID" : "35", "SubInstance" : "grp_H3_2_fu_17328", "Port" : "plaintext"},
					{"ID" : "146", "SubInstance" : "grp_computeSeeds_2_fu_17349", "Port" : "plaintext"}]},
			{"Name" : "message", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_H3_2_fu_17328", "Port" : "message"},
					{"ID" : "146", "SubInstance" : "grp_computeSeeds_2_fu_17349", "Port" : "message"}]},
			{"Name" : "messageByteLength", "Type" : "None", "Direction" : "I"},
			{"Name" : "sig_0_proofs_seed1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "431", "SubInstance" : "grp_prove_26_fu_17580", "Port" : "proof_0_seed1"}]},
			{"Name" : "sig_0_proofs_seed2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "431", "SubInstance" : "grp_prove_26_fu_17580", "Port" : "proof_0_seed2"}]},
			{"Name" : "sig_0_proofs_inputS", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "431", "SubInstance" : "grp_prove_26_fu_17580", "Port" : "proof_0_inputShare"}]},
			{"Name" : "sig_0_proofs_commun", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "431", "SubInstance" : "grp_prove_26_fu_17580", "Port" : "proof_0_communicatedBits"}]},
			{"Name" : "sig_0_proofs_view3C", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "431", "SubInstance" : "grp_prove_26_fu_17580", "Port" : "proof_0_view3Commitment"}]},
			{"Name" : "sig_0_challengeBits", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_H3_2_fu_17328", "Port" : "challengeBits_0"}]},
			{"Name" : "sig_0_salt", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_H3_2_fu_17328", "Port" : "salt_0"},
					{"ID" : "284", "SubInstance" : "grp_KeccakWidth1600_Spon_8_fu_17420", "Port" : "data_0"},
					{"ID" : "146", "SubInstance" : "grp_computeSeeds_2_fu_17349", "Port" : "salt_0"}]},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "271", "SubInstance" : "grp_KeccakWidth1600_Spon_5_fu_17405", "Port" : "KeccakRhoOffsets"},
					{"ID" : "351", "SubInstance" : "grp_KeccakWidth1600_Spon_7_fu_17500", "Port" : "KeccakRhoOffsets"},
					{"ID" : "35", "SubInstance" : "grp_H3_2_fu_17328", "Port" : "KeccakRhoOffsets"},
					{"ID" : "297", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_17432", "Port" : "KeccakRhoOffsets"},
					{"ID" : "284", "SubInstance" : "grp_KeccakWidth1600_Spon_8_fu_17420", "Port" : "KeccakRhoOffsets"},
					{"ID" : "146", "SubInstance" : "grp_computeSeeds_2_fu_17349", "Port" : "KeccakRhoOffsets"},
					{"ID" : "418", "SubInstance" : "grp_HashFinal_fu_17570", "Port" : "KeccakRhoOffsets"},
					{"ID" : "378", "SubInstance" : "grp_KeccakWidth1600_Spon_6_fu_17534", "Port" : "KeccakRhoOffsets"},
					{"ID" : "325", "SubInstance" : "grp_KeccakWidth1600_Spon_fu_17465", "Port" : "KeccakRhoOffsets"},
					{"ID" : "404", "SubInstance" : "grp_HashInit_fu_17556", "Port" : "KeccakRhoOffsets"},
					{"ID" : "258", "SubInstance" : "grp_KeccakWidth1600_Spon_1_fu_17390", "Port" : "KeccakRhoOffsets"},
					{"ID" : "391", "SubInstance" : "grp_KeccakWidth1600_Spon_13_fu_17545", "Port" : "KeccakRhoOffsets"},
					{"ID" : "338", "SubInstance" : "grp_KeccakWidth1600_Spon_14_fu_17483", "Port" : "KeccakRhoOffsets"},
					{"ID" : "310", "SubInstance" : "grp_HashUpdate_2_2_fu_17448", "Port" : "KeccakRhoOffsets"},
					{"ID" : "364", "SubInstance" : "grp_KeccakWidth1600_Spon_10_fu_17517", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "271", "SubInstance" : "grp_KeccakWidth1600_Spon_5_fu_17405", "Port" : "KeccakRoundConstants"},
					{"ID" : "351", "SubInstance" : "grp_KeccakWidth1600_Spon_7_fu_17500", "Port" : "KeccakRoundConstants"},
					{"ID" : "35", "SubInstance" : "grp_H3_2_fu_17328", "Port" : "KeccakRoundConstants"},
					{"ID" : "297", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_17432", "Port" : "KeccakRoundConstants"},
					{"ID" : "284", "SubInstance" : "grp_KeccakWidth1600_Spon_8_fu_17420", "Port" : "KeccakRoundConstants"},
					{"ID" : "146", "SubInstance" : "grp_computeSeeds_2_fu_17349", "Port" : "KeccakRoundConstants"},
					{"ID" : "418", "SubInstance" : "grp_HashFinal_fu_17570", "Port" : "KeccakRoundConstants"},
					{"ID" : "378", "SubInstance" : "grp_KeccakWidth1600_Spon_6_fu_17534", "Port" : "KeccakRoundConstants"},
					{"ID" : "325", "SubInstance" : "grp_KeccakWidth1600_Spon_fu_17465", "Port" : "KeccakRoundConstants"},
					{"ID" : "404", "SubInstance" : "grp_HashInit_fu_17556", "Port" : "KeccakRoundConstants"},
					{"ID" : "258", "SubInstance" : "grp_KeccakWidth1600_Spon_1_fu_17390", "Port" : "KeccakRoundConstants"},
					{"ID" : "391", "SubInstance" : "grp_KeccakWidth1600_Spon_13_fu_17545", "Port" : "KeccakRoundConstants"},
					{"ID" : "338", "SubInstance" : "grp_KeccakWidth1600_Spon_14_fu_17483", "Port" : "KeccakRoundConstants"},
					{"ID" : "310", "SubInstance" : "grp_HashUpdate_2_2_fu_17448", "Port" : "KeccakRoundConstants"},
					{"ID" : "364", "SubInstance" : "grp_KeccakWidth1600_Spon_10_fu_17517", "Port" : "KeccakRoundConstants"}]},
			{"Name" : "temp_matrix", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "227", "SubInstance" : "grp_mpc_LowMC_2_fu_17371", "Port" : "temp_matrix"}]},
			{"Name" : "temp_matrix2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "227", "SubInstance" : "grp_mpc_LowMC_2_fu_17371", "Port" : "temp_matrix2"}]},
			{"Name" : "temp_matrix3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "227", "SubInstance" : "grp_mpc_LowMC_2_fu_17371", "Port" : "temp_matrix3"}]},
			{"Name" : "viewOutputs", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_H3_2_fu_17328", "Port" : "viewOutputs"}]}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.ctx_sponge_state_4_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.views_outputShare121_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.views_communicatedBi_U", "Parent" : "11"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.views_inputShare845_U", "Parent" : "11"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.ctx_sponge_state_3_U", "Parent" : "11"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.views_outputShare789_U", "Parent" : "11"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.views_communicatedBi_1_U", "Parent" : "11"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.views_inputShare424_U", "Parent" : "11"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.ctx_sponge_state_2_U", "Parent" : "11"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.views_outputShare389_U", "Parent" : "11"},
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
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328", "Parent" : "11", "Child" : ["36", "37", "38", "39", "40", "41", "54", "67", "80", "93", "106", "119", "133"],
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
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_543"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_8_fu_556"},
			{"State" : "ap_ST_fsm_state30", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_4_fu_568"},
			{"State" : "ap_ST_fsm_state38", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_4_fu_568"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_14_fu_580"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_16_fu_595"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_16_fu_595"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_16_fu_595"},
			{"State" : "ap_ST_fsm_state34", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_12_fu_606"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_617"},
			{"State" : "ap_ST_fsm_state32", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_617"},
			{"State" : "ap_ST_fsm_state28", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_629"},
			{"State" : "ap_ST_fsm_state36", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_629"}],
		"Port" : [
			{"Name" : "circuitOutput", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "as_hashes", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "grp_KeccakWidth1600_Spon_14_fu_580", "Port" : "data"}]},
			{"Name" : "challengeBits_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "salt_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_KeccakWidth1600_Spon_8_fu_556", "Port" : "data_0"}]},
			{"Name" : "message", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_543", "Port" : "data"}]},
			{"Name" : "messageByteLength", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_543", "Port" : "KeccakRhoOffsets"},
					{"ID" : "54", "SubInstance" : "grp_KeccakWidth1600_Spon_8_fu_556", "Port" : "KeccakRhoOffsets"},
					{"ID" : "67", "SubInstance" : "grp_KeccakWidth1600_Spon_4_fu_568", "Port" : "KeccakRhoOffsets"},
					{"ID" : "80", "SubInstance" : "grp_KeccakWidth1600_Spon_14_fu_580", "Port" : "KeccakRhoOffsets"},
					{"ID" : "93", "SubInstance" : "grp_KeccakWidth1600_Spon_16_fu_595", "Port" : "KeccakRhoOffsets"},
					{"ID" : "106", "SubInstance" : "grp_KeccakWidth1600_Spon_12_fu_606", "Port" : "KeccakRhoOffsets"},
					{"ID" : "119", "SubInstance" : "grp_HashInit_fu_617", "Port" : "KeccakRhoOffsets"},
					{"ID" : "133", "SubInstance" : "grp_HashFinal_fu_629", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_543", "Port" : "KeccakRoundConstants"},
					{"ID" : "54", "SubInstance" : "grp_KeccakWidth1600_Spon_8_fu_556", "Port" : "KeccakRoundConstants"},
					{"ID" : "67", "SubInstance" : "grp_KeccakWidth1600_Spon_4_fu_568", "Port" : "KeccakRoundConstants"},
					{"ID" : "80", "SubInstance" : "grp_KeccakWidth1600_Spon_14_fu_580", "Port" : "KeccakRoundConstants"},
					{"ID" : "93", "SubInstance" : "grp_KeccakWidth1600_Spon_16_fu_595", "Port" : "KeccakRoundConstants"},
					{"ID" : "106", "SubInstance" : "grp_KeccakWidth1600_Spon_12_fu_606", "Port" : "KeccakRoundConstants"},
					{"ID" : "119", "SubInstance" : "grp_HashInit_fu_617", "Port" : "KeccakRoundConstants"},
					{"ID" : "133", "SubInstance" : "grp_HashFinal_fu_629", "Port" : "KeccakRoundConstants"}]},
			{"Name" : "viewOutputs", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.temp_2_U", "Parent" : "35"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.temp_U", "Parent" : "35"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.temp_1_U", "Parent" : "35"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.hash_U", "Parent" : "35"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.ctx_sponge_state_U", "Parent" : "35"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_15_fu_543", "Parent" : "35", "Child" : ["42"],
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
					{"ID" : "42", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_158", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dataByteLen", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_158", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_158", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_15_fu_543.grp_KeccakP1600_Permute_s_fu_158", "Parent" : "41", "Child" : ["43", "44", "45", "46", "49", "51"],
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
	{"ID" : "43", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_15_fu_543.grp_KeccakP1600_Permute_s_fu_158.KeccakRhoOffsets_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_15_fu_543.grp_KeccakP1600_Permute_s_fu_158.KeccakRoundConstants_U", "Parent" : "42"},
	{"ID" : "45", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_15_fu_543.grp_KeccakP1600_Permute_s_fu_158.stateAsWords_U", "Parent" : "42"},
	{"ID" : "46", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_15_fu_543.grp_KeccakP1600_Permute_s_fu_158.grp_theta_fu_225", "Parent" : "42", "Child" : ["47", "48"],
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
	{"ID" : "47", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_15_fu_543.grp_KeccakP1600_Permute_s_fu_158.grp_theta_fu_225.C_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_15_fu_543.grp_KeccakP1600_Permute_s_fu_158.grp_theta_fu_225.D_U", "Parent" : "46"},
	{"ID" : "49", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_15_fu_543.grp_KeccakP1600_Permute_s_fu_158.grp_chi_fu_230", "Parent" : "42", "Child" : ["50"],
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
	{"ID" : "50", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_15_fu_543.grp_KeccakP1600_Permute_s_fu_158.grp_chi_fu_230.C_U", "Parent" : "49"},
	{"ID" : "51", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_15_fu_543.grp_KeccakP1600_Permute_s_fu_158.grp_pi_fu_235", "Parent" : "42", "Child" : ["52", "53"],
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
	{"ID" : "52", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_15_fu_543.grp_KeccakP1600_Permute_s_fu_158.grp_pi_fu_235.tempA_U", "Parent" : "51"},
	{"ID" : "53", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_15_fu_543.grp_KeccakP1600_Permute_s_fu_158.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "51"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_8_fu_556", "Parent" : "35", "Child" : ["55"],
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
					{"ID" : "55", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_8_fu_556.grp_KeccakP1600_Permute_s_fu_176", "Parent" : "54", "Child" : ["56", "57", "58", "59", "62", "64"],
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
	{"ID" : "56", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_8_fu_556.grp_KeccakP1600_Permute_s_fu_176.KeccakRhoOffsets_U", "Parent" : "55"},
	{"ID" : "57", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_8_fu_556.grp_KeccakP1600_Permute_s_fu_176.KeccakRoundConstants_U", "Parent" : "55"},
	{"ID" : "58", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_8_fu_556.grp_KeccakP1600_Permute_s_fu_176.stateAsWords_U", "Parent" : "55"},
	{"ID" : "59", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_8_fu_556.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225", "Parent" : "55", "Child" : ["60", "61"],
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
	{"ID" : "60", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_8_fu_556.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.C_U", "Parent" : "59"},
	{"ID" : "61", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_8_fu_556.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.D_U", "Parent" : "59"},
	{"ID" : "62", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_8_fu_556.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230", "Parent" : "55", "Child" : ["63"],
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
	{"ID" : "63", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_8_fu_556.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230.C_U", "Parent" : "62"},
	{"ID" : "64", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_8_fu_556.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235", "Parent" : "55", "Child" : ["65", "66"],
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
	{"ID" : "65", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_8_fu_556.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.tempA_U", "Parent" : "64"},
	{"ID" : "66", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_8_fu_556.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "64"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_4_fu_568", "Parent" : "35", "Child" : ["68"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_154"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_154"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_154", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_154", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_154", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "68", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_4_fu_568.grp_KeccakP1600_Permute_s_fu_154", "Parent" : "67", "Child" : ["69", "70", "71", "72", "75", "77"],
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
	{"ID" : "69", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_4_fu_568.grp_KeccakP1600_Permute_s_fu_154.KeccakRhoOffsets_U", "Parent" : "68"},
	{"ID" : "70", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_4_fu_568.grp_KeccakP1600_Permute_s_fu_154.KeccakRoundConstants_U", "Parent" : "68"},
	{"ID" : "71", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_4_fu_568.grp_KeccakP1600_Permute_s_fu_154.stateAsWords_U", "Parent" : "68"},
	{"ID" : "72", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_4_fu_568.grp_KeccakP1600_Permute_s_fu_154.grp_theta_fu_225", "Parent" : "68", "Child" : ["73", "74"],
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
	{"ID" : "73", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_4_fu_568.grp_KeccakP1600_Permute_s_fu_154.grp_theta_fu_225.C_U", "Parent" : "72"},
	{"ID" : "74", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_4_fu_568.grp_KeccakP1600_Permute_s_fu_154.grp_theta_fu_225.D_U", "Parent" : "72"},
	{"ID" : "75", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_4_fu_568.grp_KeccakP1600_Permute_s_fu_154.grp_chi_fu_230", "Parent" : "68", "Child" : ["76"],
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
	{"ID" : "76", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_4_fu_568.grp_KeccakP1600_Permute_s_fu_154.grp_chi_fu_230.C_U", "Parent" : "75"},
	{"ID" : "77", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_4_fu_568.grp_KeccakP1600_Permute_s_fu_154.grp_pi_fu_235", "Parent" : "68", "Child" : ["78", "79"],
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
	{"ID" : "78", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_4_fu_568.grp_KeccakP1600_Permute_s_fu_154.grp_pi_fu_235.tempA_U", "Parent" : "77"},
	{"ID" : "79", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_4_fu_568.grp_KeccakP1600_Permute_s_fu_154.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "77"},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_14_fu_580", "Parent" : "35", "Child" : ["81"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_123"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_123", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_123", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_123", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "81", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_14_fu_580.grp_KeccakP1600_Permute_s_fu_123", "Parent" : "80", "Child" : ["82", "83", "84", "85", "88", "90"],
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
	{"ID" : "82", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_14_fu_580.grp_KeccakP1600_Permute_s_fu_123.KeccakRhoOffsets_U", "Parent" : "81"},
	{"ID" : "83", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_14_fu_580.grp_KeccakP1600_Permute_s_fu_123.KeccakRoundConstants_U", "Parent" : "81"},
	{"ID" : "84", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_14_fu_580.grp_KeccakP1600_Permute_s_fu_123.stateAsWords_U", "Parent" : "81"},
	{"ID" : "85", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_14_fu_580.grp_KeccakP1600_Permute_s_fu_123.grp_theta_fu_225", "Parent" : "81", "Child" : ["86", "87"],
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
	{"ID" : "86", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_14_fu_580.grp_KeccakP1600_Permute_s_fu_123.grp_theta_fu_225.C_U", "Parent" : "85"},
	{"ID" : "87", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_14_fu_580.grp_KeccakP1600_Permute_s_fu_123.grp_theta_fu_225.D_U", "Parent" : "85"},
	{"ID" : "88", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_14_fu_580.grp_KeccakP1600_Permute_s_fu_123.grp_chi_fu_230", "Parent" : "81", "Child" : ["89"],
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
	{"ID" : "89", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_14_fu_580.grp_KeccakP1600_Permute_s_fu_123.grp_chi_fu_230.C_U", "Parent" : "88"},
	{"ID" : "90", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_14_fu_580.grp_KeccakP1600_Permute_s_fu_123.grp_pi_fu_235", "Parent" : "81", "Child" : ["91", "92"],
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
	{"ID" : "91", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_14_fu_580.grp_KeccakP1600_Permute_s_fu_123.grp_pi_fu_235.tempA_U", "Parent" : "90"},
	{"ID" : "92", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_14_fu_580.grp_KeccakP1600_Permute_s_fu_123.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "90"},
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_16_fu_595", "Parent" : "35", "Child" : ["94"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "94", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "94", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "94", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "94", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_16_fu_595.grp_KeccakP1600_Permute_s_fu_91", "Parent" : "93", "Child" : ["95", "96", "97", "98", "101", "103"],
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
	{"ID" : "95", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_16_fu_595.grp_KeccakP1600_Permute_s_fu_91.KeccakRhoOffsets_U", "Parent" : "94"},
	{"ID" : "96", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_16_fu_595.grp_KeccakP1600_Permute_s_fu_91.KeccakRoundConstants_U", "Parent" : "94"},
	{"ID" : "97", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_16_fu_595.grp_KeccakP1600_Permute_s_fu_91.stateAsWords_U", "Parent" : "94"},
	{"ID" : "98", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_16_fu_595.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225", "Parent" : "94", "Child" : ["99", "100"],
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
	{"ID" : "99", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_16_fu_595.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225.C_U", "Parent" : "98"},
	{"ID" : "100", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_16_fu_595.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225.D_U", "Parent" : "98"},
	{"ID" : "101", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_16_fu_595.grp_KeccakP1600_Permute_s_fu_91.grp_chi_fu_230", "Parent" : "94", "Child" : ["102"],
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
	{"ID" : "102", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_16_fu_595.grp_KeccakP1600_Permute_s_fu_91.grp_chi_fu_230.C_U", "Parent" : "101"},
	{"ID" : "103", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_16_fu_595.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235", "Parent" : "94", "Child" : ["104", "105"],
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
	{"ID" : "104", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_16_fu_595.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235.tempA_U", "Parent" : "103"},
	{"ID" : "105", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_16_fu_595.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "103"},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_12_fu_606", "Parent" : "35", "Child" : ["107"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "107", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "107", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "107", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "107", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_12_fu_606.grp_KeccakP1600_Permute_s_fu_91", "Parent" : "106", "Child" : ["108", "109", "110", "111", "114", "116"],
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
	{"ID" : "108", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_12_fu_606.grp_KeccakP1600_Permute_s_fu_91.KeccakRhoOffsets_U", "Parent" : "107"},
	{"ID" : "109", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_12_fu_606.grp_KeccakP1600_Permute_s_fu_91.KeccakRoundConstants_U", "Parent" : "107"},
	{"ID" : "110", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_12_fu_606.grp_KeccakP1600_Permute_s_fu_91.stateAsWords_U", "Parent" : "107"},
	{"ID" : "111", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_12_fu_606.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225", "Parent" : "107", "Child" : ["112", "113"],
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
	{"ID" : "112", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_12_fu_606.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225.C_U", "Parent" : "111"},
	{"ID" : "113", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_12_fu_606.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225.D_U", "Parent" : "111"},
	{"ID" : "114", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_12_fu_606.grp_KeccakP1600_Permute_s_fu_91.grp_chi_fu_230", "Parent" : "107", "Child" : ["115"],
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
	{"ID" : "115", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_12_fu_606.grp_KeccakP1600_Permute_s_fu_91.grp_chi_fu_230.C_U", "Parent" : "114"},
	{"ID" : "116", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_12_fu_606.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235", "Parent" : "107", "Child" : ["117", "118"],
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
	{"ID" : "117", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_12_fu_606.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235.tempA_U", "Parent" : "116"},
	{"ID" : "118", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_KeccakWidth1600_Spon_12_fu_606.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "116"},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_HashInit_fu_617", "Parent" : "35", "Child" : ["120"],
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
	{"ID" : "120", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_HashInit_fu_617.grp_KeccakWidth1600_Spon_11_fu_74", "Parent" : "119", "Child" : ["121"],
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
	{"ID" : "121", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_HashInit_fu_617.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54", "Parent" : "120", "Child" : ["122", "123", "124", "125", "128", "130"],
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
	{"ID" : "122", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_HashInit_fu_617.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.KeccakRhoOffsets_U", "Parent" : "121"},
	{"ID" : "123", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_HashInit_fu_617.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.KeccakRoundConstants_U", "Parent" : "121"},
	{"ID" : "124", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_HashInit_fu_617.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.stateAsWords_U", "Parent" : "121"},
	{"ID" : "125", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_HashInit_fu_617.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225", "Parent" : "121", "Child" : ["126", "127"],
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
	{"ID" : "126", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_HashInit_fu_617.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.C_U", "Parent" : "125"},
	{"ID" : "127", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_HashInit_fu_617.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.D_U", "Parent" : "125"},
	{"ID" : "128", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_HashInit_fu_617.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230", "Parent" : "121", "Child" : ["129"],
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
	{"ID" : "129", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_HashInit_fu_617.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230.C_U", "Parent" : "128"},
	{"ID" : "130", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_HashInit_fu_617.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235", "Parent" : "121", "Child" : ["131", "132"],
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
	{"ID" : "131", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_HashInit_fu_617.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.tempA_U", "Parent" : "130"},
	{"ID" : "132", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_HashInit_fu_617.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "130"},
	{"ID" : "133", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_HashFinal_fu_629", "Parent" : "35", "Child" : ["134"],
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
	{"ID" : "134", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_HashFinal_fu_629.grp_KeccakP1600_Permute_s_fu_54", "Parent" : "133", "Child" : ["135", "136", "137", "138", "141", "143"],
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
	{"ID" : "135", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_HashFinal_fu_629.grp_KeccakP1600_Permute_s_fu_54.KeccakRhoOffsets_U", "Parent" : "134"},
	{"ID" : "136", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_HashFinal_fu_629.grp_KeccakP1600_Permute_s_fu_54.KeccakRoundConstants_U", "Parent" : "134"},
	{"ID" : "137", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_HashFinal_fu_629.grp_KeccakP1600_Permute_s_fu_54.stateAsWords_U", "Parent" : "134"},
	{"ID" : "138", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_HashFinal_fu_629.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225", "Parent" : "134", "Child" : ["139", "140"],
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
	{"ID" : "139", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_HashFinal_fu_629.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.C_U", "Parent" : "138"},
	{"ID" : "140", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_HashFinal_fu_629.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.D_U", "Parent" : "138"},
	{"ID" : "141", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_HashFinal_fu_629.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230", "Parent" : "134", "Child" : ["142"],
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
	{"ID" : "142", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_HashFinal_fu_629.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230.C_U", "Parent" : "141"},
	{"ID" : "143", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_HashFinal_fu_629.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235", "Parent" : "134", "Child" : ["144", "145"],
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
	{"ID" : "144", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_HashFinal_fu_629.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.tempA_U", "Parent" : "143"},
	{"ID" : "145", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_H3_2_fu_17328.grp_HashFinal_fu_629.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "143"},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349", "Parent" : "11", "Child" : ["147", "148", "161", "174", "187", "200", "215"],
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
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_3_fu_160"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_173"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_186"},
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_2_fu_200"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdate_2_fu_217"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdate_2_fu_217"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdate_2_fu_217"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_232"}],
		"Port" : [
			{"Name" : "allSeeds_seed", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "187", "SubInstance" : "grp_KeccakWidth1600_Spon_2_fu_200", "Port" : "data"}]},
			{"Name" : "salt_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "148", "SubInstance" : "grp_KeccakWidth1600_Spon_3_fu_160", "Port" : "data_0"}]},
			{"Name" : "privateKey", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "200", "SubInstance" : "grp_HashUpdate_2_fu_217", "Port" : "data"}]},
			{"Name" : "publicKey", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "200", "SubInstance" : "grp_HashUpdate_2_fu_217", "Port" : "data"}]},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "200", "SubInstance" : "grp_HashUpdate_2_fu_217", "Port" : "data"}]},
			{"Name" : "message", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "161", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_173", "Port" : "data"}]},
			{"Name" : "messageByteLength", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "148", "SubInstance" : "grp_KeccakWidth1600_Spon_3_fu_160", "Port" : "KeccakRhoOffsets"},
					{"ID" : "161", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_173", "Port" : "KeccakRhoOffsets"},
					{"ID" : "174", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_186", "Port" : "KeccakRhoOffsets"},
					{"ID" : "187", "SubInstance" : "grp_KeccakWidth1600_Spon_2_fu_200", "Port" : "KeccakRhoOffsets"},
					{"ID" : "200", "SubInstance" : "grp_HashUpdate_2_fu_217", "Port" : "KeccakRhoOffsets"},
					{"ID" : "215", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_232", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "148", "SubInstance" : "grp_KeccakWidth1600_Spon_3_fu_160", "Port" : "KeccakRoundConstants"},
					{"ID" : "161", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_173", "Port" : "KeccakRoundConstants"},
					{"ID" : "174", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_186", "Port" : "KeccakRoundConstants"},
					{"ID" : "187", "SubInstance" : "grp_KeccakWidth1600_Spon_2_fu_200", "Port" : "KeccakRoundConstants"},
					{"ID" : "200", "SubInstance" : "grp_HashUpdate_2_fu_217", "Port" : "KeccakRoundConstants"},
					{"ID" : "215", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_232", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "147", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.ctx_sponge_state_U", "Parent" : "146"},
	{"ID" : "148", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_3_fu_160", "Parent" : "146", "Child" : ["149"],
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
					{"ID" : "149", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_244", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "149", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_244", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "149", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_244", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "149", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_3_fu_160.grp_KeccakP1600_Permute_s_fu_244", "Parent" : "148", "Child" : ["150", "151", "152", "153", "156", "158"],
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
	{"ID" : "150", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_3_fu_160.grp_KeccakP1600_Permute_s_fu_244.KeccakRhoOffsets_U", "Parent" : "149"},
	{"ID" : "151", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_3_fu_160.grp_KeccakP1600_Permute_s_fu_244.KeccakRoundConstants_U", "Parent" : "149"},
	{"ID" : "152", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_3_fu_160.grp_KeccakP1600_Permute_s_fu_244.stateAsWords_U", "Parent" : "149"},
	{"ID" : "153", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_3_fu_160.grp_KeccakP1600_Permute_s_fu_244.grp_theta_fu_225", "Parent" : "149", "Child" : ["154", "155"],
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
	{"ID" : "154", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_3_fu_160.grp_KeccakP1600_Permute_s_fu_244.grp_theta_fu_225.C_U", "Parent" : "153"},
	{"ID" : "155", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_3_fu_160.grp_KeccakP1600_Permute_s_fu_244.grp_theta_fu_225.D_U", "Parent" : "153"},
	{"ID" : "156", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_3_fu_160.grp_KeccakP1600_Permute_s_fu_244.grp_chi_fu_230", "Parent" : "149", "Child" : ["157"],
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
	{"ID" : "157", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_3_fu_160.grp_KeccakP1600_Permute_s_fu_244.grp_chi_fu_230.C_U", "Parent" : "156"},
	{"ID" : "158", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_3_fu_160.grp_KeccakP1600_Permute_s_fu_244.grp_pi_fu_235", "Parent" : "149", "Child" : ["159", "160"],
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
	{"ID" : "159", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_3_fu_160.grp_KeccakP1600_Permute_s_fu_244.grp_pi_fu_235.tempA_U", "Parent" : "158"},
	{"ID" : "160", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_3_fu_160.grp_KeccakP1600_Permute_s_fu_244.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "158"},
	{"ID" : "161", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_15_fu_173", "Parent" : "146", "Child" : ["162"],
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
					{"ID" : "162", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_158", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dataByteLen", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "162", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_158", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "162", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_158", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "162", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_15_fu_173.grp_KeccakP1600_Permute_s_fu_158", "Parent" : "161", "Child" : ["163", "164", "165", "166", "169", "171"],
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
	{"ID" : "163", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_15_fu_173.grp_KeccakP1600_Permute_s_fu_158.KeccakRhoOffsets_U", "Parent" : "162"},
	{"ID" : "164", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_15_fu_173.grp_KeccakP1600_Permute_s_fu_158.KeccakRoundConstants_U", "Parent" : "162"},
	{"ID" : "165", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_15_fu_173.grp_KeccakP1600_Permute_s_fu_158.stateAsWords_U", "Parent" : "162"},
	{"ID" : "166", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_15_fu_173.grp_KeccakP1600_Permute_s_fu_158.grp_theta_fu_225", "Parent" : "162", "Child" : ["167", "168"],
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
	{"ID" : "167", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_15_fu_173.grp_KeccakP1600_Permute_s_fu_158.grp_theta_fu_225.C_U", "Parent" : "166"},
	{"ID" : "168", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_15_fu_173.grp_KeccakP1600_Permute_s_fu_158.grp_theta_fu_225.D_U", "Parent" : "166"},
	{"ID" : "169", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_15_fu_173.grp_KeccakP1600_Permute_s_fu_158.grp_chi_fu_230", "Parent" : "162", "Child" : ["170"],
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
	{"ID" : "170", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_15_fu_173.grp_KeccakP1600_Permute_s_fu_158.grp_chi_fu_230.C_U", "Parent" : "169"},
	{"ID" : "171", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_15_fu_173.grp_KeccakP1600_Permute_s_fu_158.grp_pi_fu_235", "Parent" : "162", "Child" : ["172", "173"],
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
	{"ID" : "172", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_15_fu_173.grp_KeccakP1600_Permute_s_fu_158.grp_pi_fu_235.tempA_U", "Parent" : "171"},
	{"ID" : "173", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_15_fu_173.grp_KeccakP1600_Permute_s_fu_158.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "171"},
	{"ID" : "174", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_9_fu_186", "Parent" : "146", "Child" : ["175"],
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
					{"ID" : "175", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_173", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "175", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_173", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "175", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_173", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "175", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_9_fu_186.grp_KeccakP1600_Permute_s_fu_173", "Parent" : "174", "Child" : ["176", "177", "178", "179", "182", "184"],
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
	{"ID" : "176", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_9_fu_186.grp_KeccakP1600_Permute_s_fu_173.KeccakRhoOffsets_U", "Parent" : "175"},
	{"ID" : "177", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_9_fu_186.grp_KeccakP1600_Permute_s_fu_173.KeccakRoundConstants_U", "Parent" : "175"},
	{"ID" : "178", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_9_fu_186.grp_KeccakP1600_Permute_s_fu_173.stateAsWords_U", "Parent" : "175"},
	{"ID" : "179", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_9_fu_186.grp_KeccakP1600_Permute_s_fu_173.grp_theta_fu_225", "Parent" : "175", "Child" : ["180", "181"],
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
	{"ID" : "180", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_9_fu_186.grp_KeccakP1600_Permute_s_fu_173.grp_theta_fu_225.C_U", "Parent" : "179"},
	{"ID" : "181", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_9_fu_186.grp_KeccakP1600_Permute_s_fu_173.grp_theta_fu_225.D_U", "Parent" : "179"},
	{"ID" : "182", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_9_fu_186.grp_KeccakP1600_Permute_s_fu_173.grp_chi_fu_230", "Parent" : "175", "Child" : ["183"],
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
	{"ID" : "183", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_9_fu_186.grp_KeccakP1600_Permute_s_fu_173.grp_chi_fu_230.C_U", "Parent" : "182"},
	{"ID" : "184", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_9_fu_186.grp_KeccakP1600_Permute_s_fu_173.grp_pi_fu_235", "Parent" : "175", "Child" : ["185", "186"],
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
	{"ID" : "185", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_9_fu_186.grp_KeccakP1600_Permute_s_fu_173.grp_pi_fu_235.tempA_U", "Parent" : "184"},
	{"ID" : "186", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_9_fu_186.grp_KeccakP1600_Permute_s_fu_173.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "184"},
	{"ID" : "187", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_2_fu_200", "Parent" : "146", "Child" : ["188"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_199"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_199"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "188", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_199", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "188", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_199", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "188", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_199", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "188", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_2_fu_200.grp_KeccakP1600_Permute_s_fu_199", "Parent" : "187", "Child" : ["189", "190", "191", "192", "195", "197"],
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
	{"ID" : "189", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_2_fu_200.grp_KeccakP1600_Permute_s_fu_199.KeccakRhoOffsets_U", "Parent" : "188"},
	{"ID" : "190", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_2_fu_200.grp_KeccakP1600_Permute_s_fu_199.KeccakRoundConstants_U", "Parent" : "188"},
	{"ID" : "191", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_2_fu_200.grp_KeccakP1600_Permute_s_fu_199.stateAsWords_U", "Parent" : "188"},
	{"ID" : "192", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_2_fu_200.grp_KeccakP1600_Permute_s_fu_199.grp_theta_fu_225", "Parent" : "188", "Child" : ["193", "194"],
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
	{"ID" : "193", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_2_fu_200.grp_KeccakP1600_Permute_s_fu_199.grp_theta_fu_225.C_U", "Parent" : "192"},
	{"ID" : "194", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_2_fu_200.grp_KeccakP1600_Permute_s_fu_199.grp_theta_fu_225.D_U", "Parent" : "192"},
	{"ID" : "195", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_2_fu_200.grp_KeccakP1600_Permute_s_fu_199.grp_chi_fu_230", "Parent" : "188", "Child" : ["196"],
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
	{"ID" : "196", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_2_fu_200.grp_KeccakP1600_Permute_s_fu_199.grp_chi_fu_230.C_U", "Parent" : "195"},
	{"ID" : "197", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_2_fu_200.grp_KeccakP1600_Permute_s_fu_199.grp_pi_fu_235", "Parent" : "188", "Child" : ["198", "199"],
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
	{"ID" : "198", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_2_fu_200.grp_KeccakP1600_Permute_s_fu_199.grp_pi_fu_235.tempA_U", "Parent" : "197"},
	{"ID" : "199", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakWidth1600_Spon_2_fu_200.grp_KeccakP1600_Permute_s_fu_199.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "197"},
	{"ID" : "200", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_HashUpdate_2_fu_217", "Parent" : "146", "Child" : ["201", "202"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_16_fu_161"}],
		"Port" : [
			{"Name" : "ctx_sponge_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "202", "SubInstance" : "grp_KeccakWidth1600_Spon_16_fu_161", "Port" : "instance_state"}]},
			{"Name" : "ctx_sponge_byteIOInd", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "202", "SubInstance" : "grp_KeccakWidth1600_Spon_16_fu_161", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "202", "SubInstance" : "grp_KeccakWidth1600_Spon_16_fu_161", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "201", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_HashUpdate_2_fu_217.temp_U", "Parent" : "200"},
	{"ID" : "202", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_HashUpdate_2_fu_217.grp_KeccakWidth1600_Spon_16_fu_161", "Parent" : "200", "Child" : ["203"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "203", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_HashUpdate_2_fu_217.grp_KeccakWidth1600_Spon_16_fu_161.grp_KeccakP1600_Permute_s_fu_91", "Parent" : "202", "Child" : ["204", "205", "206", "207", "210", "212"],
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
	{"ID" : "204", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_HashUpdate_2_fu_217.grp_KeccakWidth1600_Spon_16_fu_161.grp_KeccakP1600_Permute_s_fu_91.KeccakRhoOffsets_U", "Parent" : "203"},
	{"ID" : "205", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_HashUpdate_2_fu_217.grp_KeccakWidth1600_Spon_16_fu_161.grp_KeccakP1600_Permute_s_fu_91.KeccakRoundConstants_U", "Parent" : "203"},
	{"ID" : "206", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_HashUpdate_2_fu_217.grp_KeccakWidth1600_Spon_16_fu_161.grp_KeccakP1600_Permute_s_fu_91.stateAsWords_U", "Parent" : "203"},
	{"ID" : "207", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_HashUpdate_2_fu_217.grp_KeccakWidth1600_Spon_16_fu_161.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225", "Parent" : "203", "Child" : ["208", "209"],
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
	{"ID" : "208", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_HashUpdate_2_fu_217.grp_KeccakWidth1600_Spon_16_fu_161.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225.C_U", "Parent" : "207"},
	{"ID" : "209", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_HashUpdate_2_fu_217.grp_KeccakWidth1600_Spon_16_fu_161.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225.D_U", "Parent" : "207"},
	{"ID" : "210", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_HashUpdate_2_fu_217.grp_KeccakWidth1600_Spon_16_fu_161.grp_KeccakP1600_Permute_s_fu_91.grp_chi_fu_230", "Parent" : "203", "Child" : ["211"],
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
	{"ID" : "211", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_HashUpdate_2_fu_217.grp_KeccakWidth1600_Spon_16_fu_161.grp_KeccakP1600_Permute_s_fu_91.grp_chi_fu_230.C_U", "Parent" : "210"},
	{"ID" : "212", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_HashUpdate_2_fu_217.grp_KeccakWidth1600_Spon_16_fu_161.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235", "Parent" : "203", "Child" : ["213", "214"],
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
	{"ID" : "213", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_HashUpdate_2_fu_217.grp_KeccakWidth1600_Spon_16_fu_161.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235.tempA_U", "Parent" : "212"},
	{"ID" : "214", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_HashUpdate_2_fu_217.grp_KeccakWidth1600_Spon_16_fu_161.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "212"},
	{"ID" : "215", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakP1600_Permute_s_fu_232", "Parent" : "146", "Child" : ["216", "217", "218", "219", "222", "224"],
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
	{"ID" : "216", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakP1600_Permute_s_fu_232.KeccakRhoOffsets_U", "Parent" : "215"},
	{"ID" : "217", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakP1600_Permute_s_fu_232.KeccakRoundConstants_U", "Parent" : "215"},
	{"ID" : "218", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakP1600_Permute_s_fu_232.stateAsWords_U", "Parent" : "215"},
	{"ID" : "219", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakP1600_Permute_s_fu_232.grp_theta_fu_225", "Parent" : "215", "Child" : ["220", "221"],
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
	{"ID" : "220", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakP1600_Permute_s_fu_232.grp_theta_fu_225.C_U", "Parent" : "219"},
	{"ID" : "221", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakP1600_Permute_s_fu_232.grp_theta_fu_225.D_U", "Parent" : "219"},
	{"ID" : "222", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakP1600_Permute_s_fu_232.grp_chi_fu_230", "Parent" : "215", "Child" : ["223"],
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
	{"ID" : "223", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakP1600_Permute_s_fu_232.grp_chi_fu_230.C_U", "Parent" : "222"},
	{"ID" : "224", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakP1600_Permute_s_fu_232.grp_pi_fu_235", "Parent" : "215", "Child" : ["225", "226"],
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
	{"ID" : "225", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakP1600_Permute_s_fu_232.grp_pi_fu_235.tempA_U", "Parent" : "224"},
	{"ID" : "226", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_17349.grp_KeccakP1600_Permute_s_fu_232.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "224"},
	{"ID" : "227", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371", "Parent" : "11", "Child" : ["228", "229", "233", "237", "245", "246", "247", "248", "249", "250", "251", "252", "253", "254", "255", "256", "257"],
		"CDFG" : "mpc_LowMC_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1014493", "EstimateLatencyMax" : "1014493",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_969"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_969"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_969"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_969"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_969"},
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_969"},
			{"State" : "ap_ST_fsm_state44", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_1_fu_990"},
			{"State" : "ap_ST_fsm_state46", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_1_fu_990"},
			{"State" : "ap_ST_fsm_state48", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_1_fu_990"},
			{"State" : "ap_ST_fsm_state30", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mpc_AND_2_fu_1003"},
			{"State" : "ap_ST_fsm_state32", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mpc_AND_2_fu_1003"},
			{"State" : "ap_ST_fsm_state34", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mpc_AND_2_fu_1003"}],
		"Port" : [
			{"Name" : "tapes_tape", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "237", "SubInstance" : "grp_mpc_AND_2_fu_1003", "Port" : "rand_tape"}]},
			{"Name" : "views_inputShare", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "229", "SubInstance" : "grp_matrix_mul_fu_969", "Port" : "state"}]},
			{"Name" : "views_inputShare_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "views_communicatedBi", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "237", "SubInstance" : "grp_mpc_AND_2_fu_1003", "Port" : "views_communicatedBi"}]},
			{"Name" : "views_outputShare", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "slab", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "229", "SubInstance" : "grp_matrix_mul_fu_969", "Port" : "output_r"},
					{"ID" : "233", "SubInstance" : "grp_matrix_mul_1_fu_990", "Port" : "output_r"}]},
			{"Name" : "temp_matrix", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "229", "SubInstance" : "grp_matrix_mul_fu_969", "Port" : "temp_matrix"}]},
			{"Name" : "temp_matrix2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "233", "SubInstance" : "grp_matrix_mul_1_fu_990", "Port" : "temp_matrix2"}]},
			{"Name" : "temp_matrix3", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "228", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371.temp_matrix3_U", "Parent" : "227"},
	{"ID" : "229", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371.grp_matrix_mul_fu_969", "Parent" : "227", "Child" : ["230", "231", "232"],
		"CDFG" : "matrix_mul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5390", "EstimateLatencyMax" : "5390",
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
	{"ID" : "230", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371.grp_matrix_mul_fu_969.temp_matrix_U", "Parent" : "229"},
	{"ID" : "231", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371.grp_matrix_mul_fu_969.prod_U", "Parent" : "229"},
	{"ID" : "232", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371.grp_matrix_mul_fu_969.temp_U", "Parent" : "229"},
	{"ID" : "233", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371.grp_matrix_mul_1_fu_990", "Parent" : "227", "Child" : ["234", "235", "236"],
		"CDFG" : "matrix_mul_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5390", "EstimateLatencyMax" : "5390",
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
	{"ID" : "234", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371.grp_matrix_mul_1_fu_990.temp_matrix2_U", "Parent" : "233"},
	{"ID" : "235", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371.grp_matrix_mul_1_fu_990.prod_U", "Parent" : "233"},
	{"ID" : "236", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371.grp_matrix_mul_1_fu_990.temp_U", "Parent" : "233"},
	{"ID" : "237", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371.grp_mpc_AND_2_fu_1003", "Parent" : "227", "Child" : ["238", "239", "240", "241", "242", "243", "244"],
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
	{"ID" : "238", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371.grp_mpc_AND_2_fu_1003.crypto_sign_mux_3hbi_U85", "Parent" : "237"},
	{"ID" : "239", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371.grp_mpc_AND_2_fu_1003.crypto_sign_mux_3hbi_U86", "Parent" : "237"},
	{"ID" : "240", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371.grp_mpc_AND_2_fu_1003.crypto_sign_mux_3hbi_U87", "Parent" : "237"},
	{"ID" : "241", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371.grp_mpc_AND_2_fu_1003.crypto_sign_mux_3hbi_U88", "Parent" : "237"},
	{"ID" : "242", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371.grp_mpc_AND_2_fu_1003.crypto_sign_mux_3hbi_U89", "Parent" : "237"},
	{"ID" : "243", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371.grp_mpc_AND_2_fu_1003.crypto_sign_mux_3hbi_U90", "Parent" : "237"},
	{"ID" : "244", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371.grp_mpc_AND_2_fu_1003.crypto_sign_ama_aibs_U91", "Parent" : "237"},
	{"ID" : "245", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371.crypto_sign_mux_4lbW_U111", "Parent" : "227"},
	{"ID" : "246", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371.crypto_sign_mux_3hbi_U112", "Parent" : "227"},
	{"ID" : "247", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371.crypto_sign_mux_3hbi_U113", "Parent" : "227"},
	{"ID" : "248", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371.crypto_sign_mux_3hbi_U114", "Parent" : "227"},
	{"ID" : "249", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371.crypto_sign_mux_3hbi_U115", "Parent" : "227"},
	{"ID" : "250", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371.crypto_sign_mux_3hbi_U116", "Parent" : "227"},
	{"ID" : "251", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371.crypto_sign_mux_3hbi_U117", "Parent" : "227"},
	{"ID" : "252", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371.crypto_sign_mux_3hbi_U118", "Parent" : "227"},
	{"ID" : "253", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371.crypto_sign_mux_3hbi_U119", "Parent" : "227"},
	{"ID" : "254", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371.crypto_sign_mux_3hbi_U120", "Parent" : "227"},
	{"ID" : "255", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371.crypto_sign_mux_4lbW_U121", "Parent" : "227"},
	{"ID" : "256", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371.crypto_sign_mux_4lbW_U122", "Parent" : "227"},
	{"ID" : "257", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_17371.crypto_sign_mux_4lbW_U123", "Parent" : "227"},
	{"ID" : "258", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_1_fu_17390", "Parent" : "11", "Child" : ["259"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_244"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_244"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_244"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "259", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_244", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dataByteLen", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "259", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_244", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "259", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_244", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "259", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_1_fu_17390.grp_KeccakP1600_Permute_s_fu_244", "Parent" : "258", "Child" : ["260", "261", "262", "263", "266", "268"],
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
	{"ID" : "260", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_1_fu_17390.grp_KeccakP1600_Permute_s_fu_244.KeccakRhoOffsets_U", "Parent" : "259"},
	{"ID" : "261", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_1_fu_17390.grp_KeccakP1600_Permute_s_fu_244.KeccakRoundConstants_U", "Parent" : "259"},
	{"ID" : "262", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_1_fu_17390.grp_KeccakP1600_Permute_s_fu_244.stateAsWords_U", "Parent" : "259"},
	{"ID" : "263", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_1_fu_17390.grp_KeccakP1600_Permute_s_fu_244.grp_theta_fu_225", "Parent" : "259", "Child" : ["264", "265"],
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
	{"ID" : "264", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_1_fu_17390.grp_KeccakP1600_Permute_s_fu_244.grp_theta_fu_225.C_U", "Parent" : "263"},
	{"ID" : "265", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_1_fu_17390.grp_KeccakP1600_Permute_s_fu_244.grp_theta_fu_225.D_U", "Parent" : "263"},
	{"ID" : "266", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_1_fu_17390.grp_KeccakP1600_Permute_s_fu_244.grp_chi_fu_230", "Parent" : "259", "Child" : ["267"],
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
	{"ID" : "267", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_1_fu_17390.grp_KeccakP1600_Permute_s_fu_244.grp_chi_fu_230.C_U", "Parent" : "266"},
	{"ID" : "268", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_1_fu_17390.grp_KeccakP1600_Permute_s_fu_244.grp_pi_fu_235", "Parent" : "259", "Child" : ["269", "270"],
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
	{"ID" : "269", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_1_fu_17390.grp_KeccakP1600_Permute_s_fu_244.grp_pi_fu_235.tempA_U", "Parent" : "268"},
	{"ID" : "270", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_1_fu_17390.grp_KeccakP1600_Permute_s_fu_244.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "268"},
	{"ID" : "271", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_5_fu_17405", "Parent" : "11", "Child" : ["272"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_242"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_242"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_242"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "272", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_242", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dataByteLen", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "272", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_242", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "272", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_242", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "272", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_5_fu_17405.grp_KeccakP1600_Permute_s_fu_242", "Parent" : "271", "Child" : ["273", "274", "275", "276", "279", "281"],
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
	{"ID" : "273", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_5_fu_17405.grp_KeccakP1600_Permute_s_fu_242.KeccakRhoOffsets_U", "Parent" : "272"},
	{"ID" : "274", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_5_fu_17405.grp_KeccakP1600_Permute_s_fu_242.KeccakRoundConstants_U", "Parent" : "272"},
	{"ID" : "275", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_5_fu_17405.grp_KeccakP1600_Permute_s_fu_242.stateAsWords_U", "Parent" : "272"},
	{"ID" : "276", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_5_fu_17405.grp_KeccakP1600_Permute_s_fu_242.grp_theta_fu_225", "Parent" : "272", "Child" : ["277", "278"],
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
	{"ID" : "277", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_5_fu_17405.grp_KeccakP1600_Permute_s_fu_242.grp_theta_fu_225.C_U", "Parent" : "276"},
	{"ID" : "278", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_5_fu_17405.grp_KeccakP1600_Permute_s_fu_242.grp_theta_fu_225.D_U", "Parent" : "276"},
	{"ID" : "279", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_5_fu_17405.grp_KeccakP1600_Permute_s_fu_242.grp_chi_fu_230", "Parent" : "272", "Child" : ["280"],
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
	{"ID" : "280", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_5_fu_17405.grp_KeccakP1600_Permute_s_fu_242.grp_chi_fu_230.C_U", "Parent" : "279"},
	{"ID" : "281", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_5_fu_17405.grp_KeccakP1600_Permute_s_fu_242.grp_pi_fu_235", "Parent" : "272", "Child" : ["282", "283"],
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
	{"ID" : "282", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_5_fu_17405.grp_KeccakP1600_Permute_s_fu_242.grp_pi_fu_235.tempA_U", "Parent" : "281"},
	{"ID" : "283", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_5_fu_17405.grp_KeccakP1600_Permute_s_fu_242.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "281"},
	{"ID" : "284", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_8_fu_17420", "Parent" : "11", "Child" : ["285"],
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
					{"ID" : "285", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "285", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "285", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "285", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_8_fu_17420.grp_KeccakP1600_Permute_s_fu_176", "Parent" : "284", "Child" : ["286", "287", "288", "289", "292", "294"],
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
	{"ID" : "286", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_8_fu_17420.grp_KeccakP1600_Permute_s_fu_176.KeccakRhoOffsets_U", "Parent" : "285"},
	{"ID" : "287", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_8_fu_17420.grp_KeccakP1600_Permute_s_fu_176.KeccakRoundConstants_U", "Parent" : "285"},
	{"ID" : "288", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_8_fu_17420.grp_KeccakP1600_Permute_s_fu_176.stateAsWords_U", "Parent" : "285"},
	{"ID" : "289", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_8_fu_17420.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225", "Parent" : "285", "Child" : ["290", "291"],
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
	{"ID" : "290", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_8_fu_17420.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.C_U", "Parent" : "289"},
	{"ID" : "291", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_8_fu_17420.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.D_U", "Parent" : "289"},
	{"ID" : "292", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_8_fu_17420.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230", "Parent" : "285", "Child" : ["293"],
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
	{"ID" : "293", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_8_fu_17420.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230.C_U", "Parent" : "292"},
	{"ID" : "294", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_8_fu_17420.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235", "Parent" : "285", "Child" : ["295", "296"],
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
	{"ID" : "295", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_8_fu_17420.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.tempA_U", "Parent" : "294"},
	{"ID" : "296", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_8_fu_17420.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "294"},
	{"ID" : "297", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_9_fu_17432", "Parent" : "11", "Child" : ["298"],
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
					{"ID" : "298", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_173", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "298", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_173", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "298", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_173", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "298", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_9_fu_17432.grp_KeccakP1600_Permute_s_fu_173", "Parent" : "297", "Child" : ["299", "300", "301", "302", "305", "307"],
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
	{"ID" : "299", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_9_fu_17432.grp_KeccakP1600_Permute_s_fu_173.KeccakRhoOffsets_U", "Parent" : "298"},
	{"ID" : "300", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_9_fu_17432.grp_KeccakP1600_Permute_s_fu_173.KeccakRoundConstants_U", "Parent" : "298"},
	{"ID" : "301", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_9_fu_17432.grp_KeccakP1600_Permute_s_fu_173.stateAsWords_U", "Parent" : "298"},
	{"ID" : "302", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_9_fu_17432.grp_KeccakP1600_Permute_s_fu_173.grp_theta_fu_225", "Parent" : "298", "Child" : ["303", "304"],
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
	{"ID" : "303", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_9_fu_17432.grp_KeccakP1600_Permute_s_fu_173.grp_theta_fu_225.C_U", "Parent" : "302"},
	{"ID" : "304", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_9_fu_17432.grp_KeccakP1600_Permute_s_fu_173.grp_theta_fu_225.D_U", "Parent" : "302"},
	{"ID" : "305", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_9_fu_17432.grp_KeccakP1600_Permute_s_fu_173.grp_chi_fu_230", "Parent" : "298", "Child" : ["306"],
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
	{"ID" : "306", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_9_fu_17432.grp_KeccakP1600_Permute_s_fu_173.grp_chi_fu_230.C_U", "Parent" : "305"},
	{"ID" : "307", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_9_fu_17432.grp_KeccakP1600_Permute_s_fu_173.grp_pi_fu_235", "Parent" : "298", "Child" : ["308", "309"],
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
	{"ID" : "308", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_9_fu_17432.grp_KeccakP1600_Permute_s_fu_173.grp_pi_fu_235.tempA_U", "Parent" : "307"},
	{"ID" : "309", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_9_fu_17432.grp_KeccakP1600_Permute_s_fu_173.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "307"},
	{"ID" : "310", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashUpdate_2_2_fu_17448", "Parent" : "11", "Child" : ["311", "312"],
		"CDFG" : "HashUpdate_2_2",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_16_fu_193"}],
		"Port" : [
			{"Name" : "ctx_sponge_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "312", "SubInstance" : "grp_KeccakWidth1600_Spon_16_fu_193", "Port" : "instance_state"}]},
			{"Name" : "ctx_sponge_byteIOInd", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "312", "SubInstance" : "grp_KeccakWidth1600_Spon_16_fu_193", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "312", "SubInstance" : "grp_KeccakWidth1600_Spon_16_fu_193", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "311", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashUpdate_2_2_fu_17448.temp_U", "Parent" : "310"},
	{"ID" : "312", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashUpdate_2_2_fu_17448.grp_KeccakWidth1600_Spon_16_fu_193", "Parent" : "310", "Child" : ["313"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "313", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "313", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "313", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "313", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashUpdate_2_2_fu_17448.grp_KeccakWidth1600_Spon_16_fu_193.grp_KeccakP1600_Permute_s_fu_91", "Parent" : "312", "Child" : ["314", "315", "316", "317", "320", "322"],
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
	{"ID" : "314", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashUpdate_2_2_fu_17448.grp_KeccakWidth1600_Spon_16_fu_193.grp_KeccakP1600_Permute_s_fu_91.KeccakRhoOffsets_U", "Parent" : "313"},
	{"ID" : "315", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashUpdate_2_2_fu_17448.grp_KeccakWidth1600_Spon_16_fu_193.grp_KeccakP1600_Permute_s_fu_91.KeccakRoundConstants_U", "Parent" : "313"},
	{"ID" : "316", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashUpdate_2_2_fu_17448.grp_KeccakWidth1600_Spon_16_fu_193.grp_KeccakP1600_Permute_s_fu_91.stateAsWords_U", "Parent" : "313"},
	{"ID" : "317", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashUpdate_2_2_fu_17448.grp_KeccakWidth1600_Spon_16_fu_193.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225", "Parent" : "313", "Child" : ["318", "319"],
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
	{"ID" : "318", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashUpdate_2_2_fu_17448.grp_KeccakWidth1600_Spon_16_fu_193.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225.C_U", "Parent" : "317"},
	{"ID" : "319", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashUpdate_2_2_fu_17448.grp_KeccakWidth1600_Spon_16_fu_193.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225.D_U", "Parent" : "317"},
	{"ID" : "320", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashUpdate_2_2_fu_17448.grp_KeccakWidth1600_Spon_16_fu_193.grp_KeccakP1600_Permute_s_fu_91.grp_chi_fu_230", "Parent" : "313", "Child" : ["321"],
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
	{"ID" : "321", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashUpdate_2_2_fu_17448.grp_KeccakWidth1600_Spon_16_fu_193.grp_KeccakP1600_Permute_s_fu_91.grp_chi_fu_230.C_U", "Parent" : "320"},
	{"ID" : "322", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashUpdate_2_2_fu_17448.grp_KeccakWidth1600_Spon_16_fu_193.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235", "Parent" : "313", "Child" : ["323", "324"],
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
	{"ID" : "323", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashUpdate_2_2_fu_17448.grp_KeccakWidth1600_Spon_16_fu_193.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235.tempA_U", "Parent" : "322"},
	{"ID" : "324", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashUpdate_2_2_fu_17448.grp_KeccakWidth1600_Spon_16_fu_193.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "322"},
	{"ID" : "325", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_fu_17465", "Parent" : "11", "Child" : ["326"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_186"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_186"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "326", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_186", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "326", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_186", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "326", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_186", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "326", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_fu_17465.grp_KeccakP1600_Permute_s_fu_186", "Parent" : "325", "Child" : ["327", "328", "329", "330", "333", "335"],
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
	{"ID" : "327", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_fu_17465.grp_KeccakP1600_Permute_s_fu_186.KeccakRhoOffsets_U", "Parent" : "326"},
	{"ID" : "328", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_fu_17465.grp_KeccakP1600_Permute_s_fu_186.KeccakRoundConstants_U", "Parent" : "326"},
	{"ID" : "329", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_fu_17465.grp_KeccakP1600_Permute_s_fu_186.stateAsWords_U", "Parent" : "326"},
	{"ID" : "330", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_fu_17465.grp_KeccakP1600_Permute_s_fu_186.grp_theta_fu_225", "Parent" : "326", "Child" : ["331", "332"],
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
	{"ID" : "331", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_fu_17465.grp_KeccakP1600_Permute_s_fu_186.grp_theta_fu_225.C_U", "Parent" : "330"},
	{"ID" : "332", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_fu_17465.grp_KeccakP1600_Permute_s_fu_186.grp_theta_fu_225.D_U", "Parent" : "330"},
	{"ID" : "333", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_fu_17465.grp_KeccakP1600_Permute_s_fu_186.grp_chi_fu_230", "Parent" : "326", "Child" : ["334"],
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
	{"ID" : "334", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_fu_17465.grp_KeccakP1600_Permute_s_fu_186.grp_chi_fu_230.C_U", "Parent" : "333"},
	{"ID" : "335", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_fu_17465.grp_KeccakP1600_Permute_s_fu_186.grp_pi_fu_235", "Parent" : "326", "Child" : ["336", "337"],
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
	{"ID" : "336", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_fu_17465.grp_KeccakP1600_Permute_s_fu_186.grp_pi_fu_235.tempA_U", "Parent" : "335"},
	{"ID" : "337", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_fu_17465.grp_KeccakP1600_Permute_s_fu_186.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "335"},
	{"ID" : "338", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_14_fu_17483", "Parent" : "11", "Child" : ["339"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_123"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "339", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_123", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "339", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_123", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "339", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_123", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "339", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_14_fu_17483.grp_KeccakP1600_Permute_s_fu_123", "Parent" : "338", "Child" : ["340", "341", "342", "343", "346", "348"],
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
	{"ID" : "340", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_14_fu_17483.grp_KeccakP1600_Permute_s_fu_123.KeccakRhoOffsets_U", "Parent" : "339"},
	{"ID" : "341", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_14_fu_17483.grp_KeccakP1600_Permute_s_fu_123.KeccakRoundConstants_U", "Parent" : "339"},
	{"ID" : "342", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_14_fu_17483.grp_KeccakP1600_Permute_s_fu_123.stateAsWords_U", "Parent" : "339"},
	{"ID" : "343", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_14_fu_17483.grp_KeccakP1600_Permute_s_fu_123.grp_theta_fu_225", "Parent" : "339", "Child" : ["344", "345"],
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
	{"ID" : "344", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_14_fu_17483.grp_KeccakP1600_Permute_s_fu_123.grp_theta_fu_225.C_U", "Parent" : "343"},
	{"ID" : "345", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_14_fu_17483.grp_KeccakP1600_Permute_s_fu_123.grp_theta_fu_225.D_U", "Parent" : "343"},
	{"ID" : "346", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_14_fu_17483.grp_KeccakP1600_Permute_s_fu_123.grp_chi_fu_230", "Parent" : "339", "Child" : ["347"],
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
	{"ID" : "347", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_14_fu_17483.grp_KeccakP1600_Permute_s_fu_123.grp_chi_fu_230.C_U", "Parent" : "346"},
	{"ID" : "348", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_14_fu_17483.grp_KeccakP1600_Permute_s_fu_123.grp_pi_fu_235", "Parent" : "339", "Child" : ["349", "350"],
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
	{"ID" : "349", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_14_fu_17483.grp_KeccakP1600_Permute_s_fu_123.grp_pi_fu_235.tempA_U", "Parent" : "348"},
	{"ID" : "350", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_14_fu_17483.grp_KeccakP1600_Permute_s_fu_123.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "348"},
	{"ID" : "351", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_7_fu_17500", "Parent" : "11", "Child" : ["352"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_123"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "352", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_123", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "352", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_123", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "352", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_123", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "352", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_7_fu_17500.grp_KeccakP1600_Permute_s_fu_123", "Parent" : "351", "Child" : ["353", "354", "355", "356", "359", "361"],
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
	{"ID" : "353", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_7_fu_17500.grp_KeccakP1600_Permute_s_fu_123.KeccakRhoOffsets_U", "Parent" : "352"},
	{"ID" : "354", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_7_fu_17500.grp_KeccakP1600_Permute_s_fu_123.KeccakRoundConstants_U", "Parent" : "352"},
	{"ID" : "355", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_7_fu_17500.grp_KeccakP1600_Permute_s_fu_123.stateAsWords_U", "Parent" : "352"},
	{"ID" : "356", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_7_fu_17500.grp_KeccakP1600_Permute_s_fu_123.grp_theta_fu_225", "Parent" : "352", "Child" : ["357", "358"],
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
	{"ID" : "357", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_7_fu_17500.grp_KeccakP1600_Permute_s_fu_123.grp_theta_fu_225.C_U", "Parent" : "356"},
	{"ID" : "358", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_7_fu_17500.grp_KeccakP1600_Permute_s_fu_123.grp_theta_fu_225.D_U", "Parent" : "356"},
	{"ID" : "359", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_7_fu_17500.grp_KeccakP1600_Permute_s_fu_123.grp_chi_fu_230", "Parent" : "352", "Child" : ["360"],
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
	{"ID" : "360", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_7_fu_17500.grp_KeccakP1600_Permute_s_fu_123.grp_chi_fu_230.C_U", "Parent" : "359"},
	{"ID" : "361", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_7_fu_17500.grp_KeccakP1600_Permute_s_fu_123.grp_pi_fu_235", "Parent" : "352", "Child" : ["362", "363"],
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
	{"ID" : "362", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_7_fu_17500.grp_KeccakP1600_Permute_s_fu_123.grp_pi_fu_235.tempA_U", "Parent" : "361"},
	{"ID" : "363", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_7_fu_17500.grp_KeccakP1600_Permute_s_fu_123.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "361"},
	{"ID" : "364", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_10_fu_17517", "Parent" : "11", "Child" : ["365", "377"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_117"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "365", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_117", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "365", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_117", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "365", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_117", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "365", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_10_fu_17517.grp_KeccakP1600_Permute_s_fu_117", "Parent" : "364", "Child" : ["366", "367", "368", "369", "372", "374"],
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
	{"ID" : "366", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_10_fu_17517.grp_KeccakP1600_Permute_s_fu_117.KeccakRhoOffsets_U", "Parent" : "365"},
	{"ID" : "367", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_10_fu_17517.grp_KeccakP1600_Permute_s_fu_117.KeccakRoundConstants_U", "Parent" : "365"},
	{"ID" : "368", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_10_fu_17517.grp_KeccakP1600_Permute_s_fu_117.stateAsWords_U", "Parent" : "365"},
	{"ID" : "369", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_10_fu_17517.grp_KeccakP1600_Permute_s_fu_117.grp_theta_fu_225", "Parent" : "365", "Child" : ["370", "371"],
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
	{"ID" : "370", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_10_fu_17517.grp_KeccakP1600_Permute_s_fu_117.grp_theta_fu_225.C_U", "Parent" : "369"},
	{"ID" : "371", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_10_fu_17517.grp_KeccakP1600_Permute_s_fu_117.grp_theta_fu_225.D_U", "Parent" : "369"},
	{"ID" : "372", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_10_fu_17517.grp_KeccakP1600_Permute_s_fu_117.grp_chi_fu_230", "Parent" : "365", "Child" : ["373"],
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
	{"ID" : "373", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_10_fu_17517.grp_KeccakP1600_Permute_s_fu_117.grp_chi_fu_230.C_U", "Parent" : "372"},
	{"ID" : "374", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_10_fu_17517.grp_KeccakP1600_Permute_s_fu_117.grp_pi_fu_235", "Parent" : "365", "Child" : ["375", "376"],
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
	{"ID" : "375", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_10_fu_17517.grp_KeccakP1600_Permute_s_fu_117.grp_pi_fu_235.tempA_U", "Parent" : "374"},
	{"ID" : "376", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_10_fu_17517.grp_KeccakP1600_Permute_s_fu_117.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "374"},
	{"ID" : "377", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_10_fu_17517.crypto_sign_am_admb6_U149", "Parent" : "364"},
	{"ID" : "378", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_6_fu_17534", "Parent" : "11", "Child" : ["379"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_93"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "379", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_93", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "379", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_93", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "379", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_93", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "379", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_6_fu_17534.grp_KeccakP1600_Permute_s_fu_93", "Parent" : "378", "Child" : ["380", "381", "382", "383", "386", "388"],
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
	{"ID" : "380", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_6_fu_17534.grp_KeccakP1600_Permute_s_fu_93.KeccakRhoOffsets_U", "Parent" : "379"},
	{"ID" : "381", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_6_fu_17534.grp_KeccakP1600_Permute_s_fu_93.KeccakRoundConstants_U", "Parent" : "379"},
	{"ID" : "382", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_6_fu_17534.grp_KeccakP1600_Permute_s_fu_93.stateAsWords_U", "Parent" : "379"},
	{"ID" : "383", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_6_fu_17534.grp_KeccakP1600_Permute_s_fu_93.grp_theta_fu_225", "Parent" : "379", "Child" : ["384", "385"],
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
	{"ID" : "384", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_6_fu_17534.grp_KeccakP1600_Permute_s_fu_93.grp_theta_fu_225.C_U", "Parent" : "383"},
	{"ID" : "385", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_6_fu_17534.grp_KeccakP1600_Permute_s_fu_93.grp_theta_fu_225.D_U", "Parent" : "383"},
	{"ID" : "386", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_6_fu_17534.grp_KeccakP1600_Permute_s_fu_93.grp_chi_fu_230", "Parent" : "379", "Child" : ["387"],
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
	{"ID" : "387", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_6_fu_17534.grp_KeccakP1600_Permute_s_fu_93.grp_chi_fu_230.C_U", "Parent" : "386"},
	{"ID" : "388", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_6_fu_17534.grp_KeccakP1600_Permute_s_fu_93.grp_pi_fu_235", "Parent" : "379", "Child" : ["389", "390"],
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
	{"ID" : "389", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_6_fu_17534.grp_KeccakP1600_Permute_s_fu_93.grp_pi_fu_235.tempA_U", "Parent" : "388"},
	{"ID" : "390", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_6_fu_17534.grp_KeccakP1600_Permute_s_fu_93.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "388"},
	{"ID" : "391", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_13_fu_17545", "Parent" : "11", "Child" : ["392"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "392", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "392", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "392", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "392", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_13_fu_17545.grp_KeccakP1600_Permute_s_fu_91", "Parent" : "391", "Child" : ["393", "394", "395", "396", "399", "401"],
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
	{"ID" : "393", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_13_fu_17545.grp_KeccakP1600_Permute_s_fu_91.KeccakRhoOffsets_U", "Parent" : "392"},
	{"ID" : "394", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_13_fu_17545.grp_KeccakP1600_Permute_s_fu_91.KeccakRoundConstants_U", "Parent" : "392"},
	{"ID" : "395", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_13_fu_17545.grp_KeccakP1600_Permute_s_fu_91.stateAsWords_U", "Parent" : "392"},
	{"ID" : "396", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_13_fu_17545.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225", "Parent" : "392", "Child" : ["397", "398"],
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
	{"ID" : "397", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_13_fu_17545.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225.C_U", "Parent" : "396"},
	{"ID" : "398", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_13_fu_17545.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225.D_U", "Parent" : "396"},
	{"ID" : "399", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_13_fu_17545.grp_KeccakP1600_Permute_s_fu_91.grp_chi_fu_230", "Parent" : "392", "Child" : ["400"],
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
	{"ID" : "400", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_13_fu_17545.grp_KeccakP1600_Permute_s_fu_91.grp_chi_fu_230.C_U", "Parent" : "399"},
	{"ID" : "401", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_13_fu_17545.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235", "Parent" : "392", "Child" : ["402", "403"],
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
	{"ID" : "402", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_13_fu_17545.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235.tempA_U", "Parent" : "401"},
	{"ID" : "403", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_13_fu_17545.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "401"},
	{"ID" : "404", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashInit_fu_17556", "Parent" : "11", "Child" : ["405"],
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
	{"ID" : "405", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashInit_fu_17556.grp_KeccakWidth1600_Spon_11_fu_74", "Parent" : "404", "Child" : ["406"],
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
	{"ID" : "406", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashInit_fu_17556.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54", "Parent" : "405", "Child" : ["407", "408", "409", "410", "413", "415"],
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
	{"ID" : "407", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashInit_fu_17556.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.KeccakRhoOffsets_U", "Parent" : "406"},
	{"ID" : "408", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashInit_fu_17556.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.KeccakRoundConstants_U", "Parent" : "406"},
	{"ID" : "409", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashInit_fu_17556.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.stateAsWords_U", "Parent" : "406"},
	{"ID" : "410", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashInit_fu_17556.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225", "Parent" : "406", "Child" : ["411", "412"],
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
	{"ID" : "411", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashInit_fu_17556.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.C_U", "Parent" : "410"},
	{"ID" : "412", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashInit_fu_17556.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.D_U", "Parent" : "410"},
	{"ID" : "413", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashInit_fu_17556.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230", "Parent" : "406", "Child" : ["414"],
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
	{"ID" : "414", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashInit_fu_17556.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230.C_U", "Parent" : "413"},
	{"ID" : "415", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashInit_fu_17556.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235", "Parent" : "406", "Child" : ["416", "417"],
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
	{"ID" : "416", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashInit_fu_17556.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.tempA_U", "Parent" : "415"},
	{"ID" : "417", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashInit_fu_17556.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "415"},
	{"ID" : "418", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashFinal_fu_17570", "Parent" : "11", "Child" : ["419"],
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
	{"ID" : "419", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashFinal_fu_17570.grp_KeccakP1600_Permute_s_fu_54", "Parent" : "418", "Child" : ["420", "421", "422", "423", "426", "428"],
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
	{"ID" : "420", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashFinal_fu_17570.grp_KeccakP1600_Permute_s_fu_54.KeccakRhoOffsets_U", "Parent" : "419"},
	{"ID" : "421", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashFinal_fu_17570.grp_KeccakP1600_Permute_s_fu_54.KeccakRoundConstants_U", "Parent" : "419"},
	{"ID" : "422", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashFinal_fu_17570.grp_KeccakP1600_Permute_s_fu_54.stateAsWords_U", "Parent" : "419"},
	{"ID" : "423", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashFinal_fu_17570.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225", "Parent" : "419", "Child" : ["424", "425"],
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
	{"ID" : "424", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashFinal_fu_17570.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.C_U", "Parent" : "423"},
	{"ID" : "425", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashFinal_fu_17570.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.D_U", "Parent" : "423"},
	{"ID" : "426", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashFinal_fu_17570.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230", "Parent" : "419", "Child" : ["427"],
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
	{"ID" : "427", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashFinal_fu_17570.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230.C_U", "Parent" : "426"},
	{"ID" : "428", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashFinal_fu_17570.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235", "Parent" : "419", "Child" : ["429", "430"],
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
	{"ID" : "429", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashFinal_fu_17570.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.tempA_U", "Parent" : "428"},
	{"ID" : "430", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_HashFinal_fu_17570.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "428"},
	{"ID" : "431", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_prove_26_fu_17580", "Parent" : "11", "Child" : ["432"],
		"CDFG" : "prove_26",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "424", "EstimateLatencyMax" : "436",
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
	{"ID" : "432", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_359.grp_prove_26_fu_17580.crypto_sign_am_adocq_U172", "Parent" : "431"},
	{"ID" : "433", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_serializeSignature_fu_388", "Parent" : "0",
		"CDFG" : "serializeSignature",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "140058", "EstimateLatencyMax" : "150257",
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
		as_hashes {Type I LastRead 3 FirstWrite -1}
		challengeBits_0 {Type IO LastRead 20 FirstWrite 1}
		salt_0 {Type I LastRead 4 FirstWrite -1}
		message {Type I LastRead 4 FirstWrite -1}
		messageByteLength {Type I LastRead 1 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}
		viewOutputs {Type I LastRead 5 FirstWrite -1}}
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
	KeccakWidth1600_Spon_4 {
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
	KeccakWidth1600_Spon_14 {
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
	KeccakWidth1600_Spon_16 {
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
	KeccakWidth1600_Spon_12 {
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
	KeccakWidth1600_Spon_2 {
		instance_state {Type IO LastRead 9 FirstWrite 1}
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
	HashUpdate_2 {
		ctx_sponge_state {Type IO LastRead 3 FirstWrite 4}
		ctx_sponge_byteIOInd {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 2 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	KeccakWidth1600_Spon_16 {
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
		slab {Type IO LastRead 29 FirstWrite 1}
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
	HashUpdate_2_2 {
		ctx_sponge_state {Type IO LastRead 3 FirstWrite 4}
		ctx_sponge_byteIOInd {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 2 FirstWrite -1}
		data_offset {Type I LastRead 0 FirstWrite -1}
		data_offset1 {Type I LastRead 0 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	KeccakWidth1600_Spon_16 {
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
	KeccakWidth1600_Spon {
		instance_state {Type IO LastRead 9 FirstWrite 1}
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
	KeccakWidth1600_Spon_14 {
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
	KeccakWidth1600_Spon_7 {
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
	KeccakWidth1600_Spon_10 {
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
	KeccakWidth1600_Spon_6 {
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
	KeccakWidth1600_Spon_13 {
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
	signature { ap_memory {  { signature_address0 mem_address 1 17 }  { signature_ce0 mem_ce 1 1 }  { signature_we0 mem_we 1 1 }  { signature_d0 mem_din 1 8 } } }
	signature_offset { ap_none {  { signature_offset in_data 0 64 } } }
	viewOutputs { ap_memory {  { viewOutputs_address0 mem_address 1 15 }  { viewOutputs_ce0 mem_ce 1 1 }  { viewOutputs_we0 mem_we 1 1 }  { viewOutputs_d0 mem_din 1 32 }  { viewOutputs_q0 mem_dout 0 32 }  { viewOutputs_address1 mem_address 1 15 }  { viewOutputs_ce1 mem_ce 1 1 }  { viewOutputs_q1 mem_dout 0 32 } } }
}
