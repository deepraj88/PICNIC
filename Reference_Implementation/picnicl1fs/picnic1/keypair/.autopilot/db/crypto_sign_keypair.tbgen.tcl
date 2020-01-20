set C_TypeInfoList {{ 
"crypto_sign_keypair" : [[], {"return": [[], {"scalar": "int"}] }, [{"ExternC" : 0}], [ {"pk": [[], {"array": [ {"scalar": "unsigned char"}, [33]]}] }, {"sk": [[], {"array": [ {"scalar": "unsigned char"}, [49]]}] }],["0","1"],""],
 "0": [ "params", [[],"2"],""],
 "1": [ "DRBG_ctx", [[],"3"],""], 
"3": [ "AES256_CTR_DRBG_struct", {"typedef": [[[],"4"],""]}], 
"2": [ "picnic_params_t", {"typedef": [[[], {"scalar": "5"}],""]}], 
"5": [ "picnic_params_t", {"enum": [[],[],[{"PARAMETER_SET_INVALID":  {"scalar": "__integer__"}},{"Picnic_L1_FS":  {"scalar": "__integer__"}},{"Picnic_L1_UR":  {"scalar": "__integer__"}},{"Picnic_L3_FS":  {"scalar": "__integer__"}},{"Picnic_L3_UR":  {"scalar": "__integer__"}},{"Picnic_L5_FS":  {"scalar": "__integer__"}},{"Picnic_L5_UR":  {"scalar": "__integer__"}},{"Picnic2_L1_FS":  {"scalar": "__integer__"}},{"Picnic2_L3_FS":  {"scalar": "__integer__"}},{"Picnic2_L5_FS":  {"scalar": "__integer__"}},{"PARAMETER_SET_MAX_INDEX":  {"scalar": "__integer__"}}],""]}], 
"4": [ "", {"struct": [[],[],[{ "Key": [[],  {"array": [ {"scalar": "unsigned char"}, [32]]}]},{ "V": [[],  {"array": [ {"scalar": "unsigned char"}, [16]]}]},{ "reseed_counter": [[],  {"scalar": "int"}]}],""]}]
}}
set moduleName crypto_sign_keypair
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
set C_modelName {crypto_sign_keypair}
set C_modelType { int 32 }
set C_modelArgList {
	{ pk int 8 regular {array 33 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 49 { 0 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "pk","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 32,"step" : 1}]}]}]} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "sk","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 48,"step" : 1}]}]}]} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "return","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ pk_address0 sc_out sc_lv 6 signal 0 } 
	{ pk_ce0 sc_out sc_logic 1 signal 0 } 
	{ pk_we0 sc_out sc_logic 1 signal 0 } 
	{ pk_d0 sc_out sc_lv 8 signal 0 } 
	{ sk_address0 sc_out sc_lv 6 signal 1 } 
	{ sk_ce0 sc_out sc_logic 1 signal 1 } 
	{ sk_we0 sc_out sc_logic 1 signal 1 } 
	{ sk_d0 sc_out sc_lv 8 signal 1 } 
	{ sk_address1 sc_out sc_lv 6 signal 1 } 
	{ sk_ce1 sc_out sc_logic 1 signal 1 } 
	{ sk_we1 sc_out sc_logic 1 signal 1 } 
	{ sk_d1 sc_out sc_lv 8 signal 1 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "we0" }} , 
 	{ "name": "pk_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pk", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "we0" }} , 
 	{ "name": "sk_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "d0" }} , 
 	{ "name": "sk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "sk", "role": "address1" }} , 
 	{ "name": "sk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce1" }} , 
 	{ "name": "sk_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "we1" }} , 
 	{ "name": "sk_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "d1" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "crypto_sign_keypair",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_picnic_keygen_fu_248"}],
		"Port" : [
			{"Name" : "pk", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "params", "Type" : "None", "Direction" : "I"},
			{"Name" : "DRBG_ctx_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_picnic_keygen_fu_248", "Port" : "DRBG_ctx_V"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_picnic_keygen_fu_248", "Port" : "sbox"}]},
			{"Name" : "DRBG_ctx_Key", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_picnic_keygen_fu_248", "Port" : "DRBG_ctx_Key"}]},
			{"Name" : "DRBG_ctx_reseed_coun", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_picnic_keygen_fu_248", "Port" : "DRBG_ctx_reseed_coun"}]},
			{"Name" : "temp_matrix", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_picnic_keygen_fu_248", "Port" : "temp_matrix"}]},
			{"Name" : "temp_matrix2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_picnic_keygen_fu_248", "Port" : "temp_matrix2"}]},
			{"Name" : "temp_matrix3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_picnic_keygen_fu_248", "Port" : "temp_matrix3"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pubkey_plaintext_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pubkey_ciphertext_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.secret_data_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.secret_pk_plaintext_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.secret_pk_ciphertext_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_picnic_keygen_fu_248", "Parent" : "0", "Child" : ["7", "8", "9", "10", "24"],
		"CDFG" : "picnic_keygen",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_LowMCEnc_fu_452"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_randombytes_fu_465"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_randombytes_fu_465"}],
		"Port" : [
			{"Name" : "parameters", "Type" : "None", "Direction" : "I"},
			{"Name" : "pk_plaintext", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_randombytes_fu_465", "Port" : "x"}]},
			{"Name" : "pk_ciphertext", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sk_data", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_randombytes_fu_465", "Port" : "x"}]},
			{"Name" : "sk_pk_plaintext", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk_pk_ciphertext", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "DRBG_ctx_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_randombytes_fu_465", "Port" : "DRBG_ctx_V"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_randombytes_fu_465", "Port" : "sbox"}]},
			{"Name" : "DRBG_ctx_Key", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_randombytes_fu_465", "Port" : "DRBG_ctx_Key"}]},
			{"Name" : "DRBG_ctx_reseed_coun", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_randombytes_fu_465", "Port" : "DRBG_ctx_reseed_coun"}]},
			{"Name" : "temp_matrix", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_LowMCEnc_fu_452", "Port" : "temp_matrix"}]},
			{"Name" : "temp_matrix2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_LowMCEnc_fu_452", "Port" : "temp_matrix2"}]},
			{"Name" : "temp_matrix3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_LowMCEnc_fu_452", "Port" : "temp_matrix3"}]}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_picnic_keygen_fu_248.temp_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_picnic_keygen_fu_248.temp2_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_picnic_keygen_fu_248.temp3_U", "Parent" : "6"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_picnic_keygen_fu_248.grp_LowMCEnc_fu_452", "Parent" : "6", "Child" : ["11", "12", "13", "17", "21", "23"],
		"CDFG" : "LowMCEnc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_245"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_1_fu_254"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_1_fu_254"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_xor_array_1_fu_265"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_xor_array_fu_274"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_xor_array_fu_274"}],
		"Port" : [
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_xor_array_fu_274", "Port" : "out_r"},
					{"ID" : "13", "SubInstance" : "grp_matrix_mul_fu_245", "Port" : "output_r"},
					{"ID" : "21", "SubInstance" : "grp_xor_array_1_fu_265", "Port" : "in1"}]},
			{"Name" : "key", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_matrix_mul_1_fu_254", "Port" : "state"}]},
			{"Name" : "temp_matrix", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_matrix_mul_1_fu_254", "Port" : "temp_matrix"}]},
			{"Name" : "temp_matrix2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_matrix_mul_fu_245", "Port" : "temp_matrix2"}]},
			{"Name" : "temp_matrix3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_xor_array_1_fu_265", "Port" : "temp_matrix3"}]}]},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_keygen_fu_248.grp_LowMCEnc_fu_452.roundKey_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_keygen_fu_248.grp_LowMCEnc_fu_452.temp_U", "Parent" : "10"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_keygen_fu_248.grp_LowMCEnc_fu_452.grp_matrix_mul_fu_245", "Parent" : "10", "Child" : ["14", "15", "16"],
		"CDFG" : "matrix_mul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
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
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "matrix_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_matrix2", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_keygen_fu_248.grp_LowMCEnc_fu_452.grp_matrix_mul_fu_245.temp_matrix2_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_keygen_fu_248.grp_LowMCEnc_fu_452.grp_matrix_mul_fu_245.prod_U", "Parent" : "13"},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_keygen_fu_248.grp_LowMCEnc_fu_452.grp_matrix_mul_fu_245.temp_U", "Parent" : "13"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_keygen_fu_248.grp_LowMCEnc_fu_452.grp_matrix_mul_1_fu_254", "Parent" : "10", "Child" : ["18", "19", "20"],
		"CDFG" : "matrix_mul_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
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
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "state", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "matrix_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_matrix", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "18", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_keygen_fu_248.grp_LowMCEnc_fu_452.grp_matrix_mul_1_fu_254.temp_matrix_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_keygen_fu_248.grp_LowMCEnc_fu_452.grp_matrix_mul_1_fu_254.prod_U", "Parent" : "17"},
	{"ID" : "20", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_keygen_fu_248.grp_LowMCEnc_fu_452.grp_matrix_mul_1_fu_254.temp_U", "Parent" : "17"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_keygen_fu_248.grp_LowMCEnc_fu_452.grp_xor_array_1_fu_265", "Parent" : "10", "Child" : ["22"],
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
	{"ID" : "22", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_keygen_fu_248.grp_LowMCEnc_fu_452.grp_xor_array_1_fu_265.temp_matrix3_U", "Parent" : "21"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_keygen_fu_248.grp_LowMCEnc_fu_452.grp_xor_array_fu_274", "Parent" : "10",
		"CDFG" : "xor_array",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
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
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "in2", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_picnic_keygen_fu_248.grp_randombytes_fu_465", "Parent" : "6", "Child" : ["25", "26", "27", "28", "29", "36", "38"],
		"CDFG" : "randombytes",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_AES256_CTR_DRBG_Upda_fu_387"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_AES_init_ctx_fu_397"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_AES_ECB_encrypt_fu_406"}],
		"Port" : [
			{"Name" : "x", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "DRBG_ctx_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_AES256_CTR_DRBG_Upda_fu_387", "Port" : "V"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_AES_ECB_encrypt_fu_406", "Port" : "sbox"},
					{"ID" : "29", "SubInstance" : "grp_AES256_CTR_DRBG_Upda_fu_387", "Port" : "sbox"},
					{"ID" : "36", "SubInstance" : "grp_AES_init_ctx_fu_397", "Port" : "sbox"}]},
			{"Name" : "DRBG_ctx_Key", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_AES256_CTR_DRBG_Upda_fu_387", "Port" : "DRBG_ctx_Key"},
					{"ID" : "36", "SubInstance" : "grp_AES_init_ctx_fu_397", "Port" : "key"}]},
			{"Name" : "DRBG_ctx_reseed_coun", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_keygen_fu_248.grp_randombytes_fu_465.DRBG_ctx_V_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_keygen_fu_248.grp_randombytes_fu_465.DRBG_ctx_Key_U", "Parent" : "24"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_keygen_fu_248.grp_randombytes_fu_465.ctx_RoundKey_U", "Parent" : "24"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_keygen_fu_248.grp_randombytes_fu_465.buffer_assign_U", "Parent" : "24"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_keygen_fu_248.grp_randombytes_fu_465.grp_AES256_CTR_DRBG_Upda_fu_387", "Parent" : "24", "Child" : ["30", "31", "32", "34"],
		"CDFG" : "AES256_CTR_DRBG_Upda",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "924", "EstimateLatencyMax" : "1020",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_AES_init_ctx_fu_475"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_AES_ECB_encrypt_fu_484"}],
		"Port" : [
			{"Name" : "V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_AES_ECB_encrypt_fu_484", "Port" : "sbox"},
					{"ID" : "32", "SubInstance" : "grp_AES_init_ctx_fu_475", "Port" : "sbox"}]},
			{"Name" : "DRBG_ctx_Key", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_AES_init_ctx_fu_475", "Port" : "key"}]}]},
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_keygen_fu_248.grp_randombytes_fu_465.grp_AES256_CTR_DRBG_Upda_fu_387.ctx_RoundKey_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_keygen_fu_248.grp_randombytes_fu_465.grp_AES256_CTR_DRBG_Upda_fu_387.buffer_assign_U", "Parent" : "29"},
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_keygen_fu_248.grp_randombytes_fu_465.grp_AES256_CTR_DRBG_Upda_fu_387.grp_AES_init_ctx_fu_475", "Parent" : "29", "Child" : ["33"],
		"CDFG" : "AES_init_ctx",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "120", "EstimateLatencyMax" : "120",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "ctx_RoundKey", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "33", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_keygen_fu_248.grp_randombytes_fu_465.grp_AES256_CTR_DRBG_Upda_fu_387.grp_AES_init_ctx_fu_475.sbox_U", "Parent" : "32"},
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_keygen_fu_248.grp_randombytes_fu_465.grp_AES256_CTR_DRBG_Upda_fu_387.grp_AES_ECB_encrypt_fu_484", "Parent" : "29", "Child" : ["35"],
		"CDFG" : "AES_ECB_encrypt",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "134", "EstimateLatencyMax" : "134",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "ctx_RoundKey", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "35", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_keygen_fu_248.grp_randombytes_fu_465.grp_AES256_CTR_DRBG_Upda_fu_387.grp_AES_ECB_encrypt_fu_484.sbox_U", "Parent" : "34"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_keygen_fu_248.grp_randombytes_fu_465.grp_AES_init_ctx_fu_397", "Parent" : "24", "Child" : ["37"],
		"CDFG" : "AES_init_ctx",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "120", "EstimateLatencyMax" : "120",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "ctx_RoundKey", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "37", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_keygen_fu_248.grp_randombytes_fu_465.grp_AES_init_ctx_fu_397.sbox_U", "Parent" : "36"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_keygen_fu_248.grp_randombytes_fu_465.grp_AES_ECB_encrypt_fu_406", "Parent" : "24", "Child" : ["39"],
		"CDFG" : "AES_ECB_encrypt",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "134", "EstimateLatencyMax" : "134",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "ctx_RoundKey", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "39", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_keygen_fu_248.grp_randombytes_fu_465.grp_AES_ECB_encrypt_fu_406.sbox_U", "Parent" : "38"}]}


set ArgLastReadFirstWriteLatency {
	crypto_sign_keypair {
		pk {Type O LastRead -1 FirstWrite 1}
		sk {Type O LastRead -1 FirstWrite 3}
		params {Type I LastRead -1 FirstWrite -1}
		DRBG_ctx_V {Type IO LastRead -1 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		DRBG_ctx_Key {Type IO LastRead -1 FirstWrite -1}
		DRBG_ctx_reseed_coun {Type IO LastRead -1 FirstWrite -1}
		temp_matrix {Type I LastRead -1 FirstWrite -1}
		temp_matrix2 {Type I LastRead -1 FirstWrite -1}
		temp_matrix3 {Type I LastRead -1 FirstWrite -1}}
	picnic_keygen {
		parameters {Type I LastRead 0 FirstWrite -1}
		pk_plaintext {Type IO LastRead 10 FirstWrite 22}
		pk_ciphertext {Type IO LastRead 10 FirstWrite 10}
		sk_data {Type IO LastRead 9 FirstWrite 22}
		sk_pk_plaintext {Type O LastRead -1 FirstWrite 11}
		sk_pk_ciphertext {Type O LastRead -1 FirstWrite 11}
		DRBG_ctx_V {Type IO LastRead -1 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		DRBG_ctx_Key {Type IO LastRead -1 FirstWrite -1}
		DRBG_ctx_reseed_coun {Type IO LastRead -1 FirstWrite -1}
		temp_matrix {Type I LastRead -1 FirstWrite -1}
		temp_matrix2 {Type I LastRead -1 FirstWrite -1}
		temp_matrix3 {Type I LastRead -1 FirstWrite -1}}
	LowMCEnc {
		plaintext {Type I LastRead 1 FirstWrite -1}
		output_r {Type IO LastRead 192 FirstWrite 2}
		key {Type I LastRead 66 FirstWrite -1}
		temp_matrix {Type I LastRead -1 FirstWrite -1}
		temp_matrix2 {Type I LastRead -1 FirstWrite -1}
		temp_matrix3 {Type I LastRead -1 FirstWrite -1}}
	matrix_mul {
		output_r {Type IO LastRead 66 FirstWrite 2}
		matrix_offset {Type I LastRead 0 FirstWrite -1}
		temp_matrix2 {Type I LastRead -1 FirstWrite -1}}
	matrix_mul_1 {
		output_r {Type O LastRead -1 FirstWrite 2}
		state {Type I LastRead 66 FirstWrite -1}
		matrix_offset {Type I LastRead 0 FirstWrite -1}
		temp_matrix {Type I LastRead -1 FirstWrite -1}}
	xor_array_1 {
		in1 {Type IO LastRead 192 FirstWrite 65}
		in2_offset {Type I LastRead 0 FirstWrite -1}
		temp_matrix3 {Type I LastRead -1 FirstWrite -1}}
	xor_array {
		out_r {Type IO LastRead 65 FirstWrite 65}
		in2 {Type I LastRead 65 FirstWrite -1}}
	randombytes {
		x {Type O LastRead -1 FirstWrite 22}
		DRBG_ctx_V {Type IO LastRead -1 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		DRBG_ctx_Key {Type IO LastRead -1 FirstWrite -1}
		DRBG_ctx_reseed_coun {Type IO LastRead -1 FirstWrite -1}}
	AES256_CTR_DRBG_Upda {
		V {Type IO LastRead 12 FirstWrite 3}
		sbox {Type I LastRead -1 FirstWrite -1}
		DRBG_ctx_Key {Type IO LastRead 16 FirstWrite -1}}
	AES_init_ctx {
		ctx_RoundKey {Type O LastRead -1 FirstWrite 1}
		key {Type I LastRead 16 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	AES_ECB_encrypt {
		ctx_RoundKey {Type I LastRead 17 FirstWrite -1}
		p_read {Type I LastRead 8 FirstWrite -1}
		p_read1 {Type I LastRead 8 FirstWrite -1}
		p_read2 {Type I LastRead 8 FirstWrite -1}
		p_read3 {Type I LastRead 8 FirstWrite -1}
		p_read4 {Type I LastRead 8 FirstWrite -1}
		p_read5 {Type I LastRead 8 FirstWrite -1}
		p_read6 {Type I LastRead 8 FirstWrite -1}
		p_read7 {Type I LastRead 8 FirstWrite -1}
		p_read8 {Type I LastRead 8 FirstWrite -1}
		p_read9 {Type I LastRead 8 FirstWrite -1}
		p_read10 {Type I LastRead 8 FirstWrite -1}
		p_read11 {Type I LastRead 8 FirstWrite -1}
		p_read12 {Type I LastRead 8 FirstWrite -1}
		p_read13 {Type I LastRead 8 FirstWrite -1}
		p_read14 {Type I LastRead 8 FirstWrite -1}
		p_read15 {Type I LastRead 8 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	AES_init_ctx {
		ctx_RoundKey {Type O LastRead -1 FirstWrite 1}
		key {Type I LastRead 16 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	AES_ECB_encrypt {
		ctx_RoundKey {Type I LastRead 17 FirstWrite -1}
		p_read {Type I LastRead 8 FirstWrite -1}
		p_read1 {Type I LastRead 8 FirstWrite -1}
		p_read2 {Type I LastRead 8 FirstWrite -1}
		p_read3 {Type I LastRead 8 FirstWrite -1}
		p_read4 {Type I LastRead 8 FirstWrite -1}
		p_read5 {Type I LastRead 8 FirstWrite -1}
		p_read6 {Type I LastRead 8 FirstWrite -1}
		p_read7 {Type I LastRead 8 FirstWrite -1}
		p_read8 {Type I LastRead 8 FirstWrite -1}
		p_read9 {Type I LastRead 8 FirstWrite -1}
		p_read10 {Type I LastRead 8 FirstWrite -1}
		p_read11 {Type I LastRead 8 FirstWrite -1}
		p_read12 {Type I LastRead 8 FirstWrite -1}
		p_read13 {Type I LastRead 8 FirstWrite -1}
		p_read14 {Type I LastRead 8 FirstWrite -1}
		p_read15 {Type I LastRead 8 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	pk { ap_memory {  { pk_address0 mem_address 1 6 }  { pk_ce0 mem_ce 1 1 }  { pk_we0 mem_we 1 1 }  { pk_d0 mem_din 1 8 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 6 }  { sk_ce0 mem_ce 1 1 }  { sk_we0 mem_we 1 1 }  { sk_d0 mem_din 1 8 }  { sk_address1 mem_address 1 6 }  { sk_ce1 mem_ce 1 1 }  { sk_we1 mem_we 1 1 }  { sk_d1 mem_din 1 8 } } }
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
