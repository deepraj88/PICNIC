set C_TypeInfoList {{ 
"crypto_sign_open" : [[], {"return": [[], {"scalar": "int"}] }, [{"ExternC" : 0}], [ {"m": [[], {"array": [ {"scalar": "unsigned char"}, [3300]]}] }, {"mlen": [[], {"array": [ {"scalar": "long long unsigned int"}, [1]]}] }, {"sm": [[], {"array": [ {"scalar": "unsigned char"}, [80084]]}] }, {"smlen": [[], {"scalar": "long long unsigned int"}] }, {"pk": [[], {"array": [ {"scalar": "unsigned char"}, [49]]}] }],["0"],""],
 "0": [ "viewOutputs", [[], {"array": ["1", [987,24]]}],""], 
"1": [ "uint32_t", {"typedef": [[[], {"scalar": "unsigned int"}],""]}]
}}
set moduleName crypto_sign_open
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
set C_modelName {crypto_sign_open}
set C_modelType { int 32 }
set C_modelArgList {
	{ m int 8 regular {array 3300 { 0 3 } 0 1 }  }
	{ mlen int 64 regular {array 1 { 0 3 } 0 1 }  }
	{ sm int 8 regular {array 80084 { 1 1 } 1 1 }  }
	{ smlen int 64 regular  }
	{ pk int 8 regular {array 49 { 1 3 } 1 1 }  }
	{ viewOutputs int 32 regular {array 23688 { 2 3 } 1 1 } {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "m", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "m","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 3299,"step" : 1}]}]}]} , 
 	{ "Name" : "mlen", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "mlen","cData": "long long unsigned int","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "sm", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "sm","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 80083,"step" : 1}]}]}]} , 
 	{ "Name" : "smlen", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "smlen","cData": "long long unsigned int","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "pk","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 48,"step" : 1}]}]}]} , 
 	{ "Name" : "viewOutputs", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "viewOutputs","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 986,"step" : 1},{"low" : 0,"up" : 23,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "return","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_address0 sc_out sc_lv 12 signal 0 } 
	{ m_ce0 sc_out sc_logic 1 signal 0 } 
	{ m_we0 sc_out sc_logic 1 signal 0 } 
	{ m_d0 sc_out sc_lv 8 signal 0 } 
	{ mlen_address0 sc_out sc_lv 1 signal 1 } 
	{ mlen_ce0 sc_out sc_logic 1 signal 1 } 
	{ mlen_we0 sc_out sc_logic 1 signal 1 } 
	{ mlen_d0 sc_out sc_lv 64 signal 1 } 
	{ sm_address0 sc_out sc_lv 17 signal 2 } 
	{ sm_ce0 sc_out sc_logic 1 signal 2 } 
	{ sm_q0 sc_in sc_lv 8 signal 2 } 
	{ sm_address1 sc_out sc_lv 17 signal 2 } 
	{ sm_ce1 sc_out sc_logic 1 signal 2 } 
	{ sm_q1 sc_in sc_lv 8 signal 2 } 
	{ smlen sc_in sc_lv 64 signal 3 } 
	{ pk_address0 sc_out sc_lv 6 signal 4 } 
	{ pk_ce0 sc_out sc_logic 1 signal 4 } 
	{ pk_q0 sc_in sc_lv 8 signal 4 } 
	{ viewOutputs_address0 sc_out sc_lv 15 signal 5 } 
	{ viewOutputs_ce0 sc_out sc_logic 1 signal 5 } 
	{ viewOutputs_we0 sc_out sc_logic 1 signal 5 } 
	{ viewOutputs_d0 sc_out sc_lv 32 signal 5 } 
	{ viewOutputs_q0 sc_in sc_lv 32 signal 5 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "m", "role": "address0" }} , 
 	{ "name": "m_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m", "role": "ce0" }} , 
 	{ "name": "m_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m", "role": "we0" }} , 
 	{ "name": "m_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "m", "role": "d0" }} , 
 	{ "name": "mlen_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mlen", "role": "address0" }} , 
 	{ "name": "mlen_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlen", "role": "ce0" }} , 
 	{ "name": "mlen_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlen", "role": "we0" }} , 
 	{ "name": "mlen_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mlen", "role": "d0" }} , 
 	{ "name": "sm_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "sm", "role": "address0" }} , 
 	{ "name": "sm_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sm", "role": "ce0" }} , 
 	{ "name": "sm_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sm", "role": "q0" }} , 
 	{ "name": "sm_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "sm", "role": "address1" }} , 
 	{ "name": "sm_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sm", "role": "ce1" }} , 
 	{ "name": "sm_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sm", "role": "q1" }} , 
 	{ "name": "smlen", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "smlen", "role": "default" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "viewOutputs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "viewOutputs", "role": "address0" }} , 
 	{ "name": "viewOutputs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "viewOutputs", "role": "ce0" }} , 
 	{ "name": "viewOutputs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "viewOutputs", "role": "we0" }} , 
 	{ "name": "viewOutputs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "viewOutputs", "role": "d0" }} , 
 	{ "name": "viewOutputs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "viewOutputs", "role": "q0" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "crypto_sign_open",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_picnic_verify_fu_288"}],
		"Port" : [
			{"Name" : "m", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlen", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sm", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_picnic_verify_fu_288", "Port" : "message"}]},
			{"Name" : "smlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_picnic_verify_fu_288", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_picnic_verify_fu_288", "Port" : "KeccakRoundConstants"}]},
			{"Name" : "temp_matrix", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_picnic_verify_fu_288", "Port" : "temp_matrix"}]},
			{"Name" : "temp_matrix2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_picnic_verify_fu_288", "Port" : "temp_matrix2"}]},
			{"Name" : "temp_matrix3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_picnic_verify_fu_288", "Port" : "temp_matrix3"}]},
			{"Name" : "viewOutputs", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_picnic_verify_fu_288", "Port" : "viewOutputs"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pubkey_0_plaintext_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pubkey_0_ciphertext_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288", "Parent" : "0", "Child" : ["4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "454"],
		"CDFG" : "picnic_verify",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_verify_fu_336"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_deserializeSignature_fu_364"}],
		"Port" : [
			{"Name" : "pk_0_params_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "pk_0_plaintext", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pk_0_ciphertext", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "message", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "454", "SubInstance" : "grp_deserializeSignature_fu_364", "Port" : "sigBytes"},
					{"ID" : "13", "SubInstance" : "grp_verify_fu_336", "Port" : "message"}]},
			{"Name" : "message_len", "Type" : "None", "Direction" : "I"},
			{"Name" : "signature_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "signature_len", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_verify_fu_336", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_verify_fu_336", "Port" : "KeccakRoundConstants"}]},
			{"Name" : "temp_matrix", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_verify_fu_336", "Port" : "temp_matrix"}]},
			{"Name" : "temp_matrix2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_verify_fu_336", "Port" : "temp_matrix2"}]},
			{"Name" : "temp_matrix3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_verify_fu_336", "Port" : "temp_matrix3"}]},
			{"Name" : "viewOutputs", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_verify_fu_336", "Port" : "viewOutputs"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.sig_0_proofs_seed1_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.sig_0_proofs_seed2_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.sig_0_proofs_inputS_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.sig_0_proofs_commun_U", "Parent" : "3"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.sig_0_proofs_view3C_U", "Parent" : "3"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.sig_0_challengeBits_U", "Parent" : "3"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.sig_0_salt_U", "Parent" : "3"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.temp_U", "Parent" : "3"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.temp2_U", "Parent" : "3"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336", "Parent" : "3", "Child" : ["14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "236", "360", "375", "388", "401", "414", "427", "441"],
		"CDFG" : "verify",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_verifyProof_23_fu_4465"},
			{"State" : "ap_ST_fsm_state189", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_H3_2_fu_4504"},
			{"State" : "ap_ST_fsm_state83", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdate_2_1_fu_4525"},
			{"State" : "ap_ST_fsm_state87", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdate_2_1_fu_4525"},
			{"State" : "ap_ST_fsm_state170", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdate_2_1_fu_4525"},
			{"State" : "ap_ST_fsm_state174", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdate_2_1_fu_4525"},
			{"State" : "ap_ST_fsm_state77", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_fu_4538"},
			{"State" : "ap_ST_fsm_state91", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_fu_4538"},
			{"State" : "ap_ST_fsm_state164", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_fu_4538"},
			{"State" : "ap_ST_fsm_state178", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_fu_4538"},
			{"State" : "ap_ST_fsm_state81", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_4_fu_4553"},
			{"State" : "ap_ST_fsm_state168", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_4_fu_4553"},
			{"State" : "ap_ST_fsm_state85", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_8_fu_4567"},
			{"State" : "ap_ST_fsm_state172", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_8_fu_4567"},
			{"State" : "ap_ST_fsm_state73", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_14_fu_4580"},
			{"State" : "ap_ST_fsm_state160", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_14_fu_4580"},
			{"State" : "ap_ST_fsm_state71", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_4595"},
			{"State" : "ap_ST_fsm_state79", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_4595"},
			{"State" : "ap_ST_fsm_state158", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_4595"},
			{"State" : "ap_ST_fsm_state166", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_4595"},
			{"State" : "ap_ST_fsm_state75", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_4607"},
			{"State" : "ap_ST_fsm_state89", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_4607"},
			{"State" : "ap_ST_fsm_state162", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_4607"},
			{"State" : "ap_ST_fsm_state176", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_4607"}],
		"Port" : [
			{"Name" : "sig_0_proofs_seed1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "414", "SubInstance" : "grp_KeccakWidth1600_Spon_14_fu_4580", "Port" : "data_0"},
					{"ID" : "33", "SubInstance" : "grp_verifyProof_23_fu_4465", "Port" : "proof_0_seed1"}]},
			{"Name" : "sig_0_proofs_seed2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "414", "SubInstance" : "grp_KeccakWidth1600_Spon_14_fu_4580", "Port" : "data_0"},
					{"ID" : "33", "SubInstance" : "grp_verifyProof_23_fu_4465", "Port" : "proof_0_seed2"}]},
			{"Name" : "sig_0_proofs_inputS", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_verifyProof_23_fu_4465", "Port" : "proof_0_inputShare"}]},
			{"Name" : "sig_0_proofs_commun", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_verifyProof_23_fu_4465", "Port" : "proof_0_communicatedBits"}]},
			{"Name" : "sig_0_proofs_view3C", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sig_0_challengeBits", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sig_0_salt", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "236", "SubInstance" : "grp_H3_2_fu_4504", "Port" : "salt_0"},
					{"ID" : "33", "SubInstance" : "grp_verifyProof_23_fu_4465", "Port" : "salt_0"}]},
			{"Name" : "pubKey", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "236", "SubInstance" : "grp_H3_2_fu_4504", "Port" : "circuitOutput"}]},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "236", "SubInstance" : "grp_H3_2_fu_4504", "Port" : "plaintext"},
					{"ID" : "33", "SubInstance" : "grp_verifyProof_23_fu_4465", "Port" : "plaintext"}]},
			{"Name" : "message", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "236", "SubInstance" : "grp_H3_2_fu_4504", "Port" : "message"}]},
			{"Name" : "messageByteLength", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "401", "SubInstance" : "grp_KeccakWidth1600_Spon_8_fu_4567", "Port" : "KeccakRhoOffsets"},
					{"ID" : "375", "SubInstance" : "grp_KeccakWidth1600_Spon_fu_4538", "Port" : "KeccakRhoOffsets"},
					{"ID" : "360", "SubInstance" : "grp_HashUpdate_2_1_fu_4525", "Port" : "KeccakRhoOffsets"},
					{"ID" : "414", "SubInstance" : "grp_KeccakWidth1600_Spon_14_fu_4580", "Port" : "KeccakRhoOffsets"},
					{"ID" : "388", "SubInstance" : "grp_KeccakWidth1600_Spon_4_fu_4553", "Port" : "KeccakRhoOffsets"},
					{"ID" : "236", "SubInstance" : "grp_H3_2_fu_4504", "Port" : "KeccakRhoOffsets"},
					{"ID" : "441", "SubInstance" : "grp_HashFinal_fu_4607", "Port" : "KeccakRhoOffsets"},
					{"ID" : "427", "SubInstance" : "grp_HashInit_fu_4595", "Port" : "KeccakRhoOffsets"},
					{"ID" : "33", "SubInstance" : "grp_verifyProof_23_fu_4465", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "401", "SubInstance" : "grp_KeccakWidth1600_Spon_8_fu_4567", "Port" : "KeccakRoundConstants"},
					{"ID" : "375", "SubInstance" : "grp_KeccakWidth1600_Spon_fu_4538", "Port" : "KeccakRoundConstants"},
					{"ID" : "360", "SubInstance" : "grp_HashUpdate_2_1_fu_4525", "Port" : "KeccakRoundConstants"},
					{"ID" : "414", "SubInstance" : "grp_KeccakWidth1600_Spon_14_fu_4580", "Port" : "KeccakRoundConstants"},
					{"ID" : "388", "SubInstance" : "grp_KeccakWidth1600_Spon_4_fu_4553", "Port" : "KeccakRoundConstants"},
					{"ID" : "236", "SubInstance" : "grp_H3_2_fu_4504", "Port" : "KeccakRoundConstants"},
					{"ID" : "441", "SubInstance" : "grp_HashFinal_fu_4607", "Port" : "KeccakRoundConstants"},
					{"ID" : "427", "SubInstance" : "grp_HashInit_fu_4595", "Port" : "KeccakRoundConstants"},
					{"ID" : "33", "SubInstance" : "grp_verifyProof_23_fu_4465", "Port" : "KeccakRoundConstants"}]},
			{"Name" : "temp_matrix", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_verifyProof_23_fu_4465", "Port" : "temp_matrix"}]},
			{"Name" : "temp_matrix2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_verifyProof_23_fu_4465", "Port" : "temp_matrix2"}]},
			{"Name" : "temp_matrix3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_verifyProof_23_fu_4465", "Port" : "temp_matrix3"}]},
			{"Name" : "viewOutputs", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "236", "SubInstance" : "grp_H3_2_fu_4504", "Port" : "viewOutputs"}]}]},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.ctx_sponge_state_2_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.view2s_outputShare29_U", "Parent" : "13"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.view2s_communicatedB_U", "Parent" : "13"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.view2s_inputShare164_U", "Parent" : "13"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.ctx_sponge_state_U", "Parent" : "13"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.view1s_outputShare15_U", "Parent" : "13"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.view1s_communicatedB_U", "Parent" : "13"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.view1s_inputShare27_U", "Parent" : "13"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.as_hashes_U", "Parent" : "13"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.computed_challengebi_U", "Parent" : "13"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.view3Slab_U", "Parent" : "13"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.tmp_U", "Parent" : "13"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.tape_0_0_U", "Parent" : "13"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.view1s_inputShare_U", "Parent" : "13"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.view1s_communicatedB_1_U", "Parent" : "13"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.view1s_outputShare_U", "Parent" : "13"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.view2s_inputShare_U", "Parent" : "13"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.view2s_communicatedB_1_U", "Parent" : "13"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.view2s_outputShare_U", "Parent" : "13"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465", "Parent" : "13", "Child" : ["34", "35", "36", "37", "131", "144", "157", "170", "183", "196", "209", "223"],
		"CDFG" : "verifyProof_23",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state35", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_createRandomTape13_fu_693"},
			{"State" : "ap_ST_fsm_state35", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_createRandomTape13_fu_693"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_createRandomTape13_fu_693"},
			{"State" : "ap_ST_fsm_state30", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_createRandomTape13_fu_693"},
			{"State" : "ap_ST_fsm_state68", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_createRandomTape13_fu_693"},
			{"State" : "ap_ST_fsm_state76", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_713"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_1_fu_742"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_1_fu_742"},
			{"State" : "ap_ST_fsm_state46", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_1_fu_742"},
			{"State" : "ap_ST_fsm_state62", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_1_fu_742"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_6_fu_761"},
			{"State" : "ap_ST_fsm_state52", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_6_fu_761"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_7_fu_773"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_7_fu_773"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_7_fu_773"},
			{"State" : "ap_ST_fsm_state54", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_7_fu_773"},
			{"State" : "ap_ST_fsm_state56", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_7_fu_773"},
			{"State" : "ap_ST_fsm_state58", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_7_fu_773"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_12_fu_788"},
			{"State" : "ap_ST_fsm_state42", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_12_fu_788"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_5_fu_802"},
			{"State" : "ap_ST_fsm_state50", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_5_fu_802"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_817"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_817"},
			{"State" : "ap_ST_fsm_state40", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_817"},
			{"State" : "ap_ST_fsm_state48", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_817"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_829"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_829"},
			{"State" : "ap_ST_fsm_state44", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_829"},
			{"State" : "ap_ST_fsm_state60", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_829"}],
		"Port" : [
			{"Name" : "proof_0_seed1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "183", "SubInstance" : "grp_KeccakWidth1600_Spon_12_fu_788", "Port" : "data_0"},
					{"ID" : "37", "SubInstance" : "grp_createRandomTape13_fu_693", "Port" : "seed_0"}]},
			{"Name" : "proof_seed1_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "proof_0_seed2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "183", "SubInstance" : "grp_KeccakWidth1600_Spon_12_fu_788", "Port" : "data_0"},
					{"ID" : "37", "SubInstance" : "grp_createRandomTape13_fu_693", "Port" : "seed_0"}]},
			{"Name" : "proof_0_inputShare", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "proof_0_communicatedBits", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "view1_inputShare", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "131", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_713", "Port" : "view1_inputShare"}]},
			{"Name" : "view1_communicatedBits", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "131", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_713", "Port" : "view1_communicatedBi"}]},
			{"Name" : "view1_outputShare", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "131", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_713", "Port" : "view1_outputShare"}]},
			{"Name" : "view2_inputShare", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "131", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_713", "Port" : "view2_inputShare"}]},
			{"Name" : "view2_communicatedBits", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "131", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_713", "Port" : "view2_communicatedBi"}]},
			{"Name" : "view2_outputShare", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "131", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_713", "Port" : "view2_outputShare"}]},
			{"Name" : "challenge", "Type" : "None", "Direction" : "I"},
			{"Name" : "salt_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_createRandomTape13_fu_693", "Port" : "salt_0"},
					{"ID" : "157", "SubInstance" : "grp_KeccakWidth1600_Spon_6_fu_761", "Port" : "data_0"}]},
			{"Name" : "roundNumber", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_createRandomTape13_fu_693", "Port" : "tape"}]},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "131", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_713", "Port" : "plaintext"}]},
			{"Name" : "tape_0_tape", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "196", "SubInstance" : "grp_KeccakWidth1600_Spon_5_fu_802", "Port" : "data_0"},
					{"ID" : "131", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_713", "Port" : "tapes_0_tape"},
					{"ID" : "144", "SubInstance" : "grp_KeccakWidth1600_Spon_1_fu_742", "Port" : "data_0"}]},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "209", "SubInstance" : "grp_HashInit_fu_817", "Port" : "KeccakRhoOffsets"},
					{"ID" : "183", "SubInstance" : "grp_KeccakWidth1600_Spon_12_fu_788", "Port" : "KeccakRhoOffsets"},
					{"ID" : "196", "SubInstance" : "grp_KeccakWidth1600_Spon_5_fu_802", "Port" : "KeccakRhoOffsets"},
					{"ID" : "170", "SubInstance" : "grp_KeccakWidth1600_Spon_7_fu_773", "Port" : "KeccakRhoOffsets"},
					{"ID" : "37", "SubInstance" : "grp_createRandomTape13_fu_693", "Port" : "KeccakRhoOffsets"},
					{"ID" : "223", "SubInstance" : "grp_HashFinal_fu_829", "Port" : "KeccakRhoOffsets"},
					{"ID" : "157", "SubInstance" : "grp_KeccakWidth1600_Spon_6_fu_761", "Port" : "KeccakRhoOffsets"},
					{"ID" : "144", "SubInstance" : "grp_KeccakWidth1600_Spon_1_fu_742", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "209", "SubInstance" : "grp_HashInit_fu_817", "Port" : "KeccakRoundConstants"},
					{"ID" : "183", "SubInstance" : "grp_KeccakWidth1600_Spon_12_fu_788", "Port" : "KeccakRoundConstants"},
					{"ID" : "196", "SubInstance" : "grp_KeccakWidth1600_Spon_5_fu_802", "Port" : "KeccakRoundConstants"},
					{"ID" : "170", "SubInstance" : "grp_KeccakWidth1600_Spon_7_fu_773", "Port" : "KeccakRoundConstants"},
					{"ID" : "37", "SubInstance" : "grp_createRandomTape13_fu_693", "Port" : "KeccakRoundConstants"},
					{"ID" : "223", "SubInstance" : "grp_HashFinal_fu_829", "Port" : "KeccakRoundConstants"},
					{"ID" : "157", "SubInstance" : "grp_KeccakWidth1600_Spon_6_fu_761", "Port" : "KeccakRoundConstants"},
					{"ID" : "144", "SubInstance" : "grp_KeccakWidth1600_Spon_1_fu_742", "Port" : "KeccakRoundConstants"}]},
			{"Name" : "temp_matrix", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "131", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_713", "Port" : "temp_matrix"}]},
			{"Name" : "temp_matrix2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "131", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_713", "Port" : "temp_matrix2"}]},
			{"Name" : "temp_matrix3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "131", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_713", "Port" : "temp_matrix3"}]}]},
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.ctx_sponge_state_1_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.ctx_sponge_state_U", "Parent" : "33"},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.temp_U", "Parent" : "33"},
	{"ID" : "37", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693", "Parent" : "33", "Child" : ["38", "39", "52", "65", "78", "91", "104", "118"],
		"CDFG" : "createRandomTape13",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_3_fu_74"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_3_fu_74"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_6_fu_90"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_7_fu_102"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_7_fu_102"},
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_7_fu_102"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_12_fu_116"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_11_fu_130"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_142"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_142"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_155"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_155"}],
		"Port" : [
			{"Name" : "seed_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "grp_KeccakWidth1600_Spon_12_fu_116", "Port" : "data_0"}]},
			{"Name" : "seed_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "salt_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_KeccakWidth1600_Spon_6_fu_90", "Port" : "data_0"}]},
			{"Name" : "roundNumber", "Type" : "None", "Direction" : "I"},
			{"Name" : "playerNumber", "Type" : "None", "Direction" : "I"},
			{"Name" : "tape", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_KeccakWidth1600_Spon_3_fu_74", "Port" : "data"},
					{"ID" : "91", "SubInstance" : "grp_KeccakWidth1600_Spon_11_fu_130", "Port" : "data"}]},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "104", "SubInstance" : "grp_HashInit_fu_142", "Port" : "KeccakRhoOffsets"},
					{"ID" : "118", "SubInstance" : "grp_HashFinal_fu_155", "Port" : "KeccakRhoOffsets"},
					{"ID" : "52", "SubInstance" : "grp_KeccakWidth1600_Spon_6_fu_90", "Port" : "KeccakRhoOffsets"},
					{"ID" : "39", "SubInstance" : "grp_KeccakWidth1600_Spon_3_fu_74", "Port" : "KeccakRhoOffsets"},
					{"ID" : "78", "SubInstance" : "grp_KeccakWidth1600_Spon_12_fu_116", "Port" : "KeccakRhoOffsets"},
					{"ID" : "91", "SubInstance" : "grp_KeccakWidth1600_Spon_11_fu_130", "Port" : "KeccakRhoOffsets"},
					{"ID" : "65", "SubInstance" : "grp_KeccakWidth1600_Spon_7_fu_102", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "104", "SubInstance" : "grp_HashInit_fu_142", "Port" : "KeccakRoundConstants"},
					{"ID" : "118", "SubInstance" : "grp_HashFinal_fu_155", "Port" : "KeccakRoundConstants"},
					{"ID" : "52", "SubInstance" : "grp_KeccakWidth1600_Spon_6_fu_90", "Port" : "KeccakRoundConstants"},
					{"ID" : "39", "SubInstance" : "grp_KeccakWidth1600_Spon_3_fu_74", "Port" : "KeccakRoundConstants"},
					{"ID" : "78", "SubInstance" : "grp_KeccakWidth1600_Spon_12_fu_116", "Port" : "KeccakRoundConstants"},
					{"ID" : "91", "SubInstance" : "grp_KeccakWidth1600_Spon_11_fu_130", "Port" : "KeccakRoundConstants"},
					{"ID" : "65", "SubInstance" : "grp_KeccakWidth1600_Spon_7_fu_102", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "38", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.ctx_sponge_state_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_3_fu_74", "Parent" : "37", "Child" : ["40"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_242"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_242"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_242"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_242", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dataByteLen", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_242", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_242", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "40", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_3_fu_74.grp_KeccakP1600_Permute_s_fu_242", "Parent" : "39", "Child" : ["41", "42", "43", "44", "47", "49"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "41", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_3_fu_74.grp_KeccakP1600_Permute_s_fu_242.KeccakRhoOffsets_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_3_fu_74.grp_KeccakP1600_Permute_s_fu_242.KeccakRoundConstants_U", "Parent" : "40"},
	{"ID" : "43", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_3_fu_74.grp_KeccakP1600_Permute_s_fu_242.stateAsWords_U", "Parent" : "40"},
	{"ID" : "44", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_3_fu_74.grp_KeccakP1600_Permute_s_fu_242.grp_theta_fu_225", "Parent" : "40", "Child" : ["45", "46"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "45", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_3_fu_74.grp_KeccakP1600_Permute_s_fu_242.grp_theta_fu_225.C_U", "Parent" : "44"},
	{"ID" : "46", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_3_fu_74.grp_KeccakP1600_Permute_s_fu_242.grp_theta_fu_225.D_U", "Parent" : "44"},
	{"ID" : "47", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_3_fu_74.grp_KeccakP1600_Permute_s_fu_242.grp_chi_fu_230", "Parent" : "40", "Child" : ["48"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "48", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_3_fu_74.grp_KeccakP1600_Permute_s_fu_242.grp_chi_fu_230.C_U", "Parent" : "47"},
	{"ID" : "49", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_3_fu_74.grp_KeccakP1600_Permute_s_fu_242.grp_pi_fu_235", "Parent" : "40", "Child" : ["50", "51"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "50", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_3_fu_74.grp_KeccakP1600_Permute_s_fu_242.grp_pi_fu_235.tempA_U", "Parent" : "49"},
	{"ID" : "51", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_3_fu_74.grp_KeccakP1600_Permute_s_fu_242.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "49"},
	{"ID" : "52", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_6_fu_90", "Parent" : "37", "Child" : ["53"],
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
					{"ID" : "53", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "53", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_6_fu_90.grp_KeccakP1600_Permute_s_fu_176", "Parent" : "52", "Child" : ["54", "55", "56", "57", "60", "62"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "54", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_6_fu_90.grp_KeccakP1600_Permute_s_fu_176.KeccakRhoOffsets_U", "Parent" : "53"},
	{"ID" : "55", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_6_fu_90.grp_KeccakP1600_Permute_s_fu_176.KeccakRoundConstants_U", "Parent" : "53"},
	{"ID" : "56", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_6_fu_90.grp_KeccakP1600_Permute_s_fu_176.stateAsWords_U", "Parent" : "53"},
	{"ID" : "57", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_6_fu_90.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225", "Parent" : "53", "Child" : ["58", "59"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "58", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_6_fu_90.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.C_U", "Parent" : "57"},
	{"ID" : "59", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_6_fu_90.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.D_U", "Parent" : "57"},
	{"ID" : "60", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_6_fu_90.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230", "Parent" : "53", "Child" : ["61"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "61", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_6_fu_90.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230.C_U", "Parent" : "60"},
	{"ID" : "62", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_6_fu_90.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235", "Parent" : "53", "Child" : ["63", "64"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "63", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_6_fu_90.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.tempA_U", "Parent" : "62"},
	{"ID" : "64", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_6_fu_90.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "62"},
	{"ID" : "65", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_7_fu_102", "Parent" : "37", "Child" : ["66"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_173"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_173"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_173", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_173", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_173", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "66", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_7_fu_102.grp_KeccakP1600_Permute_s_fu_173", "Parent" : "65", "Child" : ["67", "68", "69", "70", "73", "75"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "67", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_7_fu_102.grp_KeccakP1600_Permute_s_fu_173.KeccakRhoOffsets_U", "Parent" : "66"},
	{"ID" : "68", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_7_fu_102.grp_KeccakP1600_Permute_s_fu_173.KeccakRoundConstants_U", "Parent" : "66"},
	{"ID" : "69", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_7_fu_102.grp_KeccakP1600_Permute_s_fu_173.stateAsWords_U", "Parent" : "66"},
	{"ID" : "70", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_7_fu_102.grp_KeccakP1600_Permute_s_fu_173.grp_theta_fu_225", "Parent" : "66", "Child" : ["71", "72"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "71", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_7_fu_102.grp_KeccakP1600_Permute_s_fu_173.grp_theta_fu_225.C_U", "Parent" : "70"},
	{"ID" : "72", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_7_fu_102.grp_KeccakP1600_Permute_s_fu_173.grp_theta_fu_225.D_U", "Parent" : "70"},
	{"ID" : "73", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_7_fu_102.grp_KeccakP1600_Permute_s_fu_173.grp_chi_fu_230", "Parent" : "66", "Child" : ["74"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "74", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_7_fu_102.grp_KeccakP1600_Permute_s_fu_173.grp_chi_fu_230.C_U", "Parent" : "73"},
	{"ID" : "75", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_7_fu_102.grp_KeccakP1600_Permute_s_fu_173.grp_pi_fu_235", "Parent" : "66", "Child" : ["76", "77"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "76", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_7_fu_102.grp_KeccakP1600_Permute_s_fu_173.grp_pi_fu_235.tempA_U", "Parent" : "75"},
	{"ID" : "77", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_7_fu_102.grp_KeccakP1600_Permute_s_fu_173.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "75"},
	{"ID" : "78", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_12_fu_116", "Parent" : "37", "Child" : ["79"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_109"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_109", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_109", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_109", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "79", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_12_fu_116.grp_KeccakP1600_Permute_s_fu_109", "Parent" : "78", "Child" : ["80", "81", "82", "83", "86", "88"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "80", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_12_fu_116.grp_KeccakP1600_Permute_s_fu_109.KeccakRhoOffsets_U", "Parent" : "79"},
	{"ID" : "81", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_12_fu_116.grp_KeccakP1600_Permute_s_fu_109.KeccakRoundConstants_U", "Parent" : "79"},
	{"ID" : "82", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_12_fu_116.grp_KeccakP1600_Permute_s_fu_109.stateAsWords_U", "Parent" : "79"},
	{"ID" : "83", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_12_fu_116.grp_KeccakP1600_Permute_s_fu_109.grp_theta_fu_225", "Parent" : "79", "Child" : ["84", "85"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "84", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_12_fu_116.grp_KeccakP1600_Permute_s_fu_109.grp_theta_fu_225.C_U", "Parent" : "83"},
	{"ID" : "85", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_12_fu_116.grp_KeccakP1600_Permute_s_fu_109.grp_theta_fu_225.D_U", "Parent" : "83"},
	{"ID" : "86", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_12_fu_116.grp_KeccakP1600_Permute_s_fu_109.grp_chi_fu_230", "Parent" : "79", "Child" : ["87"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "87", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_12_fu_116.grp_KeccakP1600_Permute_s_fu_109.grp_chi_fu_230.C_U", "Parent" : "86"},
	{"ID" : "88", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_12_fu_116.grp_KeccakP1600_Permute_s_fu_109.grp_pi_fu_235", "Parent" : "79", "Child" : ["89", "90"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "89", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_12_fu_116.grp_KeccakP1600_Permute_s_fu_109.grp_pi_fu_235.tempA_U", "Parent" : "88"},
	{"ID" : "90", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_12_fu_116.grp_KeccakP1600_Permute_s_fu_109.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "88"},
	{"ID" : "91", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_11_fu_130", "Parent" : "37", "Child" : ["92"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "92", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_11_fu_130.grp_KeccakP1600_Permute_s_fu_91", "Parent" : "91", "Child" : ["93", "94", "95", "96", "99", "101"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "93", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_11_fu_130.grp_KeccakP1600_Permute_s_fu_91.KeccakRhoOffsets_U", "Parent" : "92"},
	{"ID" : "94", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_11_fu_130.grp_KeccakP1600_Permute_s_fu_91.KeccakRoundConstants_U", "Parent" : "92"},
	{"ID" : "95", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_11_fu_130.grp_KeccakP1600_Permute_s_fu_91.stateAsWords_U", "Parent" : "92"},
	{"ID" : "96", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_11_fu_130.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225", "Parent" : "92", "Child" : ["97", "98"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "97", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_11_fu_130.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225.C_U", "Parent" : "96"},
	{"ID" : "98", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_11_fu_130.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225.D_U", "Parent" : "96"},
	{"ID" : "99", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_11_fu_130.grp_KeccakP1600_Permute_s_fu_91.grp_chi_fu_230", "Parent" : "92", "Child" : ["100"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "100", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_11_fu_130.grp_KeccakP1600_Permute_s_fu_91.grp_chi_fu_230.C_U", "Parent" : "99"},
	{"ID" : "101", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_11_fu_130.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235", "Parent" : "92", "Child" : ["102", "103"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "102", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_11_fu_130.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235.tempA_U", "Parent" : "101"},
	{"ID" : "103", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_KeccakWidth1600_Spon_11_fu_130.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "101"},
	{"ID" : "104", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_HashInit_fu_142", "Parent" : "37", "Child" : ["105"],
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
					{"ID" : "105", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_74", "Port" : "instance_state"}]},
			{"Name" : "hashPrefix", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "105", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_74", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "105", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_74", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "105", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_HashInit_fu_142.grp_KeccakWidth1600_Spon_9_fu_74", "Parent" : "104", "Child" : ["106"],
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
					{"ID" : "106", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "state"}]},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "106", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "106", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "106", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_HashInit_fu_142.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54", "Parent" : "105", "Child" : ["107", "108", "109", "110", "113", "115"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "107", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_HashInit_fu_142.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.KeccakRhoOffsets_U", "Parent" : "106"},
	{"ID" : "108", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_HashInit_fu_142.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.KeccakRoundConstants_U", "Parent" : "106"},
	{"ID" : "109", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_HashInit_fu_142.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.stateAsWords_U", "Parent" : "106"},
	{"ID" : "110", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_HashInit_fu_142.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225", "Parent" : "106", "Child" : ["111", "112"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "111", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_HashInit_fu_142.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.C_U", "Parent" : "110"},
	{"ID" : "112", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_HashInit_fu_142.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.D_U", "Parent" : "110"},
	{"ID" : "113", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_HashInit_fu_142.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230", "Parent" : "106", "Child" : ["114"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "114", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_HashInit_fu_142.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230.C_U", "Parent" : "113"},
	{"ID" : "115", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_HashInit_fu_142.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235", "Parent" : "106", "Child" : ["116", "117"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "116", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_HashInit_fu_142.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.tempA_U", "Parent" : "115"},
	{"ID" : "117", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_HashInit_fu_142.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "115"},
	{"ID" : "118", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_HashFinal_fu_155", "Parent" : "37", "Child" : ["119"],
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
					{"ID" : "119", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "state"}]},
			{"Name" : "ctx_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "119", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "119", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "119", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_HashFinal_fu_155.grp_KeccakP1600_Permute_s_fu_54", "Parent" : "118", "Child" : ["120", "121", "122", "123", "126", "128"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "120", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_HashFinal_fu_155.grp_KeccakP1600_Permute_s_fu_54.KeccakRhoOffsets_U", "Parent" : "119"},
	{"ID" : "121", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_HashFinal_fu_155.grp_KeccakP1600_Permute_s_fu_54.KeccakRoundConstants_U", "Parent" : "119"},
	{"ID" : "122", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_HashFinal_fu_155.grp_KeccakP1600_Permute_s_fu_54.stateAsWords_U", "Parent" : "119"},
	{"ID" : "123", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_HashFinal_fu_155.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225", "Parent" : "119", "Child" : ["124", "125"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "124", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_HashFinal_fu_155.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.C_U", "Parent" : "123"},
	{"ID" : "125", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_HashFinal_fu_155.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.D_U", "Parent" : "123"},
	{"ID" : "126", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_HashFinal_fu_155.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230", "Parent" : "119", "Child" : ["127"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "127", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_HashFinal_fu_155.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230.C_U", "Parent" : "126"},
	{"ID" : "128", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_HashFinal_fu_155.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235", "Parent" : "119", "Child" : ["129", "130"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "129", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_HashFinal_fu_155.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.tempA_U", "Parent" : "128"},
	{"ID" : "130", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_createRandomTape13_fu_693.grp_HashFinal_fu_155.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "128"},
	{"ID" : "131", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_mpc_LowMC_verify_2_fu_713", "Parent" : "33", "Child" : ["132", "133", "137", "141"],
		"CDFG" : "mpc_LowMC_verify_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "668478", "EstimateLatencyMax" : "668850",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_700"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_700"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_700"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_700"},
			{"State" : "ap_ST_fsm_state32", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_1_fu_717"},
			{"State" : "ap_ST_fsm_state34", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_1_fu_717"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mpc_AND_verify_2_fu_729"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mpc_AND_verify_2_fu_729"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mpc_AND_verify_2_fu_729"}],
		"Port" : [
			{"Name" : "view1_inputShare", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "133", "SubInstance" : "grp_matrix_mul_fu_700", "Port" : "state"}]},
			{"Name" : "view1_inputShare_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "view1_communicatedBi", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "141", "SubInstance" : "grp_mpc_AND_verify_2_fu_729", "Port" : "view1_communicatedBi"}]},
			{"Name" : "view1_outputShare", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "view2_inputShare", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "133", "SubInstance" : "grp_matrix_mul_fu_700", "Port" : "state"}]},
			{"Name" : "view2_communicatedBi", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "141", "SubInstance" : "grp_mpc_AND_verify_2_fu_729", "Port" : "view2_communicatedBi"}]},
			{"Name" : "view2_outputShare", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tapes_0_tape", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "141", "SubInstance" : "grp_mpc_AND_verify_2_fu_729", "Port" : "rand_0_tape"}]},
			{"Name" : "tmp", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_matrix_mul_1_fu_717", "Port" : "output_r"},
					{"ID" : "133", "SubInstance" : "grp_matrix_mul_fu_700", "Port" : "output_r"}]},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "challenge", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_matrix", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "133", "SubInstance" : "grp_matrix_mul_fu_700", "Port" : "temp_matrix"}]},
			{"Name" : "temp_matrix2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_matrix_mul_1_fu_717", "Port" : "temp_matrix2"}]},
			{"Name" : "temp_matrix3", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "132", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_mpc_LowMC_verify_2_fu_713.temp_matrix3_U", "Parent" : "131"},
	{"ID" : "133", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_mpc_LowMC_verify_2_fu_713.grp_matrix_mul_fu_700", "Parent" : "131", "Child" : ["134", "135", "136"],
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
			{"Name" : "matrix_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_matrix", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "134", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_mpc_LowMC_verify_2_fu_713.grp_matrix_mul_fu_700.temp_matrix_U", "Parent" : "133"},
	{"ID" : "135", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_mpc_LowMC_verify_2_fu_713.grp_matrix_mul_fu_700.prod_U", "Parent" : "133"},
	{"ID" : "136", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_mpc_LowMC_verify_2_fu_713.grp_matrix_mul_fu_700.temp_U", "Parent" : "133"},
	{"ID" : "137", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_mpc_LowMC_verify_2_fu_713.grp_matrix_mul_1_fu_717", "Parent" : "131", "Child" : ["138", "139", "140"],
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
	{"ID" : "138", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_mpc_LowMC_verify_2_fu_713.grp_matrix_mul_1_fu_717.temp_matrix2_U", "Parent" : "137"},
	{"ID" : "139", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_mpc_LowMC_verify_2_fu_713.grp_matrix_mul_1_fu_717.prod_U", "Parent" : "137"},
	{"ID" : "140", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_mpc_LowMC_verify_2_fu_713.grp_matrix_mul_1_fu_717.temp_U", "Parent" : "137"},
	{"ID" : "141", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_mpc_LowMC_verify_2_fu_713.grp_mpc_AND_verify_2_fu_729", "Parent" : "131", "Child" : ["142", "143"],
		"CDFG" : "mpc_AND_verify_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in1_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in1_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in2_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in2_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "rand_0_tape", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rand_0_pos_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "view1_communicatedBi", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "view1_communicatedBits_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "view2_communicatedBi", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "view2_communicatedBits_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "142", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_mpc_LowMC_verify_2_fu_713.grp_mpc_AND_verify_2_fu_729.crypto_sign_open_hbi_U75", "Parent" : "141"},
	{"ID" : "143", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_mpc_LowMC_verify_2_fu_713.grp_mpc_AND_verify_2_fu_729.crypto_sign_open_hbi_U76", "Parent" : "141"},
	{"ID" : "144", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_1_fu_742", "Parent" : "33", "Child" : ["145"],
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
					{"ID" : "145", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_256", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataByteLen", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "145", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_256", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "145", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_256", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "145", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_1_fu_742.grp_KeccakP1600_Permute_s_fu_256", "Parent" : "144", "Child" : ["146", "147", "148", "149", "152", "154"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "146", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_1_fu_742.grp_KeccakP1600_Permute_s_fu_256.KeccakRhoOffsets_U", "Parent" : "145"},
	{"ID" : "147", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_1_fu_742.grp_KeccakP1600_Permute_s_fu_256.KeccakRoundConstants_U", "Parent" : "145"},
	{"ID" : "148", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_1_fu_742.grp_KeccakP1600_Permute_s_fu_256.stateAsWords_U", "Parent" : "145"},
	{"ID" : "149", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_1_fu_742.grp_KeccakP1600_Permute_s_fu_256.grp_theta_fu_225", "Parent" : "145", "Child" : ["150", "151"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "150", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_1_fu_742.grp_KeccakP1600_Permute_s_fu_256.grp_theta_fu_225.C_U", "Parent" : "149"},
	{"ID" : "151", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_1_fu_742.grp_KeccakP1600_Permute_s_fu_256.grp_theta_fu_225.D_U", "Parent" : "149"},
	{"ID" : "152", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_1_fu_742.grp_KeccakP1600_Permute_s_fu_256.grp_chi_fu_230", "Parent" : "145", "Child" : ["153"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "153", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_1_fu_742.grp_KeccakP1600_Permute_s_fu_256.grp_chi_fu_230.C_U", "Parent" : "152"},
	{"ID" : "154", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_1_fu_742.grp_KeccakP1600_Permute_s_fu_256.grp_pi_fu_235", "Parent" : "145", "Child" : ["155", "156"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "155", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_1_fu_742.grp_KeccakP1600_Permute_s_fu_256.grp_pi_fu_235.tempA_U", "Parent" : "154"},
	{"ID" : "156", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_1_fu_742.grp_KeccakP1600_Permute_s_fu_256.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "154"},
	{"ID" : "157", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_6_fu_761", "Parent" : "33", "Child" : ["158"],
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
					{"ID" : "158", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "158", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "158", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "158", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_6_fu_761.grp_KeccakP1600_Permute_s_fu_176", "Parent" : "157", "Child" : ["159", "160", "161", "162", "165", "167"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "159", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_6_fu_761.grp_KeccakP1600_Permute_s_fu_176.KeccakRhoOffsets_U", "Parent" : "158"},
	{"ID" : "160", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_6_fu_761.grp_KeccakP1600_Permute_s_fu_176.KeccakRoundConstants_U", "Parent" : "158"},
	{"ID" : "161", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_6_fu_761.grp_KeccakP1600_Permute_s_fu_176.stateAsWords_U", "Parent" : "158"},
	{"ID" : "162", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_6_fu_761.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225", "Parent" : "158", "Child" : ["163", "164"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "163", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_6_fu_761.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.C_U", "Parent" : "162"},
	{"ID" : "164", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_6_fu_761.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.D_U", "Parent" : "162"},
	{"ID" : "165", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_6_fu_761.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230", "Parent" : "158", "Child" : ["166"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "166", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_6_fu_761.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230.C_U", "Parent" : "165"},
	{"ID" : "167", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_6_fu_761.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235", "Parent" : "158", "Child" : ["168", "169"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "168", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_6_fu_761.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.tempA_U", "Parent" : "167"},
	{"ID" : "169", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_6_fu_761.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "167"},
	{"ID" : "170", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_7_fu_773", "Parent" : "33", "Child" : ["171"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_173"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_173"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "171", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_173", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "171", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_173", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "171", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_173", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "171", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_7_fu_773.grp_KeccakP1600_Permute_s_fu_173", "Parent" : "170", "Child" : ["172", "173", "174", "175", "178", "180"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "172", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_7_fu_773.grp_KeccakP1600_Permute_s_fu_173.KeccakRhoOffsets_U", "Parent" : "171"},
	{"ID" : "173", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_7_fu_773.grp_KeccakP1600_Permute_s_fu_173.KeccakRoundConstants_U", "Parent" : "171"},
	{"ID" : "174", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_7_fu_773.grp_KeccakP1600_Permute_s_fu_173.stateAsWords_U", "Parent" : "171"},
	{"ID" : "175", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_7_fu_773.grp_KeccakP1600_Permute_s_fu_173.grp_theta_fu_225", "Parent" : "171", "Child" : ["176", "177"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "176", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_7_fu_773.grp_KeccakP1600_Permute_s_fu_173.grp_theta_fu_225.C_U", "Parent" : "175"},
	{"ID" : "177", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_7_fu_773.grp_KeccakP1600_Permute_s_fu_173.grp_theta_fu_225.D_U", "Parent" : "175"},
	{"ID" : "178", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_7_fu_773.grp_KeccakP1600_Permute_s_fu_173.grp_chi_fu_230", "Parent" : "171", "Child" : ["179"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "179", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_7_fu_773.grp_KeccakP1600_Permute_s_fu_173.grp_chi_fu_230.C_U", "Parent" : "178"},
	{"ID" : "180", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_7_fu_773.grp_KeccakP1600_Permute_s_fu_173.grp_pi_fu_235", "Parent" : "171", "Child" : ["181", "182"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "181", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_7_fu_773.grp_KeccakP1600_Permute_s_fu_173.grp_pi_fu_235.tempA_U", "Parent" : "180"},
	{"ID" : "182", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_7_fu_773.grp_KeccakP1600_Permute_s_fu_173.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "180"},
	{"ID" : "183", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_12_fu_788", "Parent" : "33", "Child" : ["184"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_109"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "184", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_109", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "184", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_109", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "184", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_109", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "184", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_12_fu_788.grp_KeccakP1600_Permute_s_fu_109", "Parent" : "183", "Child" : ["185", "186", "187", "188", "191", "193"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "185", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_12_fu_788.grp_KeccakP1600_Permute_s_fu_109.KeccakRhoOffsets_U", "Parent" : "184"},
	{"ID" : "186", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_12_fu_788.grp_KeccakP1600_Permute_s_fu_109.KeccakRoundConstants_U", "Parent" : "184"},
	{"ID" : "187", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_12_fu_788.grp_KeccakP1600_Permute_s_fu_109.stateAsWords_U", "Parent" : "184"},
	{"ID" : "188", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_12_fu_788.grp_KeccakP1600_Permute_s_fu_109.grp_theta_fu_225", "Parent" : "184", "Child" : ["189", "190"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "189", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_12_fu_788.grp_KeccakP1600_Permute_s_fu_109.grp_theta_fu_225.C_U", "Parent" : "188"},
	{"ID" : "190", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_12_fu_788.grp_KeccakP1600_Permute_s_fu_109.grp_theta_fu_225.D_U", "Parent" : "188"},
	{"ID" : "191", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_12_fu_788.grp_KeccakP1600_Permute_s_fu_109.grp_chi_fu_230", "Parent" : "184", "Child" : ["192"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "192", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_12_fu_788.grp_KeccakP1600_Permute_s_fu_109.grp_chi_fu_230.C_U", "Parent" : "191"},
	{"ID" : "193", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_12_fu_788.grp_KeccakP1600_Permute_s_fu_109.grp_pi_fu_235", "Parent" : "184", "Child" : ["194", "195"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "194", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_12_fu_788.grp_KeccakP1600_Permute_s_fu_109.grp_pi_fu_235.tempA_U", "Parent" : "193"},
	{"ID" : "195", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_12_fu_788.grp_KeccakP1600_Permute_s_fu_109.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "193"},
	{"ID" : "196", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_5_fu_802", "Parent" : "33", "Child" : ["197"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_105"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "197", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_105", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "197", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_105", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "197", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_105", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "197", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_5_fu_802.grp_KeccakP1600_Permute_s_fu_105", "Parent" : "196", "Child" : ["198", "199", "200", "201", "204", "206"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "198", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_5_fu_802.grp_KeccakP1600_Permute_s_fu_105.KeccakRhoOffsets_U", "Parent" : "197"},
	{"ID" : "199", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_5_fu_802.grp_KeccakP1600_Permute_s_fu_105.KeccakRoundConstants_U", "Parent" : "197"},
	{"ID" : "200", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_5_fu_802.grp_KeccakP1600_Permute_s_fu_105.stateAsWords_U", "Parent" : "197"},
	{"ID" : "201", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_5_fu_802.grp_KeccakP1600_Permute_s_fu_105.grp_theta_fu_225", "Parent" : "197", "Child" : ["202", "203"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "202", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_5_fu_802.grp_KeccakP1600_Permute_s_fu_105.grp_theta_fu_225.C_U", "Parent" : "201"},
	{"ID" : "203", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_5_fu_802.grp_KeccakP1600_Permute_s_fu_105.grp_theta_fu_225.D_U", "Parent" : "201"},
	{"ID" : "204", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_5_fu_802.grp_KeccakP1600_Permute_s_fu_105.grp_chi_fu_230", "Parent" : "197", "Child" : ["205"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "205", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_5_fu_802.grp_KeccakP1600_Permute_s_fu_105.grp_chi_fu_230.C_U", "Parent" : "204"},
	{"ID" : "206", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_5_fu_802.grp_KeccakP1600_Permute_s_fu_105.grp_pi_fu_235", "Parent" : "197", "Child" : ["207", "208"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "207", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_5_fu_802.grp_KeccakP1600_Permute_s_fu_105.grp_pi_fu_235.tempA_U", "Parent" : "206"},
	{"ID" : "208", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_KeccakWidth1600_Spon_5_fu_802.grp_KeccakP1600_Permute_s_fu_105.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "206"},
	{"ID" : "209", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_HashInit_fu_817", "Parent" : "33", "Child" : ["210"],
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
					{"ID" : "210", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_74", "Port" : "instance_state"}]},
			{"Name" : "hashPrefix", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "210", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_74", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "210", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_74", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "210", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_HashInit_fu_817.grp_KeccakWidth1600_Spon_9_fu_74", "Parent" : "209", "Child" : ["211"],
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
					{"ID" : "211", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "state"}]},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "211", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "211", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "211", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_HashInit_fu_817.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54", "Parent" : "210", "Child" : ["212", "213", "214", "215", "218", "220"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "212", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_HashInit_fu_817.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.KeccakRhoOffsets_U", "Parent" : "211"},
	{"ID" : "213", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_HashInit_fu_817.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.KeccakRoundConstants_U", "Parent" : "211"},
	{"ID" : "214", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_HashInit_fu_817.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.stateAsWords_U", "Parent" : "211"},
	{"ID" : "215", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_HashInit_fu_817.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225", "Parent" : "211", "Child" : ["216", "217"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "216", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_HashInit_fu_817.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.C_U", "Parent" : "215"},
	{"ID" : "217", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_HashInit_fu_817.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.D_U", "Parent" : "215"},
	{"ID" : "218", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_HashInit_fu_817.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230", "Parent" : "211", "Child" : ["219"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "219", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_HashInit_fu_817.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230.C_U", "Parent" : "218"},
	{"ID" : "220", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_HashInit_fu_817.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235", "Parent" : "211", "Child" : ["221", "222"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "221", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_HashInit_fu_817.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.tempA_U", "Parent" : "220"},
	{"ID" : "222", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_HashInit_fu_817.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "220"},
	{"ID" : "223", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_HashFinal_fu_829", "Parent" : "33", "Child" : ["224"],
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
					{"ID" : "224", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "state"}]},
			{"Name" : "ctx_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "224", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "224", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "224", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_HashFinal_fu_829.grp_KeccakP1600_Permute_s_fu_54", "Parent" : "223", "Child" : ["225", "226", "227", "228", "231", "233"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "225", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_HashFinal_fu_829.grp_KeccakP1600_Permute_s_fu_54.KeccakRhoOffsets_U", "Parent" : "224"},
	{"ID" : "226", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_HashFinal_fu_829.grp_KeccakP1600_Permute_s_fu_54.KeccakRoundConstants_U", "Parent" : "224"},
	{"ID" : "227", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_HashFinal_fu_829.grp_KeccakP1600_Permute_s_fu_54.stateAsWords_U", "Parent" : "224"},
	{"ID" : "228", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_HashFinal_fu_829.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225", "Parent" : "224", "Child" : ["229", "230"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "229", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_HashFinal_fu_829.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.C_U", "Parent" : "228"},
	{"ID" : "230", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_HashFinal_fu_829.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.D_U", "Parent" : "228"},
	{"ID" : "231", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_HashFinal_fu_829.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230", "Parent" : "224", "Child" : ["232"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "232", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_HashFinal_fu_829.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230.C_U", "Parent" : "231"},
	{"ID" : "233", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_HashFinal_fu_829.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235", "Parent" : "224", "Child" : ["234", "235"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "234", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_HashFinal_fu_829.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.tempA_U", "Parent" : "233"},
	{"ID" : "235", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_verifyProof_23_fu_4465.grp_HashFinal_fu_829.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "233"},
	{"ID" : "236", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504", "Parent" : "13", "Child" : ["237", "238", "239", "240", "253", "266", "281", "294", "307", "320", "333", "347"],
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
					{"ID" : "266", "SubInstance" : "grp_HashUpdate_2_fu_401", "Port" : "data"}]},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "266", "SubInstance" : "grp_HashUpdate_2_fu_401", "Port" : "data"}]},
			{"Name" : "as_hashes", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "294", "SubInstance" : "grp_KeccakWidth1600_Spon_4_fu_426", "Port" : "data"}]},
			{"Name" : "challengeBits", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "salt_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "253", "SubInstance" : "grp_KeccakWidth1600_Spon_6_fu_389", "Port" : "data_0"}]},
			{"Name" : "message", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "240", "SubInstance" : "grp_KeccakWidth1600_Spon_13_fu_376", "Port" : "data"}]},
			{"Name" : "messageByteLength", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "281", "SubInstance" : "grp_KeccakWidth1600_Spon_2_fu_414", "Port" : "KeccakRhoOffsets"},
					{"ID" : "266", "SubInstance" : "grp_HashUpdate_2_fu_401", "Port" : "KeccakRhoOffsets"},
					{"ID" : "294", "SubInstance" : "grp_KeccakWidth1600_Spon_4_fu_426", "Port" : "KeccakRhoOffsets"},
					{"ID" : "253", "SubInstance" : "grp_KeccakWidth1600_Spon_6_fu_389", "Port" : "KeccakRhoOffsets"},
					{"ID" : "240", "SubInstance" : "grp_KeccakWidth1600_Spon_13_fu_376", "Port" : "KeccakRhoOffsets"},
					{"ID" : "347", "SubInstance" : "grp_HashFinal_fu_476", "Port" : "KeccakRhoOffsets"},
					{"ID" : "333", "SubInstance" : "grp_HashInit_fu_464", "Port" : "KeccakRhoOffsets"},
					{"ID" : "320", "SubInstance" : "grp_KeccakWidth1600_Spon_10_fu_453", "Port" : "KeccakRhoOffsets"},
					{"ID" : "307", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_442", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "281", "SubInstance" : "grp_KeccakWidth1600_Spon_2_fu_414", "Port" : "KeccakRoundConstants"},
					{"ID" : "266", "SubInstance" : "grp_HashUpdate_2_fu_401", "Port" : "KeccakRoundConstants"},
					{"ID" : "294", "SubInstance" : "grp_KeccakWidth1600_Spon_4_fu_426", "Port" : "KeccakRoundConstants"},
					{"ID" : "253", "SubInstance" : "grp_KeccakWidth1600_Spon_6_fu_389", "Port" : "KeccakRoundConstants"},
					{"ID" : "240", "SubInstance" : "grp_KeccakWidth1600_Spon_13_fu_376", "Port" : "KeccakRoundConstants"},
					{"ID" : "347", "SubInstance" : "grp_HashFinal_fu_476", "Port" : "KeccakRoundConstants"},
					{"ID" : "333", "SubInstance" : "grp_HashInit_fu_464", "Port" : "KeccakRoundConstants"},
					{"ID" : "320", "SubInstance" : "grp_KeccakWidth1600_Spon_10_fu_453", "Port" : "KeccakRoundConstants"},
					{"ID" : "307", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_442", "Port" : "KeccakRoundConstants"}]},
			{"Name" : "viewOutputs", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "237", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.temp_U", "Parent" : "236"},
	{"ID" : "238", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.hash_U", "Parent" : "236"},
	{"ID" : "239", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.ctx_sponge_state_U", "Parent" : "236"},
	{"ID" : "240", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_13_fu_376", "Parent" : "236", "Child" : ["241"],
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
					{"ID" : "241", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_160", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dataByteLen", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "241", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_160", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "241", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_160", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "241", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_13_fu_376.grp_KeccakP1600_Permute_s_fu_160", "Parent" : "240", "Child" : ["242", "243", "244", "245", "248", "250"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "242", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_13_fu_376.grp_KeccakP1600_Permute_s_fu_160.KeccakRhoOffsets_U", "Parent" : "241"},
	{"ID" : "243", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_13_fu_376.grp_KeccakP1600_Permute_s_fu_160.KeccakRoundConstants_U", "Parent" : "241"},
	{"ID" : "244", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_13_fu_376.grp_KeccakP1600_Permute_s_fu_160.stateAsWords_U", "Parent" : "241"},
	{"ID" : "245", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_13_fu_376.grp_KeccakP1600_Permute_s_fu_160.grp_theta_fu_225", "Parent" : "241", "Child" : ["246", "247"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "246", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_13_fu_376.grp_KeccakP1600_Permute_s_fu_160.grp_theta_fu_225.C_U", "Parent" : "245"},
	{"ID" : "247", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_13_fu_376.grp_KeccakP1600_Permute_s_fu_160.grp_theta_fu_225.D_U", "Parent" : "245"},
	{"ID" : "248", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_13_fu_376.grp_KeccakP1600_Permute_s_fu_160.grp_chi_fu_230", "Parent" : "241", "Child" : ["249"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "249", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_13_fu_376.grp_KeccakP1600_Permute_s_fu_160.grp_chi_fu_230.C_U", "Parent" : "248"},
	{"ID" : "250", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_13_fu_376.grp_KeccakP1600_Permute_s_fu_160.grp_pi_fu_235", "Parent" : "241", "Child" : ["251", "252"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "251", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_13_fu_376.grp_KeccakP1600_Permute_s_fu_160.grp_pi_fu_235.tempA_U", "Parent" : "250"},
	{"ID" : "252", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_13_fu_376.grp_KeccakP1600_Permute_s_fu_160.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "250"},
	{"ID" : "253", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_6_fu_389", "Parent" : "236", "Child" : ["254"],
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
					{"ID" : "254", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "254", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "254", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "254", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_6_fu_389.grp_KeccakP1600_Permute_s_fu_176", "Parent" : "253", "Child" : ["255", "256", "257", "258", "261", "263"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "255", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_6_fu_389.grp_KeccakP1600_Permute_s_fu_176.KeccakRhoOffsets_U", "Parent" : "254"},
	{"ID" : "256", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_6_fu_389.grp_KeccakP1600_Permute_s_fu_176.KeccakRoundConstants_U", "Parent" : "254"},
	{"ID" : "257", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_6_fu_389.grp_KeccakP1600_Permute_s_fu_176.stateAsWords_U", "Parent" : "254"},
	{"ID" : "258", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_6_fu_389.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225", "Parent" : "254", "Child" : ["259", "260"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "259", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_6_fu_389.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.C_U", "Parent" : "258"},
	{"ID" : "260", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_6_fu_389.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.D_U", "Parent" : "258"},
	{"ID" : "261", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_6_fu_389.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230", "Parent" : "254", "Child" : ["262"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "262", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_6_fu_389.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230.C_U", "Parent" : "261"},
	{"ID" : "263", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_6_fu_389.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235", "Parent" : "254", "Child" : ["264", "265"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "264", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_6_fu_389.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.tempA_U", "Parent" : "263"},
	{"ID" : "265", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_6_fu_389.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "263"},
	{"ID" : "266", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_HashUpdate_2_fu_401", "Parent" : "236", "Child" : ["267", "268"],
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
					{"ID" : "268", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_161", "Port" : "instance_state"}]},
			{"Name" : "ctx_sponge_byteIOInd", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "268", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_161", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "268", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_161", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "267", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_HashUpdate_2_fu_401.temp_U", "Parent" : "266"},
	{"ID" : "268", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161", "Parent" : "266", "Child" : ["269"],
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
					{"ID" : "269", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "269", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "269", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "269", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161.grp_KeccakP1600_Permute_s_fu_91", "Parent" : "268", "Child" : ["270", "271", "272", "273", "276", "278"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "270", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161.grp_KeccakP1600_Permute_s_fu_91.KeccakRhoOffsets_U", "Parent" : "269"},
	{"ID" : "271", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161.grp_KeccakP1600_Permute_s_fu_91.KeccakRoundConstants_U", "Parent" : "269"},
	{"ID" : "272", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161.grp_KeccakP1600_Permute_s_fu_91.stateAsWords_U", "Parent" : "269"},
	{"ID" : "273", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225", "Parent" : "269", "Child" : ["274", "275"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "274", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225.C_U", "Parent" : "273"},
	{"ID" : "275", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225.D_U", "Parent" : "273"},
	{"ID" : "276", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161.grp_KeccakP1600_Permute_s_fu_91.grp_chi_fu_230", "Parent" : "269", "Child" : ["277"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "277", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161.grp_KeccakP1600_Permute_s_fu_91.grp_chi_fu_230.C_U", "Parent" : "276"},
	{"ID" : "278", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235", "Parent" : "269", "Child" : ["279", "280"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "279", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235.tempA_U", "Parent" : "278"},
	{"ID" : "280", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_HashUpdate_2_fu_401.grp_KeccakWidth1600_Spon_15_fu_161.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "278"},
	{"ID" : "281", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_2_fu_414", "Parent" : "236", "Child" : ["282"],
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
					{"ID" : "282", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_154", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "282", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_154", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "282", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_154", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "282", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_2_fu_414.grp_KeccakP1600_Permute_s_fu_154", "Parent" : "281", "Child" : ["283", "284", "285", "286", "289", "291"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "283", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_2_fu_414.grp_KeccakP1600_Permute_s_fu_154.KeccakRhoOffsets_U", "Parent" : "282"},
	{"ID" : "284", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_2_fu_414.grp_KeccakP1600_Permute_s_fu_154.KeccakRoundConstants_U", "Parent" : "282"},
	{"ID" : "285", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_2_fu_414.grp_KeccakP1600_Permute_s_fu_154.stateAsWords_U", "Parent" : "282"},
	{"ID" : "286", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_2_fu_414.grp_KeccakP1600_Permute_s_fu_154.grp_theta_fu_225", "Parent" : "282", "Child" : ["287", "288"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "287", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_2_fu_414.grp_KeccakP1600_Permute_s_fu_154.grp_theta_fu_225.C_U", "Parent" : "286"},
	{"ID" : "288", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_2_fu_414.grp_KeccakP1600_Permute_s_fu_154.grp_theta_fu_225.D_U", "Parent" : "286"},
	{"ID" : "289", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_2_fu_414.grp_KeccakP1600_Permute_s_fu_154.grp_chi_fu_230", "Parent" : "282", "Child" : ["290"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "290", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_2_fu_414.grp_KeccakP1600_Permute_s_fu_154.grp_chi_fu_230.C_U", "Parent" : "289"},
	{"ID" : "291", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_2_fu_414.grp_KeccakP1600_Permute_s_fu_154.grp_pi_fu_235", "Parent" : "282", "Child" : ["292", "293"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "292", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_2_fu_414.grp_KeccakP1600_Permute_s_fu_154.grp_pi_fu_235.tempA_U", "Parent" : "291"},
	{"ID" : "293", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_2_fu_414.grp_KeccakP1600_Permute_s_fu_154.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "291"},
	{"ID" : "294", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_4_fu_426", "Parent" : "236", "Child" : ["295"],
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
					{"ID" : "295", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_123", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "295", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_123", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "295", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_123", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "295", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_4_fu_426.grp_KeccakP1600_Permute_s_fu_123", "Parent" : "294", "Child" : ["296", "297", "298", "299", "302", "304"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "296", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_4_fu_426.grp_KeccakP1600_Permute_s_fu_123.KeccakRhoOffsets_U", "Parent" : "295"},
	{"ID" : "297", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_4_fu_426.grp_KeccakP1600_Permute_s_fu_123.KeccakRoundConstants_U", "Parent" : "295"},
	{"ID" : "298", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_4_fu_426.grp_KeccakP1600_Permute_s_fu_123.stateAsWords_U", "Parent" : "295"},
	{"ID" : "299", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_4_fu_426.grp_KeccakP1600_Permute_s_fu_123.grp_theta_fu_225", "Parent" : "295", "Child" : ["300", "301"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "300", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_4_fu_426.grp_KeccakP1600_Permute_s_fu_123.grp_theta_fu_225.C_U", "Parent" : "299"},
	{"ID" : "301", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_4_fu_426.grp_KeccakP1600_Permute_s_fu_123.grp_theta_fu_225.D_U", "Parent" : "299"},
	{"ID" : "302", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_4_fu_426.grp_KeccakP1600_Permute_s_fu_123.grp_chi_fu_230", "Parent" : "295", "Child" : ["303"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "303", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_4_fu_426.grp_KeccakP1600_Permute_s_fu_123.grp_chi_fu_230.C_U", "Parent" : "302"},
	{"ID" : "304", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_4_fu_426.grp_KeccakP1600_Permute_s_fu_123.grp_pi_fu_235", "Parent" : "295", "Child" : ["305", "306"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "305", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_4_fu_426.grp_KeccakP1600_Permute_s_fu_123.grp_pi_fu_235.tempA_U", "Parent" : "304"},
	{"ID" : "306", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_4_fu_426.grp_KeccakP1600_Permute_s_fu_123.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "304"},
	{"ID" : "307", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_15_fu_442", "Parent" : "236", "Child" : ["308"],
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
					{"ID" : "308", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "308", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "308", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "308", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_15_fu_442.grp_KeccakP1600_Permute_s_fu_91", "Parent" : "307", "Child" : ["309", "310", "311", "312", "315", "317"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "309", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_15_fu_442.grp_KeccakP1600_Permute_s_fu_91.KeccakRhoOffsets_U", "Parent" : "308"},
	{"ID" : "310", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_15_fu_442.grp_KeccakP1600_Permute_s_fu_91.KeccakRoundConstants_U", "Parent" : "308"},
	{"ID" : "311", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_15_fu_442.grp_KeccakP1600_Permute_s_fu_91.stateAsWords_U", "Parent" : "308"},
	{"ID" : "312", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_15_fu_442.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225", "Parent" : "308", "Child" : ["313", "314"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "313", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_15_fu_442.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225.C_U", "Parent" : "312"},
	{"ID" : "314", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_15_fu_442.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225.D_U", "Parent" : "312"},
	{"ID" : "315", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_15_fu_442.grp_KeccakP1600_Permute_s_fu_91.grp_chi_fu_230", "Parent" : "308", "Child" : ["316"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "316", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_15_fu_442.grp_KeccakP1600_Permute_s_fu_91.grp_chi_fu_230.C_U", "Parent" : "315"},
	{"ID" : "317", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_15_fu_442.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235", "Parent" : "308", "Child" : ["318", "319"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "318", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_15_fu_442.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235.tempA_U", "Parent" : "317"},
	{"ID" : "319", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_15_fu_442.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "317"},
	{"ID" : "320", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_10_fu_453", "Parent" : "236", "Child" : ["321"],
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
					{"ID" : "321", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "321", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "321", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "321", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_10_fu_453.grp_KeccakP1600_Permute_s_fu_91", "Parent" : "320", "Child" : ["322", "323", "324", "325", "328", "330"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "322", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_10_fu_453.grp_KeccakP1600_Permute_s_fu_91.KeccakRhoOffsets_U", "Parent" : "321"},
	{"ID" : "323", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_10_fu_453.grp_KeccakP1600_Permute_s_fu_91.KeccakRoundConstants_U", "Parent" : "321"},
	{"ID" : "324", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_10_fu_453.grp_KeccakP1600_Permute_s_fu_91.stateAsWords_U", "Parent" : "321"},
	{"ID" : "325", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_10_fu_453.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225", "Parent" : "321", "Child" : ["326", "327"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "326", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_10_fu_453.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225.C_U", "Parent" : "325"},
	{"ID" : "327", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_10_fu_453.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225.D_U", "Parent" : "325"},
	{"ID" : "328", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_10_fu_453.grp_KeccakP1600_Permute_s_fu_91.grp_chi_fu_230", "Parent" : "321", "Child" : ["329"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "329", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_10_fu_453.grp_KeccakP1600_Permute_s_fu_91.grp_chi_fu_230.C_U", "Parent" : "328"},
	{"ID" : "330", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_10_fu_453.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235", "Parent" : "321", "Child" : ["331", "332"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "331", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_10_fu_453.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235.tempA_U", "Parent" : "330"},
	{"ID" : "332", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_KeccakWidth1600_Spon_10_fu_453.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "330"},
	{"ID" : "333", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_HashInit_fu_464", "Parent" : "236", "Child" : ["334"],
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
					{"ID" : "334", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_74", "Port" : "instance_state"}]},
			{"Name" : "hashPrefix", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "334", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_74", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "334", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_74", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "334", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74", "Parent" : "333", "Child" : ["335"],
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
					{"ID" : "335", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "state"}]},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "335", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "335", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "335", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54", "Parent" : "334", "Child" : ["336", "337", "338", "339", "342", "344"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "336", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.KeccakRhoOffsets_U", "Parent" : "335"},
	{"ID" : "337", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.KeccakRoundConstants_U", "Parent" : "335"},
	{"ID" : "338", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.stateAsWords_U", "Parent" : "335"},
	{"ID" : "339", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225", "Parent" : "335", "Child" : ["340", "341"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "340", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.C_U", "Parent" : "339"},
	{"ID" : "341", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.D_U", "Parent" : "339"},
	{"ID" : "342", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230", "Parent" : "335", "Child" : ["343"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "343", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230.C_U", "Parent" : "342"},
	{"ID" : "344", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235", "Parent" : "335", "Child" : ["345", "346"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "345", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.tempA_U", "Parent" : "344"},
	{"ID" : "346", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_HashInit_fu_464.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "344"},
	{"ID" : "347", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_HashFinal_fu_476", "Parent" : "236", "Child" : ["348"],
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
					{"ID" : "348", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "state"}]},
			{"Name" : "ctx_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "348", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "348", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "348", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_HashFinal_fu_476.grp_KeccakP1600_Permute_s_fu_54", "Parent" : "347", "Child" : ["349", "350", "351", "352", "355", "357"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "349", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_HashFinal_fu_476.grp_KeccakP1600_Permute_s_fu_54.KeccakRhoOffsets_U", "Parent" : "348"},
	{"ID" : "350", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_HashFinal_fu_476.grp_KeccakP1600_Permute_s_fu_54.KeccakRoundConstants_U", "Parent" : "348"},
	{"ID" : "351", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_HashFinal_fu_476.grp_KeccakP1600_Permute_s_fu_54.stateAsWords_U", "Parent" : "348"},
	{"ID" : "352", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_HashFinal_fu_476.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225", "Parent" : "348", "Child" : ["353", "354"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "353", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_HashFinal_fu_476.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.C_U", "Parent" : "352"},
	{"ID" : "354", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_HashFinal_fu_476.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.D_U", "Parent" : "352"},
	{"ID" : "355", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_HashFinal_fu_476.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230", "Parent" : "348", "Child" : ["356"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "356", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_HashFinal_fu_476.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230.C_U", "Parent" : "355"},
	{"ID" : "357", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_HashFinal_fu_476.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235", "Parent" : "348", "Child" : ["358", "359"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "358", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_HashFinal_fu_476.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.tempA_U", "Parent" : "357"},
	{"ID" : "359", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_H3_2_fu_4504.grp_HashFinal_fu_476.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "357"},
	{"ID" : "360", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_HashUpdate_2_1_fu_4525", "Parent" : "13", "Child" : ["361", "362"],
		"CDFG" : "HashUpdate_2_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_179"}],
		"Port" : [
			{"Name" : "ctx_sponge_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "362", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_179", "Port" : "instance_state"}]},
			{"Name" : "ctx_sponge_byteIOInd", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "362", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_179", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "362", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_179", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "361", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_HashUpdate_2_1_fu_4525.temp_U", "Parent" : "360"},
	{"ID" : "362", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_HashUpdate_2_1_fu_4525.grp_KeccakWidth1600_Spon_15_fu_179", "Parent" : "360", "Child" : ["363"],
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
					{"ID" : "363", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "363", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "363", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_91", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "363", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_HashUpdate_2_1_fu_4525.grp_KeccakWidth1600_Spon_15_fu_179.grp_KeccakP1600_Permute_s_fu_91", "Parent" : "362", "Child" : ["364", "365", "366", "367", "370", "372"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "364", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_HashUpdate_2_1_fu_4525.grp_KeccakWidth1600_Spon_15_fu_179.grp_KeccakP1600_Permute_s_fu_91.KeccakRhoOffsets_U", "Parent" : "363"},
	{"ID" : "365", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_HashUpdate_2_1_fu_4525.grp_KeccakWidth1600_Spon_15_fu_179.grp_KeccakP1600_Permute_s_fu_91.KeccakRoundConstants_U", "Parent" : "363"},
	{"ID" : "366", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_HashUpdate_2_1_fu_4525.grp_KeccakWidth1600_Spon_15_fu_179.grp_KeccakP1600_Permute_s_fu_91.stateAsWords_U", "Parent" : "363"},
	{"ID" : "367", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_HashUpdate_2_1_fu_4525.grp_KeccakWidth1600_Spon_15_fu_179.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225", "Parent" : "363", "Child" : ["368", "369"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "368", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_HashUpdate_2_1_fu_4525.grp_KeccakWidth1600_Spon_15_fu_179.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225.C_U", "Parent" : "367"},
	{"ID" : "369", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_HashUpdate_2_1_fu_4525.grp_KeccakWidth1600_Spon_15_fu_179.grp_KeccakP1600_Permute_s_fu_91.grp_theta_fu_225.D_U", "Parent" : "367"},
	{"ID" : "370", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_HashUpdate_2_1_fu_4525.grp_KeccakWidth1600_Spon_15_fu_179.grp_KeccakP1600_Permute_s_fu_91.grp_chi_fu_230", "Parent" : "363", "Child" : ["371"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "371", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_HashUpdate_2_1_fu_4525.grp_KeccakWidth1600_Spon_15_fu_179.grp_KeccakP1600_Permute_s_fu_91.grp_chi_fu_230.C_U", "Parent" : "370"},
	{"ID" : "372", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_HashUpdate_2_1_fu_4525.grp_KeccakWidth1600_Spon_15_fu_179.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235", "Parent" : "363", "Child" : ["373", "374"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "373", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_HashUpdate_2_1_fu_4525.grp_KeccakWidth1600_Spon_15_fu_179.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235.tempA_U", "Parent" : "372"},
	{"ID" : "374", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_HashUpdate_2_1_fu_4525.grp_KeccakWidth1600_Spon_15_fu_179.grp_KeccakP1600_Permute_s_fu_91.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "372"},
	{"ID" : "375", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_KeccakWidth1600_Spon_fu_4538", "Parent" : "13", "Child" : ["376"],
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
					{"ID" : "376", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_186", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "376", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_186", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "376", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_186", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "376", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_KeccakWidth1600_Spon_fu_4538.grp_KeccakP1600_Permute_s_fu_186", "Parent" : "375", "Child" : ["377", "378", "379", "380", "383", "385"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "377", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_KeccakWidth1600_Spon_fu_4538.grp_KeccakP1600_Permute_s_fu_186.KeccakRhoOffsets_U", "Parent" : "376"},
	{"ID" : "378", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_KeccakWidth1600_Spon_fu_4538.grp_KeccakP1600_Permute_s_fu_186.KeccakRoundConstants_U", "Parent" : "376"},
	{"ID" : "379", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_KeccakWidth1600_Spon_fu_4538.grp_KeccakP1600_Permute_s_fu_186.stateAsWords_U", "Parent" : "376"},
	{"ID" : "380", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_KeccakWidth1600_Spon_fu_4538.grp_KeccakP1600_Permute_s_fu_186.grp_theta_fu_225", "Parent" : "376", "Child" : ["381", "382"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "381", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_KeccakWidth1600_Spon_fu_4538.grp_KeccakP1600_Permute_s_fu_186.grp_theta_fu_225.C_U", "Parent" : "380"},
	{"ID" : "382", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_KeccakWidth1600_Spon_fu_4538.grp_KeccakP1600_Permute_s_fu_186.grp_theta_fu_225.D_U", "Parent" : "380"},
	{"ID" : "383", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_KeccakWidth1600_Spon_fu_4538.grp_KeccakP1600_Permute_s_fu_186.grp_chi_fu_230", "Parent" : "376", "Child" : ["384"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "384", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_KeccakWidth1600_Spon_fu_4538.grp_KeccakP1600_Permute_s_fu_186.grp_chi_fu_230.C_U", "Parent" : "383"},
	{"ID" : "385", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_KeccakWidth1600_Spon_fu_4538.grp_KeccakP1600_Permute_s_fu_186.grp_pi_fu_235", "Parent" : "376", "Child" : ["386", "387"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "386", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_KeccakWidth1600_Spon_fu_4538.grp_KeccakP1600_Permute_s_fu_186.grp_pi_fu_235.tempA_U", "Parent" : "385"},
	{"ID" : "387", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_KeccakWidth1600_Spon_fu_4538.grp_KeccakP1600_Permute_s_fu_186.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "385"},
	{"ID" : "388", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_KeccakWidth1600_Spon_4_fu_4553", "Parent" : "13", "Child" : ["389"],
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
					{"ID" : "389", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_123", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "389", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_123", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "389", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_123", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "389", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_KeccakWidth1600_Spon_4_fu_4553.grp_KeccakP1600_Permute_s_fu_123", "Parent" : "388", "Child" : ["390", "391", "392", "393", "396", "398"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "390", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_KeccakWidth1600_Spon_4_fu_4553.grp_KeccakP1600_Permute_s_fu_123.KeccakRhoOffsets_U", "Parent" : "389"},
	{"ID" : "391", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_KeccakWidth1600_Spon_4_fu_4553.grp_KeccakP1600_Permute_s_fu_123.KeccakRoundConstants_U", "Parent" : "389"},
	{"ID" : "392", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_KeccakWidth1600_Spon_4_fu_4553.grp_KeccakP1600_Permute_s_fu_123.stateAsWords_U", "Parent" : "389"},
	{"ID" : "393", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_KeccakWidth1600_Spon_4_fu_4553.grp_KeccakP1600_Permute_s_fu_123.grp_theta_fu_225", "Parent" : "389", "Child" : ["394", "395"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "394", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_KeccakWidth1600_Spon_4_fu_4553.grp_KeccakP1600_Permute_s_fu_123.grp_theta_fu_225.C_U", "Parent" : "393"},
	{"ID" : "395", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_KeccakWidth1600_Spon_4_fu_4553.grp_KeccakP1600_Permute_s_fu_123.grp_theta_fu_225.D_U", "Parent" : "393"},
	{"ID" : "396", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_KeccakWidth1600_Spon_4_fu_4553.grp_KeccakP1600_Permute_s_fu_123.grp_chi_fu_230", "Parent" : "389", "Child" : ["397"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "397", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_KeccakWidth1600_Spon_4_fu_4553.grp_KeccakP1600_Permute_s_fu_123.grp_chi_fu_230.C_U", "Parent" : "396"},
	{"ID" : "398", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_KeccakWidth1600_Spon_4_fu_4553.grp_KeccakP1600_Permute_s_fu_123.grp_pi_fu_235", "Parent" : "389", "Child" : ["399", "400"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "399", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_KeccakWidth1600_Spon_4_fu_4553.grp_KeccakP1600_Permute_s_fu_123.grp_pi_fu_235.tempA_U", "Parent" : "398"},
	{"ID" : "400", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_KeccakWidth1600_Spon_4_fu_4553.grp_KeccakP1600_Permute_s_fu_123.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "398"},
	{"ID" : "401", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_KeccakWidth1600_Spon_8_fu_4567", "Parent" : "13", "Child" : ["402"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_103"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "402", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_103", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "402", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_103", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "402", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_103", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "402", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_KeccakWidth1600_Spon_8_fu_4567.grp_KeccakP1600_Permute_s_fu_103", "Parent" : "401", "Child" : ["403", "404", "405", "406", "409", "411"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "403", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_KeccakWidth1600_Spon_8_fu_4567.grp_KeccakP1600_Permute_s_fu_103.KeccakRhoOffsets_U", "Parent" : "402"},
	{"ID" : "404", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_KeccakWidth1600_Spon_8_fu_4567.grp_KeccakP1600_Permute_s_fu_103.KeccakRoundConstants_U", "Parent" : "402"},
	{"ID" : "405", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_KeccakWidth1600_Spon_8_fu_4567.grp_KeccakP1600_Permute_s_fu_103.stateAsWords_U", "Parent" : "402"},
	{"ID" : "406", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_KeccakWidth1600_Spon_8_fu_4567.grp_KeccakP1600_Permute_s_fu_103.grp_theta_fu_225", "Parent" : "402", "Child" : ["407", "408"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "407", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_KeccakWidth1600_Spon_8_fu_4567.grp_KeccakP1600_Permute_s_fu_103.grp_theta_fu_225.C_U", "Parent" : "406"},
	{"ID" : "408", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_KeccakWidth1600_Spon_8_fu_4567.grp_KeccakP1600_Permute_s_fu_103.grp_theta_fu_225.D_U", "Parent" : "406"},
	{"ID" : "409", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_KeccakWidth1600_Spon_8_fu_4567.grp_KeccakP1600_Permute_s_fu_103.grp_chi_fu_230", "Parent" : "402", "Child" : ["410"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "410", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_KeccakWidth1600_Spon_8_fu_4567.grp_KeccakP1600_Permute_s_fu_103.grp_chi_fu_230.C_U", "Parent" : "409"},
	{"ID" : "411", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_KeccakWidth1600_Spon_8_fu_4567.grp_KeccakP1600_Permute_s_fu_103.grp_pi_fu_235", "Parent" : "402", "Child" : ["412", "413"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "412", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_KeccakWidth1600_Spon_8_fu_4567.grp_KeccakP1600_Permute_s_fu_103.grp_pi_fu_235.tempA_U", "Parent" : "411"},
	{"ID" : "413", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_KeccakWidth1600_Spon_8_fu_4567.grp_KeccakP1600_Permute_s_fu_103.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "411"},
	{"ID" : "414", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_KeccakWidth1600_Spon_14_fu_4580", "Parent" : "13", "Child" : ["415"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_109"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "415", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_109", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "415", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_109", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "415", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_109", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "415", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_KeccakWidth1600_Spon_14_fu_4580.grp_KeccakP1600_Permute_s_fu_109", "Parent" : "414", "Child" : ["416", "417", "418", "419", "422", "424"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "416", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_KeccakWidth1600_Spon_14_fu_4580.grp_KeccakP1600_Permute_s_fu_109.KeccakRhoOffsets_U", "Parent" : "415"},
	{"ID" : "417", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_KeccakWidth1600_Spon_14_fu_4580.grp_KeccakP1600_Permute_s_fu_109.KeccakRoundConstants_U", "Parent" : "415"},
	{"ID" : "418", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_KeccakWidth1600_Spon_14_fu_4580.grp_KeccakP1600_Permute_s_fu_109.stateAsWords_U", "Parent" : "415"},
	{"ID" : "419", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_KeccakWidth1600_Spon_14_fu_4580.grp_KeccakP1600_Permute_s_fu_109.grp_theta_fu_225", "Parent" : "415", "Child" : ["420", "421"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "420", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_KeccakWidth1600_Spon_14_fu_4580.grp_KeccakP1600_Permute_s_fu_109.grp_theta_fu_225.C_U", "Parent" : "419"},
	{"ID" : "421", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_KeccakWidth1600_Spon_14_fu_4580.grp_KeccakP1600_Permute_s_fu_109.grp_theta_fu_225.D_U", "Parent" : "419"},
	{"ID" : "422", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_KeccakWidth1600_Spon_14_fu_4580.grp_KeccakP1600_Permute_s_fu_109.grp_chi_fu_230", "Parent" : "415", "Child" : ["423"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "423", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_KeccakWidth1600_Spon_14_fu_4580.grp_KeccakP1600_Permute_s_fu_109.grp_chi_fu_230.C_U", "Parent" : "422"},
	{"ID" : "424", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_KeccakWidth1600_Spon_14_fu_4580.grp_KeccakP1600_Permute_s_fu_109.grp_pi_fu_235", "Parent" : "415", "Child" : ["425", "426"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "425", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_KeccakWidth1600_Spon_14_fu_4580.grp_KeccakP1600_Permute_s_fu_109.grp_pi_fu_235.tempA_U", "Parent" : "424"},
	{"ID" : "426", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_KeccakWidth1600_Spon_14_fu_4580.grp_KeccakP1600_Permute_s_fu_109.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "424"},
	{"ID" : "427", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_HashInit_fu_4595", "Parent" : "13", "Child" : ["428"],
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
					{"ID" : "428", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_74", "Port" : "instance_state"}]},
			{"Name" : "hashPrefix", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "428", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_74", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "428", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_74", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "428", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_HashInit_fu_4595.grp_KeccakWidth1600_Spon_9_fu_74", "Parent" : "427", "Child" : ["429"],
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
					{"ID" : "429", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "state"}]},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "429", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "429", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "429", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_HashInit_fu_4595.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54", "Parent" : "428", "Child" : ["430", "431", "432", "433", "436", "438"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "430", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_HashInit_fu_4595.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.KeccakRhoOffsets_U", "Parent" : "429"},
	{"ID" : "431", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_HashInit_fu_4595.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.KeccakRoundConstants_U", "Parent" : "429"},
	{"ID" : "432", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_HashInit_fu_4595.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.stateAsWords_U", "Parent" : "429"},
	{"ID" : "433", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_HashInit_fu_4595.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225", "Parent" : "429", "Child" : ["434", "435"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "434", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_HashInit_fu_4595.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.C_U", "Parent" : "433"},
	{"ID" : "435", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_HashInit_fu_4595.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.D_U", "Parent" : "433"},
	{"ID" : "436", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_HashInit_fu_4595.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230", "Parent" : "429", "Child" : ["437"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "437", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_HashInit_fu_4595.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230.C_U", "Parent" : "436"},
	{"ID" : "438", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_HashInit_fu_4595.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235", "Parent" : "429", "Child" : ["439", "440"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "439", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_HashInit_fu_4595.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.tempA_U", "Parent" : "438"},
	{"ID" : "440", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_HashInit_fu_4595.grp_KeccakWidth1600_Spon_9_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "438"},
	{"ID" : "441", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_HashFinal_fu_4607", "Parent" : "13", "Child" : ["442"],
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
					{"ID" : "442", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "state"}]},
			{"Name" : "ctx_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "442", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "442", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "442", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_HashFinal_fu_4607.grp_KeccakP1600_Permute_s_fu_54", "Parent" : "441", "Child" : ["443", "444", "445", "446", "449", "451"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "443", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_HashFinal_fu_4607.grp_KeccakP1600_Permute_s_fu_54.KeccakRhoOffsets_U", "Parent" : "442"},
	{"ID" : "444", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_HashFinal_fu_4607.grp_KeccakP1600_Permute_s_fu_54.KeccakRoundConstants_U", "Parent" : "442"},
	{"ID" : "445", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_HashFinal_fu_4607.grp_KeccakP1600_Permute_s_fu_54.stateAsWords_U", "Parent" : "442"},
	{"ID" : "446", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_HashFinal_fu_4607.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225", "Parent" : "442", "Child" : ["447", "448"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "447", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_HashFinal_fu_4607.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.C_U", "Parent" : "446"},
	{"ID" : "448", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_HashFinal_fu_4607.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.D_U", "Parent" : "446"},
	{"ID" : "449", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_HashFinal_fu_4607.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230", "Parent" : "442", "Child" : ["450"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "450", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_HashFinal_fu_4607.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230.C_U", "Parent" : "449"},
	{"ID" : "451", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_HashFinal_fu_4607.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235", "Parent" : "442", "Child" : ["452", "453"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "452", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_HashFinal_fu_4607.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.tempA_U", "Parent" : "451"},
	{"ID" : "453", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_verify_fu_336.grp_HashFinal_fu_4607.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.crypto_sign_open_bkb_U16", "Parent" : "451"},
	{"ID" : "454", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_picnic_verify_fu_288.grp_deserializeSignature_fu_364", "Parent" : "3",
		"CDFG" : "deserializeSignature",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "147631",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "sig_0_proofs_seed1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sig_0_proofs_seed2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sig_0_proofs_inputS", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sig_0_proofs_commun", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sig_0_proofs_view3C", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sig_0_challengeBits", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sig_0_salt", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sigBytes", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sigBytes_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "sigBytesLen", "Type" : "None", "Direction" : "I"},
			{"Name" : "params_UnruhGWithout", "Type" : "None", "Direction" : "I"},
			{"Name" : "params_transform_rea", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	crypto_sign_open {
		m {Type O LastRead -1 FirstWrite 9}
		mlen {Type O LastRead -1 FirstWrite 8}
		sm {Type I LastRead 15 FirstWrite -1}
		smlen {Type I LastRead 1 FirstWrite -1}
		pk {Type I LastRead 3 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}
		temp_matrix {Type I LastRead -1 FirstWrite -1}
		temp_matrix2 {Type I LastRead -1 FirstWrite -1}
		temp_matrix3 {Type I LastRead -1 FirstWrite -1}
		viewOutputs {Type IO LastRead 5 FirstWrite -1}}
	picnic_verify {
		pk_0_params_read {Type I LastRead 0 FirstWrite -1}
		pk_0_plaintext {Type I LastRead 6 FirstWrite -1}
		pk_0_ciphertext {Type I LastRead 6 FirstWrite -1}
		message {Type I LastRead 15 FirstWrite -1}
		message_len {Type I LastRead 1 FirstWrite -1}
		signature_offset {Type I LastRead 0 FirstWrite -1}
		signature_len {Type I LastRead 0 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}
		temp_matrix {Type I LastRead -1 FirstWrite -1}
		temp_matrix2 {Type I LastRead -1 FirstWrite -1}
		temp_matrix3 {Type I LastRead -1 FirstWrite -1}
		viewOutputs {Type IO LastRead 5 FirstWrite -1}}
	verify {
		sig_0_proofs_seed1 {Type I LastRead 3 FirstWrite -1}
		sig_0_proofs_seed2 {Type I LastRead 3 FirstWrite -1}
		sig_0_proofs_inputS {Type I LastRead 29 FirstWrite -1}
		sig_0_proofs_commun {Type I LastRead 2 FirstWrite -1}
		sig_0_proofs_view3C {Type I LastRead 178 FirstWrite -1}
		sig_0_challengeBits {Type I LastRead 3 FirstWrite -1}
		sig_0_salt {Type I LastRead 4 FirstWrite -1}
		pubKey {Type I LastRead 181 FirstWrite -1}
		plaintext {Type I LastRead 4 FirstWrite -1}
		message {Type I LastRead 4 FirstWrite -1}
		messageByteLength {Type I LastRead 0 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}
		temp_matrix {Type I LastRead -1 FirstWrite -1}
		temp_matrix2 {Type I LastRead -1 FirstWrite -1}
		temp_matrix3 {Type I LastRead -1 FirstWrite -1}
		viewOutputs {Type IO LastRead 5 FirstWrite -1}}
	verifyProof_23 {
		proof_0_seed1 {Type I LastRead 3 FirstWrite -1}
		proof_seed1_offset1 {Type I LastRead 0 FirstWrite -1}
		proof_0_seed2 {Type I LastRead 3 FirstWrite -1}
		proof_0_inputShare {Type I LastRead 29 FirstWrite -1}
		proof_0_communicatedBits {Type I LastRead 2 FirstWrite -1}
		view1_inputShare {Type IO LastRead 5 FirstWrite -1}
		view1_communicatedBits {Type IO LastRead 1 FirstWrite 2}
		view1_outputShare {Type O LastRead -1 FirstWrite 10}
		view2_inputShare {Type IO LastRead 28 FirstWrite -1}
		view2_communicatedBits {Type IO LastRead 1 FirstWrite -1}
		view2_outputShare {Type O LastRead -1 FirstWrite 11}
		challenge {Type I LastRead 0 FirstWrite -1}
		salt_0 {Type I LastRead 4 FirstWrite -1}
		roundNumber {Type I LastRead 0 FirstWrite -1}
		tmp {Type IO LastRead 31 FirstWrite -1}
		plaintext {Type I LastRead 4 FirstWrite -1}
		tape_0_tape {Type IO LastRead 3 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}
		temp_matrix {Type I LastRead -1 FirstWrite -1}
		temp_matrix2 {Type I LastRead -1 FirstWrite -1}
		temp_matrix3 {Type I LastRead -1 FirstWrite -1}}
	createRandomTape13 {
		seed_0 {Type I LastRead 3 FirstWrite -1}
		seed_offset1 {Type I LastRead 2 FirstWrite -1}
		salt_0 {Type I LastRead 4 FirstWrite -1}
		roundNumber {Type I LastRead 14 FirstWrite -1}
		playerNumber {Type I LastRead 16 FirstWrite -1}
		tape {Type IO LastRead 3 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	KeccakWidth1600_Spon_3 {
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
	KeccakWidth1600_Spon_7 {
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
	KeccakWidth1600_Spon_12 {
		instance_state {Type IO LastRead 3 FirstWrite 4}
		instance_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		data_0 {Type I LastRead 3 FirstWrite -1}
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
	KeccakWidth1600_Spon_11 {
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
		A {Type IO LastRead 2 FirstWrite 14}}
	mpc_LowMC_verify_2 {
		view1_inputShare {Type I LastRead 2 FirstWrite -1}
		view1_inputShare_offset {Type I LastRead 0 FirstWrite -1}
		view1_communicatedBi {Type IO LastRead 1 FirstWrite 2}
		view1_outputShare {Type O LastRead -1 FirstWrite 10}
		view2_inputShare {Type I LastRead 2 FirstWrite -1}
		view2_communicatedBi {Type I LastRead 1 FirstWrite -1}
		view2_outputShare {Type O LastRead -1 FirstWrite 11}
		tapes_0_tape {Type I LastRead 1 FirstWrite -1}
		tmp {Type IO LastRead 19 FirstWrite 1}
		plaintext {Type I LastRead 4 FirstWrite -1}
		challenge {Type I LastRead 0 FirstWrite -1}
		temp_matrix {Type I LastRead -1 FirstWrite -1}
		temp_matrix2 {Type I LastRead -1 FirstWrite -1}
		temp_matrix3 {Type I LastRead -1 FirstWrite -1}}
	matrix_mul {
		output_r {Type O LastRead -1 FirstWrite 3}
		output_offset {Type I LastRead 0 FirstWrite -1}
		state {Type I LastRead 2 FirstWrite -1}
		state_offset {Type I LastRead 0 FirstWrite -1}
		matrix_offset {Type I LastRead 0 FirstWrite -1}
		temp_matrix {Type I LastRead -1 FirstWrite -1}}
	matrix_mul_1 {
		output_r {Type IO LastRead 2 FirstWrite 3}
		state_offset {Type I LastRead 0 FirstWrite -1}
		matrix_offset {Type I LastRead 0 FirstWrite -1}
		temp_matrix2 {Type I LastRead -1 FirstWrite -1}}
	mpc_AND_verify_2 {
		in1_0_read {Type I LastRead 1 FirstWrite -1}
		in1_1_read {Type I LastRead 1 FirstWrite -1}
		in2_0_read {Type I LastRead 1 FirstWrite -1}
		in2_1_read {Type I LastRead 1 FirstWrite -1}
		rand_0_tape {Type I LastRead 1 FirstWrite -1}
		rand_0_pos_read {Type I LastRead 0 FirstWrite -1}
		view1_communicatedBi {Type IO LastRead 1 FirstWrite 2}
		view1_communicatedBits_offset {Type I LastRead 1 FirstWrite -1}
		view2_communicatedBi {Type I LastRead 1 FirstWrite -1}
		view2_communicatedBits_offset {Type I LastRead 1 FirstWrite -1}}
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
	KeccakWidth1600_Spon_7 {
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
	KeccakWidth1600_Spon_12 {
		instance_state {Type IO LastRead 3 FirstWrite 4}
		instance_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		data_0 {Type I LastRead 3 FirstWrite -1}
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
	KeccakWidth1600_Spon_5 {
		instance_state {Type IO LastRead 3 FirstWrite 4}
		instance_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		data_0 {Type I LastRead 3 FirstWrite -1}
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
		A {Type IO LastRead 2 FirstWrite 14}}
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
		A {Type IO LastRead 2 FirstWrite 14}}
	HashUpdate_2_1 {
		ctx_sponge_state {Type IO LastRead 3 FirstWrite 4}
		ctx_sponge_byteIOInd {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 2 FirstWrite -1}
		data_offset {Type I LastRead 0 FirstWrite -1}
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
	KeccakWidth1600_Spon_8 {
		instance_state {Type IO LastRead 3 FirstWrite 4}
		instance_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 3 FirstWrite -1}
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
	KeccakWidth1600_Spon_14 {
		instance_state {Type IO LastRead 3 FirstWrite 4}
		instance_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		data_0 {Type I LastRead 3 FirstWrite -1}
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
		A {Type IO LastRead 2 FirstWrite 14}}
	deserializeSignature {
		sig_0_proofs_seed1 {Type O LastRead -1 FirstWrite 12}
		sig_0_proofs_seed2 {Type O LastRead -1 FirstWrite 13}
		sig_0_proofs_inputS {Type O LastRead -1 FirstWrite 15}
		sig_0_proofs_commun {Type O LastRead -1 FirstWrite 11}
		sig_0_proofs_view3C {Type O LastRead -1 FirstWrite 10}
		sig_0_challengeBits {Type IO LastRead 7 FirstWrite 5}
		sig_0_salt {Type O LastRead -1 FirstWrite 7}
		sigBytes {Type I LastRead 15 FirstWrite -1}
		sigBytes_offset {Type I LastRead 0 FirstWrite -1}
		sigBytesLen {Type I LastRead 0 FirstWrite -1}
		params_UnruhGWithout {Type I LastRead 0 FirstWrite -1}
		params_transform_rea {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	m { ap_memory {  { m_address0 mem_address 1 12 }  { m_ce0 mem_ce 1 1 }  { m_we0 mem_we 1 1 }  { m_d0 mem_din 1 8 } } }
	mlen { ap_memory {  { mlen_address0 mem_address 1 1 }  { mlen_ce0 mem_ce 1 1 }  { mlen_we0 mem_we 1 1 }  { mlen_d0 mem_din 1 64 } } }
	sm { ap_memory {  { sm_address0 mem_address 1 17 }  { sm_ce0 mem_ce 1 1 }  { sm_q0 mem_dout 0 8 }  { sm_address1 mem_address 1 17 }  { sm_ce1 mem_ce 1 1 }  { sm_q1 mem_dout 0 8 } } }
	smlen { ap_none {  { smlen in_data 0 64 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 6 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 8 } } }
	viewOutputs { ap_memory {  { viewOutputs_address0 mem_address 1 15 }  { viewOutputs_ce0 mem_ce 1 1 }  { viewOutputs_we0 mem_we 1 1 }  { viewOutputs_d0 mem_din 1 32 }  { viewOutputs_q0 mem_dout 0 32 } } }
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
