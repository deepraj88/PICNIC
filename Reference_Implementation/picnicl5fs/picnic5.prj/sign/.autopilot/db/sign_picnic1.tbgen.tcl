set moduleName sign_picnic1
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
set C_modelName {sign_picnic1}
set C_modelType { void 0 }
set C_modelArgList {
	{ privateKey int 32 regular {array 8 { 1 1 } 1 1 }  }
	{ pubKey int 32 regular {array 8 { 1 1 } 1 1 }  }
	{ plaintext int 32 regular {array 8 { 1 1 } 1 1 }  }
	{ message int 8 regular {array 3300 { 1 3 } 1 1 }  }
	{ messageByteLength int 64 regular  }
	{ sig_0_proofs_seed1 int 8 regular {array 14016 { 0 3 } 0 1 }  }
	{ sig_0_proofs_seed2 int 8 regular {array 14016 { 0 3 } 0 1 }  }
	{ sig_0_proofs_inputS int 32 regular {array 3504 { 0 3 } 0 1 }  }
	{ sig_0_proofs_commun int 8 regular {array 62634 { 0 3 } 0 1 }  }
	{ sig_0_proofs_view3C int 8 regular {array 28032 { 0 3 } 0 1 }  }
	{ sig_0_challengeBits int 8 regular {array 110 { 2 3 } 1 1 }  }
	{ sig_0_salt int 8 regular {array 32 { 2 3 } 1 1 }  }
	{ viewOutputs int 32 regular {array 42048 { 2 1 } 1 1 } {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "privateKey", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pubKey", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "plaintext", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "message", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "messageByteLength", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "sig_0_proofs_seed1", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sig_0_proofs_seed2", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sig_0_proofs_inputS", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sig_0_proofs_commun", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sig_0_proofs_view3C", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sig_0_challengeBits", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "sig_0_salt", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "viewOutputs", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "viewOutputs","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1313,"step" : 1},{"low" : 0,"up" : 31,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 66
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ privateKey_address0 sc_out sc_lv 3 signal 0 } 
	{ privateKey_ce0 sc_out sc_logic 1 signal 0 } 
	{ privateKey_q0 sc_in sc_lv 32 signal 0 } 
	{ privateKey_address1 sc_out sc_lv 3 signal 0 } 
	{ privateKey_ce1 sc_out sc_logic 1 signal 0 } 
	{ privateKey_q1 sc_in sc_lv 32 signal 0 } 
	{ pubKey_address0 sc_out sc_lv 3 signal 1 } 
	{ pubKey_ce0 sc_out sc_logic 1 signal 1 } 
	{ pubKey_q0 sc_in sc_lv 32 signal 1 } 
	{ pubKey_address1 sc_out sc_lv 3 signal 1 } 
	{ pubKey_ce1 sc_out sc_logic 1 signal 1 } 
	{ pubKey_q1 sc_in sc_lv 32 signal 1 } 
	{ plaintext_address0 sc_out sc_lv 3 signal 2 } 
	{ plaintext_ce0 sc_out sc_logic 1 signal 2 } 
	{ plaintext_q0 sc_in sc_lv 32 signal 2 } 
	{ plaintext_address1 sc_out sc_lv 3 signal 2 } 
	{ plaintext_ce1 sc_out sc_logic 1 signal 2 } 
	{ plaintext_q1 sc_in sc_lv 32 signal 2 } 
	{ message_address0 sc_out sc_lv 12 signal 3 } 
	{ message_ce0 sc_out sc_logic 1 signal 3 } 
	{ message_q0 sc_in sc_lv 8 signal 3 } 
	{ messageByteLength sc_in sc_lv 64 signal 4 } 
	{ sig_0_proofs_seed1_address0 sc_out sc_lv 14 signal 5 } 
	{ sig_0_proofs_seed1_ce0 sc_out sc_logic 1 signal 5 } 
	{ sig_0_proofs_seed1_we0 sc_out sc_logic 1 signal 5 } 
	{ sig_0_proofs_seed1_d0 sc_out sc_lv 8 signal 5 } 
	{ sig_0_proofs_seed2_address0 sc_out sc_lv 14 signal 6 } 
	{ sig_0_proofs_seed2_ce0 sc_out sc_logic 1 signal 6 } 
	{ sig_0_proofs_seed2_we0 sc_out sc_logic 1 signal 6 } 
	{ sig_0_proofs_seed2_d0 sc_out sc_lv 8 signal 6 } 
	{ sig_0_proofs_inputS_address0 sc_out sc_lv 12 signal 7 } 
	{ sig_0_proofs_inputS_ce0 sc_out sc_logic 1 signal 7 } 
	{ sig_0_proofs_inputS_we0 sc_out sc_logic 1 signal 7 } 
	{ sig_0_proofs_inputS_d0 sc_out sc_lv 32 signal 7 } 
	{ sig_0_proofs_commun_address0 sc_out sc_lv 16 signal 8 } 
	{ sig_0_proofs_commun_ce0 sc_out sc_logic 1 signal 8 } 
	{ sig_0_proofs_commun_we0 sc_out sc_logic 1 signal 8 } 
	{ sig_0_proofs_commun_d0 sc_out sc_lv 8 signal 8 } 
	{ sig_0_proofs_view3C_address0 sc_out sc_lv 15 signal 9 } 
	{ sig_0_proofs_view3C_ce0 sc_out sc_logic 1 signal 9 } 
	{ sig_0_proofs_view3C_we0 sc_out sc_logic 1 signal 9 } 
	{ sig_0_proofs_view3C_d0 sc_out sc_lv 8 signal 9 } 
	{ sig_0_challengeBits_address0 sc_out sc_lv 7 signal 10 } 
	{ sig_0_challengeBits_ce0 sc_out sc_logic 1 signal 10 } 
	{ sig_0_challengeBits_we0 sc_out sc_logic 1 signal 10 } 
	{ sig_0_challengeBits_d0 sc_out sc_lv 8 signal 10 } 
	{ sig_0_challengeBits_q0 sc_in sc_lv 8 signal 10 } 
	{ sig_0_salt_address0 sc_out sc_lv 5 signal 11 } 
	{ sig_0_salt_ce0 sc_out sc_logic 1 signal 11 } 
	{ sig_0_salt_we0 sc_out sc_logic 1 signal 11 } 
	{ sig_0_salt_d0 sc_out sc_lv 8 signal 11 } 
	{ sig_0_salt_q0 sc_in sc_lv 8 signal 11 } 
	{ viewOutputs_address0 sc_out sc_lv 16 signal 12 } 
	{ viewOutputs_ce0 sc_out sc_logic 1 signal 12 } 
	{ viewOutputs_we0 sc_out sc_logic 1 signal 12 } 
	{ viewOutputs_d0 sc_out sc_lv 32 signal 12 } 
	{ viewOutputs_q0 sc_in sc_lv 32 signal 12 } 
	{ viewOutputs_address1 sc_out sc_lv 16 signal 12 } 
	{ viewOutputs_ce1 sc_out sc_logic 1 signal 12 } 
	{ viewOutputs_q1 sc_in sc_lv 32 signal 12 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "privateKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "privateKey", "role": "address0" }} , 
 	{ "name": "privateKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "privateKey", "role": "ce0" }} , 
 	{ "name": "privateKey_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "privateKey", "role": "q0" }} , 
 	{ "name": "privateKey_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "privateKey", "role": "address1" }} , 
 	{ "name": "privateKey_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "privateKey", "role": "ce1" }} , 
 	{ "name": "privateKey_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "privateKey", "role": "q1" }} , 
 	{ "name": "pubKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "pubKey", "role": "address0" }} , 
 	{ "name": "pubKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pubKey", "role": "ce0" }} , 
 	{ "name": "pubKey_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pubKey", "role": "q0" }} , 
 	{ "name": "pubKey_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "pubKey", "role": "address1" }} , 
 	{ "name": "pubKey_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pubKey", "role": "ce1" }} , 
 	{ "name": "pubKey_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pubKey", "role": "q1" }} , 
 	{ "name": "plaintext_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "plaintext", "role": "address0" }} , 
 	{ "name": "plaintext_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "plaintext", "role": "ce0" }} , 
 	{ "name": "plaintext_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "plaintext", "role": "q0" }} , 
 	{ "name": "plaintext_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "plaintext", "role": "address1" }} , 
 	{ "name": "plaintext_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "plaintext", "role": "ce1" }} , 
 	{ "name": "plaintext_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "plaintext", "role": "q1" }} , 
 	{ "name": "message_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "message", "role": "address0" }} , 
 	{ "name": "message_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "message", "role": "ce0" }} , 
 	{ "name": "message_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "message", "role": "q0" }} , 
 	{ "name": "messageByteLength", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "messageByteLength", "role": "default" }} , 
 	{ "name": "sig_0_proofs_seed1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "sig_0_proofs_seed1", "role": "address0" }} , 
 	{ "name": "sig_0_proofs_seed1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_proofs_seed1", "role": "ce0" }} , 
 	{ "name": "sig_0_proofs_seed1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_proofs_seed1", "role": "we0" }} , 
 	{ "name": "sig_0_proofs_seed1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sig_0_proofs_seed1", "role": "d0" }} , 
 	{ "name": "sig_0_proofs_seed2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "sig_0_proofs_seed2", "role": "address0" }} , 
 	{ "name": "sig_0_proofs_seed2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_proofs_seed2", "role": "ce0" }} , 
 	{ "name": "sig_0_proofs_seed2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_proofs_seed2", "role": "we0" }} , 
 	{ "name": "sig_0_proofs_seed2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sig_0_proofs_seed2", "role": "d0" }} , 
 	{ "name": "sig_0_proofs_inputS_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sig_0_proofs_inputS", "role": "address0" }} , 
 	{ "name": "sig_0_proofs_inputS_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_proofs_inputS", "role": "ce0" }} , 
 	{ "name": "sig_0_proofs_inputS_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_proofs_inputS", "role": "we0" }} , 
 	{ "name": "sig_0_proofs_inputS_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sig_0_proofs_inputS", "role": "d0" }} , 
 	{ "name": "sig_0_proofs_commun_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sig_0_proofs_commun", "role": "address0" }} , 
 	{ "name": "sig_0_proofs_commun_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_proofs_commun", "role": "ce0" }} , 
 	{ "name": "sig_0_proofs_commun_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_proofs_commun", "role": "we0" }} , 
 	{ "name": "sig_0_proofs_commun_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sig_0_proofs_commun", "role": "d0" }} , 
 	{ "name": "sig_0_proofs_view3C_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "sig_0_proofs_view3C", "role": "address0" }} , 
 	{ "name": "sig_0_proofs_view3C_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_proofs_view3C", "role": "ce0" }} , 
 	{ "name": "sig_0_proofs_view3C_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_proofs_view3C", "role": "we0" }} , 
 	{ "name": "sig_0_proofs_view3C_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sig_0_proofs_view3C", "role": "d0" }} , 
 	{ "name": "sig_0_challengeBits_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "sig_0_challengeBits", "role": "address0" }} , 
 	{ "name": "sig_0_challengeBits_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_challengeBits", "role": "ce0" }} , 
 	{ "name": "sig_0_challengeBits_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_challengeBits", "role": "we0" }} , 
 	{ "name": "sig_0_challengeBits_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sig_0_challengeBits", "role": "d0" }} , 
 	{ "name": "sig_0_challengeBits_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sig_0_challengeBits", "role": "q0" }} , 
 	{ "name": "sig_0_salt_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sig_0_salt", "role": "address0" }} , 
 	{ "name": "sig_0_salt_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_salt", "role": "ce0" }} , 
 	{ "name": "sig_0_salt_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_salt", "role": "we0" }} , 
 	{ "name": "sig_0_salt_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sig_0_salt", "role": "d0" }} , 
 	{ "name": "sig_0_salt_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sig_0_salt", "role": "q0" }} , 
 	{ "name": "viewOutputs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "viewOutputs", "role": "address0" }} , 
 	{ "name": "viewOutputs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "viewOutputs", "role": "ce0" }} , 
 	{ "name": "viewOutputs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "viewOutputs", "role": "we0" }} , 
 	{ "name": "viewOutputs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "viewOutputs", "role": "d0" }} , 
 	{ "name": "viewOutputs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "viewOutputs", "role": "q0" }} , 
 	{ "name": "viewOutputs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "viewOutputs", "role": "address1" }} , 
 	{ "name": "viewOutputs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "viewOutputs", "role": "ce1" }} , 
 	{ "name": "viewOutputs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "viewOutputs", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "123", "220", "302", "333", "346", "359", "372", "385", "398", "411", "424", "437", "450", "452"],
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
					{"ID" : "220", "SubInstance" : "grp_computeSeeds_2_fu_625", "Port" : "privateKey"}]},
			{"Name" : "pubKey", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "220", "SubInstance" : "grp_computeSeeds_2_fu_625", "Port" : "publicKey"}]},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "302", "SubInstance" : "grp_mpc_LowMC_2_fu_647", "Port" : "plaintext"},
					{"ID" : "12", "SubInstance" : "grp_H3_2_fu_561", "Port" : "plaintext"},
					{"ID" : "220", "SubInstance" : "grp_computeSeeds_2_fu_625", "Port" : "plaintext"}]},
			{"Name" : "message", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_H3_2_fu_561", "Port" : "message"},
					{"ID" : "220", "SubInstance" : "grp_computeSeeds_2_fu_625", "Port" : "message"}]},
			{"Name" : "messageByteLength", "Type" : "None", "Direction" : "I"},
			{"Name" : "sig_0_proofs_seed1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "450", "SubInstance" : "grp_prove_26_fu_781", "Port" : "proof_0_seed1"}]},
			{"Name" : "sig_0_proofs_seed2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "450", "SubInstance" : "grp_prove_26_fu_781", "Port" : "proof_0_seed2"}]},
			{"Name" : "sig_0_proofs_inputS", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "450", "SubInstance" : "grp_prove_26_fu_781", "Port" : "proof_0_inputShare"}]},
			{"Name" : "sig_0_proofs_commun", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "450", "SubInstance" : "grp_prove_26_fu_781", "Port" : "proof_0_communicatedBits"}]},
			{"Name" : "sig_0_proofs_view3C", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "450", "SubInstance" : "grp_prove_26_fu_781", "Port" : "proof_0_view3Commitment"}]},
			{"Name" : "sig_0_challengeBits", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_H3_2_fu_561", "Port" : "challengeBits_0"}]},
			{"Name" : "sig_0_salt", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "398", "SubInstance" : "grp_Keccak_HashUpdate_7_fu_731", "Port" : "data_0"},
					{"ID" : "12", "SubInstance" : "grp_H3_2_fu_561", "Port" : "salt_0"},
					{"ID" : "220", "SubInstance" : "grp_computeSeeds_2_fu_625", "Port" : "salt_0"}]},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "333", "SubInstance" : "grp_Keccak_HashSqueeze_4_fu_666", "Port" : "KeccakRhoOffsets"},
					{"ID" : "359", "SubInstance" : "grp_Keccak_HashUpdate_8_fu_696", "Port" : "KeccakRhoOffsets"},
					{"ID" : "398", "SubInstance" : "grp_Keccak_HashUpdate_7_fu_731", "Port" : "KeccakRhoOffsets"},
					{"ID" : "346", "SubInstance" : "grp_Keccak_HashSqueeze_fu_681", "Port" : "KeccakRhoOffsets"},
					{"ID" : "372", "SubInstance" : "grp_Keccak_HashUpdate_9_fu_711", "Port" : "KeccakRhoOffsets"},
					{"ID" : "12", "SubInstance" : "grp_H3_2_fu_561", "Port" : "KeccakRhoOffsets"},
					{"ID" : "123", "SubInstance" : "grp_Commit_2_fu_582", "Port" : "KeccakRhoOffsets"},
					{"ID" : "424", "SubInstance" : "grp_Keccak_HashUpdate_3_fu_759", "Port" : "KeccakRhoOffsets"},
					{"ID" : "220", "SubInstance" : "grp_computeSeeds_2_fu_625", "Port" : "KeccakRhoOffsets"},
					{"ID" : "437", "SubInstance" : "grp_Keccak_HashFinal_fu_770", "Port" : "KeccakRhoOffsets"},
					{"ID" : "411", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_743", "Port" : "KeccakRhoOffsets"},
					{"ID" : "385", "SubInstance" : "grp_Keccak_HashUpdate_2_fu_721", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "333", "SubInstance" : "grp_Keccak_HashSqueeze_4_fu_666", "Port" : "KeccakRoundConstants"},
					{"ID" : "359", "SubInstance" : "grp_Keccak_HashUpdate_8_fu_696", "Port" : "KeccakRoundConstants"},
					{"ID" : "398", "SubInstance" : "grp_Keccak_HashUpdate_7_fu_731", "Port" : "KeccakRoundConstants"},
					{"ID" : "346", "SubInstance" : "grp_Keccak_HashSqueeze_fu_681", "Port" : "KeccakRoundConstants"},
					{"ID" : "372", "SubInstance" : "grp_Keccak_HashUpdate_9_fu_711", "Port" : "KeccakRoundConstants"},
					{"ID" : "12", "SubInstance" : "grp_H3_2_fu_561", "Port" : "KeccakRoundConstants"},
					{"ID" : "123", "SubInstance" : "grp_Commit_2_fu_582", "Port" : "KeccakRoundConstants"},
					{"ID" : "424", "SubInstance" : "grp_Keccak_HashUpdate_3_fu_759", "Port" : "KeccakRoundConstants"},
					{"ID" : "220", "SubInstance" : "grp_computeSeeds_2_fu_625", "Port" : "KeccakRoundConstants"},
					{"ID" : "437", "SubInstance" : "grp_Keccak_HashFinal_fu_770", "Port" : "KeccakRoundConstants"},
					{"ID" : "411", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_743", "Port" : "KeccakRoundConstants"},
					{"ID" : "385", "SubInstance" : "grp_Keccak_HashUpdate_2_fu_721", "Port" : "KeccakRoundConstants"}]},
			{"Name" : "temp_matrix", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "302", "SubInstance" : "grp_mpc_LowMC_2_fu_647", "Port" : "temp_matrix"}]},
			{"Name" : "temp_matrix2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "302", "SubInstance" : "grp_mpc_LowMC_2_fu_647", "Port" : "temp_matrix2"}]},
			{"Name" : "temp_matrix3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "302", "SubInstance" : "grp_mpc_LowMC_2_fu_647", "Port" : "temp_matrix3"}]},
			{"Name" : "viewOutputs", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_H3_2_fu_561", "Port" : "viewOutputs"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctx_sponge_state_1_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctx_sponge_state_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.views_inputShare_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.views_communicatedBi_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.views_outputShare_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.as_hashes_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.seeds_seed_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tape_tape_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tape_assign_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.slab_assign_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561", "Parent" : "0", "Child" : ["13", "14", "15", "16", "17", "18", "31", "44", "57", "70", "83", "96", "109", "122"],
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
					{"ID" : "44", "SubInstance" : "grp_Keccak_HashUpdate_10_fu_1432", "Port" : "data"}]},
			{"Name" : "challengeBits_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "salt_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "grp_Keccak_HashUpdate_7_fu_1471", "Port" : "data_0"}]},
			{"Name" : "message", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_1419", "Port" : "data"}]},
			{"Name" : "messageByteLength", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "grp_Keccak_HashFinal_fu_1494", "Port" : "KeccakRhoOffsets"},
					{"ID" : "57", "SubInstance" : "grp_Keccak_HashUpdate_fu_1448", "Port" : "KeccakRhoOffsets"},
					{"ID" : "44", "SubInstance" : "grp_Keccak_HashUpdate_10_fu_1432", "Port" : "KeccakRhoOffsets"},
					{"ID" : "31", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_1419", "Port" : "KeccakRhoOffsets"},
					{"ID" : "18", "SubInstance" : "grp_Keccak_HashSqueeze_1_fu_1407", "Port" : "KeccakRhoOffsets"},
					{"ID" : "70", "SubInstance" : "grp_Keccak_HashUpdate_4_fu_1460", "Port" : "KeccakRhoOffsets"},
					{"ID" : "96", "SubInstance" : "grp_Keccak_HashUpdate_3_fu_1483", "Port" : "KeccakRhoOffsets"},
					{"ID" : "83", "SubInstance" : "grp_Keccak_HashUpdate_7_fu_1471", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "grp_Keccak_HashFinal_fu_1494", "Port" : "KeccakRoundConstants"},
					{"ID" : "57", "SubInstance" : "grp_Keccak_HashUpdate_fu_1448", "Port" : "KeccakRoundConstants"},
					{"ID" : "44", "SubInstance" : "grp_Keccak_HashUpdate_10_fu_1432", "Port" : "KeccakRoundConstants"},
					{"ID" : "31", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_1419", "Port" : "KeccakRoundConstants"},
					{"ID" : "18", "SubInstance" : "grp_Keccak_HashSqueeze_1_fu_1407", "Port" : "KeccakRoundConstants"},
					{"ID" : "70", "SubInstance" : "grp_Keccak_HashUpdate_4_fu_1460", "Port" : "KeccakRoundConstants"},
					{"ID" : "96", "SubInstance" : "grp_Keccak_HashUpdate_3_fu_1483", "Port" : "KeccakRoundConstants"},
					{"ID" : "83", "SubInstance" : "grp_Keccak_HashUpdate_7_fu_1471", "Port" : "KeccakRoundConstants"}]},
			{"Name" : "viewOutputs", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.temp_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.temp_4_U", "Parent" : "12"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.temp_3_U", "Parent" : "12"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.hash_U", "Parent" : "12"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.ctx_sponge_state_U", "Parent" : "12"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashSqueeze_1_fu_1407", "Parent" : "12", "Child" : ["19"],
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
					{"ID" : "19", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_247", "Port" : "state"}]},
			{"Name" : "instance_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_247", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_247", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashSqueeze_1_fu_1407.grp_KeccakP1600_Permute_s_fu_247", "Parent" : "18", "Child" : ["20", "21", "22", "23", "26", "28"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "20", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashSqueeze_1_fu_1407.grp_KeccakP1600_Permute_s_fu_247.KeccakRhoOffsets_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashSqueeze_1_fu_1407.grp_KeccakP1600_Permute_s_fu_247.KeccakRoundConstants_U", "Parent" : "19"},
	{"ID" : "22", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashSqueeze_1_fu_1407.grp_KeccakP1600_Permute_s_fu_247.stateAsWords_U", "Parent" : "19"},
	{"ID" : "23", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashSqueeze_1_fu_1407.grp_KeccakP1600_Permute_s_fu_247.grp_theta_fu_225", "Parent" : "19", "Child" : ["24", "25"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "24", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashSqueeze_1_fu_1407.grp_KeccakP1600_Permute_s_fu_247.grp_theta_fu_225.C_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashSqueeze_1_fu_1407.grp_KeccakP1600_Permute_s_fu_247.grp_theta_fu_225.D_U", "Parent" : "23"},
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashSqueeze_1_fu_1407.grp_KeccakP1600_Permute_s_fu_247.grp_chi_fu_230", "Parent" : "19", "Child" : ["27"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "27", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashSqueeze_1_fu_1407.grp_KeccakP1600_Permute_s_fu_247.grp_chi_fu_230.C_U", "Parent" : "26"},
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashSqueeze_1_fu_1407.grp_KeccakP1600_Permute_s_fu_247.grp_pi_fu_235", "Parent" : "19", "Child" : ["29", "30"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "29", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashSqueeze_1_fu_1407.grp_KeccakP1600_Permute_s_fu_247.grp_pi_fu_235.tempA_U", "Parent" : "28"},
	{"ID" : "30", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashSqueeze_1_fu_1407.grp_KeccakP1600_Permute_s_fu_247.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "28"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_1_fu_1419", "Parent" : "12", "Child" : ["32"],
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
					{"ID" : "32", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_168", "Port" : "state"}]},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "databitlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_168", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_168", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_1_fu_1419.grp_KeccakP1600_Permute_s_fu_168", "Parent" : "31", "Child" : ["33", "34", "35", "36", "39", "41"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "33", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_1_fu_1419.grp_KeccakP1600_Permute_s_fu_168.KeccakRhoOffsets_U", "Parent" : "32"},
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_1_fu_1419.grp_KeccakP1600_Permute_s_fu_168.KeccakRoundConstants_U", "Parent" : "32"},
	{"ID" : "35", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_1_fu_1419.grp_KeccakP1600_Permute_s_fu_168.stateAsWords_U", "Parent" : "32"},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_1_fu_1419.grp_KeccakP1600_Permute_s_fu_168.grp_theta_fu_225", "Parent" : "32", "Child" : ["37", "38"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "37", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_1_fu_1419.grp_KeccakP1600_Permute_s_fu_168.grp_theta_fu_225.C_U", "Parent" : "36"},
	{"ID" : "38", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_1_fu_1419.grp_KeccakP1600_Permute_s_fu_168.grp_theta_fu_225.D_U", "Parent" : "36"},
	{"ID" : "39", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_1_fu_1419.grp_KeccakP1600_Permute_s_fu_168.grp_chi_fu_230", "Parent" : "32", "Child" : ["40"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "40", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_1_fu_1419.grp_KeccakP1600_Permute_s_fu_168.grp_chi_fu_230.C_U", "Parent" : "39"},
	{"ID" : "41", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_1_fu_1419.grp_KeccakP1600_Permute_s_fu_168.grp_pi_fu_235", "Parent" : "32", "Child" : ["42", "43"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "42", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_1_fu_1419.grp_KeccakP1600_Permute_s_fu_168.grp_pi_fu_235.tempA_U", "Parent" : "41"},
	{"ID" : "43", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_1_fu_1419.grp_KeccakP1600_Permute_s_fu_168.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "41"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_10_fu_1432", "Parent" : "12", "Child" : ["45"],
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
					{"ID" : "45", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204", "Port" : "state"}]},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_10_fu_1432.grp_KeccakP1600_Permute_s_fu_204", "Parent" : "44", "Child" : ["46", "47", "48", "49", "52", "54"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "46", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_10_fu_1432.grp_KeccakP1600_Permute_s_fu_204.KeccakRhoOffsets_U", "Parent" : "45"},
	{"ID" : "47", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_10_fu_1432.grp_KeccakP1600_Permute_s_fu_204.KeccakRoundConstants_U", "Parent" : "45"},
	{"ID" : "48", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_10_fu_1432.grp_KeccakP1600_Permute_s_fu_204.stateAsWords_U", "Parent" : "45"},
	{"ID" : "49", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_10_fu_1432.grp_KeccakP1600_Permute_s_fu_204.grp_theta_fu_225", "Parent" : "45", "Child" : ["50", "51"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "50", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_10_fu_1432.grp_KeccakP1600_Permute_s_fu_204.grp_theta_fu_225.C_U", "Parent" : "49"},
	{"ID" : "51", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_10_fu_1432.grp_KeccakP1600_Permute_s_fu_204.grp_theta_fu_225.D_U", "Parent" : "49"},
	{"ID" : "52", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_10_fu_1432.grp_KeccakP1600_Permute_s_fu_204.grp_chi_fu_230", "Parent" : "45", "Child" : ["53"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "53", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_10_fu_1432.grp_KeccakP1600_Permute_s_fu_204.grp_chi_fu_230.C_U", "Parent" : "52"},
	{"ID" : "54", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_10_fu_1432.grp_KeccakP1600_Permute_s_fu_204.grp_pi_fu_235", "Parent" : "45", "Child" : ["55", "56"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "55", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_10_fu_1432.grp_KeccakP1600_Permute_s_fu_204.grp_pi_fu_235.tempA_U", "Parent" : "54"},
	{"ID" : "56", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_10_fu_1432.grp_KeccakP1600_Permute_s_fu_204.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "54"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_fu_1448", "Parent" : "12", "Child" : ["58"],
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
					{"ID" : "58", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "state"}]},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_fu_1448.grp_KeccakP1600_Permute_s_fu_176", "Parent" : "57", "Child" : ["59", "60", "61", "62", "65", "67"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "59", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_fu_1448.grp_KeccakP1600_Permute_s_fu_176.KeccakRhoOffsets_U", "Parent" : "58"},
	{"ID" : "60", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_fu_1448.grp_KeccakP1600_Permute_s_fu_176.KeccakRoundConstants_U", "Parent" : "58"},
	{"ID" : "61", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_fu_1448.grp_KeccakP1600_Permute_s_fu_176.stateAsWords_U", "Parent" : "58"},
	{"ID" : "62", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_fu_1448.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225", "Parent" : "58", "Child" : ["63", "64"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "63", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_fu_1448.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.C_U", "Parent" : "62"},
	{"ID" : "64", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_fu_1448.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.D_U", "Parent" : "62"},
	{"ID" : "65", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_fu_1448.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230", "Parent" : "58", "Child" : ["66"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "66", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_fu_1448.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230.C_U", "Parent" : "65"},
	{"ID" : "67", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_fu_1448.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235", "Parent" : "58", "Child" : ["68", "69"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "68", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_fu_1448.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.tempA_U", "Parent" : "67"},
	{"ID" : "69", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_fu_1448.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "67"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_4_fu_1460", "Parent" : "12", "Child" : ["71"],
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
					{"ID" : "71", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "state"}]},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "71", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "71", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_4_fu_1460.grp_KeccakP1600_Permute_s_fu_176", "Parent" : "70", "Child" : ["72", "73", "74", "75", "78", "80"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "72", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_4_fu_1460.grp_KeccakP1600_Permute_s_fu_176.KeccakRhoOffsets_U", "Parent" : "71"},
	{"ID" : "73", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_4_fu_1460.grp_KeccakP1600_Permute_s_fu_176.KeccakRoundConstants_U", "Parent" : "71"},
	{"ID" : "74", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_4_fu_1460.grp_KeccakP1600_Permute_s_fu_176.stateAsWords_U", "Parent" : "71"},
	{"ID" : "75", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_4_fu_1460.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225", "Parent" : "71", "Child" : ["76", "77"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "76", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_4_fu_1460.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.C_U", "Parent" : "75"},
	{"ID" : "77", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_4_fu_1460.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.D_U", "Parent" : "75"},
	{"ID" : "78", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_4_fu_1460.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230", "Parent" : "71", "Child" : ["79"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "79", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_4_fu_1460.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230.C_U", "Parent" : "78"},
	{"ID" : "80", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_4_fu_1460.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235", "Parent" : "71", "Child" : ["81", "82"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "81", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_4_fu_1460.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.tempA_U", "Parent" : "80"},
	{"ID" : "82", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_4_fu_1460.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "80"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_7_fu_1471", "Parent" : "12", "Child" : ["84"],
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
					{"ID" : "84", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "state"}]},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_7_fu_1471.grp_KeccakP1600_Permute_s_fu_176", "Parent" : "83", "Child" : ["85", "86", "87", "88", "91", "93"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "85", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_7_fu_1471.grp_KeccakP1600_Permute_s_fu_176.KeccakRhoOffsets_U", "Parent" : "84"},
	{"ID" : "86", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_7_fu_1471.grp_KeccakP1600_Permute_s_fu_176.KeccakRoundConstants_U", "Parent" : "84"},
	{"ID" : "87", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_7_fu_1471.grp_KeccakP1600_Permute_s_fu_176.stateAsWords_U", "Parent" : "84"},
	{"ID" : "88", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_7_fu_1471.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225", "Parent" : "84", "Child" : ["89", "90"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "89", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_7_fu_1471.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.C_U", "Parent" : "88"},
	{"ID" : "90", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_7_fu_1471.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.D_U", "Parent" : "88"},
	{"ID" : "91", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_7_fu_1471.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230", "Parent" : "84", "Child" : ["92"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "92", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_7_fu_1471.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230.C_U", "Parent" : "91"},
	{"ID" : "93", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_7_fu_1471.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235", "Parent" : "84", "Child" : ["94", "95"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "94", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_7_fu_1471.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.tempA_U", "Parent" : "93"},
	{"ID" : "95", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_7_fu_1471.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "93"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_3_fu_1483", "Parent" : "12", "Child" : ["97"],
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
					{"ID" : "97", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "state"}]},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_3_fu_1483.grp_KeccakP1600_Permute_s_fu_54", "Parent" : "96", "Child" : ["98", "99", "100", "101", "104", "106"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "98", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_3_fu_1483.grp_KeccakP1600_Permute_s_fu_54.KeccakRhoOffsets_U", "Parent" : "97"},
	{"ID" : "99", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_3_fu_1483.grp_KeccakP1600_Permute_s_fu_54.KeccakRoundConstants_U", "Parent" : "97"},
	{"ID" : "100", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_3_fu_1483.grp_KeccakP1600_Permute_s_fu_54.stateAsWords_U", "Parent" : "97"},
	{"ID" : "101", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_3_fu_1483.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225", "Parent" : "97", "Child" : ["102", "103"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "102", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_3_fu_1483.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.C_U", "Parent" : "101"},
	{"ID" : "103", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_3_fu_1483.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.D_U", "Parent" : "101"},
	{"ID" : "104", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_3_fu_1483.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230", "Parent" : "97", "Child" : ["105"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "105", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_3_fu_1483.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230.C_U", "Parent" : "104"},
	{"ID" : "106", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_3_fu_1483.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235", "Parent" : "97", "Child" : ["107", "108"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "107", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_3_fu_1483.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.tempA_U", "Parent" : "106"},
	{"ID" : "108", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashUpdate_3_fu_1483.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "106"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashFinal_fu_1494", "Parent" : "12", "Child" : ["110"],
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
					{"ID" : "110", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_62", "Port" : "state"}]},
			{"Name" : "instance_sponge_byte_68", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "110", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_62", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "110", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_62", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashFinal_fu_1494.grp_KeccakP1600_Permute_s_fu_62", "Parent" : "109", "Child" : ["111", "112", "113", "114", "117", "119"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "111", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashFinal_fu_1494.grp_KeccakP1600_Permute_s_fu_62.KeccakRhoOffsets_U", "Parent" : "110"},
	{"ID" : "112", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashFinal_fu_1494.grp_KeccakP1600_Permute_s_fu_62.KeccakRoundConstants_U", "Parent" : "110"},
	{"ID" : "113", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashFinal_fu_1494.grp_KeccakP1600_Permute_s_fu_62.stateAsWords_U", "Parent" : "110"},
	{"ID" : "114", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashFinal_fu_1494.grp_KeccakP1600_Permute_s_fu_62.grp_theta_fu_225", "Parent" : "110", "Child" : ["115", "116"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "115", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashFinal_fu_1494.grp_KeccakP1600_Permute_s_fu_62.grp_theta_fu_225.C_U", "Parent" : "114"},
	{"ID" : "116", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashFinal_fu_1494.grp_KeccakP1600_Permute_s_fu_62.grp_theta_fu_225.D_U", "Parent" : "114"},
	{"ID" : "117", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashFinal_fu_1494.grp_KeccakP1600_Permute_s_fu_62.grp_chi_fu_230", "Parent" : "110", "Child" : ["118"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "118", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashFinal_fu_1494.grp_KeccakP1600_Permute_s_fu_62.grp_chi_fu_230.C_U", "Parent" : "117"},
	{"ID" : "119", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashFinal_fu_1494.grp_KeccakP1600_Permute_s_fu_62.grp_pi_fu_235", "Parent" : "110", "Child" : ["120", "121"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "120", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashFinal_fu_1494.grp_KeccakP1600_Permute_s_fu_62.grp_pi_fu_235.tempA_U", "Parent" : "119"},
	{"ID" : "121", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashFinal_fu_1494.grp_KeccakP1600_Permute_s_fu_62.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "119"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_561.grp_Keccak_HashInitializ_fu_1505", "Parent" : "12",
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
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582", "Parent" : "0", "Child" : ["124", "125", "126", "127", "140", "154", "167", "180", "193", "206", "219"],
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
					{"ID" : "167", "SubInstance" : "grp_Keccak_HashUpdate_8_fu_970", "Port" : "data"}]},
			{"Name" : "seed_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "seed_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "view_inputShare", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "view_inputShare_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "view_inputShare_offset3", "Type" : "None", "Direction" : "I"},
			{"Name" : "view_communicatedBits", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "140", "SubInstance" : "grp_Keccak_HashUpdate_6_fu_942", "Port" : "data"}]},
			{"Name" : "view_communicatedBits_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "view_communicatedBits_offset4", "Type" : "None", "Direction" : "I"},
			{"Name" : "view_outputShare", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "view_outputShare_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "view_outputShare_offset5", "Type" : "None", "Direction" : "I"},
			{"Name" : "hash", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "154", "SubInstance" : "grp_Keccak_HashUpdate_10_fu_956", "Port" : "data"},
					{"ID" : "127", "SubInstance" : "grp_Keccak_HashSqueeze_5_fu_926", "Port" : "data"}]},
			{"Name" : "hash_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "hash_offset6", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "140", "SubInstance" : "grp_Keccak_HashUpdate_6_fu_942", "Port" : "KeccakRhoOffsets"},
					{"ID" : "154", "SubInstance" : "grp_Keccak_HashUpdate_10_fu_956", "Port" : "KeccakRhoOffsets"},
					{"ID" : "127", "SubInstance" : "grp_Keccak_HashSqueeze_5_fu_926", "Port" : "KeccakRhoOffsets"},
					{"ID" : "180", "SubInstance" : "grp_Keccak_HashUpdate_fu_986", "Port" : "KeccakRhoOffsets"},
					{"ID" : "167", "SubInstance" : "grp_Keccak_HashUpdate_8_fu_970", "Port" : "KeccakRhoOffsets"},
					{"ID" : "206", "SubInstance" : "grp_Keccak_HashFinal_fu_1009", "Port" : "KeccakRhoOffsets"},
					{"ID" : "193", "SubInstance" : "grp_Keccak_HashUpdate_3_fu_997", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "140", "SubInstance" : "grp_Keccak_HashUpdate_6_fu_942", "Port" : "KeccakRoundConstants"},
					{"ID" : "154", "SubInstance" : "grp_Keccak_HashUpdate_10_fu_956", "Port" : "KeccakRoundConstants"},
					{"ID" : "127", "SubInstance" : "grp_Keccak_HashSqueeze_5_fu_926", "Port" : "KeccakRoundConstants"},
					{"ID" : "180", "SubInstance" : "grp_Keccak_HashUpdate_fu_986", "Port" : "KeccakRoundConstants"},
					{"ID" : "167", "SubInstance" : "grp_Keccak_HashUpdate_8_fu_970", "Port" : "KeccakRoundConstants"},
					{"ID" : "206", "SubInstance" : "grp_Keccak_HashFinal_fu_1009", "Port" : "KeccakRoundConstants"},
					{"ID" : "193", "SubInstance" : "grp_Keccak_HashUpdate_3_fu_997", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.temp_U", "Parent" : "123"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.temp_5_U", "Parent" : "123"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.ctx_sponge_state_U", "Parent" : "123"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashSqueeze_5_fu_926", "Parent" : "123", "Child" : ["128"],
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
					{"ID" : "128", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_275", "Port" : "state"}]},
			{"Name" : "instance_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_275", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_275", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "128", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashSqueeze_5_fu_926.grp_KeccakP1600_Permute_s_fu_275", "Parent" : "127", "Child" : ["129", "130", "131", "132", "135", "137"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "129", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashSqueeze_5_fu_926.grp_KeccakP1600_Permute_s_fu_275.KeccakRhoOffsets_U", "Parent" : "128"},
	{"ID" : "130", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashSqueeze_5_fu_926.grp_KeccakP1600_Permute_s_fu_275.KeccakRoundConstants_U", "Parent" : "128"},
	{"ID" : "131", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashSqueeze_5_fu_926.grp_KeccakP1600_Permute_s_fu_275.stateAsWords_U", "Parent" : "128"},
	{"ID" : "132", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashSqueeze_5_fu_926.grp_KeccakP1600_Permute_s_fu_275.grp_theta_fu_225", "Parent" : "128", "Child" : ["133", "134"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "133", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashSqueeze_5_fu_926.grp_KeccakP1600_Permute_s_fu_275.grp_theta_fu_225.C_U", "Parent" : "132"},
	{"ID" : "134", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashSqueeze_5_fu_926.grp_KeccakP1600_Permute_s_fu_275.grp_theta_fu_225.D_U", "Parent" : "132"},
	{"ID" : "135", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashSqueeze_5_fu_926.grp_KeccakP1600_Permute_s_fu_275.grp_chi_fu_230", "Parent" : "128", "Child" : ["136"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "136", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashSqueeze_5_fu_926.grp_KeccakP1600_Permute_s_fu_275.grp_chi_fu_230.C_U", "Parent" : "135"},
	{"ID" : "137", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashSqueeze_5_fu_926.grp_KeccakP1600_Permute_s_fu_275.grp_pi_fu_235", "Parent" : "128", "Child" : ["138", "139"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "138", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashSqueeze_5_fu_926.grp_KeccakP1600_Permute_s_fu_275.grp_pi_fu_235.tempA_U", "Parent" : "137"},
	{"ID" : "139", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashSqueeze_5_fu_926.grp_KeccakP1600_Permute_s_fu_275.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "137"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_6_fu_942", "Parent" : "123", "Child" : ["141", "153"],
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
					{"ID" : "141", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_194", "Port" : "state"}]},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "141", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_194", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "141", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_194", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "141", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_6_fu_942.grp_KeccakP1600_Permute_s_fu_194", "Parent" : "140", "Child" : ["142", "143", "144", "145", "148", "150"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "142", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_6_fu_942.grp_KeccakP1600_Permute_s_fu_194.KeccakRhoOffsets_U", "Parent" : "141"},
	{"ID" : "143", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_6_fu_942.grp_KeccakP1600_Permute_s_fu_194.KeccakRoundConstants_U", "Parent" : "141"},
	{"ID" : "144", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_6_fu_942.grp_KeccakP1600_Permute_s_fu_194.stateAsWords_U", "Parent" : "141"},
	{"ID" : "145", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_6_fu_942.grp_KeccakP1600_Permute_s_fu_194.grp_theta_fu_225", "Parent" : "141", "Child" : ["146", "147"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "146", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_6_fu_942.grp_KeccakP1600_Permute_s_fu_194.grp_theta_fu_225.C_U", "Parent" : "145"},
	{"ID" : "147", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_6_fu_942.grp_KeccakP1600_Permute_s_fu_194.grp_theta_fu_225.D_U", "Parent" : "145"},
	{"ID" : "148", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_6_fu_942.grp_KeccakP1600_Permute_s_fu_194.grp_chi_fu_230", "Parent" : "141", "Child" : ["149"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "149", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_6_fu_942.grp_KeccakP1600_Permute_s_fu_194.grp_chi_fu_230.C_U", "Parent" : "148"},
	{"ID" : "150", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_6_fu_942.grp_KeccakP1600_Permute_s_fu_194.grp_pi_fu_235", "Parent" : "141", "Child" : ["151", "152"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "151", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_6_fu_942.grp_KeccakP1600_Permute_s_fu_194.grp_pi_fu_235.tempA_U", "Parent" : "150"},
	{"ID" : "152", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_6_fu_942.grp_KeccakP1600_Permute_s_fu_194.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "150"},
	{"ID" : "153", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_6_fu_942.crypto_sign_am_adocq_U139", "Parent" : "140"},
	{"ID" : "154", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_10_fu_956", "Parent" : "123", "Child" : ["155"],
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
					{"ID" : "155", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204", "Port" : "state"}]},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "155", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "155", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "155", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_10_fu_956.grp_KeccakP1600_Permute_s_fu_204", "Parent" : "154", "Child" : ["156", "157", "158", "159", "162", "164"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "156", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_10_fu_956.grp_KeccakP1600_Permute_s_fu_204.KeccakRhoOffsets_U", "Parent" : "155"},
	{"ID" : "157", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_10_fu_956.grp_KeccakP1600_Permute_s_fu_204.KeccakRoundConstants_U", "Parent" : "155"},
	{"ID" : "158", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_10_fu_956.grp_KeccakP1600_Permute_s_fu_204.stateAsWords_U", "Parent" : "155"},
	{"ID" : "159", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_10_fu_956.grp_KeccakP1600_Permute_s_fu_204.grp_theta_fu_225", "Parent" : "155", "Child" : ["160", "161"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "160", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_10_fu_956.grp_KeccakP1600_Permute_s_fu_204.grp_theta_fu_225.C_U", "Parent" : "159"},
	{"ID" : "161", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_10_fu_956.grp_KeccakP1600_Permute_s_fu_204.grp_theta_fu_225.D_U", "Parent" : "159"},
	{"ID" : "162", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_10_fu_956.grp_KeccakP1600_Permute_s_fu_204.grp_chi_fu_230", "Parent" : "155", "Child" : ["163"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "163", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_10_fu_956.grp_KeccakP1600_Permute_s_fu_204.grp_chi_fu_230.C_U", "Parent" : "162"},
	{"ID" : "164", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_10_fu_956.grp_KeccakP1600_Permute_s_fu_204.grp_pi_fu_235", "Parent" : "155", "Child" : ["165", "166"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "165", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_10_fu_956.grp_KeccakP1600_Permute_s_fu_204.grp_pi_fu_235.tempA_U", "Parent" : "164"},
	{"ID" : "166", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_10_fu_956.grp_KeccakP1600_Permute_s_fu_204.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "164"},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_8_fu_970", "Parent" : "123", "Child" : ["168"],
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
					{"ID" : "168", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204", "Port" : "state"}]},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "168", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "168", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "168", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_8_fu_970.grp_KeccakP1600_Permute_s_fu_204", "Parent" : "167", "Child" : ["169", "170", "171", "172", "175", "177"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "169", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_8_fu_970.grp_KeccakP1600_Permute_s_fu_204.KeccakRhoOffsets_U", "Parent" : "168"},
	{"ID" : "170", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_8_fu_970.grp_KeccakP1600_Permute_s_fu_204.KeccakRoundConstants_U", "Parent" : "168"},
	{"ID" : "171", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_8_fu_970.grp_KeccakP1600_Permute_s_fu_204.stateAsWords_U", "Parent" : "168"},
	{"ID" : "172", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_8_fu_970.grp_KeccakP1600_Permute_s_fu_204.grp_theta_fu_225", "Parent" : "168", "Child" : ["173", "174"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "173", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_8_fu_970.grp_KeccakP1600_Permute_s_fu_204.grp_theta_fu_225.C_U", "Parent" : "172"},
	{"ID" : "174", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_8_fu_970.grp_KeccakP1600_Permute_s_fu_204.grp_theta_fu_225.D_U", "Parent" : "172"},
	{"ID" : "175", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_8_fu_970.grp_KeccakP1600_Permute_s_fu_204.grp_chi_fu_230", "Parent" : "168", "Child" : ["176"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "176", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_8_fu_970.grp_KeccakP1600_Permute_s_fu_204.grp_chi_fu_230.C_U", "Parent" : "175"},
	{"ID" : "177", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_8_fu_970.grp_KeccakP1600_Permute_s_fu_204.grp_pi_fu_235", "Parent" : "168", "Child" : ["178", "179"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "178", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_8_fu_970.grp_KeccakP1600_Permute_s_fu_204.grp_pi_fu_235.tempA_U", "Parent" : "177"},
	{"ID" : "179", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_8_fu_970.grp_KeccakP1600_Permute_s_fu_204.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "177"},
	{"ID" : "180", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_fu_986", "Parent" : "123", "Child" : ["181"],
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
					{"ID" : "181", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "state"}]},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "181", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "181", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "181", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_fu_986.grp_KeccakP1600_Permute_s_fu_176", "Parent" : "180", "Child" : ["182", "183", "184", "185", "188", "190"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "182", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_fu_986.grp_KeccakP1600_Permute_s_fu_176.KeccakRhoOffsets_U", "Parent" : "181"},
	{"ID" : "183", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_fu_986.grp_KeccakP1600_Permute_s_fu_176.KeccakRoundConstants_U", "Parent" : "181"},
	{"ID" : "184", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_fu_986.grp_KeccakP1600_Permute_s_fu_176.stateAsWords_U", "Parent" : "181"},
	{"ID" : "185", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_fu_986.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225", "Parent" : "181", "Child" : ["186", "187"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "186", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_fu_986.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.C_U", "Parent" : "185"},
	{"ID" : "187", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_fu_986.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.D_U", "Parent" : "185"},
	{"ID" : "188", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_fu_986.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230", "Parent" : "181", "Child" : ["189"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "189", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_fu_986.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230.C_U", "Parent" : "188"},
	{"ID" : "190", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_fu_986.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235", "Parent" : "181", "Child" : ["191", "192"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "191", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_fu_986.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.tempA_U", "Parent" : "190"},
	{"ID" : "192", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_fu_986.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "190"},
	{"ID" : "193", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_3_fu_997", "Parent" : "123", "Child" : ["194"],
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
					{"ID" : "194", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "state"}]},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "194", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "194", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "194", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_3_fu_997.grp_KeccakP1600_Permute_s_fu_54", "Parent" : "193", "Child" : ["195", "196", "197", "198", "201", "203"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "195", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_3_fu_997.grp_KeccakP1600_Permute_s_fu_54.KeccakRhoOffsets_U", "Parent" : "194"},
	{"ID" : "196", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_3_fu_997.grp_KeccakP1600_Permute_s_fu_54.KeccakRoundConstants_U", "Parent" : "194"},
	{"ID" : "197", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_3_fu_997.grp_KeccakP1600_Permute_s_fu_54.stateAsWords_U", "Parent" : "194"},
	{"ID" : "198", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_3_fu_997.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225", "Parent" : "194", "Child" : ["199", "200"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "199", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_3_fu_997.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.C_U", "Parent" : "198"},
	{"ID" : "200", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_3_fu_997.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.D_U", "Parent" : "198"},
	{"ID" : "201", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_3_fu_997.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230", "Parent" : "194", "Child" : ["202"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "202", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_3_fu_997.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230.C_U", "Parent" : "201"},
	{"ID" : "203", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_3_fu_997.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235", "Parent" : "194", "Child" : ["204", "205"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "204", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_3_fu_997.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.tempA_U", "Parent" : "203"},
	{"ID" : "205", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashUpdate_3_fu_997.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "203"},
	{"ID" : "206", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashFinal_fu_1009", "Parent" : "123", "Child" : ["207"],
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
					{"ID" : "207", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_62", "Port" : "state"}]},
			{"Name" : "instance_sponge_byte_68", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "207", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_62", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "207", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_62", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "207", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashFinal_fu_1009.grp_KeccakP1600_Permute_s_fu_62", "Parent" : "206", "Child" : ["208", "209", "210", "211", "214", "216"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "208", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashFinal_fu_1009.grp_KeccakP1600_Permute_s_fu_62.KeccakRhoOffsets_U", "Parent" : "207"},
	{"ID" : "209", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashFinal_fu_1009.grp_KeccakP1600_Permute_s_fu_62.KeccakRoundConstants_U", "Parent" : "207"},
	{"ID" : "210", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashFinal_fu_1009.grp_KeccakP1600_Permute_s_fu_62.stateAsWords_U", "Parent" : "207"},
	{"ID" : "211", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashFinal_fu_1009.grp_KeccakP1600_Permute_s_fu_62.grp_theta_fu_225", "Parent" : "207", "Child" : ["212", "213"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "212", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashFinal_fu_1009.grp_KeccakP1600_Permute_s_fu_62.grp_theta_fu_225.C_U", "Parent" : "211"},
	{"ID" : "213", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashFinal_fu_1009.grp_KeccakP1600_Permute_s_fu_62.grp_theta_fu_225.D_U", "Parent" : "211"},
	{"ID" : "214", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashFinal_fu_1009.grp_KeccakP1600_Permute_s_fu_62.grp_chi_fu_230", "Parent" : "207", "Child" : ["215"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "215", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashFinal_fu_1009.grp_KeccakP1600_Permute_s_fu_62.grp_chi_fu_230.C_U", "Parent" : "214"},
	{"ID" : "216", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashFinal_fu_1009.grp_KeccakP1600_Permute_s_fu_62.grp_pi_fu_235", "Parent" : "207", "Child" : ["217", "218"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "217", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashFinal_fu_1009.grp_KeccakP1600_Permute_s_fu_62.grp_pi_fu_235.tempA_U", "Parent" : "216"},
	{"ID" : "218", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashFinal_fu_1009.grp_KeccakP1600_Permute_s_fu_62.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "216"},
	{"ID" : "219", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_582.grp_Keccak_HashInitializ_fu_1020", "Parent" : "123",
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
	{"ID" : "220", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625", "Parent" : "0", "Child" : ["221", "222", "223", "224", "225", "238", "251", "264", "277", "290"],
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
					{"ID" : "225", "SubInstance" : "grp_Keccak_HashSqueeze_3_fu_1372", "Port" : "data"}]},
			{"Name" : "salt_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "238", "SubInstance" : "grp_Keccak_HashSqueeze_2_fu_1389", "Port" : "data_0"}]},
			{"Name" : "privateKey", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "publicKey", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "message", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "251", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_1402", "Port" : "data"}]},
			{"Name" : "messageByteLength", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "264", "SubInstance" : "grp_Keccak_HashUpdate_fu_1415", "Port" : "KeccakRhoOffsets"},
					{"ID" : "251", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_1402", "Port" : "KeccakRhoOffsets"},
					{"ID" : "225", "SubInstance" : "grp_Keccak_HashSqueeze_3_fu_1372", "Port" : "KeccakRhoOffsets"},
					{"ID" : "277", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_1427", "Port" : "KeccakRhoOffsets"},
					{"ID" : "238", "SubInstance" : "grp_Keccak_HashSqueeze_2_fu_1389", "Port" : "KeccakRhoOffsets"},
					{"ID" : "290", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_1441", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "264", "SubInstance" : "grp_Keccak_HashUpdate_fu_1415", "Port" : "KeccakRoundConstants"},
					{"ID" : "251", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_1402", "Port" : "KeccakRoundConstants"},
					{"ID" : "225", "SubInstance" : "grp_Keccak_HashSqueeze_3_fu_1372", "Port" : "KeccakRoundConstants"},
					{"ID" : "277", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_1427", "Port" : "KeccakRoundConstants"},
					{"ID" : "238", "SubInstance" : "grp_Keccak_HashSqueeze_2_fu_1389", "Port" : "KeccakRoundConstants"},
					{"ID" : "290", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_1441", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "221", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.temp_U", "Parent" : "220"},
	{"ID" : "222", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.temp_1_U", "Parent" : "220"},
	{"ID" : "223", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.temp_2_U", "Parent" : "220"},
	{"ID" : "224", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.ctx_sponge_state_U", "Parent" : "220"},
	{"ID" : "225", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashSqueeze_3_fu_1372", "Parent" : "220", "Child" : ["226"],
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
					{"ID" : "226", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_285", "Port" : "state"}]},
			{"Name" : "instance_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_285", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_285", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "226", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashSqueeze_3_fu_1372.grp_KeccakP1600_Permute_s_fu_285", "Parent" : "225", "Child" : ["227", "228", "229", "230", "233", "235"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "227", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashSqueeze_3_fu_1372.grp_KeccakP1600_Permute_s_fu_285.KeccakRhoOffsets_U", "Parent" : "226"},
	{"ID" : "228", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashSqueeze_3_fu_1372.grp_KeccakP1600_Permute_s_fu_285.KeccakRoundConstants_U", "Parent" : "226"},
	{"ID" : "229", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashSqueeze_3_fu_1372.grp_KeccakP1600_Permute_s_fu_285.stateAsWords_U", "Parent" : "226"},
	{"ID" : "230", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashSqueeze_3_fu_1372.grp_KeccakP1600_Permute_s_fu_285.grp_theta_fu_225", "Parent" : "226", "Child" : ["231", "232"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "231", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashSqueeze_3_fu_1372.grp_KeccakP1600_Permute_s_fu_285.grp_theta_fu_225.C_U", "Parent" : "230"},
	{"ID" : "232", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashSqueeze_3_fu_1372.grp_KeccakP1600_Permute_s_fu_285.grp_theta_fu_225.D_U", "Parent" : "230"},
	{"ID" : "233", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashSqueeze_3_fu_1372.grp_KeccakP1600_Permute_s_fu_285.grp_chi_fu_230", "Parent" : "226", "Child" : ["234"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "234", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashSqueeze_3_fu_1372.grp_KeccakP1600_Permute_s_fu_285.grp_chi_fu_230.C_U", "Parent" : "233"},
	{"ID" : "235", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashSqueeze_3_fu_1372.grp_KeccakP1600_Permute_s_fu_285.grp_pi_fu_235", "Parent" : "226", "Child" : ["236", "237"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "236", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashSqueeze_3_fu_1372.grp_KeccakP1600_Permute_s_fu_285.grp_pi_fu_235.tempA_U", "Parent" : "235"},
	{"ID" : "237", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashSqueeze_3_fu_1372.grp_KeccakP1600_Permute_s_fu_285.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "235"},
	{"ID" : "238", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashSqueeze_2_fu_1389", "Parent" : "220", "Child" : ["239"],
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
					{"ID" : "239", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_244", "Port" : "state"}]},
			{"Name" : "instance_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_244", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_244", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "239", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashSqueeze_2_fu_1389.grp_KeccakP1600_Permute_s_fu_244", "Parent" : "238", "Child" : ["240", "241", "242", "243", "246", "248"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "240", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashSqueeze_2_fu_1389.grp_KeccakP1600_Permute_s_fu_244.KeccakRhoOffsets_U", "Parent" : "239"},
	{"ID" : "241", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashSqueeze_2_fu_1389.grp_KeccakP1600_Permute_s_fu_244.KeccakRoundConstants_U", "Parent" : "239"},
	{"ID" : "242", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashSqueeze_2_fu_1389.grp_KeccakP1600_Permute_s_fu_244.stateAsWords_U", "Parent" : "239"},
	{"ID" : "243", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashSqueeze_2_fu_1389.grp_KeccakP1600_Permute_s_fu_244.grp_theta_fu_225", "Parent" : "239", "Child" : ["244", "245"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "244", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashSqueeze_2_fu_1389.grp_KeccakP1600_Permute_s_fu_244.grp_theta_fu_225.C_U", "Parent" : "243"},
	{"ID" : "245", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashSqueeze_2_fu_1389.grp_KeccakP1600_Permute_s_fu_244.grp_theta_fu_225.D_U", "Parent" : "243"},
	{"ID" : "246", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashSqueeze_2_fu_1389.grp_KeccakP1600_Permute_s_fu_244.grp_chi_fu_230", "Parent" : "239", "Child" : ["247"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "247", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashSqueeze_2_fu_1389.grp_KeccakP1600_Permute_s_fu_244.grp_chi_fu_230.C_U", "Parent" : "246"},
	{"ID" : "248", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashSqueeze_2_fu_1389.grp_KeccakP1600_Permute_s_fu_244.grp_pi_fu_235", "Parent" : "239", "Child" : ["249", "250"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "249", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashSqueeze_2_fu_1389.grp_KeccakP1600_Permute_s_fu_244.grp_pi_fu_235.tempA_U", "Parent" : "248"},
	{"ID" : "250", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashSqueeze_2_fu_1389.grp_KeccakP1600_Permute_s_fu_244.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "248"},
	{"ID" : "251", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_1_fu_1402", "Parent" : "220", "Child" : ["252"],
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
					{"ID" : "252", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_168", "Port" : "state"}]},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "databitlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "252", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_168", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "252", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_168", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "252", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_1_fu_1402.grp_KeccakP1600_Permute_s_fu_168", "Parent" : "251", "Child" : ["253", "254", "255", "256", "259", "261"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "253", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_1_fu_1402.grp_KeccakP1600_Permute_s_fu_168.KeccakRhoOffsets_U", "Parent" : "252"},
	{"ID" : "254", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_1_fu_1402.grp_KeccakP1600_Permute_s_fu_168.KeccakRoundConstants_U", "Parent" : "252"},
	{"ID" : "255", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_1_fu_1402.grp_KeccakP1600_Permute_s_fu_168.stateAsWords_U", "Parent" : "252"},
	{"ID" : "256", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_1_fu_1402.grp_KeccakP1600_Permute_s_fu_168.grp_theta_fu_225", "Parent" : "252", "Child" : ["257", "258"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "257", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_1_fu_1402.grp_KeccakP1600_Permute_s_fu_168.grp_theta_fu_225.C_U", "Parent" : "256"},
	{"ID" : "258", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_1_fu_1402.grp_KeccakP1600_Permute_s_fu_168.grp_theta_fu_225.D_U", "Parent" : "256"},
	{"ID" : "259", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_1_fu_1402.grp_KeccakP1600_Permute_s_fu_168.grp_chi_fu_230", "Parent" : "252", "Child" : ["260"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "260", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_1_fu_1402.grp_KeccakP1600_Permute_s_fu_168.grp_chi_fu_230.C_U", "Parent" : "259"},
	{"ID" : "261", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_1_fu_1402.grp_KeccakP1600_Permute_s_fu_168.grp_pi_fu_235", "Parent" : "252", "Child" : ["262", "263"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "262", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_1_fu_1402.grp_KeccakP1600_Permute_s_fu_168.grp_pi_fu_235.tempA_U", "Parent" : "261"},
	{"ID" : "263", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_1_fu_1402.grp_KeccakP1600_Permute_s_fu_168.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "261"},
	{"ID" : "264", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_fu_1415", "Parent" : "220", "Child" : ["265"],
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
					{"ID" : "265", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "state"}]},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "265", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "265", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "265", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_fu_1415.grp_KeccakP1600_Permute_s_fu_176", "Parent" : "264", "Child" : ["266", "267", "268", "269", "272", "274"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "266", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_fu_1415.grp_KeccakP1600_Permute_s_fu_176.KeccakRhoOffsets_U", "Parent" : "265"},
	{"ID" : "267", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_fu_1415.grp_KeccakP1600_Permute_s_fu_176.KeccakRoundConstants_U", "Parent" : "265"},
	{"ID" : "268", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_fu_1415.grp_KeccakP1600_Permute_s_fu_176.stateAsWords_U", "Parent" : "265"},
	{"ID" : "269", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_fu_1415.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225", "Parent" : "265", "Child" : ["270", "271"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "270", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_fu_1415.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.C_U", "Parent" : "269"},
	{"ID" : "271", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_fu_1415.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.D_U", "Parent" : "269"},
	{"ID" : "272", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_fu_1415.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230", "Parent" : "265", "Child" : ["273"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "273", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_fu_1415.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230.C_U", "Parent" : "272"},
	{"ID" : "274", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_fu_1415.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235", "Parent" : "265", "Child" : ["275", "276"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "275", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_fu_1415.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.tempA_U", "Parent" : "274"},
	{"ID" : "276", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_fu_1415.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "274"},
	{"ID" : "277", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_5_fu_1427", "Parent" : "220", "Child" : ["278"],
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
					{"ID" : "278", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_173", "Port" : "state"}]},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "278", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_173", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "278", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_173", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "278", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_5_fu_1427.grp_KeccakP1600_Permute_s_fu_173", "Parent" : "277", "Child" : ["279", "280", "281", "282", "285", "287"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "279", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_5_fu_1427.grp_KeccakP1600_Permute_s_fu_173.KeccakRhoOffsets_U", "Parent" : "278"},
	{"ID" : "280", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_5_fu_1427.grp_KeccakP1600_Permute_s_fu_173.KeccakRoundConstants_U", "Parent" : "278"},
	{"ID" : "281", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_5_fu_1427.grp_KeccakP1600_Permute_s_fu_173.stateAsWords_U", "Parent" : "278"},
	{"ID" : "282", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_5_fu_1427.grp_KeccakP1600_Permute_s_fu_173.grp_theta_fu_225", "Parent" : "278", "Child" : ["283", "284"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "283", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_5_fu_1427.grp_KeccakP1600_Permute_s_fu_173.grp_theta_fu_225.C_U", "Parent" : "282"},
	{"ID" : "284", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_5_fu_1427.grp_KeccakP1600_Permute_s_fu_173.grp_theta_fu_225.D_U", "Parent" : "282"},
	{"ID" : "285", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_5_fu_1427.grp_KeccakP1600_Permute_s_fu_173.grp_chi_fu_230", "Parent" : "278", "Child" : ["286"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "286", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_5_fu_1427.grp_KeccakP1600_Permute_s_fu_173.grp_chi_fu_230.C_U", "Parent" : "285"},
	{"ID" : "287", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_5_fu_1427.grp_KeccakP1600_Permute_s_fu_173.grp_pi_fu_235", "Parent" : "278", "Child" : ["288", "289"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "288", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_5_fu_1427.grp_KeccakP1600_Permute_s_fu_173.grp_pi_fu_235.tempA_U", "Parent" : "287"},
	{"ID" : "289", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_Keccak_HashUpdate_5_fu_1427.grp_KeccakP1600_Permute_s_fu_173.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "287"},
	{"ID" : "290", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_KeccakP1600_Permute_s_fu_1441", "Parent" : "220", "Child" : ["291", "292", "293", "294", "297", "299"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "291", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_KeccakP1600_Permute_s_fu_1441.KeccakRhoOffsets_U", "Parent" : "290"},
	{"ID" : "292", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_KeccakP1600_Permute_s_fu_1441.KeccakRoundConstants_U", "Parent" : "290"},
	{"ID" : "293", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_KeccakP1600_Permute_s_fu_1441.stateAsWords_U", "Parent" : "290"},
	{"ID" : "294", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_KeccakP1600_Permute_s_fu_1441.grp_theta_fu_225", "Parent" : "290", "Child" : ["295", "296"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "295", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_KeccakP1600_Permute_s_fu_1441.grp_theta_fu_225.C_U", "Parent" : "294"},
	{"ID" : "296", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_KeccakP1600_Permute_s_fu_1441.grp_theta_fu_225.D_U", "Parent" : "294"},
	{"ID" : "297", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_KeccakP1600_Permute_s_fu_1441.grp_chi_fu_230", "Parent" : "290", "Child" : ["298"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "298", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_KeccakP1600_Permute_s_fu_1441.grp_chi_fu_230.C_U", "Parent" : "297"},
	{"ID" : "299", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_KeccakP1600_Permute_s_fu_1441.grp_pi_fu_235", "Parent" : "290", "Child" : ["300", "301"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "300", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_KeccakP1600_Permute_s_fu_1441.grp_pi_fu_235.tempA_U", "Parent" : "299"},
	{"ID" : "301", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_625.grp_KeccakP1600_Permute_s_fu_1441.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "299"},
	{"ID" : "302", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_647", "Parent" : "0", "Child" : ["303", "304", "308", "312", "320", "321", "322", "323", "324", "325", "326", "327", "328", "329", "330", "331", "332"],
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
					{"ID" : "312", "SubInstance" : "grp_mpc_AND_2_fu_993", "Port" : "rand_tape"}]},
			{"Name" : "views_inputShare", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "304", "SubInstance" : "grp_matrix_mul_fu_959", "Port" : "state"}]},
			{"Name" : "views_inputShare_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "views_communicatedBi", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "312", "SubInstance" : "grp_mpc_AND_2_fu_993", "Port" : "views_communicatedBi"}]},
			{"Name" : "views_outputShare", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "slab", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "304", "SubInstance" : "grp_matrix_mul_fu_959", "Port" : "output_r"},
					{"ID" : "308", "SubInstance" : "grp_matrix_mul_1_fu_980", "Port" : "output_r"}]},
			{"Name" : "temp_matrix", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "304", "SubInstance" : "grp_matrix_mul_fu_959", "Port" : "temp_matrix"}]},
			{"Name" : "temp_matrix2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "308", "SubInstance" : "grp_matrix_mul_1_fu_980", "Port" : "temp_matrix2"}]},
			{"Name" : "temp_matrix3", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "303", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_647.temp_matrix3_U", "Parent" : "302"},
	{"ID" : "304", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_647.grp_matrix_mul_fu_959", "Parent" : "302", "Child" : ["305", "306", "307"],
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
	{"ID" : "305", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_647.grp_matrix_mul_fu_959.temp_matrix_U", "Parent" : "304"},
	{"ID" : "306", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_647.grp_matrix_mul_fu_959.prod_U", "Parent" : "304"},
	{"ID" : "307", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_647.grp_matrix_mul_fu_959.temp_U", "Parent" : "304"},
	{"ID" : "308", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_647.grp_matrix_mul_1_fu_980", "Parent" : "302", "Child" : ["309", "310", "311"],
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
	{"ID" : "309", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_647.grp_matrix_mul_1_fu_980.temp_matrix2_U", "Parent" : "308"},
	{"ID" : "310", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_647.grp_matrix_mul_1_fu_980.prod_U", "Parent" : "308"},
	{"ID" : "311", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_647.grp_matrix_mul_1_fu_980.temp_U", "Parent" : "308"},
	{"ID" : "312", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_647.grp_mpc_AND_2_fu_993", "Parent" : "302", "Child" : ["313", "314", "315", "316", "317", "318", "319"],
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
	{"ID" : "313", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_647.grp_mpc_AND_2_fu_993.crypto_sign_mux_3jbC_U80", "Parent" : "312"},
	{"ID" : "314", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_647.grp_mpc_AND_2_fu_993.crypto_sign_mux_3jbC_U81", "Parent" : "312"},
	{"ID" : "315", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_647.grp_mpc_AND_2_fu_993.crypto_sign_mux_3jbC_U82", "Parent" : "312"},
	{"ID" : "316", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_647.grp_mpc_AND_2_fu_993.crypto_sign_mux_3jbC_U83", "Parent" : "312"},
	{"ID" : "317", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_647.grp_mpc_AND_2_fu_993.crypto_sign_mux_3jbC_U84", "Parent" : "312"},
	{"ID" : "318", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_647.grp_mpc_AND_2_fu_993.crypto_sign_mux_3jbC_U85", "Parent" : "312"},
	{"ID" : "319", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_647.grp_mpc_AND_2_fu_993.crypto_sign_ama_akbM_U86", "Parent" : "312"},
	{"ID" : "320", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_647.crypto_sign_mux_4ncg_U106", "Parent" : "302"},
	{"ID" : "321", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_647.crypto_sign_mux_3jbC_U107", "Parent" : "302"},
	{"ID" : "322", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_647.crypto_sign_mux_3jbC_U108", "Parent" : "302"},
	{"ID" : "323", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_647.crypto_sign_mux_3jbC_U109", "Parent" : "302"},
	{"ID" : "324", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_647.crypto_sign_mux_3jbC_U110", "Parent" : "302"},
	{"ID" : "325", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_647.crypto_sign_mux_3jbC_U111", "Parent" : "302"},
	{"ID" : "326", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_647.crypto_sign_mux_3jbC_U112", "Parent" : "302"},
	{"ID" : "327", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_647.crypto_sign_mux_3jbC_U113", "Parent" : "302"},
	{"ID" : "328", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_647.crypto_sign_mux_3jbC_U114", "Parent" : "302"},
	{"ID" : "329", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_647.crypto_sign_mux_3jbC_U115", "Parent" : "302"},
	{"ID" : "330", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_647.crypto_sign_mux_4ncg_U116", "Parent" : "302"},
	{"ID" : "331", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_647.crypto_sign_mux_4ncg_U117", "Parent" : "302"},
	{"ID" : "332", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_647.crypto_sign_mux_4ncg_U118", "Parent" : "302"},
	{"ID" : "333", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_4_fu_666", "Parent" : "0", "Child" : ["334"],
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
					{"ID" : "334", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_241", "Port" : "state"}]},
			{"Name" : "instance_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "databitlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "334", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_241", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "334", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_241", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "334", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_4_fu_666.grp_KeccakP1600_Permute_s_fu_241", "Parent" : "333", "Child" : ["335", "336", "337", "338", "341", "343"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "335", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_4_fu_666.grp_KeccakP1600_Permute_s_fu_241.KeccakRhoOffsets_U", "Parent" : "334"},
	{"ID" : "336", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_4_fu_666.grp_KeccakP1600_Permute_s_fu_241.KeccakRoundConstants_U", "Parent" : "334"},
	{"ID" : "337", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_4_fu_666.grp_KeccakP1600_Permute_s_fu_241.stateAsWords_U", "Parent" : "334"},
	{"ID" : "338", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_4_fu_666.grp_KeccakP1600_Permute_s_fu_241.grp_theta_fu_225", "Parent" : "334", "Child" : ["339", "340"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "339", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_4_fu_666.grp_KeccakP1600_Permute_s_fu_241.grp_theta_fu_225.C_U", "Parent" : "338"},
	{"ID" : "340", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_4_fu_666.grp_KeccakP1600_Permute_s_fu_241.grp_theta_fu_225.D_U", "Parent" : "338"},
	{"ID" : "341", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_4_fu_666.grp_KeccakP1600_Permute_s_fu_241.grp_chi_fu_230", "Parent" : "334", "Child" : ["342"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "342", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_4_fu_666.grp_KeccakP1600_Permute_s_fu_241.grp_chi_fu_230.C_U", "Parent" : "341"},
	{"ID" : "343", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_4_fu_666.grp_KeccakP1600_Permute_s_fu_241.grp_pi_fu_235", "Parent" : "334", "Child" : ["344", "345"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "344", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_4_fu_666.grp_KeccakP1600_Permute_s_fu_241.grp_pi_fu_235.tempA_U", "Parent" : "343"},
	{"ID" : "345", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_4_fu_666.grp_KeccakP1600_Permute_s_fu_241.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "343"},
	{"ID" : "346", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_fu_681", "Parent" : "0", "Child" : ["347"],
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
					{"ID" : "347", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_239", "Port" : "state"}]},
			{"Name" : "instance_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "databitlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "347", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_239", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "347", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_239", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "347", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_fu_681.grp_KeccakP1600_Permute_s_fu_239", "Parent" : "346", "Child" : ["348", "349", "350", "351", "354", "356"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "348", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_fu_681.grp_KeccakP1600_Permute_s_fu_239.KeccakRhoOffsets_U", "Parent" : "347"},
	{"ID" : "349", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_fu_681.grp_KeccakP1600_Permute_s_fu_239.KeccakRoundConstants_U", "Parent" : "347"},
	{"ID" : "350", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_fu_681.grp_KeccakP1600_Permute_s_fu_239.stateAsWords_U", "Parent" : "347"},
	{"ID" : "351", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_fu_681.grp_KeccakP1600_Permute_s_fu_239.grp_theta_fu_225", "Parent" : "347", "Child" : ["352", "353"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "352", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_fu_681.grp_KeccakP1600_Permute_s_fu_239.grp_theta_fu_225.C_U", "Parent" : "351"},
	{"ID" : "353", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_fu_681.grp_KeccakP1600_Permute_s_fu_239.grp_theta_fu_225.D_U", "Parent" : "351"},
	{"ID" : "354", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_fu_681.grp_KeccakP1600_Permute_s_fu_239.grp_chi_fu_230", "Parent" : "347", "Child" : ["355"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "355", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_fu_681.grp_KeccakP1600_Permute_s_fu_239.grp_chi_fu_230.C_U", "Parent" : "354"},
	{"ID" : "356", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_fu_681.grp_KeccakP1600_Permute_s_fu_239.grp_pi_fu_235", "Parent" : "347", "Child" : ["357", "358"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "357", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_fu_681.grp_KeccakP1600_Permute_s_fu_239.grp_pi_fu_235.tempA_U", "Parent" : "356"},
	{"ID" : "358", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_fu_681.grp_KeccakP1600_Permute_s_fu_239.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "356"},
	{"ID" : "359", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_696", "Parent" : "0", "Child" : ["360"],
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
					{"ID" : "360", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204", "Port" : "state"}]},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "360", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "360", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "360", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_696.grp_KeccakP1600_Permute_s_fu_204", "Parent" : "359", "Child" : ["361", "362", "363", "364", "367", "369"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "361", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_696.grp_KeccakP1600_Permute_s_fu_204.KeccakRhoOffsets_U", "Parent" : "360"},
	{"ID" : "362", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_696.grp_KeccakP1600_Permute_s_fu_204.KeccakRoundConstants_U", "Parent" : "360"},
	{"ID" : "363", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_696.grp_KeccakP1600_Permute_s_fu_204.stateAsWords_U", "Parent" : "360"},
	{"ID" : "364", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_696.grp_KeccakP1600_Permute_s_fu_204.grp_theta_fu_225", "Parent" : "360", "Child" : ["365", "366"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "365", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_696.grp_KeccakP1600_Permute_s_fu_204.grp_theta_fu_225.C_U", "Parent" : "364"},
	{"ID" : "366", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_696.grp_KeccakP1600_Permute_s_fu_204.grp_theta_fu_225.D_U", "Parent" : "364"},
	{"ID" : "367", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_696.grp_KeccakP1600_Permute_s_fu_204.grp_chi_fu_230", "Parent" : "360", "Child" : ["368"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "368", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_696.grp_KeccakP1600_Permute_s_fu_204.grp_chi_fu_230.C_U", "Parent" : "367"},
	{"ID" : "369", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_696.grp_KeccakP1600_Permute_s_fu_204.grp_pi_fu_235", "Parent" : "360", "Child" : ["370", "371"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "370", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_696.grp_KeccakP1600_Permute_s_fu_204.grp_pi_fu_235.tempA_U", "Parent" : "369"},
	{"ID" : "371", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_8_fu_696.grp_KeccakP1600_Permute_s_fu_204.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "369"},
	{"ID" : "372", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_9_fu_711", "Parent" : "0", "Child" : ["373"],
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
					{"ID" : "373", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_168", "Port" : "state"}]},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "373", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_168", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "373", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_168", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "373", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_9_fu_711.grp_KeccakP1600_Permute_s_fu_168", "Parent" : "372", "Child" : ["374", "375", "376", "377", "380", "382"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "374", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_9_fu_711.grp_KeccakP1600_Permute_s_fu_168.KeccakRhoOffsets_U", "Parent" : "373"},
	{"ID" : "375", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_9_fu_711.grp_KeccakP1600_Permute_s_fu_168.KeccakRoundConstants_U", "Parent" : "373"},
	{"ID" : "376", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_9_fu_711.grp_KeccakP1600_Permute_s_fu_168.stateAsWords_U", "Parent" : "373"},
	{"ID" : "377", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_9_fu_711.grp_KeccakP1600_Permute_s_fu_168.grp_theta_fu_225", "Parent" : "373", "Child" : ["378", "379"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "378", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_9_fu_711.grp_KeccakP1600_Permute_s_fu_168.grp_theta_fu_225.C_U", "Parent" : "377"},
	{"ID" : "379", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_9_fu_711.grp_KeccakP1600_Permute_s_fu_168.grp_theta_fu_225.D_U", "Parent" : "377"},
	{"ID" : "380", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_9_fu_711.grp_KeccakP1600_Permute_s_fu_168.grp_chi_fu_230", "Parent" : "373", "Child" : ["381"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "381", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_9_fu_711.grp_KeccakP1600_Permute_s_fu_168.grp_chi_fu_230.C_U", "Parent" : "380"},
	{"ID" : "382", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_9_fu_711.grp_KeccakP1600_Permute_s_fu_168.grp_pi_fu_235", "Parent" : "373", "Child" : ["383", "384"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "383", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_9_fu_711.grp_KeccakP1600_Permute_s_fu_168.grp_pi_fu_235.tempA_U", "Parent" : "382"},
	{"ID" : "384", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_9_fu_711.grp_KeccakP1600_Permute_s_fu_168.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "382"},
	{"ID" : "385", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_2_fu_721", "Parent" : "0", "Child" : ["386"],
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
					{"ID" : "386", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_166", "Port" : "state"}]},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "386", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_166", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "386", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_166", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "386", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_2_fu_721.grp_KeccakP1600_Permute_s_fu_166", "Parent" : "385", "Child" : ["387", "388", "389", "390", "393", "395"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "387", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_2_fu_721.grp_KeccakP1600_Permute_s_fu_166.KeccakRhoOffsets_U", "Parent" : "386"},
	{"ID" : "388", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_2_fu_721.grp_KeccakP1600_Permute_s_fu_166.KeccakRoundConstants_U", "Parent" : "386"},
	{"ID" : "389", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_2_fu_721.grp_KeccakP1600_Permute_s_fu_166.stateAsWords_U", "Parent" : "386"},
	{"ID" : "390", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_2_fu_721.grp_KeccakP1600_Permute_s_fu_166.grp_theta_fu_225", "Parent" : "386", "Child" : ["391", "392"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "391", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_2_fu_721.grp_KeccakP1600_Permute_s_fu_166.grp_theta_fu_225.C_U", "Parent" : "390"},
	{"ID" : "392", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_2_fu_721.grp_KeccakP1600_Permute_s_fu_166.grp_theta_fu_225.D_U", "Parent" : "390"},
	{"ID" : "393", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_2_fu_721.grp_KeccakP1600_Permute_s_fu_166.grp_chi_fu_230", "Parent" : "386", "Child" : ["394"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "394", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_2_fu_721.grp_KeccakP1600_Permute_s_fu_166.grp_chi_fu_230.C_U", "Parent" : "393"},
	{"ID" : "395", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_2_fu_721.grp_KeccakP1600_Permute_s_fu_166.grp_pi_fu_235", "Parent" : "386", "Child" : ["396", "397"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "396", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_2_fu_721.grp_KeccakP1600_Permute_s_fu_166.grp_pi_fu_235.tempA_U", "Parent" : "395"},
	{"ID" : "397", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_2_fu_721.grp_KeccakP1600_Permute_s_fu_166.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "395"},
	{"ID" : "398", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_731", "Parent" : "0", "Child" : ["399"],
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
					{"ID" : "399", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "state"}]},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "399", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "399", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "399", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_731.grp_KeccakP1600_Permute_s_fu_176", "Parent" : "398", "Child" : ["400", "401", "402", "403", "406", "408"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "400", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_731.grp_KeccakP1600_Permute_s_fu_176.KeccakRhoOffsets_U", "Parent" : "399"},
	{"ID" : "401", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_731.grp_KeccakP1600_Permute_s_fu_176.KeccakRoundConstants_U", "Parent" : "399"},
	{"ID" : "402", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_731.grp_KeccakP1600_Permute_s_fu_176.stateAsWords_U", "Parent" : "399"},
	{"ID" : "403", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_731.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225", "Parent" : "399", "Child" : ["404", "405"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "404", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_731.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.C_U", "Parent" : "403"},
	{"ID" : "405", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_731.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.D_U", "Parent" : "403"},
	{"ID" : "406", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_731.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230", "Parent" : "399", "Child" : ["407"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "407", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_731.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230.C_U", "Parent" : "406"},
	{"ID" : "408", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_731.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235", "Parent" : "399", "Child" : ["409", "410"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "409", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_731.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.tempA_U", "Parent" : "408"},
	{"ID" : "410", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_731.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "408"},
	{"ID" : "411", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_743", "Parent" : "0", "Child" : ["412"],
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
					{"ID" : "412", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_173", "Port" : "state"}]},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "412", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_173", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "412", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_173", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "412", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_743.grp_KeccakP1600_Permute_s_fu_173", "Parent" : "411", "Child" : ["413", "414", "415", "416", "419", "421"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "413", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_743.grp_KeccakP1600_Permute_s_fu_173.KeccakRhoOffsets_U", "Parent" : "412"},
	{"ID" : "414", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_743.grp_KeccakP1600_Permute_s_fu_173.KeccakRoundConstants_U", "Parent" : "412"},
	{"ID" : "415", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_743.grp_KeccakP1600_Permute_s_fu_173.stateAsWords_U", "Parent" : "412"},
	{"ID" : "416", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_743.grp_KeccakP1600_Permute_s_fu_173.grp_theta_fu_225", "Parent" : "412", "Child" : ["417", "418"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "417", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_743.grp_KeccakP1600_Permute_s_fu_173.grp_theta_fu_225.C_U", "Parent" : "416"},
	{"ID" : "418", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_743.grp_KeccakP1600_Permute_s_fu_173.grp_theta_fu_225.D_U", "Parent" : "416"},
	{"ID" : "419", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_743.grp_KeccakP1600_Permute_s_fu_173.grp_chi_fu_230", "Parent" : "412", "Child" : ["420"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "420", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_743.grp_KeccakP1600_Permute_s_fu_173.grp_chi_fu_230.C_U", "Parent" : "419"},
	{"ID" : "421", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_743.grp_KeccakP1600_Permute_s_fu_173.grp_pi_fu_235", "Parent" : "412", "Child" : ["422", "423"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "422", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_743.grp_KeccakP1600_Permute_s_fu_173.grp_pi_fu_235.tempA_U", "Parent" : "421"},
	{"ID" : "423", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_743.grp_KeccakP1600_Permute_s_fu_173.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "421"},
	{"ID" : "424", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_759", "Parent" : "0", "Child" : ["425"],
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
					{"ID" : "425", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "state"}]},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "425", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "425", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "425", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_759.grp_KeccakP1600_Permute_s_fu_54", "Parent" : "424", "Child" : ["426", "427", "428", "429", "432", "434"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "426", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_759.grp_KeccakP1600_Permute_s_fu_54.KeccakRhoOffsets_U", "Parent" : "425"},
	{"ID" : "427", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_759.grp_KeccakP1600_Permute_s_fu_54.KeccakRoundConstants_U", "Parent" : "425"},
	{"ID" : "428", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_759.grp_KeccakP1600_Permute_s_fu_54.stateAsWords_U", "Parent" : "425"},
	{"ID" : "429", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_759.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225", "Parent" : "425", "Child" : ["430", "431"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "430", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_759.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.C_U", "Parent" : "429"},
	{"ID" : "431", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_759.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.D_U", "Parent" : "429"},
	{"ID" : "432", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_759.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230", "Parent" : "425", "Child" : ["433"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "433", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_759.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230.C_U", "Parent" : "432"},
	{"ID" : "434", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_759.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235", "Parent" : "425", "Child" : ["435", "436"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "435", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_759.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.tempA_U", "Parent" : "434"},
	{"ID" : "436", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_3_fu_759.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "434"},
	{"ID" : "437", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_770", "Parent" : "0", "Child" : ["438"],
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
					{"ID" : "438", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_62", "Port" : "state"}]},
			{"Name" : "instance_sponge_byte_68", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "438", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_62", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "438", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_62", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "438", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_770.grp_KeccakP1600_Permute_s_fu_62", "Parent" : "437", "Child" : ["439", "440", "441", "442", "445", "447"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "439", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_770.grp_KeccakP1600_Permute_s_fu_62.KeccakRhoOffsets_U", "Parent" : "438"},
	{"ID" : "440", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_770.grp_KeccakP1600_Permute_s_fu_62.KeccakRoundConstants_U", "Parent" : "438"},
	{"ID" : "441", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_770.grp_KeccakP1600_Permute_s_fu_62.stateAsWords_U", "Parent" : "438"},
	{"ID" : "442", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_770.grp_KeccakP1600_Permute_s_fu_62.grp_theta_fu_225", "Parent" : "438", "Child" : ["443", "444"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "443", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_770.grp_KeccakP1600_Permute_s_fu_62.grp_theta_fu_225.C_U", "Parent" : "442"},
	{"ID" : "444", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_770.grp_KeccakP1600_Permute_s_fu_62.grp_theta_fu_225.D_U", "Parent" : "442"},
	{"ID" : "445", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_770.grp_KeccakP1600_Permute_s_fu_62.grp_chi_fu_230", "Parent" : "438", "Child" : ["446"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "446", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_770.grp_KeccakP1600_Permute_s_fu_62.grp_chi_fu_230.C_U", "Parent" : "445"},
	{"ID" : "447", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_770.grp_KeccakP1600_Permute_s_fu_62.grp_pi_fu_235", "Parent" : "438", "Child" : ["448", "449"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "448", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_770.grp_KeccakP1600_Permute_s_fu_62.grp_pi_fu_235.tempA_U", "Parent" : "447"},
	{"ID" : "449", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_770.grp_KeccakP1600_Permute_s_fu_62.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "447"},
	{"ID" : "450", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_prove_26_fu_781", "Parent" : "0", "Child" : ["451"],
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
	{"ID" : "451", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_prove_26_fu_781.crypto_sign_am_adrcU_U177", "Parent" : "450"},
	{"ID" : "452", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashInitializ_fu_802", "Parent" : "0",
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
			{"Name" : "instance_sponge_state", "Type" : "Memory", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
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
		instance_sponge_state {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	privateKey { ap_memory {  { privateKey_address0 mem_address 1 3 }  { privateKey_ce0 mem_ce 1 1 }  { privateKey_q0 mem_dout 0 32 }  { privateKey_address1 mem_address 1 3 }  { privateKey_ce1 mem_ce 1 1 }  { privateKey_q1 mem_dout 0 32 } } }
	pubKey { ap_memory {  { pubKey_address0 mem_address 1 3 }  { pubKey_ce0 mem_ce 1 1 }  { pubKey_q0 mem_dout 0 32 }  { pubKey_address1 mem_address 1 3 }  { pubKey_ce1 mem_ce 1 1 }  { pubKey_q1 mem_dout 0 32 } } }
	plaintext { ap_memory {  { plaintext_address0 mem_address 1 3 }  { plaintext_ce0 mem_ce 1 1 }  { plaintext_q0 mem_dout 0 32 }  { plaintext_address1 mem_address 1 3 }  { plaintext_ce1 mem_ce 1 1 }  { plaintext_q1 mem_dout 0 32 } } }
	message { ap_memory {  { message_address0 mem_address 1 12 }  { message_ce0 mem_ce 1 1 }  { message_q0 mem_dout 0 8 } } }
	messageByteLength { ap_none {  { messageByteLength in_data 0 64 } } }
	sig_0_proofs_seed1 { ap_memory {  { sig_0_proofs_seed1_address0 mem_address 1 14 }  { sig_0_proofs_seed1_ce0 mem_ce 1 1 }  { sig_0_proofs_seed1_we0 mem_we 1 1 }  { sig_0_proofs_seed1_d0 mem_din 1 8 } } }
	sig_0_proofs_seed2 { ap_memory {  { sig_0_proofs_seed2_address0 mem_address 1 14 }  { sig_0_proofs_seed2_ce0 mem_ce 1 1 }  { sig_0_proofs_seed2_we0 mem_we 1 1 }  { sig_0_proofs_seed2_d0 mem_din 1 8 } } }
	sig_0_proofs_inputS { ap_memory {  { sig_0_proofs_inputS_address0 mem_address 1 12 }  { sig_0_proofs_inputS_ce0 mem_ce 1 1 }  { sig_0_proofs_inputS_we0 mem_we 1 1 }  { sig_0_proofs_inputS_d0 mem_din 1 32 } } }
	sig_0_proofs_commun { ap_memory {  { sig_0_proofs_commun_address0 mem_address 1 16 }  { sig_0_proofs_commun_ce0 mem_ce 1 1 }  { sig_0_proofs_commun_we0 mem_we 1 1 }  { sig_0_proofs_commun_d0 mem_din 1 8 } } }
	sig_0_proofs_view3C { ap_memory {  { sig_0_proofs_view3C_address0 mem_address 1 15 }  { sig_0_proofs_view3C_ce0 mem_ce 1 1 }  { sig_0_proofs_view3C_we0 mem_we 1 1 }  { sig_0_proofs_view3C_d0 mem_din 1 8 } } }
	sig_0_challengeBits { ap_memory {  { sig_0_challengeBits_address0 mem_address 1 7 }  { sig_0_challengeBits_ce0 mem_ce 1 1 }  { sig_0_challengeBits_we0 mem_we 1 1 }  { sig_0_challengeBits_d0 mem_din 1 8 }  { sig_0_challengeBits_q0 mem_dout 0 8 } } }
	sig_0_salt { ap_memory {  { sig_0_salt_address0 mem_address 1 5 }  { sig_0_salt_ce0 mem_ce 1 1 }  { sig_0_salt_we0 mem_we 1 1 }  { sig_0_salt_d0 mem_din 1 8 }  { sig_0_salt_q0 mem_dout 0 8 } } }
	viewOutputs { ap_memory {  { viewOutputs_address0 mem_address 1 16 }  { viewOutputs_ce0 mem_ce 1 1 }  { viewOutputs_we0 mem_we 1 1 }  { viewOutputs_d0 mem_din 1 32 }  { viewOutputs_q0 mem_dout 0 32 }  { viewOutputs_address1 mem_address 1 16 }  { viewOutputs_ce1 mem_ce 1 1 }  { viewOutputs_q1 mem_dout 0 32 } } }
}
set moduleName sign_picnic1
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
set C_modelName {sign_picnic1}
set C_modelType { void 0 }
set C_modelArgList {
	{ privateKey int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ pubKey int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ plaintext int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ message int 8 regular {array 3300 { 1 3 } 1 1 }  }
	{ messageByteLength int 64 regular  }
	{ sig_0_proofs_seed1 int 8 regular {array 14016 { 0 3 } 0 1 }  }
	{ sig_0_proofs_seed2 int 8 regular {array 14016 { 0 3 } 0 1 }  }
	{ sig_0_proofs_inputS int 32 regular {array 3504 { 0 3 } 0 1 }  }
	{ sig_0_proofs_commun int 8 regular {array 62634 { 0 3 } 0 1 }  }
	{ sig_0_proofs_view3C int 8 regular {array 28032 { 0 3 } 0 1 }  }
	{ sig_0_challengeBits int 8 regular {array 110 { 2 3 } 1 1 }  }
	{ sig_0_salt int 8 regular {array 32 { 2 3 } 1 1 }  }
	{ viewOutputs int 32 regular {array 42048 { 2 1 } 1 1 } {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "privateKey", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pubKey", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "plaintext", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "message", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "messageByteLength", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "sig_0_proofs_seed1", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sig_0_proofs_seed2", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sig_0_proofs_inputS", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sig_0_proofs_commun", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sig_0_proofs_view3C", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sig_0_challengeBits", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "sig_0_salt", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "viewOutputs", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "viewOutputs","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1313,"step" : 1},{"low" : 0,"up" : 31,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 57
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ privateKey_address0 sc_out sc_lv 3 signal 0 } 
	{ privateKey_ce0 sc_out sc_logic 1 signal 0 } 
	{ privateKey_q0 sc_in sc_lv 32 signal 0 } 
	{ pubKey_address0 sc_out sc_lv 3 signal 1 } 
	{ pubKey_ce0 sc_out sc_logic 1 signal 1 } 
	{ pubKey_q0 sc_in sc_lv 32 signal 1 } 
	{ plaintext_address0 sc_out sc_lv 3 signal 2 } 
	{ plaintext_ce0 sc_out sc_logic 1 signal 2 } 
	{ plaintext_q0 sc_in sc_lv 32 signal 2 } 
	{ message_address0 sc_out sc_lv 12 signal 3 } 
	{ message_ce0 sc_out sc_logic 1 signal 3 } 
	{ message_q0 sc_in sc_lv 8 signal 3 } 
	{ messageByteLength sc_in sc_lv 64 signal 4 } 
	{ sig_0_proofs_seed1_address0 sc_out sc_lv 14 signal 5 } 
	{ sig_0_proofs_seed1_ce0 sc_out sc_logic 1 signal 5 } 
	{ sig_0_proofs_seed1_we0 sc_out sc_logic 1 signal 5 } 
	{ sig_0_proofs_seed1_d0 sc_out sc_lv 8 signal 5 } 
	{ sig_0_proofs_seed2_address0 sc_out sc_lv 14 signal 6 } 
	{ sig_0_proofs_seed2_ce0 sc_out sc_logic 1 signal 6 } 
	{ sig_0_proofs_seed2_we0 sc_out sc_logic 1 signal 6 } 
	{ sig_0_proofs_seed2_d0 sc_out sc_lv 8 signal 6 } 
	{ sig_0_proofs_inputS_address0 sc_out sc_lv 12 signal 7 } 
	{ sig_0_proofs_inputS_ce0 sc_out sc_logic 1 signal 7 } 
	{ sig_0_proofs_inputS_we0 sc_out sc_logic 1 signal 7 } 
	{ sig_0_proofs_inputS_d0 sc_out sc_lv 32 signal 7 } 
	{ sig_0_proofs_commun_address0 sc_out sc_lv 16 signal 8 } 
	{ sig_0_proofs_commun_ce0 sc_out sc_logic 1 signal 8 } 
	{ sig_0_proofs_commun_we0 sc_out sc_logic 1 signal 8 } 
	{ sig_0_proofs_commun_d0 sc_out sc_lv 8 signal 8 } 
	{ sig_0_proofs_view3C_address0 sc_out sc_lv 15 signal 9 } 
	{ sig_0_proofs_view3C_ce0 sc_out sc_logic 1 signal 9 } 
	{ sig_0_proofs_view3C_we0 sc_out sc_logic 1 signal 9 } 
	{ sig_0_proofs_view3C_d0 sc_out sc_lv 8 signal 9 } 
	{ sig_0_challengeBits_address0 sc_out sc_lv 7 signal 10 } 
	{ sig_0_challengeBits_ce0 sc_out sc_logic 1 signal 10 } 
	{ sig_0_challengeBits_we0 sc_out sc_logic 1 signal 10 } 
	{ sig_0_challengeBits_d0 sc_out sc_lv 8 signal 10 } 
	{ sig_0_challengeBits_q0 sc_in sc_lv 8 signal 10 } 
	{ sig_0_salt_address0 sc_out sc_lv 5 signal 11 } 
	{ sig_0_salt_ce0 sc_out sc_logic 1 signal 11 } 
	{ sig_0_salt_we0 sc_out sc_logic 1 signal 11 } 
	{ sig_0_salt_d0 sc_out sc_lv 8 signal 11 } 
	{ sig_0_salt_q0 sc_in sc_lv 8 signal 11 } 
	{ viewOutputs_address0 sc_out sc_lv 16 signal 12 } 
	{ viewOutputs_ce0 sc_out sc_logic 1 signal 12 } 
	{ viewOutputs_we0 sc_out sc_logic 1 signal 12 } 
	{ viewOutputs_d0 sc_out sc_lv 32 signal 12 } 
	{ viewOutputs_q0 sc_in sc_lv 32 signal 12 } 
	{ viewOutputs_address1 sc_out sc_lv 16 signal 12 } 
	{ viewOutputs_ce1 sc_out sc_logic 1 signal 12 } 
	{ viewOutputs_q1 sc_in sc_lv 32 signal 12 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "privateKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "privateKey", "role": "address0" }} , 
 	{ "name": "privateKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "privateKey", "role": "ce0" }} , 
 	{ "name": "privateKey_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "privateKey", "role": "q0" }} , 
 	{ "name": "pubKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "pubKey", "role": "address0" }} , 
 	{ "name": "pubKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pubKey", "role": "ce0" }} , 
 	{ "name": "pubKey_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pubKey", "role": "q0" }} , 
 	{ "name": "plaintext_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "plaintext", "role": "address0" }} , 
 	{ "name": "plaintext_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "plaintext", "role": "ce0" }} , 
 	{ "name": "plaintext_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "plaintext", "role": "q0" }} , 
 	{ "name": "message_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "message", "role": "address0" }} , 
 	{ "name": "message_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "message", "role": "ce0" }} , 
 	{ "name": "message_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "message", "role": "q0" }} , 
 	{ "name": "messageByteLength", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "messageByteLength", "role": "default" }} , 
 	{ "name": "sig_0_proofs_seed1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "sig_0_proofs_seed1", "role": "address0" }} , 
 	{ "name": "sig_0_proofs_seed1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_proofs_seed1", "role": "ce0" }} , 
 	{ "name": "sig_0_proofs_seed1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_proofs_seed1", "role": "we0" }} , 
 	{ "name": "sig_0_proofs_seed1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sig_0_proofs_seed1", "role": "d0" }} , 
 	{ "name": "sig_0_proofs_seed2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "sig_0_proofs_seed2", "role": "address0" }} , 
 	{ "name": "sig_0_proofs_seed2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_proofs_seed2", "role": "ce0" }} , 
 	{ "name": "sig_0_proofs_seed2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_proofs_seed2", "role": "we0" }} , 
 	{ "name": "sig_0_proofs_seed2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sig_0_proofs_seed2", "role": "d0" }} , 
 	{ "name": "sig_0_proofs_inputS_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sig_0_proofs_inputS", "role": "address0" }} , 
 	{ "name": "sig_0_proofs_inputS_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_proofs_inputS", "role": "ce0" }} , 
 	{ "name": "sig_0_proofs_inputS_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_proofs_inputS", "role": "we0" }} , 
 	{ "name": "sig_0_proofs_inputS_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sig_0_proofs_inputS", "role": "d0" }} , 
 	{ "name": "sig_0_proofs_commun_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sig_0_proofs_commun", "role": "address0" }} , 
 	{ "name": "sig_0_proofs_commun_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_proofs_commun", "role": "ce0" }} , 
 	{ "name": "sig_0_proofs_commun_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_proofs_commun", "role": "we0" }} , 
 	{ "name": "sig_0_proofs_commun_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sig_0_proofs_commun", "role": "d0" }} , 
 	{ "name": "sig_0_proofs_view3C_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "sig_0_proofs_view3C", "role": "address0" }} , 
 	{ "name": "sig_0_proofs_view3C_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_proofs_view3C", "role": "ce0" }} , 
 	{ "name": "sig_0_proofs_view3C_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_proofs_view3C", "role": "we0" }} , 
 	{ "name": "sig_0_proofs_view3C_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sig_0_proofs_view3C", "role": "d0" }} , 
 	{ "name": "sig_0_challengeBits_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "sig_0_challengeBits", "role": "address0" }} , 
 	{ "name": "sig_0_challengeBits_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_challengeBits", "role": "ce0" }} , 
 	{ "name": "sig_0_challengeBits_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_challengeBits", "role": "we0" }} , 
 	{ "name": "sig_0_challengeBits_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sig_0_challengeBits", "role": "d0" }} , 
 	{ "name": "sig_0_challengeBits_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sig_0_challengeBits", "role": "q0" }} , 
 	{ "name": "sig_0_salt_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sig_0_salt", "role": "address0" }} , 
 	{ "name": "sig_0_salt_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_salt", "role": "ce0" }} , 
 	{ "name": "sig_0_salt_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_salt", "role": "we0" }} , 
 	{ "name": "sig_0_salt_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sig_0_salt", "role": "d0" }} , 
 	{ "name": "sig_0_salt_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sig_0_salt", "role": "q0" }} , 
 	{ "name": "viewOutputs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "viewOutputs", "role": "address0" }} , 
 	{ "name": "viewOutputs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "viewOutputs", "role": "ce0" }} , 
 	{ "name": "viewOutputs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "viewOutputs", "role": "we0" }} , 
 	{ "name": "viewOutputs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "viewOutputs", "role": "d0" }} , 
 	{ "name": "viewOutputs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "viewOutputs", "role": "q0" }} , 
 	{ "name": "viewOutputs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "viewOutputs", "role": "address1" }} , 
 	{ "name": "viewOutputs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "viewOutputs", "role": "ce1" }} , 
 	{ "name": "viewOutputs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "viewOutputs", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "135", "216", "247", "260", "273", "288", "301", "315", "328", "341", "354", "367", "380", "393", "407", "420"],
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
					{"ID" : "135", "SubInstance" : "grp_computeSeeds_2_fu_3164", "Port" : "privateKey"}]},
			{"Name" : "pubKey", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "135", "SubInstance" : "grp_computeSeeds_2_fu_3164", "Port" : "publicKey"}]},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_H3_2_fu_3143", "Port" : "plaintext"},
					{"ID" : "135", "SubInstance" : "grp_computeSeeds_2_fu_3164", "Port" : "plaintext"},
					{"ID" : "216", "SubInstance" : "grp_mpc_LowMC_2_fu_3186", "Port" : "plaintext"}]},
			{"Name" : "message", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_H3_2_fu_3143", "Port" : "message"},
					{"ID" : "135", "SubInstance" : "grp_computeSeeds_2_fu_3164", "Port" : "message"}]},
			{"Name" : "messageByteLength", "Type" : "None", "Direction" : "I"},
			{"Name" : "sig_0_proofs_seed1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "420", "SubInstance" : "grp_prove_26_fu_3395", "Port" : "proof_0_seed1"}]},
			{"Name" : "sig_0_proofs_seed2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "420", "SubInstance" : "grp_prove_26_fu_3395", "Port" : "proof_0_seed2"}]},
			{"Name" : "sig_0_proofs_inputS", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "420", "SubInstance" : "grp_prove_26_fu_3395", "Port" : "proof_0_inputShare"}]},
			{"Name" : "sig_0_proofs_commun", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "420", "SubInstance" : "grp_prove_26_fu_3395", "Port" : "proof_0_communicatedBits"}]},
			{"Name" : "sig_0_proofs_view3C", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "420", "SubInstance" : "grp_prove_26_fu_3395", "Port" : "proof_0_view3Commitment"}]},
			{"Name" : "sig_0_challengeBits", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_H3_2_fu_3143", "Port" : "challengeBits_0"}]},
			{"Name" : "sig_0_salt", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_H3_2_fu_3143", "Port" : "salt_0"},
					{"ID" : "367", "SubInstance" : "grp_KeccakWidth1600_Spon_8_fu_3343", "Port" : "data_0"},
					{"ID" : "135", "SubInstance" : "grp_computeSeeds_2_fu_3164", "Port" : "salt_0"}]},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "260", "SubInstance" : "grp_KeccakWidth1600_Spon_5_fu_3220", "Port" : "KeccakRhoOffsets"},
					{"ID" : "24", "SubInstance" : "grp_H3_2_fu_3143", "Port" : "KeccakRhoOffsets"},
					{"ID" : "273", "SubInstance" : "grp_HashUpdate_2_fu_3235", "Port" : "KeccakRhoOffsets"},
					{"ID" : "393", "SubInstance" : "grp_HashInit_fu_3371", "Port" : "KeccakRhoOffsets"},
					{"ID" : "288", "SubInstance" : "grp_KeccakWidth1600_Spon_fu_3252", "Port" : "KeccakRhoOffsets"},
					{"ID" : "328", "SubInstance" : "grp_KeccakWidth1600_Spon_7_fu_3304", "Port" : "KeccakRhoOffsets"},
					{"ID" : "301", "SubInstance" : "grp_KeccakWidth1600_Spon_10_fu_3270", "Port" : "KeccakRhoOffsets"},
					{"ID" : "380", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_3355", "Port" : "KeccakRhoOffsets"},
					{"ID" : "354", "SubInstance" : "grp_KeccakWidth1600_Spon_13_fu_3332", "Port" : "KeccakRhoOffsets"},
					{"ID" : "341", "SubInstance" : "grp_KeccakWidth1600_Spon_6_fu_3321", "Port" : "KeccakRhoOffsets"},
					{"ID" : "407", "SubInstance" : "grp_HashFinal_fu_3385", "Port" : "KeccakRhoOffsets"},
					{"ID" : "367", "SubInstance" : "grp_KeccakWidth1600_Spon_8_fu_3343", "Port" : "KeccakRhoOffsets"},
					{"ID" : "247", "SubInstance" : "grp_KeccakWidth1600_Spon_1_fu_3205", "Port" : "KeccakRhoOffsets"},
					{"ID" : "135", "SubInstance" : "grp_computeSeeds_2_fu_3164", "Port" : "KeccakRhoOffsets"},
					{"ID" : "315", "SubInstance" : "grp_KeccakWidth1600_Spon_14_fu_3287", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "260", "SubInstance" : "grp_KeccakWidth1600_Spon_5_fu_3220", "Port" : "KeccakRoundConstants"},
					{"ID" : "24", "SubInstance" : "grp_H3_2_fu_3143", "Port" : "KeccakRoundConstants"},
					{"ID" : "273", "SubInstance" : "grp_HashUpdate_2_fu_3235", "Port" : "KeccakRoundConstants"},
					{"ID" : "393", "SubInstance" : "grp_HashInit_fu_3371", "Port" : "KeccakRoundConstants"},
					{"ID" : "288", "SubInstance" : "grp_KeccakWidth1600_Spon_fu_3252", "Port" : "KeccakRoundConstants"},
					{"ID" : "328", "SubInstance" : "grp_KeccakWidth1600_Spon_7_fu_3304", "Port" : "KeccakRoundConstants"},
					{"ID" : "301", "SubInstance" : "grp_KeccakWidth1600_Spon_10_fu_3270", "Port" : "KeccakRoundConstants"},
					{"ID" : "380", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_3355", "Port" : "KeccakRoundConstants"},
					{"ID" : "354", "SubInstance" : "grp_KeccakWidth1600_Spon_13_fu_3332", "Port" : "KeccakRoundConstants"},
					{"ID" : "341", "SubInstance" : "grp_KeccakWidth1600_Spon_6_fu_3321", "Port" : "KeccakRoundConstants"},
					{"ID" : "407", "SubInstance" : "grp_HashFinal_fu_3385", "Port" : "KeccakRoundConstants"},
					{"ID" : "367", "SubInstance" : "grp_KeccakWidth1600_Spon_8_fu_3343", "Port" : "KeccakRoundConstants"},
					{"ID" : "247", "SubInstance" : "grp_KeccakWidth1600_Spon_1_fu_3205", "Port" : "KeccakRoundConstants"},
					{"ID" : "135", "SubInstance" : "grp_computeSeeds_2_fu_3164", "Port" : "KeccakRoundConstants"},
					{"ID" : "315", "SubInstance" : "grp_KeccakWidth1600_Spon_14_fu_3287", "Port" : "KeccakRoundConstants"}]},
			{"Name" : "temp_matrix", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "216", "SubInstance" : "grp_mpc_LowMC_2_fu_3186", "Port" : "temp_matrix"}]},
			{"Name" : "temp_matrix2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "216", "SubInstance" : "grp_mpc_LowMC_2_fu_3186", "Port" : "temp_matrix2"}]},
			{"Name" : "temp_matrix3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "216", "SubInstance" : "grp_mpc_LowMC_2_fu_3186", "Port" : "temp_matrix3"}]},
			{"Name" : "viewOutputs", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_H3_2_fu_3143", "Port" : "viewOutputs"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctx_sponge_state_4_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.views_outputShare277_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.views_communicatedBi_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.views_inputShare227_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctx_sponge_state_3_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.views_outputShare165_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.views_communicatedBi_1_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.views_inputShare115_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctx_sponge_state_2_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.views_outputShare74_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.views_communicatedBi_2_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.views_inputShare27_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctx_sponge_state_1_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctx_sponge_state_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.views_inputShare_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.views_communicatedBi_3_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.views_outputShare_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.as_hashes_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.seeds_seed_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tape_tape_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tape_assign_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.slab_assign_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143", "Parent" : "0", "Child" : ["25", "26", "27", "28", "29", "30", "43", "56", "69", "82", "95", "108", "122"],
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
					{"ID" : "56", "SubInstance" : "grp_KeccakWidth1600_Spon_14_fu_555", "Port" : "data"}]},
			{"Name" : "challengeBits_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "salt_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "grp_KeccakWidth1600_Spon_8_fu_592", "Port" : "data_0"}]},
			{"Name" : "message", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_542", "Port" : "data"}]},
			{"Name" : "messageByteLength", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "grp_KeccakWidth1600_Spon_16_fu_570", "Port" : "KeccakRhoOffsets"},
					{"ID" : "82", "SubInstance" : "grp_KeccakWidth1600_Spon_12_fu_581", "Port" : "KeccakRhoOffsets"},
					{"ID" : "43", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_542", "Port" : "KeccakRhoOffsets"},
					{"ID" : "108", "SubInstance" : "grp_HashInit_fu_604", "Port" : "KeccakRhoOffsets"},
					{"ID" : "56", "SubInstance" : "grp_KeccakWidth1600_Spon_14_fu_555", "Port" : "KeccakRhoOffsets"},
					{"ID" : "95", "SubInstance" : "grp_KeccakWidth1600_Spon_8_fu_592", "Port" : "KeccakRhoOffsets"},
					{"ID" : "30", "SubInstance" : "grp_KeccakWidth1600_Spon_4_fu_530", "Port" : "KeccakRhoOffsets"},
					{"ID" : "122", "SubInstance" : "grp_HashFinal_fu_616", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "grp_KeccakWidth1600_Spon_16_fu_570", "Port" : "KeccakRoundConstants"},
					{"ID" : "82", "SubInstance" : "grp_KeccakWidth1600_Spon_12_fu_581", "Port" : "KeccakRoundConstants"},
					{"ID" : "43", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_542", "Port" : "KeccakRoundConstants"},
					{"ID" : "108", "SubInstance" : "grp_HashInit_fu_604", "Port" : "KeccakRoundConstants"},
					{"ID" : "56", "SubInstance" : "grp_KeccakWidth1600_Spon_14_fu_555", "Port" : "KeccakRoundConstants"},
					{"ID" : "95", "SubInstance" : "grp_KeccakWidth1600_Spon_8_fu_592", "Port" : "KeccakRoundConstants"},
					{"ID" : "30", "SubInstance" : "grp_KeccakWidth1600_Spon_4_fu_530", "Port" : "KeccakRoundConstants"},
					{"ID" : "122", "SubInstance" : "grp_HashFinal_fu_616", "Port" : "KeccakRoundConstants"}]},
			{"Name" : "viewOutputs", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.temp_2_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.temp_U", "Parent" : "24"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.temp_1_U", "Parent" : "24"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.hash_U", "Parent" : "24"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.ctx_sponge_state_U", "Parent" : "24"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_4_fu_530", "Parent" : "24", "Child" : ["31"],
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
					{"ID" : "31", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_247", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_247", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_247", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_4_fu_530.grp_KeccakP1600_Permute_s_fu_247", "Parent" : "30", "Child" : ["32", "33", "34", "35", "38", "40"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_4_fu_530.grp_KeccakP1600_Permute_s_fu_247.KeccakRhoOffsets_U", "Parent" : "31"},
	{"ID" : "33", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_4_fu_530.grp_KeccakP1600_Permute_s_fu_247.KeccakRoundConstants_U", "Parent" : "31"},
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_4_fu_530.grp_KeccakP1600_Permute_s_fu_247.stateAsWords_U", "Parent" : "31"},
	{"ID" : "35", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_4_fu_530.grp_KeccakP1600_Permute_s_fu_247.grp_theta_fu_225", "Parent" : "31", "Child" : ["36", "37"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "36", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_4_fu_530.grp_KeccakP1600_Permute_s_fu_247.grp_theta_fu_225.C_U", "Parent" : "35"},
	{"ID" : "37", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_4_fu_530.grp_KeccakP1600_Permute_s_fu_247.grp_theta_fu_225.D_U", "Parent" : "35"},
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_4_fu_530.grp_KeccakP1600_Permute_s_fu_247.grp_chi_fu_230", "Parent" : "31", "Child" : ["39"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "39", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_4_fu_530.grp_KeccakP1600_Permute_s_fu_247.grp_chi_fu_230.C_U", "Parent" : "38"},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_4_fu_530.grp_KeccakP1600_Permute_s_fu_247.grp_pi_fu_235", "Parent" : "31", "Child" : ["41", "42"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "41", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_4_fu_530.grp_KeccakP1600_Permute_s_fu_247.grp_pi_fu_235.tempA_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_4_fu_530.grp_KeccakP1600_Permute_s_fu_247.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "40"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_15_fu_542", "Parent" : "24", "Child" : ["44"],
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
					{"ID" : "44", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_158", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dataByteLen", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_158", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_158", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_15_fu_542.grp_KeccakP1600_Permute_s_fu_158", "Parent" : "43", "Child" : ["45", "46", "47", "48", "51", "53"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "45", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_15_fu_542.grp_KeccakP1600_Permute_s_fu_158.KeccakRhoOffsets_U", "Parent" : "44"},
	{"ID" : "46", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_15_fu_542.grp_KeccakP1600_Permute_s_fu_158.KeccakRoundConstants_U", "Parent" : "44"},
	{"ID" : "47", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_15_fu_542.grp_KeccakP1600_Permute_s_fu_158.stateAsWords_U", "Parent" : "44"},
	{"ID" : "48", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_15_fu_542.grp_KeccakP1600_Permute_s_fu_158.grp_theta_fu_225", "Parent" : "44", "Child" : ["49", "50"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "49", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_15_fu_542.grp_KeccakP1600_Permute_s_fu_158.grp_theta_fu_225.C_U", "Parent" : "48"},
	{"ID" : "50", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_15_fu_542.grp_KeccakP1600_Permute_s_fu_158.grp_theta_fu_225.D_U", "Parent" : "48"},
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_15_fu_542.grp_KeccakP1600_Permute_s_fu_158.grp_chi_fu_230", "Parent" : "44", "Child" : ["52"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "52", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_15_fu_542.grp_KeccakP1600_Permute_s_fu_158.grp_chi_fu_230.C_U", "Parent" : "51"},
	{"ID" : "53", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_15_fu_542.grp_KeccakP1600_Permute_s_fu_158.grp_pi_fu_235", "Parent" : "44", "Child" : ["54", "55"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "54", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_15_fu_542.grp_KeccakP1600_Permute_s_fu_158.grp_pi_fu_235.tempA_U", "Parent" : "53"},
	{"ID" : "55", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_15_fu_542.grp_KeccakP1600_Permute_s_fu_158.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "53"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_14_fu_555", "Parent" : "24", "Child" : ["57"],
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
					{"ID" : "57", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_14_fu_555.grp_KeccakP1600_Permute_s_fu_204", "Parent" : "56", "Child" : ["58", "59", "60", "61", "64", "66"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "58", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_14_fu_555.grp_KeccakP1600_Permute_s_fu_204.KeccakRhoOffsets_U", "Parent" : "57"},
	{"ID" : "59", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_14_fu_555.grp_KeccakP1600_Permute_s_fu_204.KeccakRoundConstants_U", "Parent" : "57"},
	{"ID" : "60", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_14_fu_555.grp_KeccakP1600_Permute_s_fu_204.stateAsWords_U", "Parent" : "57"},
	{"ID" : "61", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_14_fu_555.grp_KeccakP1600_Permute_s_fu_204.grp_theta_fu_225", "Parent" : "57", "Child" : ["62", "63"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "62", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_14_fu_555.grp_KeccakP1600_Permute_s_fu_204.grp_theta_fu_225.C_U", "Parent" : "61"},
	{"ID" : "63", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_14_fu_555.grp_KeccakP1600_Permute_s_fu_204.grp_theta_fu_225.D_U", "Parent" : "61"},
	{"ID" : "64", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_14_fu_555.grp_KeccakP1600_Permute_s_fu_204.grp_chi_fu_230", "Parent" : "57", "Child" : ["65"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "65", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_14_fu_555.grp_KeccakP1600_Permute_s_fu_204.grp_chi_fu_230.C_U", "Parent" : "64"},
	{"ID" : "66", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_14_fu_555.grp_KeccakP1600_Permute_s_fu_204.grp_pi_fu_235", "Parent" : "57", "Child" : ["67", "68"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "67", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_14_fu_555.grp_KeccakP1600_Permute_s_fu_204.grp_pi_fu_235.tempA_U", "Parent" : "66"},
	{"ID" : "68", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_14_fu_555.grp_KeccakP1600_Permute_s_fu_204.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "66"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_16_fu_570", "Parent" : "24", "Child" : ["70"],
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
					{"ID" : "70", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_16_fu_570.grp_KeccakP1600_Permute_s_fu_176", "Parent" : "69", "Child" : ["71", "72", "73", "74", "77", "79"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "71", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_16_fu_570.grp_KeccakP1600_Permute_s_fu_176.KeccakRhoOffsets_U", "Parent" : "70"},
	{"ID" : "72", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_16_fu_570.grp_KeccakP1600_Permute_s_fu_176.KeccakRoundConstants_U", "Parent" : "70"},
	{"ID" : "73", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_16_fu_570.grp_KeccakP1600_Permute_s_fu_176.stateAsWords_U", "Parent" : "70"},
	{"ID" : "74", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_16_fu_570.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225", "Parent" : "70", "Child" : ["75", "76"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "75", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_16_fu_570.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.C_U", "Parent" : "74"},
	{"ID" : "76", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_16_fu_570.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.D_U", "Parent" : "74"},
	{"ID" : "77", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_16_fu_570.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230", "Parent" : "70", "Child" : ["78"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "78", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_16_fu_570.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230.C_U", "Parent" : "77"},
	{"ID" : "79", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_16_fu_570.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235", "Parent" : "70", "Child" : ["80", "81"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "80", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_16_fu_570.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.tempA_U", "Parent" : "79"},
	{"ID" : "81", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_16_fu_570.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "79"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_12_fu_581", "Parent" : "24", "Child" : ["83"],
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
					{"ID" : "83", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_12_fu_581.grp_KeccakP1600_Permute_s_fu_176", "Parent" : "82", "Child" : ["84", "85", "86", "87", "90", "92"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "84", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_12_fu_581.grp_KeccakP1600_Permute_s_fu_176.KeccakRhoOffsets_U", "Parent" : "83"},
	{"ID" : "85", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_12_fu_581.grp_KeccakP1600_Permute_s_fu_176.KeccakRoundConstants_U", "Parent" : "83"},
	{"ID" : "86", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_12_fu_581.grp_KeccakP1600_Permute_s_fu_176.stateAsWords_U", "Parent" : "83"},
	{"ID" : "87", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_12_fu_581.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225", "Parent" : "83", "Child" : ["88", "89"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "88", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_12_fu_581.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.C_U", "Parent" : "87"},
	{"ID" : "89", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_12_fu_581.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.D_U", "Parent" : "87"},
	{"ID" : "90", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_12_fu_581.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230", "Parent" : "83", "Child" : ["91"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "91", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_12_fu_581.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230.C_U", "Parent" : "90"},
	{"ID" : "92", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_12_fu_581.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235", "Parent" : "83", "Child" : ["93", "94"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "93", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_12_fu_581.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.tempA_U", "Parent" : "92"},
	{"ID" : "94", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_12_fu_581.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "92"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_8_fu_592", "Parent" : "24", "Child" : ["96"],
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
					{"ID" : "96", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_8_fu_592.grp_KeccakP1600_Permute_s_fu_176", "Parent" : "95", "Child" : ["97", "98", "99", "100", "103", "105"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "97", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_8_fu_592.grp_KeccakP1600_Permute_s_fu_176.KeccakRhoOffsets_U", "Parent" : "96"},
	{"ID" : "98", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_8_fu_592.grp_KeccakP1600_Permute_s_fu_176.KeccakRoundConstants_U", "Parent" : "96"},
	{"ID" : "99", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_8_fu_592.grp_KeccakP1600_Permute_s_fu_176.stateAsWords_U", "Parent" : "96"},
	{"ID" : "100", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_8_fu_592.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225", "Parent" : "96", "Child" : ["101", "102"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "101", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_8_fu_592.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.C_U", "Parent" : "100"},
	{"ID" : "102", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_8_fu_592.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.D_U", "Parent" : "100"},
	{"ID" : "103", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_8_fu_592.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230", "Parent" : "96", "Child" : ["104"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "104", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_8_fu_592.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230.C_U", "Parent" : "103"},
	{"ID" : "105", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_8_fu_592.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235", "Parent" : "96", "Child" : ["106", "107"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "106", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_8_fu_592.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.tempA_U", "Parent" : "105"},
	{"ID" : "107", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_KeccakWidth1600_Spon_8_fu_592.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "105"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_HashInit_fu_604", "Parent" : "24", "Child" : ["109"],
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
					{"ID" : "109", "SubInstance" : "grp_KeccakWidth1600_Spon_11_fu_74", "Port" : "instance_state"}]},
			{"Name" : "hashPrefix", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "grp_KeccakWidth1600_Spon_11_fu_74", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "grp_KeccakWidth1600_Spon_11_fu_74", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_HashInit_fu_604.grp_KeccakWidth1600_Spon_11_fu_74", "Parent" : "108", "Child" : ["110"],
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
					{"ID" : "110", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "state"}]},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "110", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "110", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "110", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_HashInit_fu_604.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54", "Parent" : "109", "Child" : ["111", "112", "113", "114", "117", "119"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "111", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_HashInit_fu_604.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.KeccakRhoOffsets_U", "Parent" : "110"},
	{"ID" : "112", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_HashInit_fu_604.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.KeccakRoundConstants_U", "Parent" : "110"},
	{"ID" : "113", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_HashInit_fu_604.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.stateAsWords_U", "Parent" : "110"},
	{"ID" : "114", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_HashInit_fu_604.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225", "Parent" : "110", "Child" : ["115", "116"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "115", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_HashInit_fu_604.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.C_U", "Parent" : "114"},
	{"ID" : "116", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_HashInit_fu_604.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.D_U", "Parent" : "114"},
	{"ID" : "117", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_HashInit_fu_604.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230", "Parent" : "110", "Child" : ["118"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "118", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_HashInit_fu_604.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230.C_U", "Parent" : "117"},
	{"ID" : "119", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_HashInit_fu_604.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235", "Parent" : "110", "Child" : ["120", "121"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "120", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_HashInit_fu_604.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.tempA_U", "Parent" : "119"},
	{"ID" : "121", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_HashInit_fu_604.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "119"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_HashFinal_fu_616", "Parent" : "24", "Child" : ["123"],
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
					{"ID" : "123", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "state"}]},
			{"Name" : "ctx_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "123", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "123", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "123", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_HashFinal_fu_616.grp_KeccakP1600_Permute_s_fu_54", "Parent" : "122", "Child" : ["124", "125", "126", "127", "130", "132"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "124", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_HashFinal_fu_616.grp_KeccakP1600_Permute_s_fu_54.KeccakRhoOffsets_U", "Parent" : "123"},
	{"ID" : "125", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_HashFinal_fu_616.grp_KeccakP1600_Permute_s_fu_54.KeccakRoundConstants_U", "Parent" : "123"},
	{"ID" : "126", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_HashFinal_fu_616.grp_KeccakP1600_Permute_s_fu_54.stateAsWords_U", "Parent" : "123"},
	{"ID" : "127", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_HashFinal_fu_616.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225", "Parent" : "123", "Child" : ["128", "129"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "128", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_HashFinal_fu_616.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.C_U", "Parent" : "127"},
	{"ID" : "129", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_HashFinal_fu_616.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.D_U", "Parent" : "127"},
	{"ID" : "130", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_HashFinal_fu_616.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230", "Parent" : "123", "Child" : ["131"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "131", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_HashFinal_fu_616.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230.C_U", "Parent" : "130"},
	{"ID" : "132", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_HashFinal_fu_616.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235", "Parent" : "123", "Child" : ["133", "134"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "133", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_HashFinal_fu_616.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.tempA_U", "Parent" : "132"},
	{"ID" : "134", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_3143.grp_HashFinal_fu_616.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "132"},
	{"ID" : "135", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164", "Parent" : "0", "Child" : ["136", "137", "150", "165", "178", "191", "204"],
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
					{"ID" : "137", "SubInstance" : "grp_KeccakWidth1600_Spon_2_fu_158", "Port" : "data"}]},
			{"Name" : "salt_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_KeccakWidth1600_Spon_3_fu_190", "Port" : "data_0"}]},
			{"Name" : "privateKey", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "150", "SubInstance" : "grp_HashUpdate_2_1360_fu_175", "Port" : "data"}]},
			{"Name" : "publicKey", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "150", "SubInstance" : "grp_HashUpdate_2_1360_fu_175", "Port" : "data"}]},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "150", "SubInstance" : "grp_HashUpdate_2_1360_fu_175", "Port" : "data"}]},
			{"Name" : "message", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "178", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_203", "Port" : "data"}]},
			{"Name" : "messageByteLength", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_KeccakWidth1600_Spon_3_fu_190", "Port" : "KeccakRhoOffsets"},
					{"ID" : "191", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_216", "Port" : "KeccakRhoOffsets"},
					{"ID" : "178", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_203", "Port" : "KeccakRhoOffsets"},
					{"ID" : "137", "SubInstance" : "grp_KeccakWidth1600_Spon_2_fu_158", "Port" : "KeccakRhoOffsets"},
					{"ID" : "150", "SubInstance" : "grp_HashUpdate_2_1360_fu_175", "Port" : "KeccakRhoOffsets"},
					{"ID" : "204", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_230", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_KeccakWidth1600_Spon_3_fu_190", "Port" : "KeccakRoundConstants"},
					{"ID" : "191", "SubInstance" : "grp_KeccakWidth1600_Spon_9_fu_216", "Port" : "KeccakRoundConstants"},
					{"ID" : "178", "SubInstance" : "grp_KeccakWidth1600_Spon_15_fu_203", "Port" : "KeccakRoundConstants"},
					{"ID" : "137", "SubInstance" : "grp_KeccakWidth1600_Spon_2_fu_158", "Port" : "KeccakRoundConstants"},
					{"ID" : "150", "SubInstance" : "grp_HashUpdate_2_1360_fu_175", "Port" : "KeccakRoundConstants"},
					{"ID" : "204", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_230", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.ctx_sponge_state_U", "Parent" : "135"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_2_fu_158", "Parent" : "135", "Child" : ["138"],
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
					{"ID" : "138", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_285", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_285", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_285", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "138", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_2_fu_158.grp_KeccakP1600_Permute_s_fu_285", "Parent" : "137", "Child" : ["139", "140", "141", "142", "145", "147"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "139", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_2_fu_158.grp_KeccakP1600_Permute_s_fu_285.KeccakRhoOffsets_U", "Parent" : "138"},
	{"ID" : "140", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_2_fu_158.grp_KeccakP1600_Permute_s_fu_285.KeccakRoundConstants_U", "Parent" : "138"},
	{"ID" : "141", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_2_fu_158.grp_KeccakP1600_Permute_s_fu_285.stateAsWords_U", "Parent" : "138"},
	{"ID" : "142", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_2_fu_158.grp_KeccakP1600_Permute_s_fu_285.grp_theta_fu_225", "Parent" : "138", "Child" : ["143", "144"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "143", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_2_fu_158.grp_KeccakP1600_Permute_s_fu_285.grp_theta_fu_225.C_U", "Parent" : "142"},
	{"ID" : "144", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_2_fu_158.grp_KeccakP1600_Permute_s_fu_285.grp_theta_fu_225.D_U", "Parent" : "142"},
	{"ID" : "145", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_2_fu_158.grp_KeccakP1600_Permute_s_fu_285.grp_chi_fu_230", "Parent" : "138", "Child" : ["146"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "146", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_2_fu_158.grp_KeccakP1600_Permute_s_fu_285.grp_chi_fu_230.C_U", "Parent" : "145"},
	{"ID" : "147", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_2_fu_158.grp_KeccakP1600_Permute_s_fu_285.grp_pi_fu_235", "Parent" : "138", "Child" : ["148", "149"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "148", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_2_fu_158.grp_KeccakP1600_Permute_s_fu_285.grp_pi_fu_235.tempA_U", "Parent" : "147"},
	{"ID" : "149", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_2_fu_158.grp_KeccakP1600_Permute_s_fu_285.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "147"},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_HashUpdate_2_1360_fu_175", "Parent" : "135", "Child" : ["151", "152"],
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
					{"ID" : "152", "SubInstance" : "grp_KeccakWidth1600_Spon_16_fu_162", "Port" : "instance_state"}]},
			{"Name" : "ctx_sponge_byteIOInd", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "152", "SubInstance" : "grp_KeccakWidth1600_Spon_16_fu_162", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "152", "SubInstance" : "grp_KeccakWidth1600_Spon_16_fu_162", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "151", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_HashUpdate_2_1360_fu_175.temp_U", "Parent" : "150"},
	{"ID" : "152", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_HashUpdate_2_1360_fu_175.grp_KeccakWidth1600_Spon_16_fu_162", "Parent" : "150", "Child" : ["153"],
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
					{"ID" : "153", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "153", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "153", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "153", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_HashUpdate_2_1360_fu_175.grp_KeccakWidth1600_Spon_16_fu_162.grp_KeccakP1600_Permute_s_fu_176", "Parent" : "152", "Child" : ["154", "155", "156", "157", "160", "162"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "154", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_HashUpdate_2_1360_fu_175.grp_KeccakWidth1600_Spon_16_fu_162.grp_KeccakP1600_Permute_s_fu_176.KeccakRhoOffsets_U", "Parent" : "153"},
	{"ID" : "155", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_HashUpdate_2_1360_fu_175.grp_KeccakWidth1600_Spon_16_fu_162.grp_KeccakP1600_Permute_s_fu_176.KeccakRoundConstants_U", "Parent" : "153"},
	{"ID" : "156", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_HashUpdate_2_1360_fu_175.grp_KeccakWidth1600_Spon_16_fu_162.grp_KeccakP1600_Permute_s_fu_176.stateAsWords_U", "Parent" : "153"},
	{"ID" : "157", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_HashUpdate_2_1360_fu_175.grp_KeccakWidth1600_Spon_16_fu_162.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225", "Parent" : "153", "Child" : ["158", "159"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "158", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_HashUpdate_2_1360_fu_175.grp_KeccakWidth1600_Spon_16_fu_162.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.C_U", "Parent" : "157"},
	{"ID" : "159", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_HashUpdate_2_1360_fu_175.grp_KeccakWidth1600_Spon_16_fu_162.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.D_U", "Parent" : "157"},
	{"ID" : "160", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_HashUpdate_2_1360_fu_175.grp_KeccakWidth1600_Spon_16_fu_162.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230", "Parent" : "153", "Child" : ["161"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "161", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_HashUpdate_2_1360_fu_175.grp_KeccakWidth1600_Spon_16_fu_162.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230.C_U", "Parent" : "160"},
	{"ID" : "162", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_HashUpdate_2_1360_fu_175.grp_KeccakWidth1600_Spon_16_fu_162.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235", "Parent" : "153", "Child" : ["163", "164"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "163", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_HashUpdate_2_1360_fu_175.grp_KeccakWidth1600_Spon_16_fu_162.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.tempA_U", "Parent" : "162"},
	{"ID" : "164", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_HashUpdate_2_1360_fu_175.grp_KeccakWidth1600_Spon_16_fu_162.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "162"},
	{"ID" : "165", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_3_fu_190", "Parent" : "135", "Child" : ["166"],
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
					{"ID" : "166", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_244", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "166", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_244", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "166", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_244", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "166", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_3_fu_190.grp_KeccakP1600_Permute_s_fu_244", "Parent" : "165", "Child" : ["167", "168", "169", "170", "173", "175"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "167", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_3_fu_190.grp_KeccakP1600_Permute_s_fu_244.KeccakRhoOffsets_U", "Parent" : "166"},
	{"ID" : "168", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_3_fu_190.grp_KeccakP1600_Permute_s_fu_244.KeccakRoundConstants_U", "Parent" : "166"},
	{"ID" : "169", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_3_fu_190.grp_KeccakP1600_Permute_s_fu_244.stateAsWords_U", "Parent" : "166"},
	{"ID" : "170", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_3_fu_190.grp_KeccakP1600_Permute_s_fu_244.grp_theta_fu_225", "Parent" : "166", "Child" : ["171", "172"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "171", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_3_fu_190.grp_KeccakP1600_Permute_s_fu_244.grp_theta_fu_225.C_U", "Parent" : "170"},
	{"ID" : "172", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_3_fu_190.grp_KeccakP1600_Permute_s_fu_244.grp_theta_fu_225.D_U", "Parent" : "170"},
	{"ID" : "173", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_3_fu_190.grp_KeccakP1600_Permute_s_fu_244.grp_chi_fu_230", "Parent" : "166", "Child" : ["174"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "174", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_3_fu_190.grp_KeccakP1600_Permute_s_fu_244.grp_chi_fu_230.C_U", "Parent" : "173"},
	{"ID" : "175", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_3_fu_190.grp_KeccakP1600_Permute_s_fu_244.grp_pi_fu_235", "Parent" : "166", "Child" : ["176", "177"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "176", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_3_fu_190.grp_KeccakP1600_Permute_s_fu_244.grp_pi_fu_235.tempA_U", "Parent" : "175"},
	{"ID" : "177", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_3_fu_190.grp_KeccakP1600_Permute_s_fu_244.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "175"},
	{"ID" : "178", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_15_fu_203", "Parent" : "135", "Child" : ["179"],
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
					{"ID" : "179", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_158", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dataByteLen", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_158", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_158", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "179", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_15_fu_203.grp_KeccakP1600_Permute_s_fu_158", "Parent" : "178", "Child" : ["180", "181", "182", "183", "186", "188"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "180", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_15_fu_203.grp_KeccakP1600_Permute_s_fu_158.KeccakRhoOffsets_U", "Parent" : "179"},
	{"ID" : "181", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_15_fu_203.grp_KeccakP1600_Permute_s_fu_158.KeccakRoundConstants_U", "Parent" : "179"},
	{"ID" : "182", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_15_fu_203.grp_KeccakP1600_Permute_s_fu_158.stateAsWords_U", "Parent" : "179"},
	{"ID" : "183", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_15_fu_203.grp_KeccakP1600_Permute_s_fu_158.grp_theta_fu_225", "Parent" : "179", "Child" : ["184", "185"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "184", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_15_fu_203.grp_KeccakP1600_Permute_s_fu_158.grp_theta_fu_225.C_U", "Parent" : "183"},
	{"ID" : "185", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_15_fu_203.grp_KeccakP1600_Permute_s_fu_158.grp_theta_fu_225.D_U", "Parent" : "183"},
	{"ID" : "186", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_15_fu_203.grp_KeccakP1600_Permute_s_fu_158.grp_chi_fu_230", "Parent" : "179", "Child" : ["187"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "187", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_15_fu_203.grp_KeccakP1600_Permute_s_fu_158.grp_chi_fu_230.C_U", "Parent" : "186"},
	{"ID" : "188", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_15_fu_203.grp_KeccakP1600_Permute_s_fu_158.grp_pi_fu_235", "Parent" : "179", "Child" : ["189", "190"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "189", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_15_fu_203.grp_KeccakP1600_Permute_s_fu_158.grp_pi_fu_235.tempA_U", "Parent" : "188"},
	{"ID" : "190", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_15_fu_203.grp_KeccakP1600_Permute_s_fu_158.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "188"},
	{"ID" : "191", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_9_fu_216", "Parent" : "135", "Child" : ["192"],
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
					{"ID" : "192", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_173", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "192", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_173", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "192", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_173", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "192", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_9_fu_216.grp_KeccakP1600_Permute_s_fu_173", "Parent" : "191", "Child" : ["193", "194", "195", "196", "199", "201"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "193", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_9_fu_216.grp_KeccakP1600_Permute_s_fu_173.KeccakRhoOffsets_U", "Parent" : "192"},
	{"ID" : "194", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_9_fu_216.grp_KeccakP1600_Permute_s_fu_173.KeccakRoundConstants_U", "Parent" : "192"},
	{"ID" : "195", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_9_fu_216.grp_KeccakP1600_Permute_s_fu_173.stateAsWords_U", "Parent" : "192"},
	{"ID" : "196", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_9_fu_216.grp_KeccakP1600_Permute_s_fu_173.grp_theta_fu_225", "Parent" : "192", "Child" : ["197", "198"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "197", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_9_fu_216.grp_KeccakP1600_Permute_s_fu_173.grp_theta_fu_225.C_U", "Parent" : "196"},
	{"ID" : "198", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_9_fu_216.grp_KeccakP1600_Permute_s_fu_173.grp_theta_fu_225.D_U", "Parent" : "196"},
	{"ID" : "199", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_9_fu_216.grp_KeccakP1600_Permute_s_fu_173.grp_chi_fu_230", "Parent" : "192", "Child" : ["200"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "200", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_9_fu_216.grp_KeccakP1600_Permute_s_fu_173.grp_chi_fu_230.C_U", "Parent" : "199"},
	{"ID" : "201", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_9_fu_216.grp_KeccakP1600_Permute_s_fu_173.grp_pi_fu_235", "Parent" : "192", "Child" : ["202", "203"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "202", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_9_fu_216.grp_KeccakP1600_Permute_s_fu_173.grp_pi_fu_235.tempA_U", "Parent" : "201"},
	{"ID" : "203", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakWidth1600_Spon_9_fu_216.grp_KeccakP1600_Permute_s_fu_173.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "201"},
	{"ID" : "204", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakP1600_Permute_s_fu_230", "Parent" : "135", "Child" : ["205", "206", "207", "208", "211", "213"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "205", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakP1600_Permute_s_fu_230.KeccakRhoOffsets_U", "Parent" : "204"},
	{"ID" : "206", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakP1600_Permute_s_fu_230.KeccakRoundConstants_U", "Parent" : "204"},
	{"ID" : "207", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakP1600_Permute_s_fu_230.stateAsWords_U", "Parent" : "204"},
	{"ID" : "208", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakP1600_Permute_s_fu_230.grp_theta_fu_225", "Parent" : "204", "Child" : ["209", "210"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "209", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakP1600_Permute_s_fu_230.grp_theta_fu_225.C_U", "Parent" : "208"},
	{"ID" : "210", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakP1600_Permute_s_fu_230.grp_theta_fu_225.D_U", "Parent" : "208"},
	{"ID" : "211", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakP1600_Permute_s_fu_230.grp_chi_fu_230", "Parent" : "204", "Child" : ["212"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "212", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakP1600_Permute_s_fu_230.grp_chi_fu_230.C_U", "Parent" : "211"},
	{"ID" : "213", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakP1600_Permute_s_fu_230.grp_pi_fu_235", "Parent" : "204", "Child" : ["214", "215"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "214", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakP1600_Permute_s_fu_230.grp_pi_fu_235.tempA_U", "Parent" : "213"},
	{"ID" : "215", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_3164.grp_KeccakP1600_Permute_s_fu_230.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "213"},
	{"ID" : "216", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_3186", "Parent" : "0", "Child" : ["217", "218", "222", "226", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244", "245", "246"],
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
					{"ID" : "226", "SubInstance" : "grp_mpc_AND_2_fu_989", "Port" : "rand_tape"}]},
			{"Name" : "views_inputShare", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "218", "SubInstance" : "grp_matrix_mul_fu_955", "Port" : "state"}]},
			{"Name" : "views_inputShare_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "views_communicatedBi", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_mpc_AND_2_fu_989", "Port" : "views_communicatedBi"}]},
			{"Name" : "views_outputShare", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "slab", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "218", "SubInstance" : "grp_matrix_mul_fu_955", "Port" : "output_r"},
					{"ID" : "222", "SubInstance" : "grp_matrix_mul_1_fu_976", "Port" : "output_r"}]},
			{"Name" : "temp_matrix", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "218", "SubInstance" : "grp_matrix_mul_fu_955", "Port" : "temp_matrix"}]},
			{"Name" : "temp_matrix2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_matrix_mul_1_fu_976", "Port" : "temp_matrix2"}]},
			{"Name" : "temp_matrix3", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "217", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_3186.temp_matrix3_U", "Parent" : "216"},
	{"ID" : "218", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_3186.grp_matrix_mul_fu_955", "Parent" : "216", "Child" : ["219", "220", "221"],
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
	{"ID" : "219", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_3186.grp_matrix_mul_fu_955.temp_matrix_U", "Parent" : "218"},
	{"ID" : "220", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_3186.grp_matrix_mul_fu_955.prod_U", "Parent" : "218"},
	{"ID" : "221", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_3186.grp_matrix_mul_fu_955.temp_U", "Parent" : "218"},
	{"ID" : "222", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_3186.grp_matrix_mul_1_fu_976", "Parent" : "216", "Child" : ["223", "224", "225"],
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
	{"ID" : "223", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_3186.grp_matrix_mul_1_fu_976.temp_matrix2_U", "Parent" : "222"},
	{"ID" : "224", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_3186.grp_matrix_mul_1_fu_976.prod_U", "Parent" : "222"},
	{"ID" : "225", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_3186.grp_matrix_mul_1_fu_976.temp_U", "Parent" : "222"},
	{"ID" : "226", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_3186.grp_mpc_AND_2_fu_989", "Parent" : "216", "Child" : ["227", "228", "229", "230", "231", "232", "233"],
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
	{"ID" : "227", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_3186.grp_mpc_AND_2_fu_989.crypto_sign_mux_3ibs_U85", "Parent" : "226"},
	{"ID" : "228", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_3186.grp_mpc_AND_2_fu_989.crypto_sign_mux_3ibs_U86", "Parent" : "226"},
	{"ID" : "229", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_3186.grp_mpc_AND_2_fu_989.crypto_sign_mux_3ibs_U87", "Parent" : "226"},
	{"ID" : "230", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_3186.grp_mpc_AND_2_fu_989.crypto_sign_mux_3ibs_U88", "Parent" : "226"},
	{"ID" : "231", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_3186.grp_mpc_AND_2_fu_989.crypto_sign_mux_3ibs_U89", "Parent" : "226"},
	{"ID" : "232", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_3186.grp_mpc_AND_2_fu_989.crypto_sign_mux_3ibs_U90", "Parent" : "226"},
	{"ID" : "233", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_3186.grp_mpc_AND_2_fu_989.crypto_sign_ama_ajbC_U91", "Parent" : "226"},
	{"ID" : "234", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_3186.crypto_sign_mux_4mb6_U111", "Parent" : "216"},
	{"ID" : "235", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_3186.crypto_sign_mux_3ibs_U112", "Parent" : "216"},
	{"ID" : "236", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_3186.crypto_sign_mux_3ibs_U113", "Parent" : "216"},
	{"ID" : "237", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_3186.crypto_sign_mux_3ibs_U114", "Parent" : "216"},
	{"ID" : "238", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_3186.crypto_sign_mux_3ibs_U115", "Parent" : "216"},
	{"ID" : "239", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_3186.crypto_sign_mux_3ibs_U116", "Parent" : "216"},
	{"ID" : "240", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_3186.crypto_sign_mux_3ibs_U117", "Parent" : "216"},
	{"ID" : "241", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_3186.crypto_sign_mux_3ibs_U118", "Parent" : "216"},
	{"ID" : "242", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_3186.crypto_sign_mux_3ibs_U119", "Parent" : "216"},
	{"ID" : "243", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_3186.crypto_sign_mux_3ibs_U120", "Parent" : "216"},
	{"ID" : "244", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_3186.crypto_sign_mux_4mb6_U121", "Parent" : "216"},
	{"ID" : "245", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_3186.crypto_sign_mux_4mb6_U122", "Parent" : "216"},
	{"ID" : "246", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_3186.crypto_sign_mux_4mb6_U123", "Parent" : "216"},
	{"ID" : "247", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_1_fu_3205", "Parent" : "0", "Child" : ["248"],
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
					{"ID" : "248", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_245", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dataByteLen", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "248", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_245", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "248", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_245", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "248", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_1_fu_3205.grp_KeccakP1600_Permute_s_fu_245", "Parent" : "247", "Child" : ["249", "250", "251", "252", "255", "257"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "249", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_1_fu_3205.grp_KeccakP1600_Permute_s_fu_245.KeccakRhoOffsets_U", "Parent" : "248"},
	{"ID" : "250", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_1_fu_3205.grp_KeccakP1600_Permute_s_fu_245.KeccakRoundConstants_U", "Parent" : "248"},
	{"ID" : "251", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_1_fu_3205.grp_KeccakP1600_Permute_s_fu_245.stateAsWords_U", "Parent" : "248"},
	{"ID" : "252", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_1_fu_3205.grp_KeccakP1600_Permute_s_fu_245.grp_theta_fu_225", "Parent" : "248", "Child" : ["253", "254"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "253", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_1_fu_3205.grp_KeccakP1600_Permute_s_fu_245.grp_theta_fu_225.C_U", "Parent" : "252"},
	{"ID" : "254", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_1_fu_3205.grp_KeccakP1600_Permute_s_fu_245.grp_theta_fu_225.D_U", "Parent" : "252"},
	{"ID" : "255", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_1_fu_3205.grp_KeccakP1600_Permute_s_fu_245.grp_chi_fu_230", "Parent" : "248", "Child" : ["256"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "256", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_1_fu_3205.grp_KeccakP1600_Permute_s_fu_245.grp_chi_fu_230.C_U", "Parent" : "255"},
	{"ID" : "257", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_1_fu_3205.grp_KeccakP1600_Permute_s_fu_245.grp_pi_fu_235", "Parent" : "248", "Child" : ["258", "259"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "258", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_1_fu_3205.grp_KeccakP1600_Permute_s_fu_245.grp_pi_fu_235.tempA_U", "Parent" : "257"},
	{"ID" : "259", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_1_fu_3205.grp_KeccakP1600_Permute_s_fu_245.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "257"},
	{"ID" : "260", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_5_fu_3220", "Parent" : "0", "Child" : ["261"],
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
					{"ID" : "261", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_243", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dataByteLen", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "261", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_243", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "261", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_243", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "261", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_5_fu_3220.grp_KeccakP1600_Permute_s_fu_243", "Parent" : "260", "Child" : ["262", "263", "264", "265", "268", "270"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "262", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_5_fu_3220.grp_KeccakP1600_Permute_s_fu_243.KeccakRhoOffsets_U", "Parent" : "261"},
	{"ID" : "263", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_5_fu_3220.grp_KeccakP1600_Permute_s_fu_243.KeccakRoundConstants_U", "Parent" : "261"},
	{"ID" : "264", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_5_fu_3220.grp_KeccakP1600_Permute_s_fu_243.stateAsWords_U", "Parent" : "261"},
	{"ID" : "265", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_5_fu_3220.grp_KeccakP1600_Permute_s_fu_243.grp_theta_fu_225", "Parent" : "261", "Child" : ["266", "267"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "266", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_5_fu_3220.grp_KeccakP1600_Permute_s_fu_243.grp_theta_fu_225.C_U", "Parent" : "265"},
	{"ID" : "267", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_5_fu_3220.grp_KeccakP1600_Permute_s_fu_243.grp_theta_fu_225.D_U", "Parent" : "265"},
	{"ID" : "268", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_5_fu_3220.grp_KeccakP1600_Permute_s_fu_243.grp_chi_fu_230", "Parent" : "261", "Child" : ["269"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "269", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_5_fu_3220.grp_KeccakP1600_Permute_s_fu_243.grp_chi_fu_230.C_U", "Parent" : "268"},
	{"ID" : "270", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_5_fu_3220.grp_KeccakP1600_Permute_s_fu_243.grp_pi_fu_235", "Parent" : "261", "Child" : ["271", "272"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "271", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_5_fu_3220.grp_KeccakP1600_Permute_s_fu_243.grp_pi_fu_235.tempA_U", "Parent" : "270"},
	{"ID" : "272", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_5_fu_3220.grp_KeccakP1600_Permute_s_fu_243.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "270"},
	{"ID" : "273", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_3235", "Parent" : "0", "Child" : ["274", "275"],
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
					{"ID" : "275", "SubInstance" : "grp_KeccakWidth1600_Spon_16_fu_188", "Port" : "instance_state"}]},
			{"Name" : "ctx_sponge_byteIOInd", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "275", "SubInstance" : "grp_KeccakWidth1600_Spon_16_fu_188", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "275", "SubInstance" : "grp_KeccakWidth1600_Spon_16_fu_188", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "274", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_3235.temp_U", "Parent" : "273"},
	{"ID" : "275", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_3235.grp_KeccakWidth1600_Spon_16_fu_188", "Parent" : "273", "Child" : ["276"],
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
					{"ID" : "276", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "276", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "276", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "276", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_3235.grp_KeccakWidth1600_Spon_16_fu_188.grp_KeccakP1600_Permute_s_fu_176", "Parent" : "275", "Child" : ["277", "278", "279", "280", "283", "285"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "277", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_3235.grp_KeccakWidth1600_Spon_16_fu_188.grp_KeccakP1600_Permute_s_fu_176.KeccakRhoOffsets_U", "Parent" : "276"},
	{"ID" : "278", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_3235.grp_KeccakWidth1600_Spon_16_fu_188.grp_KeccakP1600_Permute_s_fu_176.KeccakRoundConstants_U", "Parent" : "276"},
	{"ID" : "279", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_3235.grp_KeccakWidth1600_Spon_16_fu_188.grp_KeccakP1600_Permute_s_fu_176.stateAsWords_U", "Parent" : "276"},
	{"ID" : "280", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_3235.grp_KeccakWidth1600_Spon_16_fu_188.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225", "Parent" : "276", "Child" : ["281", "282"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "281", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_3235.grp_KeccakWidth1600_Spon_16_fu_188.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.C_U", "Parent" : "280"},
	{"ID" : "282", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_3235.grp_KeccakWidth1600_Spon_16_fu_188.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.D_U", "Parent" : "280"},
	{"ID" : "283", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_3235.grp_KeccakWidth1600_Spon_16_fu_188.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230", "Parent" : "276", "Child" : ["284"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "284", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_3235.grp_KeccakWidth1600_Spon_16_fu_188.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230.C_U", "Parent" : "283"},
	{"ID" : "285", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_3235.grp_KeccakWidth1600_Spon_16_fu_188.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235", "Parent" : "276", "Child" : ["286", "287"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "286", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_3235.grp_KeccakWidth1600_Spon_16_fu_188.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.tempA_U", "Parent" : "285"},
	{"ID" : "287", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashUpdate_2_fu_3235.grp_KeccakWidth1600_Spon_16_fu_188.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "285"},
	{"ID" : "288", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_fu_3252", "Parent" : "0", "Child" : ["289"],
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
					{"ID" : "289", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_275", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "289", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_275", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "289", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_275", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "289", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_fu_3252.grp_KeccakP1600_Permute_s_fu_275", "Parent" : "288", "Child" : ["290", "291", "292", "293", "296", "298"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "290", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_fu_3252.grp_KeccakP1600_Permute_s_fu_275.KeccakRhoOffsets_U", "Parent" : "289"},
	{"ID" : "291", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_fu_3252.grp_KeccakP1600_Permute_s_fu_275.KeccakRoundConstants_U", "Parent" : "289"},
	{"ID" : "292", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_fu_3252.grp_KeccakP1600_Permute_s_fu_275.stateAsWords_U", "Parent" : "289"},
	{"ID" : "293", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_fu_3252.grp_KeccakP1600_Permute_s_fu_275.grp_theta_fu_225", "Parent" : "289", "Child" : ["294", "295"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "294", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_fu_3252.grp_KeccakP1600_Permute_s_fu_275.grp_theta_fu_225.C_U", "Parent" : "293"},
	{"ID" : "295", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_fu_3252.grp_KeccakP1600_Permute_s_fu_275.grp_theta_fu_225.D_U", "Parent" : "293"},
	{"ID" : "296", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_fu_3252.grp_KeccakP1600_Permute_s_fu_275.grp_chi_fu_230", "Parent" : "289", "Child" : ["297"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "297", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_fu_3252.grp_KeccakP1600_Permute_s_fu_275.grp_chi_fu_230.C_U", "Parent" : "296"},
	{"ID" : "298", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_fu_3252.grp_KeccakP1600_Permute_s_fu_275.grp_pi_fu_235", "Parent" : "289", "Child" : ["299", "300"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "299", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_fu_3252.grp_KeccakP1600_Permute_s_fu_275.grp_pi_fu_235.tempA_U", "Parent" : "298"},
	{"ID" : "300", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_fu_3252.grp_KeccakP1600_Permute_s_fu_275.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "298"},
	{"ID" : "301", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_3270", "Parent" : "0", "Child" : ["302", "314"],
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
					{"ID" : "302", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_194", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "302", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_194", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "302", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_194", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "302", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_3270.grp_KeccakP1600_Permute_s_fu_194", "Parent" : "301", "Child" : ["303", "304", "305", "306", "309", "311"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "303", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_3270.grp_KeccakP1600_Permute_s_fu_194.KeccakRhoOffsets_U", "Parent" : "302"},
	{"ID" : "304", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_3270.grp_KeccakP1600_Permute_s_fu_194.KeccakRoundConstants_U", "Parent" : "302"},
	{"ID" : "305", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_3270.grp_KeccakP1600_Permute_s_fu_194.stateAsWords_U", "Parent" : "302"},
	{"ID" : "306", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_3270.grp_KeccakP1600_Permute_s_fu_194.grp_theta_fu_225", "Parent" : "302", "Child" : ["307", "308"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "307", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_3270.grp_KeccakP1600_Permute_s_fu_194.grp_theta_fu_225.C_U", "Parent" : "306"},
	{"ID" : "308", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_3270.grp_KeccakP1600_Permute_s_fu_194.grp_theta_fu_225.D_U", "Parent" : "306"},
	{"ID" : "309", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_3270.grp_KeccakP1600_Permute_s_fu_194.grp_chi_fu_230", "Parent" : "302", "Child" : ["310"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "310", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_3270.grp_KeccakP1600_Permute_s_fu_194.grp_chi_fu_230.C_U", "Parent" : "309"},
	{"ID" : "311", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_3270.grp_KeccakP1600_Permute_s_fu_194.grp_pi_fu_235", "Parent" : "302", "Child" : ["312", "313"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "312", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_3270.grp_KeccakP1600_Permute_s_fu_194.grp_pi_fu_235.tempA_U", "Parent" : "311"},
	{"ID" : "313", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_3270.grp_KeccakP1600_Permute_s_fu_194.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "311"},
	{"ID" : "314", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_10_fu_3270.crypto_sign_am_adncg_U149", "Parent" : "301"},
	{"ID" : "315", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_14_fu_3287", "Parent" : "0", "Child" : ["316"],
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
					{"ID" : "316", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "316", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "316", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "316", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_14_fu_3287.grp_KeccakP1600_Permute_s_fu_204", "Parent" : "315", "Child" : ["317", "318", "319", "320", "323", "325"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "317", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_14_fu_3287.grp_KeccakP1600_Permute_s_fu_204.KeccakRhoOffsets_U", "Parent" : "316"},
	{"ID" : "318", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_14_fu_3287.grp_KeccakP1600_Permute_s_fu_204.KeccakRoundConstants_U", "Parent" : "316"},
	{"ID" : "319", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_14_fu_3287.grp_KeccakP1600_Permute_s_fu_204.stateAsWords_U", "Parent" : "316"},
	{"ID" : "320", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_14_fu_3287.grp_KeccakP1600_Permute_s_fu_204.grp_theta_fu_225", "Parent" : "316", "Child" : ["321", "322"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "321", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_14_fu_3287.grp_KeccakP1600_Permute_s_fu_204.grp_theta_fu_225.C_U", "Parent" : "320"},
	{"ID" : "322", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_14_fu_3287.grp_KeccakP1600_Permute_s_fu_204.grp_theta_fu_225.D_U", "Parent" : "320"},
	{"ID" : "323", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_14_fu_3287.grp_KeccakP1600_Permute_s_fu_204.grp_chi_fu_230", "Parent" : "316", "Child" : ["324"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "324", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_14_fu_3287.grp_KeccakP1600_Permute_s_fu_204.grp_chi_fu_230.C_U", "Parent" : "323"},
	{"ID" : "325", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_14_fu_3287.grp_KeccakP1600_Permute_s_fu_204.grp_pi_fu_235", "Parent" : "316", "Child" : ["326", "327"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "326", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_14_fu_3287.grp_KeccakP1600_Permute_s_fu_204.grp_pi_fu_235.tempA_U", "Parent" : "325"},
	{"ID" : "327", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_14_fu_3287.grp_KeccakP1600_Permute_s_fu_204.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "325"},
	{"ID" : "328", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_7_fu_3304", "Parent" : "0", "Child" : ["329"],
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
					{"ID" : "329", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "329", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "329", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_204", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "329", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_7_fu_3304.grp_KeccakP1600_Permute_s_fu_204", "Parent" : "328", "Child" : ["330", "331", "332", "333", "336", "338"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "330", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_7_fu_3304.grp_KeccakP1600_Permute_s_fu_204.KeccakRhoOffsets_U", "Parent" : "329"},
	{"ID" : "331", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_7_fu_3304.grp_KeccakP1600_Permute_s_fu_204.KeccakRoundConstants_U", "Parent" : "329"},
	{"ID" : "332", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_7_fu_3304.grp_KeccakP1600_Permute_s_fu_204.stateAsWords_U", "Parent" : "329"},
	{"ID" : "333", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_7_fu_3304.grp_KeccakP1600_Permute_s_fu_204.grp_theta_fu_225", "Parent" : "329", "Child" : ["334", "335"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "334", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_7_fu_3304.grp_KeccakP1600_Permute_s_fu_204.grp_theta_fu_225.C_U", "Parent" : "333"},
	{"ID" : "335", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_7_fu_3304.grp_KeccakP1600_Permute_s_fu_204.grp_theta_fu_225.D_U", "Parent" : "333"},
	{"ID" : "336", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_7_fu_3304.grp_KeccakP1600_Permute_s_fu_204.grp_chi_fu_230", "Parent" : "329", "Child" : ["337"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "337", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_7_fu_3304.grp_KeccakP1600_Permute_s_fu_204.grp_chi_fu_230.C_U", "Parent" : "336"},
	{"ID" : "338", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_7_fu_3304.grp_KeccakP1600_Permute_s_fu_204.grp_pi_fu_235", "Parent" : "329", "Child" : ["339", "340"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "339", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_7_fu_3304.grp_KeccakP1600_Permute_s_fu_204.grp_pi_fu_235.tempA_U", "Parent" : "338"},
	{"ID" : "340", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_7_fu_3304.grp_KeccakP1600_Permute_s_fu_204.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "338"},
	{"ID" : "341", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_3321", "Parent" : "0", "Child" : ["342"],
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
					{"ID" : "342", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_178", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "342", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_178", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "342", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_178", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "342", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_3321.grp_KeccakP1600_Permute_s_fu_178", "Parent" : "341", "Child" : ["343", "344", "345", "346", "349", "351"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "343", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_3321.grp_KeccakP1600_Permute_s_fu_178.KeccakRhoOffsets_U", "Parent" : "342"},
	{"ID" : "344", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_3321.grp_KeccakP1600_Permute_s_fu_178.KeccakRoundConstants_U", "Parent" : "342"},
	{"ID" : "345", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_3321.grp_KeccakP1600_Permute_s_fu_178.stateAsWords_U", "Parent" : "342"},
	{"ID" : "346", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_3321.grp_KeccakP1600_Permute_s_fu_178.grp_theta_fu_225", "Parent" : "342", "Child" : ["347", "348"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "347", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_3321.grp_KeccakP1600_Permute_s_fu_178.grp_theta_fu_225.C_U", "Parent" : "346"},
	{"ID" : "348", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_3321.grp_KeccakP1600_Permute_s_fu_178.grp_theta_fu_225.D_U", "Parent" : "346"},
	{"ID" : "349", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_3321.grp_KeccakP1600_Permute_s_fu_178.grp_chi_fu_230", "Parent" : "342", "Child" : ["350"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "350", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_3321.grp_KeccakP1600_Permute_s_fu_178.grp_chi_fu_230.C_U", "Parent" : "349"},
	{"ID" : "351", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_3321.grp_KeccakP1600_Permute_s_fu_178.grp_pi_fu_235", "Parent" : "342", "Child" : ["352", "353"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "352", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_3321.grp_KeccakP1600_Permute_s_fu_178.grp_pi_fu_235.tempA_U", "Parent" : "351"},
	{"ID" : "353", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_6_fu_3321.grp_KeccakP1600_Permute_s_fu_178.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "351"},
	{"ID" : "354", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_3332", "Parent" : "0", "Child" : ["355"],
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
					{"ID" : "355", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "355", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "355", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "355", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_3332.grp_KeccakP1600_Permute_s_fu_176", "Parent" : "354", "Child" : ["356", "357", "358", "359", "362", "364"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "356", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_3332.grp_KeccakP1600_Permute_s_fu_176.KeccakRhoOffsets_U", "Parent" : "355"},
	{"ID" : "357", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_3332.grp_KeccakP1600_Permute_s_fu_176.KeccakRoundConstants_U", "Parent" : "355"},
	{"ID" : "358", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_3332.grp_KeccakP1600_Permute_s_fu_176.stateAsWords_U", "Parent" : "355"},
	{"ID" : "359", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_3332.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225", "Parent" : "355", "Child" : ["360", "361"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "360", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_3332.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.C_U", "Parent" : "359"},
	{"ID" : "361", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_3332.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.D_U", "Parent" : "359"},
	{"ID" : "362", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_3332.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230", "Parent" : "355", "Child" : ["363"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "363", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_3332.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230.C_U", "Parent" : "362"},
	{"ID" : "364", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_3332.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235", "Parent" : "355", "Child" : ["365", "366"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "365", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_3332.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.tempA_U", "Parent" : "364"},
	{"ID" : "366", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_13_fu_3332.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "364"},
	{"ID" : "367", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_8_fu_3343", "Parent" : "0", "Child" : ["368"],
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
					{"ID" : "368", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "368", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "368", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_176", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "368", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_8_fu_3343.grp_KeccakP1600_Permute_s_fu_176", "Parent" : "367", "Child" : ["369", "370", "371", "372", "375", "377"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "369", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_8_fu_3343.grp_KeccakP1600_Permute_s_fu_176.KeccakRhoOffsets_U", "Parent" : "368"},
	{"ID" : "370", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_8_fu_3343.grp_KeccakP1600_Permute_s_fu_176.KeccakRoundConstants_U", "Parent" : "368"},
	{"ID" : "371", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_8_fu_3343.grp_KeccakP1600_Permute_s_fu_176.stateAsWords_U", "Parent" : "368"},
	{"ID" : "372", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_8_fu_3343.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225", "Parent" : "368", "Child" : ["373", "374"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "373", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_8_fu_3343.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.C_U", "Parent" : "372"},
	{"ID" : "374", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_8_fu_3343.grp_KeccakP1600_Permute_s_fu_176.grp_theta_fu_225.D_U", "Parent" : "372"},
	{"ID" : "375", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_8_fu_3343.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230", "Parent" : "368", "Child" : ["376"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "376", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_8_fu_3343.grp_KeccakP1600_Permute_s_fu_176.grp_chi_fu_230.C_U", "Parent" : "375"},
	{"ID" : "377", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_8_fu_3343.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235", "Parent" : "368", "Child" : ["378", "379"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "378", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_8_fu_3343.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.tempA_U", "Parent" : "377"},
	{"ID" : "379", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_8_fu_3343.grp_KeccakP1600_Permute_s_fu_176.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "377"},
	{"ID" : "380", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_9_fu_3355", "Parent" : "0", "Child" : ["381"],
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
					{"ID" : "381", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_173", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "381", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_173", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "381", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_173", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "381", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_9_fu_3355.grp_KeccakP1600_Permute_s_fu_173", "Parent" : "380", "Child" : ["382", "383", "384", "385", "388", "390"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "382", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_9_fu_3355.grp_KeccakP1600_Permute_s_fu_173.KeccakRhoOffsets_U", "Parent" : "381"},
	{"ID" : "383", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_9_fu_3355.grp_KeccakP1600_Permute_s_fu_173.KeccakRoundConstants_U", "Parent" : "381"},
	{"ID" : "384", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_9_fu_3355.grp_KeccakP1600_Permute_s_fu_173.stateAsWords_U", "Parent" : "381"},
	{"ID" : "385", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_9_fu_3355.grp_KeccakP1600_Permute_s_fu_173.grp_theta_fu_225", "Parent" : "381", "Child" : ["386", "387"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "386", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_9_fu_3355.grp_KeccakP1600_Permute_s_fu_173.grp_theta_fu_225.C_U", "Parent" : "385"},
	{"ID" : "387", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_9_fu_3355.grp_KeccakP1600_Permute_s_fu_173.grp_theta_fu_225.D_U", "Parent" : "385"},
	{"ID" : "388", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_9_fu_3355.grp_KeccakP1600_Permute_s_fu_173.grp_chi_fu_230", "Parent" : "381", "Child" : ["389"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "389", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_9_fu_3355.grp_KeccakP1600_Permute_s_fu_173.grp_chi_fu_230.C_U", "Parent" : "388"},
	{"ID" : "390", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_9_fu_3355.grp_KeccakP1600_Permute_s_fu_173.grp_pi_fu_235", "Parent" : "381", "Child" : ["391", "392"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "391", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_9_fu_3355.grp_KeccakP1600_Permute_s_fu_173.grp_pi_fu_235.tempA_U", "Parent" : "390"},
	{"ID" : "392", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_KeccakWidth1600_Spon_9_fu_3355.grp_KeccakP1600_Permute_s_fu_173.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "390"},
	{"ID" : "393", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_3371", "Parent" : "0", "Child" : ["394"],
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
					{"ID" : "394", "SubInstance" : "grp_KeccakWidth1600_Spon_11_fu_74", "Port" : "instance_state"}]},
			{"Name" : "hashPrefix", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "394", "SubInstance" : "grp_KeccakWidth1600_Spon_11_fu_74", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "394", "SubInstance" : "grp_KeccakWidth1600_Spon_11_fu_74", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "394", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_3371.grp_KeccakWidth1600_Spon_11_fu_74", "Parent" : "393", "Child" : ["395"],
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
					{"ID" : "395", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "state"}]},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "395", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "395", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "395", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_3371.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54", "Parent" : "394", "Child" : ["396", "397", "398", "399", "402", "404"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "396", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_3371.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.KeccakRhoOffsets_U", "Parent" : "395"},
	{"ID" : "397", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_3371.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.KeccakRoundConstants_U", "Parent" : "395"},
	{"ID" : "398", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_3371.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.stateAsWords_U", "Parent" : "395"},
	{"ID" : "399", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_3371.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225", "Parent" : "395", "Child" : ["400", "401"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "400", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_3371.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.C_U", "Parent" : "399"},
	{"ID" : "401", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_3371.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.D_U", "Parent" : "399"},
	{"ID" : "402", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_3371.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230", "Parent" : "395", "Child" : ["403"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "403", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_3371.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230.C_U", "Parent" : "402"},
	{"ID" : "404", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_3371.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235", "Parent" : "395", "Child" : ["405", "406"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "405", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_3371.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.tempA_U", "Parent" : "404"},
	{"ID" : "406", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_HashInit_fu_3371.grp_KeccakWidth1600_Spon_11_fu_74.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "404"},
	{"ID" : "407", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_3385", "Parent" : "0", "Child" : ["408"],
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
					{"ID" : "408", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "state"}]},
			{"Name" : "ctx_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "408", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "408", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "408", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_3385.grp_KeccakP1600_Permute_s_fu_54", "Parent" : "407", "Child" : ["409", "410", "411", "412", "415", "417"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "409", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_3385.grp_KeccakP1600_Permute_s_fu_54.KeccakRhoOffsets_U", "Parent" : "408"},
	{"ID" : "410", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_3385.grp_KeccakP1600_Permute_s_fu_54.KeccakRoundConstants_U", "Parent" : "408"},
	{"ID" : "411", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_3385.grp_KeccakP1600_Permute_s_fu_54.stateAsWords_U", "Parent" : "408"},
	{"ID" : "412", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_3385.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225", "Parent" : "408", "Child" : ["413", "414"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "413", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_3385.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.C_U", "Parent" : "412"},
	{"ID" : "414", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_3385.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_225.D_U", "Parent" : "412"},
	{"ID" : "415", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_3385.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230", "Parent" : "408", "Child" : ["416"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "416", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_3385.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_230.C_U", "Parent" : "415"},
	{"ID" : "417", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_3385.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235", "Parent" : "408", "Child" : ["418", "419"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "418", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_3385.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.tempA_U", "Parent" : "417"},
	{"ID" : "419", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_HashFinal_fu_3385.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_235.crypto_sign_urem_bkb_U4", "Parent" : "417"},
	{"ID" : "420", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_prove_26_fu_3395", "Parent" : "0", "Child" : ["421"],
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
	{"ID" : "421", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_prove_26_fu_3395.crypto_sign_am_adpcA_U172", "Parent" : "420"}]}


set ArgLastReadFirstWriteLatency {
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
		commitments_hashes {Type I LastRead 6 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	privateKey { ap_memory {  { privateKey_address0 mem_address 1 3 }  { privateKey_ce0 mem_ce 1 1 }  { privateKey_q0 mem_dout 0 32 } } }
	pubKey { ap_memory {  { pubKey_address0 mem_address 1 3 }  { pubKey_ce0 mem_ce 1 1 }  { pubKey_q0 mem_dout 0 32 } } }
	plaintext { ap_memory {  { plaintext_address0 mem_address 1 3 }  { plaintext_ce0 mem_ce 1 1 }  { plaintext_q0 mem_dout 0 32 } } }
	message { ap_memory {  { message_address0 mem_address 1 12 }  { message_ce0 mem_ce 1 1 }  { message_q0 mem_dout 0 8 } } }
	messageByteLength { ap_none {  { messageByteLength in_data 0 64 } } }
	sig_0_proofs_seed1 { ap_memory {  { sig_0_proofs_seed1_address0 mem_address 1 14 }  { sig_0_proofs_seed1_ce0 mem_ce 1 1 }  { sig_0_proofs_seed1_we0 mem_we 1 1 }  { sig_0_proofs_seed1_d0 mem_din 1 8 } } }
	sig_0_proofs_seed2 { ap_memory {  { sig_0_proofs_seed2_address0 mem_address 1 14 }  { sig_0_proofs_seed2_ce0 mem_ce 1 1 }  { sig_0_proofs_seed2_we0 mem_we 1 1 }  { sig_0_proofs_seed2_d0 mem_din 1 8 } } }
	sig_0_proofs_inputS { ap_memory {  { sig_0_proofs_inputS_address0 mem_address 1 12 }  { sig_0_proofs_inputS_ce0 mem_ce 1 1 }  { sig_0_proofs_inputS_we0 mem_we 1 1 }  { sig_0_proofs_inputS_d0 mem_din 1 32 } } }
	sig_0_proofs_commun { ap_memory {  { sig_0_proofs_commun_address0 mem_address 1 16 }  { sig_0_proofs_commun_ce0 mem_ce 1 1 }  { sig_0_proofs_commun_we0 mem_we 1 1 }  { sig_0_proofs_commun_d0 mem_din 1 8 } } }
	sig_0_proofs_view3C { ap_memory {  { sig_0_proofs_view3C_address0 mem_address 1 15 }  { sig_0_proofs_view3C_ce0 mem_ce 1 1 }  { sig_0_proofs_view3C_we0 mem_we 1 1 }  { sig_0_proofs_view3C_d0 mem_din 1 8 } } }
	sig_0_challengeBits { ap_memory {  { sig_0_challengeBits_address0 mem_address 1 7 }  { sig_0_challengeBits_ce0 mem_ce 1 1 }  { sig_0_challengeBits_we0 mem_we 1 1 }  { sig_0_challengeBits_d0 mem_din 1 8 }  { sig_0_challengeBits_q0 mem_dout 0 8 } } }
	sig_0_salt { ap_memory {  { sig_0_salt_address0 mem_address 1 5 }  { sig_0_salt_ce0 mem_ce 1 1 }  { sig_0_salt_we0 mem_we 1 1 }  { sig_0_salt_d0 mem_din 1 8 }  { sig_0_salt_q0 mem_dout 0 8 } } }
	viewOutputs { ap_memory {  { viewOutputs_address0 mem_address 1 16 }  { viewOutputs_ce0 mem_ce 1 1 }  { viewOutputs_we0 mem_we 1 1 }  { viewOutputs_d0 mem_din 1 32 }  { viewOutputs_q0 mem_dout 0 32 }  { viewOutputs_address1 mem_address 1 16 }  { viewOutputs_ce1 mem_ce 1 1 }  { viewOutputs_q1 mem_dout 0 32 } } }
}
