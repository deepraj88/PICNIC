set C_TypeInfoList {{ 
"crypto_sign" : [[], {"return": [[], {"scalar": "int"}] }, [{"ExternC" : 0}], [ {"sm": [[], {"array": [ {"scalar": "unsigned char"}, [37336]]}] }, {"smlen": [[], {"array": [ {"scalar": "long long unsigned int"}, [1]]}] }, {"m": [[], {"array": [ {"scalar": "unsigned char"}, [3300]]}] }, {"mlen": [[], {"scalar": "long long unsigned int"}] }, {"sk": [[], {"array": [ {"scalar": "unsigned char"}, [49]]}] }],["0"],""],
 "0": [ "viewOutputs", [[], {"array": ["1", [657,16]]}],""], 
"1": [ "uint32_t", {"typedef": [[[], {"scalar": "unsigned int"}],""]}]
}}
set moduleName crypto_sign
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
set C_modelName {crypto_sign}
set C_modelType { int 32 }
set C_modelArgList {
	{ sm int 8 regular {array 37336 { 0 0 } 0 1 }  }
	{ smlen int 64 regular {array 1 { 0 3 } 0 1 }  }
	{ m int 8 regular {array 3300 { 1 3 } 1 1 }  }
	{ mlen int 64 regular  }
	{ sk int 8 regular {array 49 { 1 1 } 1 1 }  }
	{ viewOutputs int 32 regular {array 10512 { 2 1 } 1 1 } {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sm", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "sm","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 37335,"step" : 1}]}]}]} , 
 	{ "Name" : "smlen", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "smlen","cData": "long long unsigned int","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "m", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "m","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 3299,"step" : 1}]}]}]} , 
 	{ "Name" : "mlen", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "mlen","cData": "long long unsigned int","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "sk","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 48,"step" : 1}]}]}]} , 
 	{ "Name" : "viewOutputs", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "viewOutputs","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 656,"step" : 1},{"low" : 0,"up" : 15,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "return","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 37
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sm_address0 sc_out sc_lv 16 signal 0 } 
	{ sm_ce0 sc_out sc_logic 1 signal 0 } 
	{ sm_we0 sc_out sc_logic 1 signal 0 } 
	{ sm_d0 sc_out sc_lv 8 signal 0 } 
	{ sm_address1 sc_out sc_lv 16 signal 0 } 
	{ sm_ce1 sc_out sc_logic 1 signal 0 } 
	{ sm_we1 sc_out sc_logic 1 signal 0 } 
	{ sm_d1 sc_out sc_lv 8 signal 0 } 
	{ smlen_address0 sc_out sc_lv 1 signal 1 } 
	{ smlen_ce0 sc_out sc_logic 1 signal 1 } 
	{ smlen_we0 sc_out sc_logic 1 signal 1 } 
	{ smlen_d0 sc_out sc_lv 64 signal 1 } 
	{ m_address0 sc_out sc_lv 12 signal 2 } 
	{ m_ce0 sc_out sc_logic 1 signal 2 } 
	{ m_q0 sc_in sc_lv 8 signal 2 } 
	{ mlen sc_in sc_lv 64 signal 3 } 
	{ sk_address0 sc_out sc_lv 6 signal 4 } 
	{ sk_ce0 sc_out sc_logic 1 signal 4 } 
	{ sk_q0 sc_in sc_lv 8 signal 4 } 
	{ sk_address1 sc_out sc_lv 6 signal 4 } 
	{ sk_ce1 sc_out sc_logic 1 signal 4 } 
	{ sk_q1 sc_in sc_lv 8 signal 4 } 
	{ viewOutputs_address0 sc_out sc_lv 14 signal 5 } 
	{ viewOutputs_ce0 sc_out sc_logic 1 signal 5 } 
	{ viewOutputs_we0 sc_out sc_logic 1 signal 5 } 
	{ viewOutputs_d0 sc_out sc_lv 32 signal 5 } 
	{ viewOutputs_q0 sc_in sc_lv 32 signal 5 } 
	{ viewOutputs_address1 sc_out sc_lv 14 signal 5 } 
	{ viewOutputs_ce1 sc_out sc_logic 1 signal 5 } 
	{ viewOutputs_q1 sc_in sc_lv 32 signal 5 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sm_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sm", "role": "address0" }} , 
 	{ "name": "sm_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sm", "role": "ce0" }} , 
 	{ "name": "sm_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sm", "role": "we0" }} , 
 	{ "name": "sm_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sm", "role": "d0" }} , 
 	{ "name": "sm_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sm", "role": "address1" }} , 
 	{ "name": "sm_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sm", "role": "ce1" }} , 
 	{ "name": "sm_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sm", "role": "we1" }} , 
 	{ "name": "sm_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sm", "role": "d1" }} , 
 	{ "name": "smlen_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "smlen", "role": "address0" }} , 
 	{ "name": "smlen_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "smlen", "role": "ce0" }} , 
 	{ "name": "smlen_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "smlen", "role": "we0" }} , 
 	{ "name": "smlen_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "smlen", "role": "d0" }} , 
 	{ "name": "m_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "m", "role": "address0" }} , 
 	{ "name": "m_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m", "role": "ce0" }} , 
 	{ "name": "m_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "m", "role": "q0" }} , 
 	{ "name": "mlen", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mlen", "role": "default" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }} , 
 	{ "name": "sk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "sk", "role": "address1" }} , 
 	{ "name": "sk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce1" }} , 
 	{ "name": "sk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q1" }} , 
 	{ "name": "viewOutputs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "viewOutputs", "role": "address0" }} , 
 	{ "name": "viewOutputs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "viewOutputs", "role": "ce0" }} , 
 	{ "name": "viewOutputs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "viewOutputs", "role": "we0" }} , 
 	{ "name": "viewOutputs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "viewOutputs", "role": "d0" }} , 
 	{ "name": "viewOutputs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "viewOutputs", "role": "q0" }} , 
 	{ "name": "viewOutputs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "viewOutputs", "role": "address1" }} , 
 	{ "name": "viewOutputs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "viewOutputs", "role": "ce1" }} , 
 	{ "name": "viewOutputs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "viewOutputs", "role": "q1" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "crypto_sign",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_picnic_sign_fu_324"}],
		"Port" : [
			{"Name" : "sm", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_picnic_sign_fu_324", "Port" : "signature"}]},
			{"Name" : "smlen", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_picnic_sign_fu_324", "Port" : "message"}]},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_picnic_sign_fu_324", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_picnic_sign_fu_324", "Port" : "KeccakRoundConstants"}]},
			{"Name" : "temp_matrix", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_picnic_sign_fu_324", "Port" : "temp_matrix"}]},
			{"Name" : "temp_matrix2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_picnic_sign_fu_324", "Port" : "temp_matrix2"}]},
			{"Name" : "temp_matrix3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_picnic_sign_fu_324", "Port" : "temp_matrix3"}]},
			{"Name" : "viewOutputs", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_picnic_sign_fu_324", "Port" : "viewOutputs"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.secret_data_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.secret_pk_plaintext_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.secret_pk_ciphertext_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324", "Parent" : "0", "Child" : ["5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "437"],
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
					{"ID" : "15", "SubInstance" : "grp_sign_picnic1_fu_359", "Port" : "message"}]},
			{"Name" : "message_len", "Type" : "None", "Direction" : "I"},
			{"Name" : "signature", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "437", "SubInstance" : "grp_serializeSignature_fu_388", "Port" : "sigBytes"}]},
			{"Name" : "signature_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_sign_picnic1_fu_359", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_sign_picnic1_fu_359", "Port" : "KeccakRoundConstants"}]},
			{"Name" : "temp_matrix", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_sign_picnic1_fu_359", "Port" : "temp_matrix"}]},
			{"Name" : "temp_matrix2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_sign_picnic1_fu_359", "Port" : "temp_matrix2"}]},
			{"Name" : "temp_matrix3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_sign_picnic1_fu_359", "Port" : "temp_matrix3"}]},
			{"Name" : "viewOutputs", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_sign_picnic1_fu_359", "Port" : "viewOutputs"}]}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.sig_0_proofs_seed1_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.sig_0_proofs_seed2_U", "Parent" : "4"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.sig_0_proofs_inputS_U", "Parent" : "4"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.sig_0_proofs_commun_U", "Parent" : "4"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.sig_0_proofs_view3C_U", "Parent" : "4"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.sig_0_challengeBits_U", "Parent" : "4"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.sig_0_salt_U", "Parent" : "4"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.temp_U", "Parent" : "4"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.temp2_U", "Parent" : "4"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.temp3_U", "Parent" : "4"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359", "Parent" : "4", "Child" : ["16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "150", "231", "262", "275", "288", "303", "316", "329", "342", "355", "368", "381", "394", "408", "422", "435"],
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
			{"State" : "ap_ST_fsm_state513", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_H3_2_fu_11786"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_computeSeeds_2_fu_11807"},
			{"State" : "ap_ST_fsm_state58", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mpc_LowMC_2_fu_11829"},
			{"State" : "ap_ST_fsm_state39", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_1_fu_11848"},
			{"State" : "ap_ST_fsm_state55", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_1_fu_11848"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_5_fu_11863"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_5_fu_11863"},
			{"State" : "ap_ST_fsm_state199", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdate_2_2_fu_11878"},
			{"State" : "ap_ST_fsm_state203", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdate_2_2_fu_11878"},
			{"State" : "ap_ST_fsm_state348", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdate_2_2_fu_11878"},
			{"State" : "ap_ST_fsm_state352", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdate_2_2_fu_11878"},
			{"State" : "ap_ST_fsm_state497", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdate_2_2_fu_11878"},
			{"State" : "ap_ST_fsm_state501", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdate_2_2_fu_11878"},
			{"State" : "ap_ST_fsm_state193", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_fu_11895"},
			{"State" : "ap_ST_fsm_state207", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_fu_11895"},
			{"State" : "ap_ST_fsm_state342", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_fu_11895"},
			{"State" : "ap_ST_fsm_state356", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_fu_11895"},
			{"State" : "ap_ST_fsm_state491", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_fu_11895"},
			{"State" : "ap_ST_fsm_state505", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_fu_11895"},
			{"State" : "ap_ST_fsm_state197", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_6_fu_11913"},
			{"State" : "ap_ST_fsm_state346", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_6_fu_11913"},
			{"State" : "ap_ST_fsm_state495", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_6_fu_11913"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_8_fu_11930"},
			{"State" : "ap_ST_fsm_state35", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_8_fu_11930"},
			{"State" : "ap_ST_fsm_state189", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_8_fu_11930"},
			{"State" : "ap_ST_fsm_state338", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_8_fu_11930"},
			{"State" : "ap_ST_fsm_state487", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_8_fu_11930"},
			{"State" : "ap_ST_fsm_state43", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_7_fu_11947"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_11958"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_11969"},
			{"State" : "ap_ST_fsm_state45", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_11969"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_11_fu_11981"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_11_fu_11981"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_11_fu_11981"},
			{"State" : "ap_ST_fsm_state47", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_11_fu_11981"},
			{"State" : "ap_ST_fsm_state49", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_11_fu_11981"},
			{"State" : "ap_ST_fsm_state51", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_11_fu_11981"},
			{"State" : "ap_ST_fsm_state201", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_12_fu_11996"},
			{"State" : "ap_ST_fsm_state350", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_12_fu_11996"},
			{"State" : "ap_ST_fsm_state499", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_12_fu_11996"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_12013"},
			{"State" : "ap_ST_fsm_state33", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_12013"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_12013"},
			{"State" : "ap_ST_fsm_state41", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_12013"},
			{"State" : "ap_ST_fsm_state187", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_12013"},
			{"State" : "ap_ST_fsm_state195", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_12013"},
			{"State" : "ap_ST_fsm_state336", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_12013"},
			{"State" : "ap_ST_fsm_state344", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_12013"},
			{"State" : "ap_ST_fsm_state485", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_12013"},
			{"State" : "ap_ST_fsm_state493", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_12013"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_12027"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_12027"},
			{"State" : "ap_ST_fsm_state37", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_12027"},
			{"State" : "ap_ST_fsm_state53", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_12027"},
			{"State" : "ap_ST_fsm_state191", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_12027"},
			{"State" : "ap_ST_fsm_state205", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_12027"},
			{"State" : "ap_ST_fsm_state340", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_12027"},
			{"State" : "ap_ST_fsm_state354", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_12027"},
			{"State" : "ap_ST_fsm_state489", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_12027"},
			{"State" : "ap_ST_fsm_state503", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_12027"},
			{"State" : "ap_ST_fsm_state516", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_prove_26_fu_12037"}],
		"Port" : [
			{"Name" : "privateKey", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "150", "SubInstance" : "grp_computeSeeds_2_fu_11807", "Port" : "privateKey"}]},
			{"Name" : "pubKey", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "150", "SubInstance" : "grp_computeSeeds_2_fu_11807", "Port" : "publicKey"}]},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_H3_2_fu_11786", "Port" : "plaintext"},
					{"ID" : "231", "SubInstance" : "grp_mpc_LowMC_2_fu_11829", "Port" : "plaintext"},
					{"ID" : "150", "SubInstance" : "grp_computeSeeds_2_fu_11807", "Port" : "plaintext"}]},
			{"Name" : "message", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_H3_2_fu_11786", "Port" : "message"},
					{"ID" : "150", "SubInstance" : "grp_computeSeeds_2_fu_11807", "Port" : "message"}]},
			{"Name" : "messageByteLength", "Type" : "None", "Direction" : "I"},
			{"Name" : "sig_0_proofs_seed1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "435", "SubInstance" : "grp_prove_26_fu_12037", "Port" : "proof_0_seed1"}]},
			{"Name" : "sig_0_proofs_seed2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "435", "SubInstance" : "grp_prove_26_fu_12037", "Port" : "proof_0_seed2"}]},
			{"Name" : "sig_0_proofs_inputS", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "435", "SubInstance" : "grp_prove_26_fu_12037", "Port" : "proof_0_inputShare"}]},
			{"Name" : "sig_0_proofs_commun", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "435", "SubInstance" : "grp_prove_26_fu_12037", "Port" : "proof_0_communicatedBits"}]},
			{"Name" : "sig_0_proofs_view3C", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "435", "SubInstance" : "grp_prove_26_fu_12037", "Port" : "proof_0_view3Commitment"}]},
			{"Name" : "sig_0_challengeBits", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_H3_2_fu_11786", "Port" : "challengeBits_0"}]},
			{"Name" : "sig_0_salt", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_H3_2_fu_11786", "Port" : "salt_0"},
					{"ID" : "150", "SubInstance" : "grp_computeSeeds_2_fu_11807", "Port" : "salt_0"},
					{"ID" : "368", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_11969", "Port" : "data_0"}]},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "275", "SubInstance" : "grp_KeccakWidth1600_Spon_5_fu_11863", "Port" : "KeccakRhoOffsets"},
					{"ID" : "355", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_11958", "Port" : "KeccakRhoOffsets"},
					{"ID" : "394", "SubInstance" : "grp_KeccakWidth1600_Spon_12_fu_11996", "Port" : "KeccakRhoOffsets"},
					{"ID" : "39", "SubInstance" : "grp_H3_2_fu_11786", "Port" : "KeccakRhoOffsets"},
					{"ID" : "262", "SubInstance" : "grp_KeccakWidth1600_Spon_1_fu_11848", "Port" : "KeccakRhoOffsets"},
					{"ID" : "408", "SubInstance" : "grp_HashInit_fu_12013", "Port" : "KeccakRhoOffsets"},
					{"ID" : "422", "SubInstance" : "grp_HashFinal_fu_12027", "Port" : "KeccakRhoOffsets"},
					{"ID" : "150", "SubInstance" : "grp_computeSeeds_2_fu_11807", "Port" : "KeccakRhoOffsets"},
					{"ID" : "303", "SubInstance" : "grp_KeccakWidth1600_Spon_fu_11895", "Port" : "KeccakRhoOffsets"},
					{"ID" : "288", "SubInstance" : "grp_HashUpdate_2_2_fu_11878", "Port" : "KeccakRhoOffsets"},
					{"ID" : "381", "SubInstance" : "grp_KeccakWidth1600_Spon_11_fu_11981", "Port" : "KeccakRhoOffsets"},
					{"ID" : "342", "SubInstance" : "grp_KeccakWidth1600_Spon_7_fu_11947", "Port" : "KeccakRhoOffsets"},
					{"ID" : "329", "SubInstance" : "grp_KeccakWidth1600_Spon_8_fu_11930", "Port" : "KeccakRhoOffsets"},
					{"ID" : "316", "SubInstance" : "grp_KeccakWidth1600_Spon_6_fu_11913", "Port" : "KeccakRhoOffsets"},
					{"ID" : "368", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_11969", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "275", "SubInstance" : "grp_KeccakWidth1600_Spon_5_fu_11863", "Port" : "KeccakRoundConstants"},
					{"ID" : "355", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_11958", "Port" : "KeccakRoundConstants"},
					{"ID" : "394", "SubInstance" : "grp_KeccakWidth1600_Spon_12_fu_11996", "Port" : "KeccakRoundConstants"},
					{"ID" : "39", "SubInstance" : "grp_H3_2_fu_11786", "Port" : "KeccakRoundConstants"},
					{"ID" : "262", "SubInstance" : "grp_KeccakWidth1600_Spon_1_fu_11848", "Port" : "KeccakRoundConstants"},
					{"ID" : "408", "SubInstance" : "grp_HashInit_fu_12013", "Port" : "KeccakRoundConstants"},
					{"ID" : "422", "SubInstance" : "grp_HashFinal_fu_12027", "Port" : "KeccakRoundConstants"},
					{"ID" : "150", "SubInstance" : "grp_computeSeeds_2_fu_11807", "Port" : "KeccakRoundConstants"},
					{"ID" : "303", "SubInstance" : "grp_KeccakWidth1600_Spon_fu_11895", "Port" : "KeccakRoundConstants"},
					{"ID" : "288", "SubInstance" : "grp_HashUpdate_2_2_fu_11878", "Port" : "KeccakRoundConstants"},
					{"ID" : "381", "SubInstance" : "grp_KeccakWidth1600_Spon_11_fu_11981", "Port" : "KeccakRoundConstants"},
					{"ID" : "342", "SubInstance" : "grp_KeccakWidth1600_Spon_7_fu_11947", "Port" : "KeccakRoundConstants"},
					{"ID" : "329", "SubInstance" : "grp_KeccakWidth1600_Spon_8_fu_11930", "Port" : "KeccakRoundConstants"},
					{"ID" : "316", "SubInstance" : "grp_KeccakWidth1600_Spon_6_fu_11913", "Port" : "KeccakRoundConstants"},
					{"ID" : "368", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_11969", "Port" : "KeccakRoundConstants"}]},
			{"Name" : "temp_matrix", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "231", "SubInstance" : "grp_mpc_LowMC_2_fu_11829", "Port" : "temp_matrix"}]},
			{"Name" : "temp_matrix2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "231", "SubInstance" : "grp_mpc_LowMC_2_fu_11829", "Port" : "temp_matrix2"}]},
			{"Name" : "temp_matrix3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "231", "SubInstance" : "grp_mpc_LowMC_2_fu_11829", "Port" : "temp_matrix3"}]},
			{"Name" : "viewOutputs", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_H3_2_fu_11786", "Port" : "viewOutputs"}]}]},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.ctx_sponge_state_4_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.views_outputShare838_U", "Parent" : "15"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.views_communicatedBi_U", "Parent" : "15"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.views_inputShare593_U", "Parent" : "15"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.ctx_sponge_state_3_U", "Parent" : "15"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.views_outputShare543_U", "Parent" : "15"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.views_communicatedBi_1_U", "Parent" : "15"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.views_inputShare298_U", "Parent" : "15"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.ctx_sponge_state_2_U", "Parent" : "15"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.views_outputShare269_U", "Parent" : "15"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.views_communicatedBi_2_U", "Parent" : "15"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.views_inputShare27_U", "Parent" : "15"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.ctx_sponge_state_1_U", "Parent" : "15"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.ctx_sponge_state_U", "Parent" : "15"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.views_inputShare_U", "Parent" : "15"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.views_communicatedBi_3_U", "Parent" : "15"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.views_outputShare_U", "Parent" : "15"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.as_hashes_U", "Parent" : "15"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.seeds_seed_U", "Parent" : "15"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.tape_tape_U", "Parent" : "15"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.tape_assign_U", "Parent" : "15"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.slab_assign_U", "Parent" : "15"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.output_U", "Parent" : "15"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786", "Parent" : "15", "Child" : ["40", "41", "42", "43", "44", "45", "58", "71", "84", "97", "110", "123", "137"],
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
			{"State" : "ap_ST_fsm_state30", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_4_fu_524"},
			{"State" : "ap_ST_fsm_state41", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_4_fu_524"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_16_fu_536"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_6_fu_549"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_10_fu_564"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_10_fu_564"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_10_fu_564"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_575"},
			{"State" : "ap_ST_fsm_state37", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_14_fu_587"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_598"},
			{"State" : "ap_ST_fsm_state35", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_598"},
			{"State" : "ap_ST_fsm_state28", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_610"},
			{"State" : "ap_ST_fsm_state39", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_610"}],
		"Port" : [
			{"Name" : "circuitOutput", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "as_hashes", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "71", "SubInstance" : "grp_KeccakWidth1600_Spon_6_fu_549", "Port" : "data"}]},
			{"Name" : "challengeBits_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "salt_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_575", "Port" : "data_0"}]},
			{"Name" : "message", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_KeccakWidth1600_Spon_16_fu_536", "Port" : "data"}]},
			{"Name" : "messageByteLength", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "110", "SubInstance" : "grp_KeccakWidth1600_Spon_14_fu_587", "Port" : "KeccakRhoOffsets"},
					{"ID" : "137", "SubInstance" : "grp_HashFinal_fu_610", "Port" : "KeccakRhoOffsets"},
					{"ID" : "71", "SubInstance" : "grp_KeccakWidth1600_Spon_6_fu_549", "Port" : "KeccakRhoOffsets"},
					{"ID" : "123", "SubInstance" : "grp_HashInit_fu_598", "Port" : "KeccakRhoOffsets"},
					{"ID" : "58", "SubInstance" : "grp_KeccakWidth1600_Spon_16_fu_536", "Port" : "KeccakRhoOffsets"},
					{"ID" : "84", "SubInstance" : "grp_KeccakWidth1600_Spon_10_fu_564", "Port" : "KeccakRhoOffsets"},
					{"ID" : "97", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_575", "Port" : "KeccakRhoOffsets"},
					{"ID" : "45", "SubInstance" : "grp_KeccakWidth1600_Spon_4_fu_524", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "110", "SubInstance" : "grp_KeccakWidth1600_Spon_14_fu_587", "Port" : "KeccakRoundConstants"},
					{"ID" : "137", "SubInstance" : "grp_HashFinal_fu_610", "Port" : "KeccakRoundConstants"},
					{"ID" : "71", "SubInstance" : "grp_KeccakWidth1600_Spon_6_fu_549", "Port" : "KeccakRoundConstants"},
					{"ID" : "123", "SubInstance" : "grp_HashInit_fu_598", "Port" : "KeccakRoundConstants"},
					{"ID" : "58", "SubInstance" : "grp_KeccakWidth1600_Spon_16_fu_536", "Port" : "KeccakRoundConstants"},
					{"ID" : "84", "SubInstance" : "grp_KeccakWidth1600_Spon_10_fu_564", "Port" : "KeccakRoundConstants"},
					{"ID" : "97", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_575", "Port" : "KeccakRoundConstants"},
					{"ID" : "45", "SubInstance" : "grp_KeccakWidth1600_Spon_4_fu_524", "Port" : "KeccakRoundConstants"}]},
			{"Name" : "viewOutputs", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.temp_2_U", "Parent" : "39"},
	{"ID" : "41", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.temp_U", "Parent" : "39"},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.temp_1_U", "Parent" : "39"},
	{"ID" : "43", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.hash_U", "Parent" : "39"},
	{"ID" : "44", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.ctx_sponge_state_U", "Parent" : "39"},
	{"ID" : "45", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_4_fu_524", "Parent" : "39", "Child" : ["46"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_246"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_246"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_246"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_246", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_246", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_246", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "46", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_4_fu_524.grp_KeccakP1600_Permute_s_fu_246", "Parent" : "45", "Child" : ["47", "48", "49", "50", "53", "55"],
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
	{"ID" : "47", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_4_fu_524.grp_KeccakP1600_Permute_s_fu_246.KeccakRhoOffsets_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_4_fu_524.grp_KeccakP1600_Permute_s_fu_246.KeccakRoundConstants_U", "Parent" : "46"},
	{"ID" : "49", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_4_fu_524.grp_KeccakP1600_Permute_s_fu_246.stateAsWords_U", "Parent" : "46"},
	{"ID" : "50", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_4_fu_524.grp_KeccakP1600_Permute_s_fu_246.grp_theta_fu_225", "Parent" : "46", "Child" : ["51", "52"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "51", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_4_fu_524.grp_KeccakP1600_Permute_s_fu_246.grp_theta_fu_225.C_U", "Parent" : "50"},
	{"ID" : "52", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_4_fu_524.grp_KeccakP1600_Permute_s_fu_246.grp_theta_fu_225.D_U", "Parent" : "50"},
	{"ID" : "53", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_4_fu_524.grp_KeccakP1600_Permute_s_fu_246.grp_chi_fu_230", "Parent" : "46", "Child" : ["54"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "54", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_4_fu_524.grp_KeccakP1600_Permute_s_fu_246.grp_chi_fu_230.C_U", "Parent" : "53"},
	{"ID" : "55", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_4_fu_524.grp_KeccakP1600_Permute_s_fu_246.grp_pi_fu_235", "Parent" : "46", "Child" : ["56", "57"],
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
	{"ID" : "56", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_4_fu_524.grp_KeccakP1600_Permute_s_fu_246.grp_pi_fu_235.tempA_U", "Parent" : "55"},
	{"ID" : "57", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_4_fu_524.grp_KeccakP1600_Permute_s_fu_246.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "55"},
	{"ID" : "58", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_16_fu_536", "Parent" : "39", "Child" : ["59"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_158"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_158"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_158", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dataByteLen", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_158", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_158", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "59", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_16_fu_536.grp_KeccakP1600_Permute_s_fu_158", "Parent" : "58", "Child" : ["60", "61", "62", "63", "66", "68"],
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
	{"ID" : "60", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_16_fu_536.grp_KeccakP1600_Permute_s_fu_158.KeccakRhoOffsets_U", "Parent" : "59"},
	{"ID" : "61", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_16_fu_536.grp_KeccakP1600_Permute_s_fu_158.KeccakRoundConstants_U", "Parent" : "59"},
	{"ID" : "62", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_16_fu_536.grp_KeccakP1600_Permute_s_fu_158.stateAsWords_U", "Parent" : "59"},
	{"ID" : "63", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_16_fu_536.grp_KeccakP1600_Permute_s_fu_158.grp_theta_fu_225", "Parent" : "59", "Child" : ["64", "65"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "64", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_16_fu_536.grp_KeccakP1600_Permute_s_fu_158.grp_theta_fu_225.C_U", "Parent" : "63"},
	{"ID" : "65", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_16_fu_536.grp_KeccakP1600_Permute_s_fu_158.grp_theta_fu_225.D_U", "Parent" : "63"},
	{"ID" : "66", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_16_fu_536.grp_KeccakP1600_Permute_s_fu_158.grp_chi_fu_230", "Parent" : "59", "Child" : ["67"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "67", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_16_fu_536.grp_KeccakP1600_Permute_s_fu_158.grp_chi_fu_230.C_U", "Parent" : "66"},
	{"ID" : "68", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_16_fu_536.grp_KeccakP1600_Permute_s_fu_158.grp_pi_fu_235", "Parent" : "59", "Child" : ["69", "70"],
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
	{"ID" : "69", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_16_fu_536.grp_KeccakP1600_Permute_s_fu_158.grp_pi_fu_235.tempA_U", "Parent" : "68"},
	{"ID" : "70", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_16_fu_536.grp_KeccakP1600_Permute_s_fu_158.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "68"},
	{"ID" : "71", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_6_fu_549", "Parent" : "39", "Child" : ["72"],
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
					{"ID" : "72", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "72", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_6_fu_549.grp_KeccakP1600_Permute_s_fu_204", "Parent" : "71", "Child" : ["73", "74", "75", "76", "79", "81"],
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
	{"ID" : "73", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_6_fu_549.grp_KeccakP1600_Permute_s_fu_204.KeccakRhoOffsets_U", "Parent" : "72"},
	{"ID" : "74", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_6_fu_549.grp_KeccakP1600_Permute_s_fu_204.KeccakRoundConstants_U", "Parent" : "72"},
	{"ID" : "75", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_6_fu_549.grp_KeccakP1600_Permute_s_fu_204.stateAsWords_U", "Parent" : "72"},
	{"ID" : "76", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_6_fu_549.grp_KeccakP1600_Permute_s_fu_204.grp_theta_fu_225", "Parent" : "72", "Child" : ["77", "78"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "77", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_6_fu_549.grp_KeccakP1600_Permute_s_fu_204.grp_theta_fu_225.C_U", "Parent" : "76"},
	{"ID" : "78", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_6_fu_549.grp_KeccakP1600_Permute_s_fu_204.grp_theta_fu_225.D_U", "Parent" : "76"},
	{"ID" : "79", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_6_fu_549.grp_KeccakP1600_Permute_s_fu_204.grp_chi_fu_230", "Parent" : "72", "Child" : ["80"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "80", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_6_fu_549.grp_KeccakP1600_Permute_s_fu_204.grp_chi_fu_230.C_U", "Parent" : "79"},
	{"ID" : "81", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_6_fu_549.grp_KeccakP1600_Permute_s_fu_204.grp_pi_fu_235", "Parent" : "72", "Child" : ["82", "83"],
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
	{"ID" : "82", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_6_fu_549.grp_KeccakP1600_Permute_s_fu_204.grp_pi_fu_235.tempA_U", "Parent" : "81"},
	{"ID" : "83", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_6_fu_549.grp_KeccakP1600_Permute_s_fu_204.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "81"},
	{"ID" : "84", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_10_fu_564", "Parent" : "39", "Child" : ["85"],
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
	{"ID" : "85", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_10_fu_564.grp_KeccakP1600_Permute_s_fu_176", "Parent" : "84", "Child" : ["86", "87", "88", "89", "92", "94"],
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
	{"ID" : "86", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_10_fu_564.grp_KeccakP1600_Permute_s_fu_176.KeccakRhoOffsets_U", "Parent" : "85"},
	{"ID" : "87", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_10_fu_564.grp_KeccakP1600_Permute_s_fu_176.KeccakRoundConstants_U", "Parent" : "85"},
	{"ID" : "88", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_10_fu_564.grp_KeccakP1600_Permute_s_fu_176.stateAsWords_U", "Parent" : "85"},
	{"ID" : "89", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_10_fu_564.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225", "Parent" : "85", "Child" : ["90", "91"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "90", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_10_fu_564.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.C_U", "Parent" : "89"},
	{"ID" : "91", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_10_fu_564.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.D_U", "Parent" : "89"},
	{"ID" : "92", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_10_fu_564.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230", "Parent" : "85", "Child" : ["93"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "93", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_10_fu_564.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230.C_U", "Parent" : "92"},
	{"ID" : "94", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_10_fu_564.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235", "Parent" : "85", "Child" : ["95", "96"],
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
	{"ID" : "95", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_10_fu_564.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.tempA_U", "Parent" : "94"},
	{"ID" : "96", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_10_fu_564.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "94"},
	{"ID" : "97", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_9_fu_575", "Parent" : "39", "Child" : ["98"],
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
					{"ID" : "98", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "98", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_9_fu_575.grp_KeccakP1600_Permute_s_fu_176", "Parent" : "97", "Child" : ["99", "100", "101", "102", "105", "107"],
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
	{"ID" : "99", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_9_fu_575.grp_KeccakP1600_Permute_s_fu_176.KeccakRhoOffsets_U", "Parent" : "98"},
	{"ID" : "100", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_9_fu_575.grp_KeccakP1600_Permute_s_fu_176.KeccakRoundConstants_U", "Parent" : "98"},
	{"ID" : "101", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_9_fu_575.grp_KeccakP1600_Permute_s_fu_176.stateAsWords_U", "Parent" : "98"},
	{"ID" : "102", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_9_fu_575.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225", "Parent" : "98", "Child" : ["103", "104"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "103", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_9_fu_575.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.C_U", "Parent" : "102"},
	{"ID" : "104", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_9_fu_575.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.D_U", "Parent" : "102"},
	{"ID" : "105", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_9_fu_575.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230", "Parent" : "98", "Child" : ["106"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "106", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_9_fu_575.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230.C_U", "Parent" : "105"},
	{"ID" : "107", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_9_fu_575.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235", "Parent" : "98", "Child" : ["108", "109"],
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
	{"ID" : "108", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_9_fu_575.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.tempA_U", "Parent" : "107"},
	{"ID" : "109", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_9_fu_575.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "107"},
	{"ID" : "110", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_14_fu_587", "Parent" : "39", "Child" : ["111"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "111", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_14_fu_587.grp_KeccakP1600_Permute_s_fu_176", "Parent" : "110", "Child" : ["112", "113", "114", "115", "118", "120"],
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
	{"ID" : "112", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_14_fu_587.grp_KeccakP1600_Permute_s_fu_176.KeccakRhoOffsets_U", "Parent" : "111"},
	{"ID" : "113", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_14_fu_587.grp_KeccakP1600_Permute_s_fu_176.KeccakRoundConstants_U", "Parent" : "111"},
	{"ID" : "114", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_14_fu_587.grp_KeccakP1600_Permute_s_fu_176.stateAsWords_U", "Parent" : "111"},
	{"ID" : "115", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_14_fu_587.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225", "Parent" : "111", "Child" : ["116", "117"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "116", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_14_fu_587.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.C_U", "Parent" : "115"},
	{"ID" : "117", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_14_fu_587.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.D_U", "Parent" : "115"},
	{"ID" : "118", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_14_fu_587.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230", "Parent" : "111", "Child" : ["119"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "119", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_14_fu_587.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230.C_U", "Parent" : "118"},
	{"ID" : "120", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_14_fu_587.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235", "Parent" : "111", "Child" : ["121", "122"],
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
	{"ID" : "121", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_14_fu_587.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.tempA_U", "Parent" : "120"},
	{"ID" : "122", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_KeccakWidth1600_Spon_14_fu_587.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "120"},
	{"ID" : "123", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_HashInit_fu_598", "Parent" : "39", "Child" : ["124"],
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
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_13_fu_74"}],
		"Port" : [
			{"Name" : "ctx_sponge_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "124", "SubInstance" : "grp_KeccakWidth1600_Spon_13_fu_74", "Port" : "instance_state"}]},
			{"Name" : "hashPrefix", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "124", "SubInstance" : "grp_KeccakWidth1600_Spon_13_fu_74", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "124", "SubInstance" : "grp_KeccakWidth1600_Spon_13_fu_74", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "124", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_HashInit_fu_598.grp_KeccakWidth1600_Spon_13_fu_74", "Parent" : "123", "Child" : ["125"],
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "state"}]},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "125", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_HashInit_fu_598.grp_KeccakWidth1600_Spon_13_fu_74.grp_KeccakP1600_Permute_s_fu_54", "Parent" : "124", "Child" : ["126", "127", "128", "129", "132", "134"],
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
	{"ID" : "126", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_HashInit_fu_598.grp_KeccakWidth1600_Spon_13_fu_74.grp_KeccakP1600_Permute_s_fu_54.KeccakRhoOffsets_U", "Parent" : "125"},
	{"ID" : "127", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_HashInit_fu_598.grp_KeccakWidth1600_Spon_13_fu_74.grp_KeccakP1600_Permute_s_fu_54.KeccakRoundConstants_U", "Parent" : "125"},
	{"ID" : "128", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_HashInit_fu_598.grp_KeccakWidth1600_Spon_13_fu_74.grp_KeccakP1600_Permute_s_fu_54.stateAsWords_U", "Parent" : "125"},
	{"ID" : "129", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_HashInit_fu_598.grp_KeccakWidth1600_Spon_13_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225", "Parent" : "125", "Child" : ["130", "131"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "130", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_HashInit_fu_598.grp_KeccakWidth1600_Spon_13_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.C_U", "Parent" : "129"},
	{"ID" : "131", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_HashInit_fu_598.grp_KeccakWidth1600_Spon_13_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.D_U", "Parent" : "129"},
	{"ID" : "132", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_HashInit_fu_598.grp_KeccakWidth1600_Spon_13_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230", "Parent" : "125", "Child" : ["133"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "133", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_HashInit_fu_598.grp_KeccakWidth1600_Spon_13_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230.C_U", "Parent" : "132"},
	{"ID" : "134", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_HashInit_fu_598.grp_KeccakWidth1600_Spon_13_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235", "Parent" : "125", "Child" : ["135", "136"],
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
	{"ID" : "135", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_HashInit_fu_598.grp_KeccakWidth1600_Spon_13_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.tempA_U", "Parent" : "134"},
	{"ID" : "136", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_HashInit_fu_598.grp_KeccakWidth1600_Spon_13_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "134"},
	{"ID" : "137", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_HashFinal_fu_610", "Parent" : "39", "Child" : ["138"],
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
					{"ID" : "138", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "state"}]},
			{"Name" : "ctx_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "138", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_HashFinal_fu_610.grp_KeccakP1600_Permute_s_fu_54", "Parent" : "137", "Child" : ["139", "140", "141", "142", "145", "147"],
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
	{"ID" : "139", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_HashFinal_fu_610.grp_KeccakP1600_Permute_s_fu_54.KeccakRhoOffsets_U", "Parent" : "138"},
	{"ID" : "140", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_HashFinal_fu_610.grp_KeccakP1600_Permute_s_fu_54.KeccakRoundConstants_U", "Parent" : "138"},
	{"ID" : "141", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_HashFinal_fu_610.grp_KeccakP1600_Permute_s_fu_54.stateAsWords_U", "Parent" : "138"},
	{"ID" : "142", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_HashFinal_fu_610.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225", "Parent" : "138", "Child" : ["143", "144"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "143", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_HashFinal_fu_610.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.C_U", "Parent" : "142"},
	{"ID" : "144", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_HashFinal_fu_610.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.D_U", "Parent" : "142"},
	{"ID" : "145", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_HashFinal_fu_610.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230", "Parent" : "138", "Child" : ["146"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "146", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_HashFinal_fu_610.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230.C_U", "Parent" : "145"},
	{"ID" : "147", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_HashFinal_fu_610.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235", "Parent" : "138", "Child" : ["148", "149"],
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
	{"ID" : "148", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_HashFinal_fu_610.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.tempA_U", "Parent" : "147"},
	{"ID" : "149", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_H3_2_fu_11786.grp_HashFinal_fu_610.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "147"},
	{"ID" : "150", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807", "Parent" : "15", "Child" : ["151", "152", "165", "180", "193", "206", "219"],
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
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_2_fu_152"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdate_2_fu_169"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdate_2_fu_169"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdate_2_fu_169"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_3_fu_184"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_16_fu_197"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_11_fu_210"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_222"}],
		"Port" : [
			{"Name" : "allSeeds_seed", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "152", "SubInstance" : "grp_KeccakWidth1600_Spon_2_fu_152", "Port" : "data"}]},
			{"Name" : "salt_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "180", "SubInstance" : "grp_KeccakWidth1600_Spon_3_fu_184", "Port" : "data_0"}]},
			{"Name" : "privateKey", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_HashUpdate_2_fu_169", "Port" : "data"}]},
			{"Name" : "publicKey", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_HashUpdate_2_fu_169", "Port" : "data"}]},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_HashUpdate_2_fu_169", "Port" : "data"}]},
			{"Name" : "message", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "193", "SubInstance" : "grp_KeccakWidth1600_Spon_16_fu_197", "Port" : "data"}]},
			{"Name" : "messageByteLength", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "180", "SubInstance" : "grp_KeccakWidth1600_Spon_3_fu_184", "Port" : "KeccakRhoOffsets"},
					{"ID" : "193", "SubInstance" : "grp_KeccakWidth1600_Spon_16_fu_197", "Port" : "KeccakRhoOffsets"},
					{"ID" : "165", "SubInstance" : "grp_HashUpdate_2_fu_169", "Port" : "KeccakRhoOffsets"},
					{"ID" : "152", "SubInstance" : "grp_KeccakWidth1600_Spon_2_fu_152", "Port" : "KeccakRhoOffsets"},
					{"ID" : "206", "SubInstance" : "grp_KeccakWidth1600_Spon_11_fu_210", "Port" : "KeccakRhoOffsets"},
					{"ID" : "219", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_222", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "180", "SubInstance" : "grp_KeccakWidth1600_Spon_3_fu_184", "Port" : "KeccakRoundConstants"},
					{"ID" : "193", "SubInstance" : "grp_KeccakWidth1600_Spon_16_fu_197", "Port" : "KeccakRoundConstants"},
					{"ID" : "165", "SubInstance" : "grp_HashUpdate_2_fu_169", "Port" : "KeccakRoundConstants"},
					{"ID" : "152", "SubInstance" : "grp_KeccakWidth1600_Spon_2_fu_152", "Port" : "KeccakRoundConstants"},
					{"ID" : "206", "SubInstance" : "grp_KeccakWidth1600_Spon_11_fu_210", "Port" : "KeccakRoundConstants"},
					{"ID" : "219", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_222", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "151", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.ctx_sponge_state_U", "Parent" : "150"},
	{"ID" : "152", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakWidth1600_Spon_2_fu_152", "Parent" : "150", "Child" : ["153"],
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
					{"ID" : "153", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_285", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "153", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_285", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "153", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_285", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "153", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakWidth1600_Spon_2_fu_152.grp_KeccakP1600_Permute_s_fu_285", "Parent" : "152", "Child" : ["154", "155", "156", "157", "160", "162"],
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
	{"ID" : "154", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakWidth1600_Spon_2_fu_152.grp_KeccakP1600_Permute_s_fu_285.KeccakRhoOffsets_U", "Parent" : "153"},
	{"ID" : "155", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakWidth1600_Spon_2_fu_152.grp_KeccakP1600_Permute_s_fu_285.KeccakRoundConstants_U", "Parent" : "153"},
	{"ID" : "156", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakWidth1600_Spon_2_fu_152.grp_KeccakP1600_Permute_s_fu_285.stateAsWords_U", "Parent" : "153"},
	{"ID" : "157", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakWidth1600_Spon_2_fu_152.grp_KeccakP1600_Permute_s_fu_285.grp_theta_fu_225", "Parent" : "153", "Child" : ["158", "159"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "158", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakWidth1600_Spon_2_fu_152.grp_KeccakP1600_Permute_s_fu_285.grp_theta_fu_225.C_U", "Parent" : "157"},
	{"ID" : "159", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakWidth1600_Spon_2_fu_152.grp_KeccakP1600_Permute_s_fu_285.grp_theta_fu_225.D_U", "Parent" : "157"},
	{"ID" : "160", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakWidth1600_Spon_2_fu_152.grp_KeccakP1600_Permute_s_fu_285.grp_chi_fu_230", "Parent" : "153", "Child" : ["161"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "161", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakWidth1600_Spon_2_fu_152.grp_KeccakP1600_Permute_s_fu_285.grp_chi_fu_230.C_U", "Parent" : "160"},
	{"ID" : "162", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakWidth1600_Spon_2_fu_152.grp_KeccakP1600_Permute_s_fu_285.grp_pi_fu_235", "Parent" : "153", "Child" : ["163", "164"],
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
	{"ID" : "163", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakWidth1600_Spon_2_fu_152.grp_KeccakP1600_Permute_s_fu_285.grp_pi_fu_235.tempA_U", "Parent" : "162"},
	{"ID" : "164", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakWidth1600_Spon_2_fu_152.grp_KeccakP1600_Permute_s_fu_285.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "162"},
	{"ID" : "165", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_HashUpdate_2_fu_169", "Parent" : "150", "Child" : ["166", "167"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_10_fu_162"}],
		"Port" : [
			{"Name" : "ctx_sponge_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "167", "SubInstance" : "grp_KeccakWidth1600_Spon_10_fu_162", "Port" : "instance_state"}]},
			{"Name" : "ctx_sponge_byteIOInd", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "167", "SubInstance" : "grp_KeccakWidth1600_Spon_10_fu_162", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "167", "SubInstance" : "grp_KeccakWidth1600_Spon_10_fu_162", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "166", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_HashUpdate_2_fu_169.temp_U", "Parent" : "165"},
	{"ID" : "167", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_HashUpdate_2_fu_169.grp_KeccakWidth1600_Spon_10_fu_162", "Parent" : "165", "Child" : ["168"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "168", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "168", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "168", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "168", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_HashUpdate_2_fu_169.grp_KeccakWidth1600_Spon_10_fu_162.grp_KeccakP1600_Permute_s_fu_176", "Parent" : "167", "Child" : ["169", "170", "171", "172", "175", "177"],
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
	{"ID" : "169", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_HashUpdate_2_fu_169.grp_KeccakWidth1600_Spon_10_fu_162.grp_KeccakP1600_Permute_s_fu_176.KeccakRhoOffsets_U", "Parent" : "168"},
	{"ID" : "170", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_HashUpdate_2_fu_169.grp_KeccakWidth1600_Spon_10_fu_162.grp_KeccakP1600_Permute_s_fu_176.KeccakRoundConstants_U", "Parent" : "168"},
	{"ID" : "171", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_HashUpdate_2_fu_169.grp_KeccakWidth1600_Spon_10_fu_162.grp_KeccakP1600_Permute_s_fu_176.stateAsWords_U", "Parent" : "168"},
	{"ID" : "172", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_HashUpdate_2_fu_169.grp_KeccakWidth1600_Spon_10_fu_162.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225", "Parent" : "168", "Child" : ["173", "174"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "173", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_HashUpdate_2_fu_169.grp_KeccakWidth1600_Spon_10_fu_162.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.C_U", "Parent" : "172"},
	{"ID" : "174", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_HashUpdate_2_fu_169.grp_KeccakWidth1600_Spon_10_fu_162.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.D_U", "Parent" : "172"},
	{"ID" : "175", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_HashUpdate_2_fu_169.grp_KeccakWidth1600_Spon_10_fu_162.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230", "Parent" : "168", "Child" : ["176"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "176", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_HashUpdate_2_fu_169.grp_KeccakWidth1600_Spon_10_fu_162.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230.C_U", "Parent" : "175"},
	{"ID" : "177", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_HashUpdate_2_fu_169.grp_KeccakWidth1600_Spon_10_fu_162.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235", "Parent" : "168", "Child" : ["178", "179"],
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
	{"ID" : "178", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_HashUpdate_2_fu_169.grp_KeccakWidth1600_Spon_10_fu_162.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.tempA_U", "Parent" : "177"},
	{"ID" : "179", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_HashUpdate_2_fu_169.grp_KeccakWidth1600_Spon_10_fu_162.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "177"},
	{"ID" : "180", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakWidth1600_Spon_3_fu_184", "Parent" : "150", "Child" : ["181"],
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
					{"ID" : "181", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_244", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "181", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_244", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "181", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_244", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "181", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakWidth1600_Spon_3_fu_184.grp_KeccakP1600_Permute_s_fu_244", "Parent" : "180", "Child" : ["182", "183", "184", "185", "188", "190"],
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
	{"ID" : "182", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakWidth1600_Spon_3_fu_184.grp_KeccakP1600_Permute_s_fu_244.KeccakRhoOffsets_U", "Parent" : "181"},
	{"ID" : "183", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakWidth1600_Spon_3_fu_184.grp_KeccakP1600_Permute_s_fu_244.KeccakRoundConstants_U", "Parent" : "181"},
	{"ID" : "184", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakWidth1600_Spon_3_fu_184.grp_KeccakP1600_Permute_s_fu_244.stateAsWords_U", "Parent" : "181"},
	{"ID" : "185", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakWidth1600_Spon_3_fu_184.grp_KeccakP1600_Permute_s_fu_244.grp_theta_fu_225", "Parent" : "181", "Child" : ["186", "187"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "186", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakWidth1600_Spon_3_fu_184.grp_KeccakP1600_Permute_s_fu_244.grp_theta_fu_225.C_U", "Parent" : "185"},
	{"ID" : "187", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakWidth1600_Spon_3_fu_184.grp_KeccakP1600_Permute_s_fu_244.grp_theta_fu_225.D_U", "Parent" : "185"},
	{"ID" : "188", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakWidth1600_Spon_3_fu_184.grp_KeccakP1600_Permute_s_fu_244.grp_chi_fu_230", "Parent" : "181", "Child" : ["189"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "189", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakWidth1600_Spon_3_fu_184.grp_KeccakP1600_Permute_s_fu_244.grp_chi_fu_230.C_U", "Parent" : "188"},
	{"ID" : "190", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakWidth1600_Spon_3_fu_184.grp_KeccakP1600_Permute_s_fu_244.grp_pi_fu_235", "Parent" : "181", "Child" : ["191", "192"],
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
	{"ID" : "191", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakWidth1600_Spon_3_fu_184.grp_KeccakP1600_Permute_s_fu_244.grp_pi_fu_235.tempA_U", "Parent" : "190"},
	{"ID" : "192", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakWidth1600_Spon_3_fu_184.grp_KeccakP1600_Permute_s_fu_244.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "190"},
	{"ID" : "193", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakWidth1600_Spon_16_fu_197", "Parent" : "150", "Child" : ["194"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_158"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_158"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "194", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_158", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dataByteLen", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "194", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_158", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "194", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_158", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "194", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakWidth1600_Spon_16_fu_197.grp_KeccakP1600_Permute_s_fu_158", "Parent" : "193", "Child" : ["195", "196", "197", "198", "201", "203"],
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
	{"ID" : "195", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakWidth1600_Spon_16_fu_197.grp_KeccakP1600_Permute_s_fu_158.KeccakRhoOffsets_U", "Parent" : "194"},
	{"ID" : "196", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakWidth1600_Spon_16_fu_197.grp_KeccakP1600_Permute_s_fu_158.KeccakRoundConstants_U", "Parent" : "194"},
	{"ID" : "197", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakWidth1600_Spon_16_fu_197.grp_KeccakP1600_Permute_s_fu_158.stateAsWords_U", "Parent" : "194"},
	{"ID" : "198", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakWidth1600_Spon_16_fu_197.grp_KeccakP1600_Permute_s_fu_158.grp_theta_fu_225", "Parent" : "194", "Child" : ["199", "200"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "199", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakWidth1600_Spon_16_fu_197.grp_KeccakP1600_Permute_s_fu_158.grp_theta_fu_225.C_U", "Parent" : "198"},
	{"ID" : "200", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakWidth1600_Spon_16_fu_197.grp_KeccakP1600_Permute_s_fu_158.grp_theta_fu_225.D_U", "Parent" : "198"},
	{"ID" : "201", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakWidth1600_Spon_16_fu_197.grp_KeccakP1600_Permute_s_fu_158.grp_chi_fu_230", "Parent" : "194", "Child" : ["202"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "202", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakWidth1600_Spon_16_fu_197.grp_KeccakP1600_Permute_s_fu_158.grp_chi_fu_230.C_U", "Parent" : "201"},
	{"ID" : "203", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakWidth1600_Spon_16_fu_197.grp_KeccakP1600_Permute_s_fu_158.grp_pi_fu_235", "Parent" : "194", "Child" : ["204", "205"],
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
	{"ID" : "204", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakWidth1600_Spon_16_fu_197.grp_KeccakP1600_Permute_s_fu_158.grp_pi_fu_235.tempA_U", "Parent" : "203"},
	{"ID" : "205", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakWidth1600_Spon_16_fu_197.grp_KeccakP1600_Permute_s_fu_158.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "203"},
	{"ID" : "206", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakWidth1600_Spon_11_fu_210", "Parent" : "150", "Child" : ["207"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_163"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_163"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "207", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_163", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "207", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_163", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "207", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_163", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "207", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakWidth1600_Spon_11_fu_210.grp_KeccakP1600_Permute_s_fu_163", "Parent" : "206", "Child" : ["208", "209", "210", "211", "214", "216"],
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
	{"ID" : "208", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakWidth1600_Spon_11_fu_210.grp_KeccakP1600_Permute_s_fu_163.KeccakRhoOffsets_U", "Parent" : "207"},
	{"ID" : "209", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakWidth1600_Spon_11_fu_210.grp_KeccakP1600_Permute_s_fu_163.KeccakRoundConstants_U", "Parent" : "207"},
	{"ID" : "210", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakWidth1600_Spon_11_fu_210.grp_KeccakP1600_Permute_s_fu_163.stateAsWords_U", "Parent" : "207"},
	{"ID" : "211", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakWidth1600_Spon_11_fu_210.grp_KeccakP1600_Permute_s_fu_163.grp_theta_fu_225", "Parent" : "207", "Child" : ["212", "213"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "212", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakWidth1600_Spon_11_fu_210.grp_KeccakP1600_Permute_s_fu_163.grp_theta_fu_225.C_U", "Parent" : "211"},
	{"ID" : "213", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakWidth1600_Spon_11_fu_210.grp_KeccakP1600_Permute_s_fu_163.grp_theta_fu_225.D_U", "Parent" : "211"},
	{"ID" : "214", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakWidth1600_Spon_11_fu_210.grp_KeccakP1600_Permute_s_fu_163.grp_chi_fu_230", "Parent" : "207", "Child" : ["215"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "215", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakWidth1600_Spon_11_fu_210.grp_KeccakP1600_Permute_s_fu_163.grp_chi_fu_230.C_U", "Parent" : "214"},
	{"ID" : "216", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakWidth1600_Spon_11_fu_210.grp_KeccakP1600_Permute_s_fu_163.grp_pi_fu_235", "Parent" : "207", "Child" : ["217", "218"],
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
	{"ID" : "217", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakWidth1600_Spon_11_fu_210.grp_KeccakP1600_Permute_s_fu_163.grp_pi_fu_235.tempA_U", "Parent" : "216"},
	{"ID" : "218", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakWidth1600_Spon_11_fu_210.grp_KeccakP1600_Permute_s_fu_163.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "216"},
	{"ID" : "219", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakP1600_Permute_s_fu_222", "Parent" : "150", "Child" : ["220", "221", "222", "223", "226", "228"],
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
	{"ID" : "220", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakP1600_Permute_s_fu_222.KeccakRhoOffsets_U", "Parent" : "219"},
	{"ID" : "221", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakP1600_Permute_s_fu_222.KeccakRoundConstants_U", "Parent" : "219"},
	{"ID" : "222", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakP1600_Permute_s_fu_222.stateAsWords_U", "Parent" : "219"},
	{"ID" : "223", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakP1600_Permute_s_fu_222.grp_theta_fu_225", "Parent" : "219", "Child" : ["224", "225"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "224", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakP1600_Permute_s_fu_222.grp_theta_fu_225.C_U", "Parent" : "223"},
	{"ID" : "225", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakP1600_Permute_s_fu_222.grp_theta_fu_225.D_U", "Parent" : "223"},
	{"ID" : "226", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakP1600_Permute_s_fu_222.grp_chi_fu_230", "Parent" : "219", "Child" : ["227"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "227", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakP1600_Permute_s_fu_222.grp_chi_fu_230.C_U", "Parent" : "226"},
	{"ID" : "228", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakP1600_Permute_s_fu_222.grp_pi_fu_235", "Parent" : "219", "Child" : ["229", "230"],
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
	{"ID" : "229", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakP1600_Permute_s_fu_222.grp_pi_fu_235.tempA_U", "Parent" : "228"},
	{"ID" : "230", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_computeSeeds_2_fu_11807.grp_KeccakP1600_Permute_s_fu_222.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "228"},
	{"ID" : "231", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_11829", "Parent" : "15", "Child" : ["232", "233", "237", "241", "249", "250", "251", "252", "253", "254", "255", "256", "257", "258", "259", "260", "261"],
		"CDFG" : "mpc_LowMC_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "334527", "EstimateLatencyMax" : "334527",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_957"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_957"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_957"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_957"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_957"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_957"},
			{"State" : "ap_ST_fsm_state43", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_1_fu_978"},
			{"State" : "ap_ST_fsm_state45", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_1_fu_978"},
			{"State" : "ap_ST_fsm_state47", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_1_fu_978"},
			{"State" : "ap_ST_fsm_state29", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mpc_AND_2_fu_991"},
			{"State" : "ap_ST_fsm_state31", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mpc_AND_2_fu_991"},
			{"State" : "ap_ST_fsm_state33", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mpc_AND_2_fu_991"}],
		"Port" : [
			{"Name" : "tapes_tape", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "241", "SubInstance" : "grp_mpc_AND_2_fu_991", "Port" : "rand_tape"}]},
			{"Name" : "views_inputShare", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "233", "SubInstance" : "grp_matrix_mul_fu_957", "Port" : "state"}]},
			{"Name" : "views_inputShare_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "views_communicatedBi", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "241", "SubInstance" : "grp_mpc_AND_2_fu_991", "Port" : "views_communicatedBi"}]},
			{"Name" : "views_outputShare", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "slab", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "237", "SubInstance" : "grp_matrix_mul_1_fu_978", "Port" : "output_r"},
					{"ID" : "233", "SubInstance" : "grp_matrix_mul_fu_957", "Port" : "output_r"}]},
			{"Name" : "temp_matrix", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "233", "SubInstance" : "grp_matrix_mul_fu_957", "Port" : "temp_matrix"}]},
			{"Name" : "temp_matrix2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "237", "SubInstance" : "grp_matrix_mul_1_fu_978", "Port" : "temp_matrix2"}]},
			{"Name" : "temp_matrix3", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "232", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_11829.temp_matrix3_U", "Parent" : "231"},
	{"ID" : "233", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_11829.grp_matrix_mul_fu_957", "Parent" : "231", "Child" : ["234", "235", "236"],
		"CDFG" : "matrix_mul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2570", "EstimateLatencyMax" : "2570",
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
	{"ID" : "234", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_11829.grp_matrix_mul_fu_957.temp_matrix_U", "Parent" : "233"},
	{"ID" : "235", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_11829.grp_matrix_mul_fu_957.prod_U", "Parent" : "233"},
	{"ID" : "236", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_11829.grp_matrix_mul_fu_957.temp_U", "Parent" : "233"},
	{"ID" : "237", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_11829.grp_matrix_mul_1_fu_978", "Parent" : "231", "Child" : ["238", "239", "240"],
		"CDFG" : "matrix_mul_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2570", "EstimateLatencyMax" : "2570",
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
	{"ID" : "238", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_11829.grp_matrix_mul_1_fu_978.temp_matrix2_U", "Parent" : "237"},
	{"ID" : "239", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_11829.grp_matrix_mul_1_fu_978.prod_U", "Parent" : "237"},
	{"ID" : "240", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_11829.grp_matrix_mul_1_fu_978.temp_U", "Parent" : "237"},
	{"ID" : "241", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_11829.grp_mpc_AND_2_fu_991", "Parent" : "231", "Child" : ["242", "243", "244", "245", "246", "247", "248"],
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
	{"ID" : "242", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_11829.grp_mpc_AND_2_fu_991.crypto_sign_mux_3hbi_U84", "Parent" : "241"},
	{"ID" : "243", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_11829.grp_mpc_AND_2_fu_991.crypto_sign_mux_3hbi_U85", "Parent" : "241"},
	{"ID" : "244", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_11829.grp_mpc_AND_2_fu_991.crypto_sign_mux_3hbi_U86", "Parent" : "241"},
	{"ID" : "245", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_11829.grp_mpc_AND_2_fu_991.crypto_sign_mux_3hbi_U87", "Parent" : "241"},
	{"ID" : "246", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_11829.grp_mpc_AND_2_fu_991.crypto_sign_mux_3hbi_U88", "Parent" : "241"},
	{"ID" : "247", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_11829.grp_mpc_AND_2_fu_991.crypto_sign_mux_3hbi_U89", "Parent" : "241"},
	{"ID" : "248", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_11829.grp_mpc_AND_2_fu_991.crypto_sign_ama_aibs_U90", "Parent" : "241"},
	{"ID" : "249", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_11829.crypto_sign_mux_4lbW_U110", "Parent" : "231"},
	{"ID" : "250", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_11829.crypto_sign_mux_3hbi_U111", "Parent" : "231"},
	{"ID" : "251", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_11829.crypto_sign_mux_3hbi_U112", "Parent" : "231"},
	{"ID" : "252", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_11829.crypto_sign_mux_3hbi_U113", "Parent" : "231"},
	{"ID" : "253", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_11829.crypto_sign_mux_3hbi_U114", "Parent" : "231"},
	{"ID" : "254", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_11829.crypto_sign_mux_3hbi_U115", "Parent" : "231"},
	{"ID" : "255", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_11829.crypto_sign_mux_3hbi_U116", "Parent" : "231"},
	{"ID" : "256", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_11829.crypto_sign_mux_3hbi_U117", "Parent" : "231"},
	{"ID" : "257", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_11829.crypto_sign_mux_3hbi_U118", "Parent" : "231"},
	{"ID" : "258", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_11829.crypto_sign_mux_3hbi_U119", "Parent" : "231"},
	{"ID" : "259", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_11829.crypto_sign_mux_4lbW_U120", "Parent" : "231"},
	{"ID" : "260", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_11829.crypto_sign_mux_4lbW_U121", "Parent" : "231"},
	{"ID" : "261", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_mpc_LowMC_2_fu_11829.crypto_sign_mux_4lbW_U122", "Parent" : "231"},
	{"ID" : "262", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_1_fu_11848", "Parent" : "15", "Child" : ["263"],
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
					{"ID" : "263", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_244", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dataByteLen", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "263", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_244", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "263", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_244", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "263", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_1_fu_11848.grp_KeccakP1600_Permute_s_fu_244", "Parent" : "262", "Child" : ["264", "265", "266", "267", "270", "272"],
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
	{"ID" : "264", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_1_fu_11848.grp_KeccakP1600_Permute_s_fu_244.KeccakRhoOffsets_U", "Parent" : "263"},
	{"ID" : "265", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_1_fu_11848.grp_KeccakP1600_Permute_s_fu_244.KeccakRoundConstants_U", "Parent" : "263"},
	{"ID" : "266", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_1_fu_11848.grp_KeccakP1600_Permute_s_fu_244.stateAsWords_U", "Parent" : "263"},
	{"ID" : "267", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_1_fu_11848.grp_KeccakP1600_Permute_s_fu_244.grp_theta_fu_225", "Parent" : "263", "Child" : ["268", "269"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "268", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_1_fu_11848.grp_KeccakP1600_Permute_s_fu_244.grp_theta_fu_225.C_U", "Parent" : "267"},
	{"ID" : "269", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_1_fu_11848.grp_KeccakP1600_Permute_s_fu_244.grp_theta_fu_225.D_U", "Parent" : "267"},
	{"ID" : "270", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_1_fu_11848.grp_KeccakP1600_Permute_s_fu_244.grp_chi_fu_230", "Parent" : "263", "Child" : ["271"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "271", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_1_fu_11848.grp_KeccakP1600_Permute_s_fu_244.grp_chi_fu_230.C_U", "Parent" : "270"},
	{"ID" : "272", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_1_fu_11848.grp_KeccakP1600_Permute_s_fu_244.grp_pi_fu_235", "Parent" : "263", "Child" : ["273", "274"],
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
	{"ID" : "273", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_1_fu_11848.grp_KeccakP1600_Permute_s_fu_244.grp_pi_fu_235.tempA_U", "Parent" : "272"},
	{"ID" : "274", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_1_fu_11848.grp_KeccakP1600_Permute_s_fu_244.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "272"},
	{"ID" : "275", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_5_fu_11863", "Parent" : "15", "Child" : ["276"],
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
					{"ID" : "276", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_242", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dataByteLen", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "276", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_242", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "276", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_242", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "276", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_5_fu_11863.grp_KeccakP1600_Permute_s_fu_242", "Parent" : "275", "Child" : ["277", "278", "279", "280", "283", "285"],
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
	{"ID" : "277", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_5_fu_11863.grp_KeccakP1600_Permute_s_fu_242.KeccakRhoOffsets_U", "Parent" : "276"},
	{"ID" : "278", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_5_fu_11863.grp_KeccakP1600_Permute_s_fu_242.KeccakRoundConstants_U", "Parent" : "276"},
	{"ID" : "279", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_5_fu_11863.grp_KeccakP1600_Permute_s_fu_242.stateAsWords_U", "Parent" : "276"},
	{"ID" : "280", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_5_fu_11863.grp_KeccakP1600_Permute_s_fu_242.grp_theta_fu_225", "Parent" : "276", "Child" : ["281", "282"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "281", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_5_fu_11863.grp_KeccakP1600_Permute_s_fu_242.grp_theta_fu_225.C_U", "Parent" : "280"},
	{"ID" : "282", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_5_fu_11863.grp_KeccakP1600_Permute_s_fu_242.grp_theta_fu_225.D_U", "Parent" : "280"},
	{"ID" : "283", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_5_fu_11863.grp_KeccakP1600_Permute_s_fu_242.grp_chi_fu_230", "Parent" : "276", "Child" : ["284"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "284", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_5_fu_11863.grp_KeccakP1600_Permute_s_fu_242.grp_chi_fu_230.C_U", "Parent" : "283"},
	{"ID" : "285", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_5_fu_11863.grp_KeccakP1600_Permute_s_fu_242.grp_pi_fu_235", "Parent" : "276", "Child" : ["286", "287"],
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
	{"ID" : "286", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_5_fu_11863.grp_KeccakP1600_Permute_s_fu_242.grp_pi_fu_235.tempA_U", "Parent" : "285"},
	{"ID" : "287", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_5_fu_11863.grp_KeccakP1600_Permute_s_fu_242.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "285"},
	{"ID" : "288", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_HashUpdate_2_2_fu_11878", "Parent" : "15", "Child" : ["289", "290"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_10_fu_188"}],
		"Port" : [
			{"Name" : "ctx_sponge_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "290", "SubInstance" : "grp_KeccakWidth1600_Spon_10_fu_188", "Port" : "instance_state"}]},
			{"Name" : "ctx_sponge_byteIOInd", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "290", "SubInstance" : "grp_KeccakWidth1600_Spon_10_fu_188", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "290", "SubInstance" : "grp_KeccakWidth1600_Spon_10_fu_188", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "289", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_HashUpdate_2_2_fu_11878.temp_U", "Parent" : "288"},
	{"ID" : "290", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_HashUpdate_2_2_fu_11878.grp_KeccakWidth1600_Spon_10_fu_188", "Parent" : "288", "Child" : ["291"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "291", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "291", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "291", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "291", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_HashUpdate_2_2_fu_11878.grp_KeccakWidth1600_Spon_10_fu_188.grp_KeccakP1600_Permute_s_fu_176", "Parent" : "290", "Child" : ["292", "293", "294", "295", "298", "300"],
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
	{"ID" : "292", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_HashUpdate_2_2_fu_11878.grp_KeccakWidth1600_Spon_10_fu_188.grp_KeccakP1600_Permute_s_fu_176.KeccakRhoOffsets_U", "Parent" : "291"},
	{"ID" : "293", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_HashUpdate_2_2_fu_11878.grp_KeccakWidth1600_Spon_10_fu_188.grp_KeccakP1600_Permute_s_fu_176.KeccakRoundConstants_U", "Parent" : "291"},
	{"ID" : "294", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_HashUpdate_2_2_fu_11878.grp_KeccakWidth1600_Spon_10_fu_188.grp_KeccakP1600_Permute_s_fu_176.stateAsWords_U", "Parent" : "291"},
	{"ID" : "295", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_HashUpdate_2_2_fu_11878.grp_KeccakWidth1600_Spon_10_fu_188.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225", "Parent" : "291", "Child" : ["296", "297"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "296", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_HashUpdate_2_2_fu_11878.grp_KeccakWidth1600_Spon_10_fu_188.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.C_U", "Parent" : "295"},
	{"ID" : "297", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_HashUpdate_2_2_fu_11878.grp_KeccakWidth1600_Spon_10_fu_188.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.D_U", "Parent" : "295"},
	{"ID" : "298", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_HashUpdate_2_2_fu_11878.grp_KeccakWidth1600_Spon_10_fu_188.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230", "Parent" : "291", "Child" : ["299"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "299", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_HashUpdate_2_2_fu_11878.grp_KeccakWidth1600_Spon_10_fu_188.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230.C_U", "Parent" : "298"},
	{"ID" : "300", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_HashUpdate_2_2_fu_11878.grp_KeccakWidth1600_Spon_10_fu_188.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235", "Parent" : "291", "Child" : ["301", "302"],
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
	{"ID" : "301", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_HashUpdate_2_2_fu_11878.grp_KeccakWidth1600_Spon_10_fu_188.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.tempA_U", "Parent" : "300"},
	{"ID" : "302", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_HashUpdate_2_2_fu_11878.grp_KeccakWidth1600_Spon_10_fu_188.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "300"},
	{"ID" : "303", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_fu_11895", "Parent" : "15", "Child" : ["304"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_274"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_274"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_274"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "304", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_274", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "304", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_274", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "304", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_274", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "304", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_fu_11895.grp_KeccakP1600_Permute_s_fu_274", "Parent" : "303", "Child" : ["305", "306", "307", "308", "311", "313"],
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
	{"ID" : "305", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_fu_11895.grp_KeccakP1600_Permute_s_fu_274.KeccakRhoOffsets_U", "Parent" : "304"},
	{"ID" : "306", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_fu_11895.grp_KeccakP1600_Permute_s_fu_274.KeccakRoundConstants_U", "Parent" : "304"},
	{"ID" : "307", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_fu_11895.grp_KeccakP1600_Permute_s_fu_274.stateAsWords_U", "Parent" : "304"},
	{"ID" : "308", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_fu_11895.grp_KeccakP1600_Permute_s_fu_274.grp_theta_fu_225", "Parent" : "304", "Child" : ["309", "310"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "309", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_fu_11895.grp_KeccakP1600_Permute_s_fu_274.grp_theta_fu_225.C_U", "Parent" : "308"},
	{"ID" : "310", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_fu_11895.grp_KeccakP1600_Permute_s_fu_274.grp_theta_fu_225.D_U", "Parent" : "308"},
	{"ID" : "311", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_fu_11895.grp_KeccakP1600_Permute_s_fu_274.grp_chi_fu_230", "Parent" : "304", "Child" : ["312"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "312", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_fu_11895.grp_KeccakP1600_Permute_s_fu_274.grp_chi_fu_230.C_U", "Parent" : "311"},
	{"ID" : "313", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_fu_11895.grp_KeccakP1600_Permute_s_fu_274.grp_pi_fu_235", "Parent" : "304", "Child" : ["314", "315"],
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
	{"ID" : "314", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_fu_11895.grp_KeccakP1600_Permute_s_fu_274.grp_pi_fu_235.tempA_U", "Parent" : "313"},
	{"ID" : "315", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_fu_11895.grp_KeccakP1600_Permute_s_fu_274.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "313"},
	{"ID" : "316", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_6_fu_11913", "Parent" : "15", "Child" : ["317"],
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
					{"ID" : "317", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "317", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "317", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "317", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_6_fu_11913.grp_KeccakP1600_Permute_s_fu_204", "Parent" : "316", "Child" : ["318", "319", "320", "321", "324", "326"],
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
	{"ID" : "318", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_6_fu_11913.grp_KeccakP1600_Permute_s_fu_204.KeccakRhoOffsets_U", "Parent" : "317"},
	{"ID" : "319", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_6_fu_11913.grp_KeccakP1600_Permute_s_fu_204.KeccakRoundConstants_U", "Parent" : "317"},
	{"ID" : "320", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_6_fu_11913.grp_KeccakP1600_Permute_s_fu_204.stateAsWords_U", "Parent" : "317"},
	{"ID" : "321", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_6_fu_11913.grp_KeccakP1600_Permute_s_fu_204.grp_theta_fu_225", "Parent" : "317", "Child" : ["322", "323"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "322", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_6_fu_11913.grp_KeccakP1600_Permute_s_fu_204.grp_theta_fu_225.C_U", "Parent" : "321"},
	{"ID" : "323", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_6_fu_11913.grp_KeccakP1600_Permute_s_fu_204.grp_theta_fu_225.D_U", "Parent" : "321"},
	{"ID" : "324", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_6_fu_11913.grp_KeccakP1600_Permute_s_fu_204.grp_chi_fu_230", "Parent" : "317", "Child" : ["325"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "325", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_6_fu_11913.grp_KeccakP1600_Permute_s_fu_204.grp_chi_fu_230.C_U", "Parent" : "324"},
	{"ID" : "326", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_6_fu_11913.grp_KeccakP1600_Permute_s_fu_204.grp_pi_fu_235", "Parent" : "317", "Child" : ["327", "328"],
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
	{"ID" : "327", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_6_fu_11913.grp_KeccakP1600_Permute_s_fu_204.grp_pi_fu_235.tempA_U", "Parent" : "326"},
	{"ID" : "328", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_6_fu_11913.grp_KeccakP1600_Permute_s_fu_204.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "326"},
	{"ID" : "329", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_8_fu_11930", "Parent" : "15", "Child" : ["330"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "330", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "330", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "330", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "330", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_8_fu_11930.grp_KeccakP1600_Permute_s_fu_204", "Parent" : "329", "Child" : ["331", "332", "333", "334", "337", "339"],
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
	{"ID" : "331", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_8_fu_11930.grp_KeccakP1600_Permute_s_fu_204.KeccakRhoOffsets_U", "Parent" : "330"},
	{"ID" : "332", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_8_fu_11930.grp_KeccakP1600_Permute_s_fu_204.KeccakRoundConstants_U", "Parent" : "330"},
	{"ID" : "333", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_8_fu_11930.grp_KeccakP1600_Permute_s_fu_204.stateAsWords_U", "Parent" : "330"},
	{"ID" : "334", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_8_fu_11930.grp_KeccakP1600_Permute_s_fu_204.grp_theta_fu_225", "Parent" : "330", "Child" : ["335", "336"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "335", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_8_fu_11930.grp_KeccakP1600_Permute_s_fu_204.grp_theta_fu_225.C_U", "Parent" : "334"},
	{"ID" : "336", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_8_fu_11930.grp_KeccakP1600_Permute_s_fu_204.grp_theta_fu_225.D_U", "Parent" : "334"},
	{"ID" : "337", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_8_fu_11930.grp_KeccakP1600_Permute_s_fu_204.grp_chi_fu_230", "Parent" : "330", "Child" : ["338"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "338", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_8_fu_11930.grp_KeccakP1600_Permute_s_fu_204.grp_chi_fu_230.C_U", "Parent" : "337"},
	{"ID" : "339", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_8_fu_11930.grp_KeccakP1600_Permute_s_fu_204.grp_pi_fu_235", "Parent" : "330", "Child" : ["340", "341"],
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
	{"ID" : "340", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_8_fu_11930.grp_KeccakP1600_Permute_s_fu_204.grp_pi_fu_235.tempA_U", "Parent" : "339"},
	{"ID" : "341", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_8_fu_11930.grp_KeccakP1600_Permute_s_fu_204.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "339"},
	{"ID" : "342", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_7_fu_11947", "Parent" : "15", "Child" : ["343"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_178"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_178"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "343", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_178", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "343", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_178", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "343", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_178", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "343", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_7_fu_11947.grp_KeccakP1600_Permute_s_fu_178", "Parent" : "342", "Child" : ["344", "345", "346", "347", "350", "352"],
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
	{"ID" : "344", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_7_fu_11947.grp_KeccakP1600_Permute_s_fu_178.KeccakRhoOffsets_U", "Parent" : "343"},
	{"ID" : "345", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_7_fu_11947.grp_KeccakP1600_Permute_s_fu_178.KeccakRoundConstants_U", "Parent" : "343"},
	{"ID" : "346", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_7_fu_11947.grp_KeccakP1600_Permute_s_fu_178.stateAsWords_U", "Parent" : "343"},
	{"ID" : "347", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_7_fu_11947.grp_KeccakP1600_Permute_s_fu_178.grp_theta_fu_225", "Parent" : "343", "Child" : ["348", "349"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "348", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_7_fu_11947.grp_KeccakP1600_Permute_s_fu_178.grp_theta_fu_225.C_U", "Parent" : "347"},
	{"ID" : "349", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_7_fu_11947.grp_KeccakP1600_Permute_s_fu_178.grp_theta_fu_225.D_U", "Parent" : "347"},
	{"ID" : "350", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_7_fu_11947.grp_KeccakP1600_Permute_s_fu_178.grp_chi_fu_230", "Parent" : "343", "Child" : ["351"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "351", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_7_fu_11947.grp_KeccakP1600_Permute_s_fu_178.grp_chi_fu_230.C_U", "Parent" : "350"},
	{"ID" : "352", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_7_fu_11947.grp_KeccakP1600_Permute_s_fu_178.grp_pi_fu_235", "Parent" : "343", "Child" : ["353", "354"],
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
	{"ID" : "353", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_7_fu_11947.grp_KeccakP1600_Permute_s_fu_178.grp_pi_fu_235.tempA_U", "Parent" : "352"},
	{"ID" : "354", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_7_fu_11947.grp_KeccakP1600_Permute_s_fu_178.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "352"},
	{"ID" : "355", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_15_fu_11958", "Parent" : "15", "Child" : ["356"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "356", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "356", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "356", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "356", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_15_fu_11958.grp_KeccakP1600_Permute_s_fu_176", "Parent" : "355", "Child" : ["357", "358", "359", "360", "363", "365"],
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
	{"ID" : "357", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_15_fu_11958.grp_KeccakP1600_Permute_s_fu_176.KeccakRhoOffsets_U", "Parent" : "356"},
	{"ID" : "358", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_15_fu_11958.grp_KeccakP1600_Permute_s_fu_176.KeccakRoundConstants_U", "Parent" : "356"},
	{"ID" : "359", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_15_fu_11958.grp_KeccakP1600_Permute_s_fu_176.stateAsWords_U", "Parent" : "356"},
	{"ID" : "360", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_15_fu_11958.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225", "Parent" : "356", "Child" : ["361", "362"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "361", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_15_fu_11958.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.C_U", "Parent" : "360"},
	{"ID" : "362", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_15_fu_11958.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.D_U", "Parent" : "360"},
	{"ID" : "363", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_15_fu_11958.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230", "Parent" : "356", "Child" : ["364"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "364", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_15_fu_11958.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230.C_U", "Parent" : "363"},
	{"ID" : "365", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_15_fu_11958.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235", "Parent" : "356", "Child" : ["366", "367"],
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
	{"ID" : "366", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_15_fu_11958.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.tempA_U", "Parent" : "365"},
	{"ID" : "367", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_15_fu_11958.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "365"},
	{"ID" : "368", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_9_fu_11969", "Parent" : "15", "Child" : ["369"],
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
					{"ID" : "369", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "369", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "369", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "369", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_9_fu_11969.grp_KeccakP1600_Permute_s_fu_176", "Parent" : "368", "Child" : ["370", "371", "372", "373", "376", "378"],
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
	{"ID" : "370", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_9_fu_11969.grp_KeccakP1600_Permute_s_fu_176.KeccakRhoOffsets_U", "Parent" : "369"},
	{"ID" : "371", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_9_fu_11969.grp_KeccakP1600_Permute_s_fu_176.KeccakRoundConstants_U", "Parent" : "369"},
	{"ID" : "372", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_9_fu_11969.grp_KeccakP1600_Permute_s_fu_176.stateAsWords_U", "Parent" : "369"},
	{"ID" : "373", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_9_fu_11969.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225", "Parent" : "369", "Child" : ["374", "375"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "374", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_9_fu_11969.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.C_U", "Parent" : "373"},
	{"ID" : "375", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_9_fu_11969.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.D_U", "Parent" : "373"},
	{"ID" : "376", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_9_fu_11969.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230", "Parent" : "369", "Child" : ["377"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "377", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_9_fu_11969.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230.C_U", "Parent" : "376"},
	{"ID" : "378", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_9_fu_11969.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235", "Parent" : "369", "Child" : ["379", "380"],
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
	{"ID" : "379", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_9_fu_11969.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.tempA_U", "Parent" : "378"},
	{"ID" : "380", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_9_fu_11969.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "378"},
	{"ID" : "381", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_11_fu_11981", "Parent" : "15", "Child" : ["382"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_163"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_163"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "382", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_163", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "382", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_163", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "382", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_163", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "382", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_11_fu_11981.grp_KeccakP1600_Permute_s_fu_163", "Parent" : "381", "Child" : ["383", "384", "385", "386", "389", "391"],
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
	{"ID" : "383", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_11_fu_11981.grp_KeccakP1600_Permute_s_fu_163.KeccakRhoOffsets_U", "Parent" : "382"},
	{"ID" : "384", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_11_fu_11981.grp_KeccakP1600_Permute_s_fu_163.KeccakRoundConstants_U", "Parent" : "382"},
	{"ID" : "385", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_11_fu_11981.grp_KeccakP1600_Permute_s_fu_163.stateAsWords_U", "Parent" : "382"},
	{"ID" : "386", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_11_fu_11981.grp_KeccakP1600_Permute_s_fu_163.grp_theta_fu_225", "Parent" : "382", "Child" : ["387", "388"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "387", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_11_fu_11981.grp_KeccakP1600_Permute_s_fu_163.grp_theta_fu_225.C_U", "Parent" : "386"},
	{"ID" : "388", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_11_fu_11981.grp_KeccakP1600_Permute_s_fu_163.grp_theta_fu_225.D_U", "Parent" : "386"},
	{"ID" : "389", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_11_fu_11981.grp_KeccakP1600_Permute_s_fu_163.grp_chi_fu_230", "Parent" : "382", "Child" : ["390"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "390", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_11_fu_11981.grp_KeccakP1600_Permute_s_fu_163.grp_chi_fu_230.C_U", "Parent" : "389"},
	{"ID" : "391", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_11_fu_11981.grp_KeccakP1600_Permute_s_fu_163.grp_pi_fu_235", "Parent" : "382", "Child" : ["392", "393"],
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
	{"ID" : "392", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_11_fu_11981.grp_KeccakP1600_Permute_s_fu_163.grp_pi_fu_235.tempA_U", "Parent" : "391"},
	{"ID" : "393", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_11_fu_11981.grp_KeccakP1600_Permute_s_fu_163.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "391"},
	{"ID" : "394", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_12_fu_11996", "Parent" : "15", "Child" : ["395", "407"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_117"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "395", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_117", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "395", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_117", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "395", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_117", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "395", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_12_fu_11996.grp_KeccakP1600_Permute_s_fu_117", "Parent" : "394", "Child" : ["396", "397", "398", "399", "402", "404"],
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
	{"ID" : "396", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_12_fu_11996.grp_KeccakP1600_Permute_s_fu_117.KeccakRhoOffsets_U", "Parent" : "395"},
	{"ID" : "397", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_12_fu_11996.grp_KeccakP1600_Permute_s_fu_117.KeccakRoundConstants_U", "Parent" : "395"},
	{"ID" : "398", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_12_fu_11996.grp_KeccakP1600_Permute_s_fu_117.stateAsWords_U", "Parent" : "395"},
	{"ID" : "399", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_12_fu_11996.grp_KeccakP1600_Permute_s_fu_117.grp_theta_fu_225", "Parent" : "395", "Child" : ["400", "401"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "400", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_12_fu_11996.grp_KeccakP1600_Permute_s_fu_117.grp_theta_fu_225.C_U", "Parent" : "399"},
	{"ID" : "401", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_12_fu_11996.grp_KeccakP1600_Permute_s_fu_117.grp_theta_fu_225.D_U", "Parent" : "399"},
	{"ID" : "402", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_12_fu_11996.grp_KeccakP1600_Permute_s_fu_117.grp_chi_fu_230", "Parent" : "395", "Child" : ["403"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "403", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_12_fu_11996.grp_KeccakP1600_Permute_s_fu_117.grp_chi_fu_230.C_U", "Parent" : "402"},
	{"ID" : "404", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_12_fu_11996.grp_KeccakP1600_Permute_s_fu_117.grp_pi_fu_235", "Parent" : "395", "Child" : ["405", "406"],
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
	{"ID" : "405", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_12_fu_11996.grp_KeccakP1600_Permute_s_fu_117.grp_pi_fu_235.tempA_U", "Parent" : "404"},
	{"ID" : "406", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_12_fu_11996.grp_KeccakP1600_Permute_s_fu_117.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "404"},
	{"ID" : "407", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_KeccakWidth1600_Spon_12_fu_11996.crypto_sign_am_admb6_U148", "Parent" : "394"},
	{"ID" : "408", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_HashInit_fu_12013", "Parent" : "15", "Child" : ["409"],
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
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_13_fu_74"}],
		"Port" : [
			{"Name" : "ctx_sponge_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "409", "SubInstance" : "grp_KeccakWidth1600_Spon_13_fu_74", "Port" : "instance_state"}]},
			{"Name" : "hashPrefix", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "409", "SubInstance" : "grp_KeccakWidth1600_Spon_13_fu_74", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "409", "SubInstance" : "grp_KeccakWidth1600_Spon_13_fu_74", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "409", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_HashInit_fu_12013.grp_KeccakWidth1600_Spon_13_fu_74", "Parent" : "408", "Child" : ["410"],
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "410", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "state"}]},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "410", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "410", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "410", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_HashInit_fu_12013.grp_KeccakWidth1600_Spon_13_fu_74.grp_KeccakP1600_Permute_s_fu_54", "Parent" : "409", "Child" : ["411", "412", "413", "414", "417", "419"],
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
	{"ID" : "411", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_HashInit_fu_12013.grp_KeccakWidth1600_Spon_13_fu_74.grp_KeccakP1600_Permute_s_fu_54.KeccakRhoOffsets_U", "Parent" : "410"},
	{"ID" : "412", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_HashInit_fu_12013.grp_KeccakWidth1600_Spon_13_fu_74.grp_KeccakP1600_Permute_s_fu_54.KeccakRoundConstants_U", "Parent" : "410"},
	{"ID" : "413", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_HashInit_fu_12013.grp_KeccakWidth1600_Spon_13_fu_74.grp_KeccakP1600_Permute_s_fu_54.stateAsWords_U", "Parent" : "410"},
	{"ID" : "414", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_HashInit_fu_12013.grp_KeccakWidth1600_Spon_13_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225", "Parent" : "410", "Child" : ["415", "416"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "415", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_HashInit_fu_12013.grp_KeccakWidth1600_Spon_13_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.C_U", "Parent" : "414"},
	{"ID" : "416", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_HashInit_fu_12013.grp_KeccakWidth1600_Spon_13_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.D_U", "Parent" : "414"},
	{"ID" : "417", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_HashInit_fu_12013.grp_KeccakWidth1600_Spon_13_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230", "Parent" : "410", "Child" : ["418"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "418", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_HashInit_fu_12013.grp_KeccakWidth1600_Spon_13_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230.C_U", "Parent" : "417"},
	{"ID" : "419", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_HashInit_fu_12013.grp_KeccakWidth1600_Spon_13_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235", "Parent" : "410", "Child" : ["420", "421"],
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
	{"ID" : "420", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_HashInit_fu_12013.grp_KeccakWidth1600_Spon_13_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.tempA_U", "Parent" : "419"},
	{"ID" : "421", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_HashInit_fu_12013.grp_KeccakWidth1600_Spon_13_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "419"},
	{"ID" : "422", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_HashFinal_fu_12027", "Parent" : "15", "Child" : ["423"],
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
					{"ID" : "423", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "state"}]},
			{"Name" : "ctx_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "423", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "423", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "423", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_HashFinal_fu_12027.grp_KeccakP1600_Permute_s_fu_54", "Parent" : "422", "Child" : ["424", "425", "426", "427", "430", "432"],
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
	{"ID" : "424", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_HashFinal_fu_12027.grp_KeccakP1600_Permute_s_fu_54.KeccakRhoOffsets_U", "Parent" : "423"},
	{"ID" : "425", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_HashFinal_fu_12027.grp_KeccakP1600_Permute_s_fu_54.KeccakRoundConstants_U", "Parent" : "423"},
	{"ID" : "426", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_HashFinal_fu_12027.grp_KeccakP1600_Permute_s_fu_54.stateAsWords_U", "Parent" : "423"},
	{"ID" : "427", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_HashFinal_fu_12027.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225", "Parent" : "423", "Child" : ["428", "429"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "428", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_HashFinal_fu_12027.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.C_U", "Parent" : "427"},
	{"ID" : "429", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_HashFinal_fu_12027.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.D_U", "Parent" : "427"},
	{"ID" : "430", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_HashFinal_fu_12027.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230", "Parent" : "423", "Child" : ["431"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "431", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_HashFinal_fu_12027.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230.C_U", "Parent" : "430"},
	{"ID" : "432", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_HashFinal_fu_12027.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235", "Parent" : "423", "Child" : ["433", "434"],
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
	{"ID" : "433", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_HashFinal_fu_12027.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.tempA_U", "Parent" : "432"},
	{"ID" : "434", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_HashFinal_fu_12027.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "432"},
	{"ID" : "435", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_prove_26_fu_12037", "Parent" : "15", "Child" : ["436"],
		"CDFG" : "prove_26",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "284", "EstimateLatencyMax" : "292",
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
	{"ID" : "436", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_359.grp_prove_26_fu_12037.crypto_sign_am_adocq_U171", "Parent" : "435"},
	{"ID" : "437", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_serializeSignature_fu_388", "Parent" : "4",
		"CDFG" : "serializeSignature",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "62592", "EstimateLatencyMax" : "67191",
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
	crypto_sign {
		sm {Type O LastRead -1 FirstWrite 2}
		smlen {Type O LastRead -1 FirstWrite 3}
		m {Type I LastRead 6 FirstWrite -1}
		mlen {Type I LastRead 1 FirstWrite -1}
		sk {Type I LastRead 4 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}
		temp_matrix {Type I LastRead -1 FirstWrite -1}
		temp_matrix2 {Type I LastRead -1 FirstWrite -1}
		temp_matrix3 {Type I LastRead -1 FirstWrite -1}
		viewOutputs {Type IO LastRead 6 FirstWrite -1}}
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
	KeccakWidth1600_Spon_16 {
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
	KeccakWidth1600_Spon_10 {
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
	KeccakWidth1600_Spon_9 {
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
	KeccakWidth1600_Spon_14 {
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
	KeccakWidth1600_Spon_13 {
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
	HashUpdate_2 {
		ctx_sponge_state {Type IO LastRead 4 FirstWrite 4}
		ctx_sponge_byteIOInd {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 2 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	KeccakWidth1600_Spon_10 {
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
	KeccakWidth1600_Spon_16 {
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
	KeccakWidth1600_Spon_11 {
		instance_state {Type IO LastRead 3 FirstWrite 3}
		instance_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
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
	HashUpdate_2_2 {
		ctx_sponge_state {Type IO LastRead 4 FirstWrite 4}
		ctx_sponge_byteIOInd {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 2 FirstWrite -1}
		data_offset {Type I LastRead 0 FirstWrite -1}
		data_offset1 {Type I LastRead 0 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	KeccakWidth1600_Spon_10 {
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
	KeccakWidth1600_Spon_8 {
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
	KeccakWidth1600_Spon_11 {
		instance_state {Type IO LastRead 3 FirstWrite 3}
		instance_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
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
	KeccakWidth1600_Spon_12 {
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
	HashInit {
		ctx_sponge_state {Type IO LastRead 2 FirstWrite 1}
		hashPrefix {Type I LastRead 0 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	KeccakWidth1600_Spon_13 {
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
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	sm { ap_memory {  { sm_address0 mem_address 1 16 }  { sm_ce0 mem_ce 1 1 }  { sm_we0 mem_we 1 1 }  { sm_d0 mem_din 1 8 }  { sm_address1 mem_address 1 16 }  { sm_ce1 mem_ce 1 1 }  { sm_we1 mem_we 1 1 }  { sm_d1 mem_din 1 8 } } }
	smlen { ap_memory {  { smlen_address0 mem_address 1 1 }  { smlen_ce0 mem_ce 1 1 }  { smlen_we0 mem_we 1 1 }  { smlen_d0 mem_din 1 64 } } }
	m { ap_memory {  { m_address0 mem_address 1 12 }  { m_ce0 mem_ce 1 1 }  { m_q0 mem_dout 0 8 } } }
	mlen { ap_none {  { mlen in_data 0 64 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 6 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 }  { sk_address1 mem_address 1 6 }  { sk_ce1 mem_ce 1 1 }  { sk_q1 mem_dout 0 8 } } }
	viewOutputs { ap_memory {  { viewOutputs_address0 mem_address 1 14 }  { viewOutputs_ce0 mem_ce 1 1 }  { viewOutputs_we0 mem_we 1 1 }  { viewOutputs_d0 mem_din 1 32 }  { viewOutputs_q0 mem_dout 0 32 }  { viewOutputs_address1 mem_address 1 14 }  { viewOutputs_ce1 mem_ce 1 1 }  { viewOutputs_q1 mem_dout 0 32 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
