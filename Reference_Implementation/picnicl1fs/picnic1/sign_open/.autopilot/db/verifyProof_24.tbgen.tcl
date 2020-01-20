set moduleName verifyProof_24
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
set C_modelName {verifyProof_24}
set C_modelType { void 0 }
set C_modelArgList {
	{ proof_0_seed1 int 8 regular {array 3504 { 1 3 } 1 1 }  }
	{ proof_seed1_offset1 int 8 regular  }
	{ proof_0_seed2 int 8 regular {array 3504 { 1 3 } 1 1 }  }
	{ proof_0_inputShare int 32 regular {array 876 { 1 3 } 1 1 }  }
	{ proof_0_communicatedBits int 8 regular {array 16425 { 1 3 } 1 1 }  }
	{ view1_inputShare int 32 regular {array 876 { 2 3 } 1 1 }  }
	{ view1_communicatedBits int 8 regular {array 16425 { 2 3 } 1 1 }  }
	{ view1_outputShare int 32 regular {array 876 { 0 3 } 0 1 }  }
	{ view2_inputShare int 32 regular {array 876 { 2 3 } 1 1 }  }
	{ view2_communicatedBits int 8 regular {array 16425 { 2 3 } 1 1 }  }
	{ view2_outputShare int 32 regular {array 876 { 0 3 } 0 1 }  }
	{ challenge int 2 regular  }
	{ salt_0 int 8 regular {array 32 { 1 3 } 1 1 }  }
	{ roundNumber int 8 regular  }
	{ tmp int 8 regular {array 96 { 2 3 } 1 1 }  }
	{ plaintext int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ tape_0_tape int 8 regular {array 498 { 2 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "proof_0_seed1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "proof_seed1_offset1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "proof_0_seed2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "proof_0_inputShare", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "proof_0_communicatedBits", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "view1_inputShare", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "view1_communicatedBits", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "view1_outputShare", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "view2_inputShare", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "view2_communicatedBits", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "view2_outputShare", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "challenge", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "salt_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "roundNumber", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "tmp", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "plaintext", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tape_0_tape", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 68
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ proof_0_seed1_address0 sc_out sc_lv 12 signal 0 } 
	{ proof_0_seed1_ce0 sc_out sc_logic 1 signal 0 } 
	{ proof_0_seed1_q0 sc_in sc_lv 8 signal 0 } 
	{ proof_seed1_offset1 sc_in sc_lv 8 signal 1 } 
	{ proof_0_seed2_address0 sc_out sc_lv 12 signal 2 } 
	{ proof_0_seed2_ce0 sc_out sc_logic 1 signal 2 } 
	{ proof_0_seed2_q0 sc_in sc_lv 8 signal 2 } 
	{ proof_0_inputShare_address0 sc_out sc_lv 10 signal 3 } 
	{ proof_0_inputShare_ce0 sc_out sc_logic 1 signal 3 } 
	{ proof_0_inputShare_q0 sc_in sc_lv 32 signal 3 } 
	{ proof_0_communicatedBits_address0 sc_out sc_lv 15 signal 4 } 
	{ proof_0_communicatedBits_ce0 sc_out sc_logic 1 signal 4 } 
	{ proof_0_communicatedBits_q0 sc_in sc_lv 8 signal 4 } 
	{ view1_inputShare_address0 sc_out sc_lv 10 signal 5 } 
	{ view1_inputShare_ce0 sc_out sc_logic 1 signal 5 } 
	{ view1_inputShare_we0 sc_out sc_logic 1 signal 5 } 
	{ view1_inputShare_d0 sc_out sc_lv 32 signal 5 } 
	{ view1_inputShare_q0 sc_in sc_lv 32 signal 5 } 
	{ view1_communicatedBits_address0 sc_out sc_lv 15 signal 6 } 
	{ view1_communicatedBits_ce0 sc_out sc_logic 1 signal 6 } 
	{ view1_communicatedBits_we0 sc_out sc_logic 1 signal 6 } 
	{ view1_communicatedBits_d0 sc_out sc_lv 8 signal 6 } 
	{ view1_communicatedBits_q0 sc_in sc_lv 8 signal 6 } 
	{ view1_outputShare_address0 sc_out sc_lv 10 signal 7 } 
	{ view1_outputShare_ce0 sc_out sc_logic 1 signal 7 } 
	{ view1_outputShare_we0 sc_out sc_logic 1 signal 7 } 
	{ view1_outputShare_d0 sc_out sc_lv 32 signal 7 } 
	{ view2_inputShare_address0 sc_out sc_lv 10 signal 8 } 
	{ view2_inputShare_ce0 sc_out sc_logic 1 signal 8 } 
	{ view2_inputShare_we0 sc_out sc_logic 1 signal 8 } 
	{ view2_inputShare_d0 sc_out sc_lv 32 signal 8 } 
	{ view2_inputShare_q0 sc_in sc_lv 32 signal 8 } 
	{ view2_communicatedBits_address0 sc_out sc_lv 15 signal 9 } 
	{ view2_communicatedBits_ce0 sc_out sc_logic 1 signal 9 } 
	{ view2_communicatedBits_we0 sc_out sc_logic 1 signal 9 } 
	{ view2_communicatedBits_d0 sc_out sc_lv 8 signal 9 } 
	{ view2_communicatedBits_q0 sc_in sc_lv 8 signal 9 } 
	{ view2_outputShare_address0 sc_out sc_lv 10 signal 10 } 
	{ view2_outputShare_ce0 sc_out sc_logic 1 signal 10 } 
	{ view2_outputShare_we0 sc_out sc_logic 1 signal 10 } 
	{ view2_outputShare_d0 sc_out sc_lv 32 signal 10 } 
	{ challenge sc_in sc_lv 2 signal 11 } 
	{ salt_0_address0 sc_out sc_lv 5 signal 12 } 
	{ salt_0_ce0 sc_out sc_logic 1 signal 12 } 
	{ salt_0_q0 sc_in sc_lv 8 signal 12 } 
	{ roundNumber sc_in sc_lv 8 signal 13 } 
	{ tmp_address0 sc_out sc_lv 7 signal 14 } 
	{ tmp_ce0 sc_out sc_logic 1 signal 14 } 
	{ tmp_we0 sc_out sc_logic 1 signal 14 } 
	{ tmp_d0 sc_out sc_lv 8 signal 14 } 
	{ tmp_q0 sc_in sc_lv 8 signal 14 } 
	{ plaintext_address0 sc_out sc_lv 3 signal 15 } 
	{ plaintext_ce0 sc_out sc_logic 1 signal 15 } 
	{ plaintext_q0 sc_in sc_lv 32 signal 15 } 
	{ tape_0_tape_address0 sc_out sc_lv 9 signal 16 } 
	{ tape_0_tape_ce0 sc_out sc_logic 1 signal 16 } 
	{ tape_0_tape_we0 sc_out sc_logic 1 signal 16 } 
	{ tape_0_tape_d0 sc_out sc_lv 8 signal 16 } 
	{ tape_0_tape_q0 sc_in sc_lv 8 signal 16 } 
	{ tape_0_tape_address1 sc_out sc_lv 9 signal 16 } 
	{ tape_0_tape_ce1 sc_out sc_logic 1 signal 16 } 
	{ tape_0_tape_q1 sc_in sc_lv 8 signal 16 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "proof_0_seed1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "proof_0_seed1", "role": "address0" }} , 
 	{ "name": "proof_0_seed1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "proof_0_seed1", "role": "ce0" }} , 
 	{ "name": "proof_0_seed1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "proof_0_seed1", "role": "q0" }} , 
 	{ "name": "proof_seed1_offset1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "proof_seed1_offset1", "role": "default" }} , 
 	{ "name": "proof_0_seed2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "proof_0_seed2", "role": "address0" }} , 
 	{ "name": "proof_0_seed2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "proof_0_seed2", "role": "ce0" }} , 
 	{ "name": "proof_0_seed2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "proof_0_seed2", "role": "q0" }} , 
 	{ "name": "proof_0_inputShare_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "proof_0_inputShare", "role": "address0" }} , 
 	{ "name": "proof_0_inputShare_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "proof_0_inputShare", "role": "ce0" }} , 
 	{ "name": "proof_0_inputShare_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "proof_0_inputShare", "role": "q0" }} , 
 	{ "name": "proof_0_communicatedBits_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "proof_0_communicatedBits", "role": "address0" }} , 
 	{ "name": "proof_0_communicatedBits_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "proof_0_communicatedBits", "role": "ce0" }} , 
 	{ "name": "proof_0_communicatedBits_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "proof_0_communicatedBits", "role": "q0" }} , 
 	{ "name": "view1_inputShare_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "view1_inputShare", "role": "address0" }} , 
 	{ "name": "view1_inputShare_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view1_inputShare", "role": "ce0" }} , 
 	{ "name": "view1_inputShare_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view1_inputShare", "role": "we0" }} , 
 	{ "name": "view1_inputShare_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "view1_inputShare", "role": "d0" }} , 
 	{ "name": "view1_inputShare_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "view1_inputShare", "role": "q0" }} , 
 	{ "name": "view1_communicatedBits_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "view1_communicatedBits", "role": "address0" }} , 
 	{ "name": "view1_communicatedBits_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view1_communicatedBits", "role": "ce0" }} , 
 	{ "name": "view1_communicatedBits_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view1_communicatedBits", "role": "we0" }} , 
 	{ "name": "view1_communicatedBits_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "view1_communicatedBits", "role": "d0" }} , 
 	{ "name": "view1_communicatedBits_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "view1_communicatedBits", "role": "q0" }} , 
 	{ "name": "view1_outputShare_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "view1_outputShare", "role": "address0" }} , 
 	{ "name": "view1_outputShare_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view1_outputShare", "role": "ce0" }} , 
 	{ "name": "view1_outputShare_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view1_outputShare", "role": "we0" }} , 
 	{ "name": "view1_outputShare_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "view1_outputShare", "role": "d0" }} , 
 	{ "name": "view2_inputShare_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "view2_inputShare", "role": "address0" }} , 
 	{ "name": "view2_inputShare_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view2_inputShare", "role": "ce0" }} , 
 	{ "name": "view2_inputShare_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view2_inputShare", "role": "we0" }} , 
 	{ "name": "view2_inputShare_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "view2_inputShare", "role": "d0" }} , 
 	{ "name": "view2_inputShare_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "view2_inputShare", "role": "q0" }} , 
 	{ "name": "view2_communicatedBits_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "view2_communicatedBits", "role": "address0" }} , 
 	{ "name": "view2_communicatedBits_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view2_communicatedBits", "role": "ce0" }} , 
 	{ "name": "view2_communicatedBits_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view2_communicatedBits", "role": "we0" }} , 
 	{ "name": "view2_communicatedBits_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "view2_communicatedBits", "role": "d0" }} , 
 	{ "name": "view2_communicatedBits_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "view2_communicatedBits", "role": "q0" }} , 
 	{ "name": "view2_outputShare_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "view2_outputShare", "role": "address0" }} , 
 	{ "name": "view2_outputShare_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view2_outputShare", "role": "ce0" }} , 
 	{ "name": "view2_outputShare_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view2_outputShare", "role": "we0" }} , 
 	{ "name": "view2_outputShare_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "view2_outputShare", "role": "d0" }} , 
 	{ "name": "challenge", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "challenge", "role": "default" }} , 
 	{ "name": "salt_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "salt_0", "role": "address0" }} , 
 	{ "name": "salt_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "salt_0", "role": "ce0" }} , 
 	{ "name": "salt_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "salt_0", "role": "q0" }} , 
 	{ "name": "roundNumber", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "roundNumber", "role": "default" }} , 
 	{ "name": "tmp_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "tmp", "role": "address0" }} , 
 	{ "name": "tmp_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp", "role": "ce0" }} , 
 	{ "name": "tmp_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp", "role": "we0" }} , 
 	{ "name": "tmp_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tmp", "role": "d0" }} , 
 	{ "name": "tmp_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tmp", "role": "q0" }} , 
 	{ "name": "plaintext_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "plaintext", "role": "address0" }} , 
 	{ "name": "plaintext_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "plaintext", "role": "ce0" }} , 
 	{ "name": "plaintext_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "plaintext", "role": "q0" }} , 
 	{ "name": "tape_0_tape_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "tape_0_tape", "role": "address0" }} , 
 	{ "name": "tape_0_tape_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tape_0_tape", "role": "ce0" }} , 
 	{ "name": "tape_0_tape_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tape_0_tape", "role": "we0" }} , 
 	{ "name": "tape_0_tape_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tape_0_tape", "role": "d0" }} , 
 	{ "name": "tape_0_tape_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tape_0_tape", "role": "q0" }} , 
 	{ "name": "tape_0_tape_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "tape_0_tape", "role": "address1" }} , 
 	{ "name": "tape_0_tape_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tape_0_tape", "role": "ce1" }} , 
 	{ "name": "tape_0_tape_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tape_0_tape", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "68", "134"],
		"CDFG" : "verifyProof_24",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_createRandomTape_18_fu_661"},
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_createRandomTape_18_fu_661"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_createRandomTape9_fu_681"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_createRandomTape9_fu_681"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_createRandomTape9_fu_681"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_createRandomTape9_fu_681"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_createRandomTape9_fu_681"},
			{"State" : "ap_ST_fsm_state35", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_701"}],
		"Port" : [
			{"Name" : "proof_0_seed1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "grp_createRandomTape9_fu_681", "Port" : "seed_0"},
					{"ID" : "2", "SubInstance" : "grp_createRandomTape_18_fu_661", "Port" : "seed_0"}]},
			{"Name" : "proof_seed1_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "proof_0_seed2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "grp_createRandomTape9_fu_681", "Port" : "seed_0"},
					{"ID" : "2", "SubInstance" : "grp_createRandomTape_18_fu_661", "Port" : "seed_0"}]},
			{"Name" : "proof_0_inputShare", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "proof_0_communicatedBits", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "view1_inputShare", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "134", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_701", "Port" : "view1_inputShare"}]},
			{"Name" : "view1_communicatedBits", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "134", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_701", "Port" : "view1_communicatedBi"}]},
			{"Name" : "view1_outputShare", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "134", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_701", "Port" : "view1_outputShare"}]},
			{"Name" : "view2_inputShare", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "134", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_701", "Port" : "view2_inputShare"}]},
			{"Name" : "view2_communicatedBits", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "134", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_701", "Port" : "view2_communicatedBi"}]},
			{"Name" : "view2_outputShare", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "134", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_701", "Port" : "view2_outputShare"}]},
			{"Name" : "challenge", "Type" : "None", "Direction" : "I"},
			{"Name" : "salt_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "grp_createRandomTape9_fu_681", "Port" : "salt_0"},
					{"ID" : "2", "SubInstance" : "grp_createRandomTape_18_fu_661", "Port" : "salt_0"}]},
			{"Name" : "roundNumber", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "grp_createRandomTape9_fu_681", "Port" : "tape"}]},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "134", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_701", "Port" : "plaintext"}]},
			{"Name" : "tape_0_tape", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "134", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_701", "Port" : "tapes_0_tape"},
					{"ID" : "2", "SubInstance" : "grp_createRandomTape_18_fu_661", "Port" : "tape_0"}]},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "grp_createRandomTape9_fu_681", "Port" : "KeccakRhoOffsets"},
					{"ID" : "2", "SubInstance" : "grp_createRandomTape_18_fu_661", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "grp_createRandomTape9_fu_681", "Port" : "KeccakRoundConstants"},
					{"ID" : "2", "SubInstance" : "grp_createRandomTape_18_fu_661", "Port" : "KeccakRoundConstants"}]},
			{"Name" : "temp_matrix", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "134", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_701", "Port" : "temp_matrix"}]},
			{"Name" : "temp_matrix2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "134", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_701", "Port" : "temp_matrix2"}]},
			{"Name" : "temp_matrix3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "134", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_701", "Port" : "temp_matrix3"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661", "Parent" : "0", "Child" : ["3", "4", "17", "30", "43", "56"],
		"CDFG" : "createRandomTape_18",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_3_fu_462"},
			{"State" : "ap_ST_fsm_state46", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_3_fu_462"},
			{"State" : "ap_ST_fsm_state38", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdateIntLE_fu_479"},
			{"State" : "ap_ST_fsm_state40", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdateIntLE_fu_479"},
			{"State" : "ap_ST_fsm_state42", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdateIntLE_fu_479"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_492"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_492"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_505"},
			{"State" : "ap_ST_fsm_state44", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_505"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_515"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_515"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_515"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_515"},
			{"State" : "ap_ST_fsm_state32", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_515"},
			{"State" : "ap_ST_fsm_state36", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_515"}],
		"Port" : [
			{"Name" : "seed_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "seed_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "salt_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "roundNumber", "Type" : "None", "Direction" : "I"},
			{"Name" : "tape_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_Keccak_HashSqueeze_3_fu_462", "Port" : "data_0"}]},
			{"Name" : "tape_offset3", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_HashFinal_fu_505", "Port" : "KeccakRhoOffsets"},
					{"ID" : "17", "SubInstance" : "grp_HashUpdateIntLE_fu_479", "Port" : "KeccakRhoOffsets"},
					{"ID" : "30", "SubInstance" : "grp_HashInit_fu_492", "Port" : "KeccakRhoOffsets"},
					{"ID" : "56", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_515", "Port" : "KeccakRhoOffsets"},
					{"ID" : "4", "SubInstance" : "grp_Keccak_HashSqueeze_3_fu_462", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_HashFinal_fu_505", "Port" : "KeccakRoundConstants"},
					{"ID" : "17", "SubInstance" : "grp_HashUpdateIntLE_fu_479", "Port" : "KeccakRoundConstants"},
					{"ID" : "30", "SubInstance" : "grp_HashInit_fu_492", "Port" : "KeccakRoundConstants"},
					{"ID" : "56", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_515", "Port" : "KeccakRoundConstants"},
					{"ID" : "4", "SubInstance" : "grp_Keccak_HashSqueeze_3_fu_462", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.ctx_sponge_state_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_Keccak_HashSqueeze_3_fu_462", "Parent" : "2", "Child" : ["5"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_252"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_252"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_252"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_252", "Port" : "state"}]},
			{"Name" : "instance_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "databitlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_252", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_252", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_Keccak_HashSqueeze_3_fu_462.grp_KeccakP1600_Permute_s_fu_252", "Parent" : "4", "Child" : ["6", "7", "8", "9", "12", "15"],
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
	{"ID" : "6", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_Keccak_HashSqueeze_3_fu_462.grp_KeccakP1600_Permute_s_fu_252.KeccakRhoOffsets_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_Keccak_HashSqueeze_3_fu_462.grp_KeccakP1600_Permute_s_fu_252.KeccakRoundConstants_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_Keccak_HashSqueeze_3_fu_462.grp_KeccakP1600_Permute_s_fu_252.stateAsWords_U", "Parent" : "5"},
	{"ID" : "9", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_Keccak_HashSqueeze_3_fu_462.grp_KeccakP1600_Permute_s_fu_252.grp_pi_fu_225", "Parent" : "5", "Child" : ["10", "11"],
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
	{"ID" : "10", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_Keccak_HashSqueeze_3_fu_462.grp_KeccakP1600_Permute_s_fu_252.grp_pi_fu_225.tempA_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_Keccak_HashSqueeze_3_fu_462.grp_KeccakP1600_Permute_s_fu_252.grp_pi_fu_225.crypto_sign_open_bkb_U16", "Parent" : "9"},
	{"ID" : "12", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_Keccak_HashSqueeze_3_fu_462.grp_KeccakP1600_Permute_s_fu_252.grp_theta_fu_230", "Parent" : "5", "Child" : ["13", "14"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "13", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_Keccak_HashSqueeze_3_fu_462.grp_KeccakP1600_Permute_s_fu_252.grp_theta_fu_230.C_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_Keccak_HashSqueeze_3_fu_462.grp_KeccakP1600_Permute_s_fu_252.grp_theta_fu_230.D_U", "Parent" : "12"},
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_Keccak_HashSqueeze_3_fu_462.grp_KeccakP1600_Permute_s_fu_252.grp_chi_fu_235", "Parent" : "5", "Child" : ["16"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "16", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_Keccak_HashSqueeze_3_fu_462.grp_KeccakP1600_Permute_s_fu_252.grp_chi_fu_235.C_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_HashUpdateIntLE_fu_479", "Parent" : "2", "Child" : ["18"],
		"CDFG" : "HashUpdateIntLE",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
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
			{"Name" : "ctx_sponge_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_163", "Port" : "state"}]},
			{"Name" : "ctx_sponge_byteIOInd", "Type" : "None", "Direction" : "I"},
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_163", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_163", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_HashUpdateIntLE_fu_479.grp_KeccakP1600_Permute_s_fu_163", "Parent" : "17", "Child" : ["19", "20", "21", "22", "25", "28"],
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
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_HashUpdateIntLE_fu_479.grp_KeccakP1600_Permute_s_fu_163.KeccakRhoOffsets_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_HashUpdateIntLE_fu_479.grp_KeccakP1600_Permute_s_fu_163.KeccakRoundConstants_U", "Parent" : "18"},
	{"ID" : "21", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_HashUpdateIntLE_fu_479.grp_KeccakP1600_Permute_s_fu_163.stateAsWords_U", "Parent" : "18"},
	{"ID" : "22", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_HashUpdateIntLE_fu_479.grp_KeccakP1600_Permute_s_fu_163.grp_pi_fu_225", "Parent" : "18", "Child" : ["23", "24"],
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
	{"ID" : "23", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_HashUpdateIntLE_fu_479.grp_KeccakP1600_Permute_s_fu_163.grp_pi_fu_225.tempA_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_HashUpdateIntLE_fu_479.grp_KeccakP1600_Permute_s_fu_163.grp_pi_fu_225.crypto_sign_open_bkb_U16", "Parent" : "22"},
	{"ID" : "25", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_HashUpdateIntLE_fu_479.grp_KeccakP1600_Permute_s_fu_163.grp_theta_fu_230", "Parent" : "18", "Child" : ["26", "27"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "26", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_HashUpdateIntLE_fu_479.grp_KeccakP1600_Permute_s_fu_163.grp_theta_fu_230.C_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_HashUpdateIntLE_fu_479.grp_KeccakP1600_Permute_s_fu_163.grp_theta_fu_230.D_U", "Parent" : "25"},
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_HashUpdateIntLE_fu_479.grp_KeccakP1600_Permute_s_fu_163.grp_chi_fu_235", "Parent" : "18", "Child" : ["29"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "29", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_HashUpdateIntLE_fu_479.grp_KeccakP1600_Permute_s_fu_163.grp_chi_fu_235.C_U", "Parent" : "28"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_HashInit_fu_492", "Parent" : "2", "Child" : ["31"],
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
					{"ID" : "31", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_116", "Port" : "state"}]},
			{"Name" : "hashPrefix", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_116", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_116", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_HashInit_fu_492.grp_KeccakP1600_Permute_s_fu_116", "Parent" : "30", "Child" : ["32", "33", "34", "35", "38", "41"],
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
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_HashInit_fu_492.grp_KeccakP1600_Permute_s_fu_116.KeccakRhoOffsets_U", "Parent" : "31"},
	{"ID" : "33", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_HashInit_fu_492.grp_KeccakP1600_Permute_s_fu_116.KeccakRoundConstants_U", "Parent" : "31"},
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_HashInit_fu_492.grp_KeccakP1600_Permute_s_fu_116.stateAsWords_U", "Parent" : "31"},
	{"ID" : "35", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_HashInit_fu_492.grp_KeccakP1600_Permute_s_fu_116.grp_pi_fu_225", "Parent" : "31", "Child" : ["36", "37"],
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
	{"ID" : "36", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_HashInit_fu_492.grp_KeccakP1600_Permute_s_fu_116.grp_pi_fu_225.tempA_U", "Parent" : "35"},
	{"ID" : "37", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_HashInit_fu_492.grp_KeccakP1600_Permute_s_fu_116.grp_pi_fu_225.crypto_sign_open_bkb_U16", "Parent" : "35"},
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_HashInit_fu_492.grp_KeccakP1600_Permute_s_fu_116.grp_theta_fu_230", "Parent" : "31", "Child" : ["39", "40"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "39", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_HashInit_fu_492.grp_KeccakP1600_Permute_s_fu_116.grp_theta_fu_230.C_U", "Parent" : "38"},
	{"ID" : "40", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_HashInit_fu_492.grp_KeccakP1600_Permute_s_fu_116.grp_theta_fu_230.D_U", "Parent" : "38"},
	{"ID" : "41", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_HashInit_fu_492.grp_KeccakP1600_Permute_s_fu_116.grp_chi_fu_235", "Parent" : "31", "Child" : ["42"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "42", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_HashInit_fu_492.grp_KeccakP1600_Permute_s_fu_116.grp_chi_fu_235.C_U", "Parent" : "41"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_HashFinal_fu_505", "Parent" : "2", "Child" : ["44"],
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
					{"ID" : "44", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "state"}]},
			{"Name" : "ctx_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_HashFinal_fu_505.grp_KeccakP1600_Permute_s_fu_54", "Parent" : "43", "Child" : ["45", "46", "47", "48", "51", "54"],
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
	{"ID" : "45", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_HashFinal_fu_505.grp_KeccakP1600_Permute_s_fu_54.KeccakRhoOffsets_U", "Parent" : "44"},
	{"ID" : "46", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_HashFinal_fu_505.grp_KeccakP1600_Permute_s_fu_54.KeccakRoundConstants_U", "Parent" : "44"},
	{"ID" : "47", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_HashFinal_fu_505.grp_KeccakP1600_Permute_s_fu_54.stateAsWords_U", "Parent" : "44"},
	{"ID" : "48", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_HashFinal_fu_505.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_225", "Parent" : "44", "Child" : ["49", "50"],
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
	{"ID" : "49", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_HashFinal_fu_505.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_225.tempA_U", "Parent" : "48"},
	{"ID" : "50", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_HashFinal_fu_505.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_225.crypto_sign_open_bkb_U16", "Parent" : "48"},
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_HashFinal_fu_505.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_230", "Parent" : "44", "Child" : ["52", "53"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "52", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_HashFinal_fu_505.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_230.C_U", "Parent" : "51"},
	{"ID" : "53", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_HashFinal_fu_505.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_230.D_U", "Parent" : "51"},
	{"ID" : "54", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_HashFinal_fu_505.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_235", "Parent" : "44", "Child" : ["55"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "55", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_HashFinal_fu_505.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_235.C_U", "Parent" : "54"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_KeccakP1600_Permute_s_fu_515", "Parent" : "2", "Child" : ["57", "58", "59", "60", "63", "66"],
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
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_KeccakP1600_Permute_s_fu_515.KeccakRhoOffsets_U", "Parent" : "56"},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_KeccakP1600_Permute_s_fu_515.KeccakRoundConstants_U", "Parent" : "56"},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_KeccakP1600_Permute_s_fu_515.stateAsWords_U", "Parent" : "56"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_KeccakP1600_Permute_s_fu_515.grp_pi_fu_225", "Parent" : "56", "Child" : ["61", "62"],
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
	{"ID" : "61", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_KeccakP1600_Permute_s_fu_515.grp_pi_fu_225.tempA_U", "Parent" : "60"},
	{"ID" : "62", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_KeccakP1600_Permute_s_fu_515.grp_pi_fu_225.crypto_sign_open_bkb_U16", "Parent" : "60"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_KeccakP1600_Permute_s_fu_515.grp_theta_fu_230", "Parent" : "56", "Child" : ["64", "65"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "64", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_KeccakP1600_Permute_s_fu_515.grp_theta_fu_230.C_U", "Parent" : "63"},
	{"ID" : "65", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_KeccakP1600_Permute_s_fu_515.grp_theta_fu_230.D_U", "Parent" : "63"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_KeccakP1600_Permute_s_fu_515.grp_chi_fu_235", "Parent" : "56", "Child" : ["67"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "67", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_18_fu_661.grp_KeccakP1600_Permute_s_fu_515.grp_chi_fu_235.C_U", "Parent" : "66"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681", "Parent" : "0", "Child" : ["69", "70", "83", "96", "109", "122"],
		"CDFG" : "createRandomTape9",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_1_fu_456"},
			{"State" : "ap_ST_fsm_state46", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_1_fu_456"},
			{"State" : "ap_ST_fsm_state38", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdateIntLE_fu_472"},
			{"State" : "ap_ST_fsm_state40", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdateIntLE_fu_472"},
			{"State" : "ap_ST_fsm_state42", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdateIntLE_fu_472"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_484"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashInit_fu_484"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_497"},
			{"State" : "ap_ST_fsm_state44", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashFinal_fu_497"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_507"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_507"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_507"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_507"},
			{"State" : "ap_ST_fsm_state32", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_507"},
			{"State" : "ap_ST_fsm_state36", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_507"}],
		"Port" : [
			{"Name" : "seed_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "seed_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "salt_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "roundNumber", "Type" : "None", "Direction" : "I"},
			{"Name" : "playerNumber", "Type" : "None", "Direction" : "I"},
			{"Name" : "tape", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "grp_Keccak_HashSqueeze_1_fu_456", "Port" : "data"}]},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "grp_Keccak_HashSqueeze_1_fu_456", "Port" : "KeccakRhoOffsets"},
					{"ID" : "122", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_507", "Port" : "KeccakRhoOffsets"},
					{"ID" : "83", "SubInstance" : "grp_HashUpdateIntLE_fu_472", "Port" : "KeccakRhoOffsets"},
					{"ID" : "96", "SubInstance" : "grp_HashInit_fu_484", "Port" : "KeccakRhoOffsets"},
					{"ID" : "109", "SubInstance" : "grp_HashFinal_fu_497", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "grp_Keccak_HashSqueeze_1_fu_456", "Port" : "KeccakRoundConstants"},
					{"ID" : "122", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_507", "Port" : "KeccakRoundConstants"},
					{"ID" : "83", "SubInstance" : "grp_HashUpdateIntLE_fu_472", "Port" : "KeccakRoundConstants"},
					{"ID" : "96", "SubInstance" : "grp_HashInit_fu_484", "Port" : "KeccakRoundConstants"},
					{"ID" : "109", "SubInstance" : "grp_HashFinal_fu_497", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.ctx_sponge_state_U", "Parent" : "68"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_Keccak_HashSqueeze_1_fu_456", "Parent" : "68", "Child" : ["71"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_239"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_239"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_239"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "71", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_239", "Port" : "state"}]},
			{"Name" : "instance_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "databitlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "71", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_239", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "71", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_239", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_Keccak_HashSqueeze_1_fu_456.grp_KeccakP1600_Permute_s_fu_239", "Parent" : "70", "Child" : ["72", "73", "74", "75", "78", "81"],
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
	{"ID" : "72", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_Keccak_HashSqueeze_1_fu_456.grp_KeccakP1600_Permute_s_fu_239.KeccakRhoOffsets_U", "Parent" : "71"},
	{"ID" : "73", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_Keccak_HashSqueeze_1_fu_456.grp_KeccakP1600_Permute_s_fu_239.KeccakRoundConstants_U", "Parent" : "71"},
	{"ID" : "74", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_Keccak_HashSqueeze_1_fu_456.grp_KeccakP1600_Permute_s_fu_239.stateAsWords_U", "Parent" : "71"},
	{"ID" : "75", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_Keccak_HashSqueeze_1_fu_456.grp_KeccakP1600_Permute_s_fu_239.grp_pi_fu_225", "Parent" : "71", "Child" : ["76", "77"],
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
	{"ID" : "76", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_Keccak_HashSqueeze_1_fu_456.grp_KeccakP1600_Permute_s_fu_239.grp_pi_fu_225.tempA_U", "Parent" : "75"},
	{"ID" : "77", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_Keccak_HashSqueeze_1_fu_456.grp_KeccakP1600_Permute_s_fu_239.grp_pi_fu_225.crypto_sign_open_bkb_U16", "Parent" : "75"},
	{"ID" : "78", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_Keccak_HashSqueeze_1_fu_456.grp_KeccakP1600_Permute_s_fu_239.grp_theta_fu_230", "Parent" : "71", "Child" : ["79", "80"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "79", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_Keccak_HashSqueeze_1_fu_456.grp_KeccakP1600_Permute_s_fu_239.grp_theta_fu_230.C_U", "Parent" : "78"},
	{"ID" : "80", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_Keccak_HashSqueeze_1_fu_456.grp_KeccakP1600_Permute_s_fu_239.grp_theta_fu_230.D_U", "Parent" : "78"},
	{"ID" : "81", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_Keccak_HashSqueeze_1_fu_456.grp_KeccakP1600_Permute_s_fu_239.grp_chi_fu_235", "Parent" : "71", "Child" : ["82"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "82", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_Keccak_HashSqueeze_1_fu_456.grp_KeccakP1600_Permute_s_fu_239.grp_chi_fu_235.C_U", "Parent" : "81"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_HashUpdateIntLE_fu_472", "Parent" : "68", "Child" : ["84"],
		"CDFG" : "HashUpdateIntLE",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
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
			{"Name" : "ctx_sponge_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_163", "Port" : "state"}]},
			{"Name" : "ctx_sponge_byteIOInd", "Type" : "None", "Direction" : "I"},
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_163", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_163", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_HashUpdateIntLE_fu_472.grp_KeccakP1600_Permute_s_fu_163", "Parent" : "83", "Child" : ["85", "86", "87", "88", "91", "94"],
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
	{"ID" : "85", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_HashUpdateIntLE_fu_472.grp_KeccakP1600_Permute_s_fu_163.KeccakRhoOffsets_U", "Parent" : "84"},
	{"ID" : "86", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_HashUpdateIntLE_fu_472.grp_KeccakP1600_Permute_s_fu_163.KeccakRoundConstants_U", "Parent" : "84"},
	{"ID" : "87", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_HashUpdateIntLE_fu_472.grp_KeccakP1600_Permute_s_fu_163.stateAsWords_U", "Parent" : "84"},
	{"ID" : "88", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_HashUpdateIntLE_fu_472.grp_KeccakP1600_Permute_s_fu_163.grp_pi_fu_225", "Parent" : "84", "Child" : ["89", "90"],
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
	{"ID" : "89", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_HashUpdateIntLE_fu_472.grp_KeccakP1600_Permute_s_fu_163.grp_pi_fu_225.tempA_U", "Parent" : "88"},
	{"ID" : "90", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_HashUpdateIntLE_fu_472.grp_KeccakP1600_Permute_s_fu_163.grp_pi_fu_225.crypto_sign_open_bkb_U16", "Parent" : "88"},
	{"ID" : "91", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_HashUpdateIntLE_fu_472.grp_KeccakP1600_Permute_s_fu_163.grp_theta_fu_230", "Parent" : "84", "Child" : ["92", "93"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "92", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_HashUpdateIntLE_fu_472.grp_KeccakP1600_Permute_s_fu_163.grp_theta_fu_230.C_U", "Parent" : "91"},
	{"ID" : "93", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_HashUpdateIntLE_fu_472.grp_KeccakP1600_Permute_s_fu_163.grp_theta_fu_230.D_U", "Parent" : "91"},
	{"ID" : "94", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_HashUpdateIntLE_fu_472.grp_KeccakP1600_Permute_s_fu_163.grp_chi_fu_235", "Parent" : "84", "Child" : ["95"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "95", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_HashUpdateIntLE_fu_472.grp_KeccakP1600_Permute_s_fu_163.grp_chi_fu_235.C_U", "Parent" : "94"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_HashInit_fu_484", "Parent" : "68", "Child" : ["97"],
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
					{"ID" : "97", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_116", "Port" : "state"}]},
			{"Name" : "hashPrefix", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_116", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_116", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_HashInit_fu_484.grp_KeccakP1600_Permute_s_fu_116", "Parent" : "96", "Child" : ["98", "99", "100", "101", "104", "107"],
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
	{"ID" : "98", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_HashInit_fu_484.grp_KeccakP1600_Permute_s_fu_116.KeccakRhoOffsets_U", "Parent" : "97"},
	{"ID" : "99", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_HashInit_fu_484.grp_KeccakP1600_Permute_s_fu_116.KeccakRoundConstants_U", "Parent" : "97"},
	{"ID" : "100", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_HashInit_fu_484.grp_KeccakP1600_Permute_s_fu_116.stateAsWords_U", "Parent" : "97"},
	{"ID" : "101", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_HashInit_fu_484.grp_KeccakP1600_Permute_s_fu_116.grp_pi_fu_225", "Parent" : "97", "Child" : ["102", "103"],
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
	{"ID" : "102", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_HashInit_fu_484.grp_KeccakP1600_Permute_s_fu_116.grp_pi_fu_225.tempA_U", "Parent" : "101"},
	{"ID" : "103", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_HashInit_fu_484.grp_KeccakP1600_Permute_s_fu_116.grp_pi_fu_225.crypto_sign_open_bkb_U16", "Parent" : "101"},
	{"ID" : "104", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_HashInit_fu_484.grp_KeccakP1600_Permute_s_fu_116.grp_theta_fu_230", "Parent" : "97", "Child" : ["105", "106"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "105", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_HashInit_fu_484.grp_KeccakP1600_Permute_s_fu_116.grp_theta_fu_230.C_U", "Parent" : "104"},
	{"ID" : "106", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_HashInit_fu_484.grp_KeccakP1600_Permute_s_fu_116.grp_theta_fu_230.D_U", "Parent" : "104"},
	{"ID" : "107", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_HashInit_fu_484.grp_KeccakP1600_Permute_s_fu_116.grp_chi_fu_235", "Parent" : "97", "Child" : ["108"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "108", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_HashInit_fu_484.grp_KeccakP1600_Permute_s_fu_116.grp_chi_fu_235.C_U", "Parent" : "107"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_HashFinal_fu_497", "Parent" : "68", "Child" : ["110"],
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
					{"ID" : "110", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "state"}]},
			{"Name" : "ctx_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "110", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "110", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_54", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_HashFinal_fu_497.grp_KeccakP1600_Permute_s_fu_54", "Parent" : "109", "Child" : ["111", "112", "113", "114", "117", "120"],
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
	{"ID" : "111", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_HashFinal_fu_497.grp_KeccakP1600_Permute_s_fu_54.KeccakRhoOffsets_U", "Parent" : "110"},
	{"ID" : "112", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_HashFinal_fu_497.grp_KeccakP1600_Permute_s_fu_54.KeccakRoundConstants_U", "Parent" : "110"},
	{"ID" : "113", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_HashFinal_fu_497.grp_KeccakP1600_Permute_s_fu_54.stateAsWords_U", "Parent" : "110"},
	{"ID" : "114", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_HashFinal_fu_497.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_225", "Parent" : "110", "Child" : ["115", "116"],
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
	{"ID" : "115", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_HashFinal_fu_497.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_225.tempA_U", "Parent" : "114"},
	{"ID" : "116", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_HashFinal_fu_497.grp_KeccakP1600_Permute_s_fu_54.grp_pi_fu_225.crypto_sign_open_bkb_U16", "Parent" : "114"},
	{"ID" : "117", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_HashFinal_fu_497.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_230", "Parent" : "110", "Child" : ["118", "119"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "118", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_HashFinal_fu_497.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_230.C_U", "Parent" : "117"},
	{"ID" : "119", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_HashFinal_fu_497.grp_KeccakP1600_Permute_s_fu_54.grp_theta_fu_230.D_U", "Parent" : "117"},
	{"ID" : "120", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_HashFinal_fu_497.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_235", "Parent" : "110", "Child" : ["121"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "121", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_HashFinal_fu_497.grp_KeccakP1600_Permute_s_fu_54.grp_chi_fu_235.C_U", "Parent" : "120"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_KeccakP1600_Permute_s_fu_507", "Parent" : "68", "Child" : ["123", "124", "125", "126", "129", "132"],
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
	{"ID" : "123", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_KeccakP1600_Permute_s_fu_507.KeccakRhoOffsets_U", "Parent" : "122"},
	{"ID" : "124", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_KeccakP1600_Permute_s_fu_507.KeccakRoundConstants_U", "Parent" : "122"},
	{"ID" : "125", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_KeccakP1600_Permute_s_fu_507.stateAsWords_U", "Parent" : "122"},
	{"ID" : "126", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_KeccakP1600_Permute_s_fu_507.grp_pi_fu_225", "Parent" : "122", "Child" : ["127", "128"],
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
	{"ID" : "127", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_KeccakP1600_Permute_s_fu_507.grp_pi_fu_225.tempA_U", "Parent" : "126"},
	{"ID" : "128", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_KeccakP1600_Permute_s_fu_507.grp_pi_fu_225.crypto_sign_open_bkb_U16", "Parent" : "126"},
	{"ID" : "129", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_KeccakP1600_Permute_s_fu_507.grp_theta_fu_230", "Parent" : "122", "Child" : ["130", "131"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "130", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_KeccakP1600_Permute_s_fu_507.grp_theta_fu_230.C_U", "Parent" : "129"},
	{"ID" : "131", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_KeccakP1600_Permute_s_fu_507.grp_theta_fu_230.D_U", "Parent" : "129"},
	{"ID" : "132", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_KeccakP1600_Permute_s_fu_507.grp_chi_fu_235", "Parent" : "122", "Child" : ["133"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "133", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape9_fu_681.grp_KeccakP1600_Permute_s_fu_507.grp_chi_fu_235.C_U", "Parent" : "132"},
	{"ID" : "134", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_701", "Parent" : "0", "Child" : ["135", "136", "140", "144"],
		"CDFG" : "mpc_LowMC_verify_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "217450", "EstimateLatencyMax" : "217618",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_688"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_688"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_688"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_688"},
			{"State" : "ap_ST_fsm_state31", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_1_fu_705"},
			{"State" : "ap_ST_fsm_state33", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_1_fu_705"},
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mpc_AND_verify_2_fu_717"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mpc_AND_verify_2_fu_717"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mpc_AND_verify_2_fu_717"}],
		"Port" : [
			{"Name" : "view1_inputShare", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "grp_matrix_mul_fu_688", "Port" : "state"}]},
			{"Name" : "view1_inputShare_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "view1_communicatedBi", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_mpc_AND_verify_2_fu_717", "Port" : "view1_communicatedBi"}]},
			{"Name" : "view1_outputShare", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "view2_inputShare", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "grp_matrix_mul_fu_688", "Port" : "state"}]},
			{"Name" : "view2_communicatedBi", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_mpc_AND_verify_2_fu_717", "Port" : "view2_communicatedBi"}]},
			{"Name" : "view2_outputShare", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tapes_0_tape", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_mpc_AND_verify_2_fu_717", "Port" : "rand_0_tape"}]},
			{"Name" : "tmp", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "140", "SubInstance" : "grp_matrix_mul_1_fu_705", "Port" : "output_r"},
					{"ID" : "136", "SubInstance" : "grp_matrix_mul_fu_688", "Port" : "output_r"}]},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "challenge", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_matrix", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "grp_matrix_mul_fu_688", "Port" : "temp_matrix"}]},
			{"Name" : "temp_matrix2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "140", "SubInstance" : "grp_matrix_mul_1_fu_705", "Port" : "temp_matrix2"}]},
			{"Name" : "temp_matrix3", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_701.temp_matrix3_U", "Parent" : "134"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_701.grp_matrix_mul_fu_688", "Parent" : "134", "Child" : ["137", "138", "139"],
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
			{"Name" : "matrix_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_matrix", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "137", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_701.grp_matrix_mul_fu_688.temp_matrix_U", "Parent" : "136"},
	{"ID" : "138", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_701.grp_matrix_mul_fu_688.prod_U", "Parent" : "136"},
	{"ID" : "139", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_701.grp_matrix_mul_fu_688.temp_U", "Parent" : "136"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_701.grp_matrix_mul_1_fu_705", "Parent" : "134", "Child" : ["141", "142", "143"],
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
	{"ID" : "141", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_701.grp_matrix_mul_1_fu_705.temp_matrix2_U", "Parent" : "140"},
	{"ID" : "142", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_701.grp_matrix_mul_1_fu_705.prod_U", "Parent" : "140"},
	{"ID" : "143", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_701.grp_matrix_mul_1_fu_705.temp_U", "Parent" : "140"},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_701.grp_mpc_AND_verify_2_fu_717", "Parent" : "134", "Child" : ["145", "146"],
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
	{"ID" : "145", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_701.grp_mpc_AND_verify_2_fu_717.crypto_sign_open_ibs_U64", "Parent" : "144"},
	{"ID" : "146", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_701.grp_mpc_AND_verify_2_fu_717.crypto_sign_open_ibs_U65", "Parent" : "144"}]}


set ArgLastReadFirstWriteLatency {
	verifyProof_24 {
		proof_0_seed1 {Type I LastRead 5 FirstWrite -1}
		proof_seed1_offset1 {Type I LastRead 0 FirstWrite -1}
		proof_0_seed2 {Type I LastRead 5 FirstWrite -1}
		proof_0_inputShare {Type I LastRead 7 FirstWrite -1}
		proof_0_communicatedBits {Type I LastRead 2 FirstWrite -1}
		view1_inputShare {Type IO LastRead 5 FirstWrite -1}
		view1_communicatedBits {Type IO LastRead 1 FirstWrite 2}
		view1_outputShare {Type O LastRead -1 FirstWrite 10}
		view2_inputShare {Type IO LastRead 8 FirstWrite -1}
		view2_communicatedBits {Type IO LastRead 1 FirstWrite -1}
		view2_outputShare {Type O LastRead -1 FirstWrite 11}
		challenge {Type I LastRead 0 FirstWrite -1}
		salt_0 {Type I LastRead 12 FirstWrite -1}
		roundNumber {Type I LastRead 0 FirstWrite -1}
		tmp {Type IO LastRead 12 FirstWrite 10}
		plaintext {Type I LastRead 4 FirstWrite -1}
		tape_0_tape {Type IO LastRead 11 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}
		temp_matrix {Type I LastRead -1 FirstWrite -1}
		temp_matrix2 {Type I LastRead -1 FirstWrite -1}
		temp_matrix3 {Type I LastRead -1 FirstWrite -1}}
	createRandomTape_18 {
		seed_0 {Type I LastRead 5 FirstWrite -1}
		seed_offset1 {Type I LastRead 1 FirstWrite -1}
		salt_0 {Type I LastRead 12 FirstWrite -1}
		roundNumber {Type I LastRead 1 FirstWrite -1}
		tape_0 {Type IO LastRead 11 FirstWrite 10}
		tape_offset3 {Type I LastRead 1 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	Keccak_HashSqueeze_3 {
		instance_sponge_stat {Type IO LastRead 10 FirstWrite 1}
		instance_sponge_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque {Type I LastRead 0 FirstWrite -1}
		data_0 {Type O LastRead -1 FirstWrite 10}
		data_offset1 {Type I LastRead 0 FirstWrite -1}
		databitlen {Type I LastRead 0 FirstWrite -1}
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
	HashUpdateIntLE {
		ctx_sponge_state {Type IO LastRead 3 FirstWrite 3}
		ctx_sponge_byteIOInd {Type I LastRead 0 FirstWrite -1}
		x {Type I LastRead 0 FirstWrite -1}
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
		A {Type IO LastRead 4 FirstWrite 4}}
	createRandomTape9 {
		seed_0 {Type I LastRead 5 FirstWrite -1}
		seed_offset1 {Type I LastRead 1 FirstWrite -1}
		salt_0 {Type I LastRead 12 FirstWrite -1}
		roundNumber {Type I LastRead 1 FirstWrite -1}
		playerNumber {Type I LastRead 1 FirstWrite -1}
		tape {Type IO LastRead 11 FirstWrite 10}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	Keccak_HashSqueeze_1 {
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
	pi {
		A {Type IO LastRead 2 FirstWrite 15}}
	theta {
		A {Type IO LastRead 5 FirstWrite 6}}
	chi {
		A {Type IO LastRead 4 FirstWrite 4}}
	HashUpdateIntLE {
		ctx_sponge_state {Type IO LastRead 3 FirstWrite 3}
		ctx_sponge_byteIOInd {Type I LastRead 0 FirstWrite -1}
		x {Type I LastRead 0 FirstWrite -1}
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
		A {Type IO LastRead 4 FirstWrite 4}}
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
		view2_communicatedBits_offset {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	proof_0_seed1 { ap_memory {  { proof_0_seed1_address0 mem_address 1 12 }  { proof_0_seed1_ce0 mem_ce 1 1 }  { proof_0_seed1_q0 mem_dout 0 8 } } }
	proof_seed1_offset1 { ap_none {  { proof_seed1_offset1 in_data 0 8 } } }
	proof_0_seed2 { ap_memory {  { proof_0_seed2_address0 mem_address 1 12 }  { proof_0_seed2_ce0 mem_ce 1 1 }  { proof_0_seed2_q0 mem_dout 0 8 } } }
	proof_0_inputShare { ap_memory {  { proof_0_inputShare_address0 mem_address 1 10 }  { proof_0_inputShare_ce0 mem_ce 1 1 }  { proof_0_inputShare_q0 mem_dout 0 32 } } }
	proof_0_communicatedBits { ap_memory {  { proof_0_communicatedBits_address0 mem_address 1 15 }  { proof_0_communicatedBits_ce0 mem_ce 1 1 }  { proof_0_communicatedBits_q0 mem_dout 0 8 } } }
	view1_inputShare { ap_memory {  { view1_inputShare_address0 mem_address 1 10 }  { view1_inputShare_ce0 mem_ce 1 1 }  { view1_inputShare_we0 mem_we 1 1 }  { view1_inputShare_d0 mem_din 1 32 }  { view1_inputShare_q0 mem_dout 0 32 } } }
	view1_communicatedBits { ap_memory {  { view1_communicatedBits_address0 mem_address 1 15 }  { view1_communicatedBits_ce0 mem_ce 1 1 }  { view1_communicatedBits_we0 mem_we 1 1 }  { view1_communicatedBits_d0 mem_din 1 8 }  { view1_communicatedBits_q0 mem_dout 0 8 } } }
	view1_outputShare { ap_memory {  { view1_outputShare_address0 mem_address 1 10 }  { view1_outputShare_ce0 mem_ce 1 1 }  { view1_outputShare_we0 mem_we 1 1 }  { view1_outputShare_d0 mem_din 1 32 } } }
	view2_inputShare { ap_memory {  { view2_inputShare_address0 mem_address 1 10 }  { view2_inputShare_ce0 mem_ce 1 1 }  { view2_inputShare_we0 mem_we 1 1 }  { view2_inputShare_d0 mem_din 1 32 }  { view2_inputShare_q0 mem_dout 0 32 } } }
	view2_communicatedBits { ap_memory {  { view2_communicatedBits_address0 mem_address 1 15 }  { view2_communicatedBits_ce0 mem_ce 1 1 }  { view2_communicatedBits_we0 mem_we 1 1 }  { view2_communicatedBits_d0 mem_din 1 8 }  { view2_communicatedBits_q0 mem_dout 0 8 } } }
	view2_outputShare { ap_memory {  { view2_outputShare_address0 mem_address 1 10 }  { view2_outputShare_ce0 mem_ce 1 1 }  { view2_outputShare_we0 mem_we 1 1 }  { view2_outputShare_d0 mem_din 1 32 } } }
	challenge { ap_none {  { challenge in_data 0 2 } } }
	salt_0 { ap_memory {  { salt_0_address0 mem_address 1 5 }  { salt_0_ce0 mem_ce 1 1 }  { salt_0_q0 mem_dout 0 8 } } }
	roundNumber { ap_none {  { roundNumber in_data 0 8 } } }
	tmp { ap_memory {  { tmp_address0 mem_address 1 7 }  { tmp_ce0 mem_ce 1 1 }  { tmp_we0 mem_we 1 1 }  { tmp_d0 mem_din 1 8 }  { tmp_q0 mem_dout 0 8 } } }
	plaintext { ap_memory {  { plaintext_address0 mem_address 1 3 }  { plaintext_ce0 mem_ce 1 1 }  { plaintext_q0 mem_dout 0 32 } } }
	tape_0_tape { ap_memory {  { tape_0_tape_address0 mem_address 1 9 }  { tape_0_tape_ce0 mem_ce 1 1 }  { tape_0_tape_we0 mem_we 1 1 }  { tape_0_tape_d0 mem_din 1 8 }  { tape_0_tape_q0 mem_dout 0 8 }  { tape_0_tape_address1 mem_address 1 9 }  { tape_0_tape_ce1 mem_ce 1 1 }  { tape_0_tape_q1 mem_dout 0 8 } } }
}
set moduleName verifyProof_24
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
set C_modelName {verifyProof_24}
set C_modelType { void 0 }
set C_modelArgList {
	{ proof_0_seed1 int 8 regular {array 3504 { 1 3 } 1 1 }  }
	{ proof_seed1_offset1 int 8 regular  }
	{ proof_0_seed2 int 8 regular {array 3504 { 1 3 } 1 1 }  }
	{ proof_0_inputShare int 32 regular {array 876 { 1 3 } 1 1 }  }
	{ proof_0_communicatedBits int 8 regular {array 16425 { 1 3 } 1 1 }  }
	{ view1_inputShare int 32 regular {array 876 { 2 3 } 1 1 }  }
	{ view1_communicatedBits int 8 regular {array 16425 { 2 3 } 1 1 }  }
	{ view1_outputShare int 32 regular {array 876 { 0 3 } 0 1 }  }
	{ view2_inputShare int 32 regular {array 876 { 2 3 } 1 1 }  }
	{ view2_communicatedBits int 8 regular {array 16425 { 2 3 } 1 1 }  }
	{ view2_outputShare int 32 regular {array 876 { 0 3 } 0 1 }  }
	{ challenge int 2 regular  }
	{ salt_0 int 8 regular {array 32 { 1 3 } 1 1 }  }
	{ roundNumber int 8 regular  }
	{ tmp int 8 regular {array 96 { 2 3 } 1 1 }  }
	{ plaintext int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ tape_0_tape int 8 regular {array 498 { 2 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "proof_0_seed1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "proof_seed1_offset1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "proof_0_seed2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "proof_0_inputShare", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "proof_0_communicatedBits", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "view1_inputShare", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "view1_communicatedBits", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "view1_outputShare", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "view2_inputShare", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "view2_communicatedBits", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "view2_outputShare", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "challenge", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "salt_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "roundNumber", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "tmp", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "plaintext", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tape_0_tape", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 68
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ proof_0_seed1_address0 sc_out sc_lv 12 signal 0 } 
	{ proof_0_seed1_ce0 sc_out sc_logic 1 signal 0 } 
	{ proof_0_seed1_q0 sc_in sc_lv 8 signal 0 } 
	{ proof_seed1_offset1 sc_in sc_lv 8 signal 1 } 
	{ proof_0_seed2_address0 sc_out sc_lv 12 signal 2 } 
	{ proof_0_seed2_ce0 sc_out sc_logic 1 signal 2 } 
	{ proof_0_seed2_q0 sc_in sc_lv 8 signal 2 } 
	{ proof_0_inputShare_address0 sc_out sc_lv 10 signal 3 } 
	{ proof_0_inputShare_ce0 sc_out sc_logic 1 signal 3 } 
	{ proof_0_inputShare_q0 sc_in sc_lv 32 signal 3 } 
	{ proof_0_communicatedBits_address0 sc_out sc_lv 15 signal 4 } 
	{ proof_0_communicatedBits_ce0 sc_out sc_logic 1 signal 4 } 
	{ proof_0_communicatedBits_q0 sc_in sc_lv 8 signal 4 } 
	{ view1_inputShare_address0 sc_out sc_lv 10 signal 5 } 
	{ view1_inputShare_ce0 sc_out sc_logic 1 signal 5 } 
	{ view1_inputShare_we0 sc_out sc_logic 1 signal 5 } 
	{ view1_inputShare_d0 sc_out sc_lv 32 signal 5 } 
	{ view1_inputShare_q0 sc_in sc_lv 32 signal 5 } 
	{ view1_communicatedBits_address0 sc_out sc_lv 15 signal 6 } 
	{ view1_communicatedBits_ce0 sc_out sc_logic 1 signal 6 } 
	{ view1_communicatedBits_we0 sc_out sc_logic 1 signal 6 } 
	{ view1_communicatedBits_d0 sc_out sc_lv 8 signal 6 } 
	{ view1_communicatedBits_q0 sc_in sc_lv 8 signal 6 } 
	{ view1_outputShare_address0 sc_out sc_lv 10 signal 7 } 
	{ view1_outputShare_ce0 sc_out sc_logic 1 signal 7 } 
	{ view1_outputShare_we0 sc_out sc_logic 1 signal 7 } 
	{ view1_outputShare_d0 sc_out sc_lv 32 signal 7 } 
	{ view2_inputShare_address0 sc_out sc_lv 10 signal 8 } 
	{ view2_inputShare_ce0 sc_out sc_logic 1 signal 8 } 
	{ view2_inputShare_we0 sc_out sc_logic 1 signal 8 } 
	{ view2_inputShare_d0 sc_out sc_lv 32 signal 8 } 
	{ view2_inputShare_q0 sc_in sc_lv 32 signal 8 } 
	{ view2_communicatedBits_address0 sc_out sc_lv 15 signal 9 } 
	{ view2_communicatedBits_ce0 sc_out sc_logic 1 signal 9 } 
	{ view2_communicatedBits_we0 sc_out sc_logic 1 signal 9 } 
	{ view2_communicatedBits_d0 sc_out sc_lv 8 signal 9 } 
	{ view2_communicatedBits_q0 sc_in sc_lv 8 signal 9 } 
	{ view2_outputShare_address0 sc_out sc_lv 10 signal 10 } 
	{ view2_outputShare_ce0 sc_out sc_logic 1 signal 10 } 
	{ view2_outputShare_we0 sc_out sc_logic 1 signal 10 } 
	{ view2_outputShare_d0 sc_out sc_lv 32 signal 10 } 
	{ challenge sc_in sc_lv 2 signal 11 } 
	{ salt_0_address0 sc_out sc_lv 5 signal 12 } 
	{ salt_0_ce0 sc_out sc_logic 1 signal 12 } 
	{ salt_0_q0 sc_in sc_lv 8 signal 12 } 
	{ roundNumber sc_in sc_lv 8 signal 13 } 
	{ tmp_address0 sc_out sc_lv 7 signal 14 } 
	{ tmp_ce0 sc_out sc_logic 1 signal 14 } 
	{ tmp_we0 sc_out sc_logic 1 signal 14 } 
	{ tmp_d0 sc_out sc_lv 8 signal 14 } 
	{ tmp_q0 sc_in sc_lv 8 signal 14 } 
	{ plaintext_address0 sc_out sc_lv 3 signal 15 } 
	{ plaintext_ce0 sc_out sc_logic 1 signal 15 } 
	{ plaintext_q0 sc_in sc_lv 32 signal 15 } 
	{ tape_0_tape_address0 sc_out sc_lv 9 signal 16 } 
	{ tape_0_tape_ce0 sc_out sc_logic 1 signal 16 } 
	{ tape_0_tape_we0 sc_out sc_logic 1 signal 16 } 
	{ tape_0_tape_d0 sc_out sc_lv 8 signal 16 } 
	{ tape_0_tape_q0 sc_in sc_lv 8 signal 16 } 
	{ tape_0_tape_address1 sc_out sc_lv 9 signal 16 } 
	{ tape_0_tape_ce1 sc_out sc_logic 1 signal 16 } 
	{ tape_0_tape_q1 sc_in sc_lv 8 signal 16 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "proof_0_seed1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "proof_0_seed1", "role": "address0" }} , 
 	{ "name": "proof_0_seed1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "proof_0_seed1", "role": "ce0" }} , 
 	{ "name": "proof_0_seed1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "proof_0_seed1", "role": "q0" }} , 
 	{ "name": "proof_seed1_offset1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "proof_seed1_offset1", "role": "default" }} , 
 	{ "name": "proof_0_seed2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "proof_0_seed2", "role": "address0" }} , 
 	{ "name": "proof_0_seed2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "proof_0_seed2", "role": "ce0" }} , 
 	{ "name": "proof_0_seed2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "proof_0_seed2", "role": "q0" }} , 
 	{ "name": "proof_0_inputShare_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "proof_0_inputShare", "role": "address0" }} , 
 	{ "name": "proof_0_inputShare_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "proof_0_inputShare", "role": "ce0" }} , 
 	{ "name": "proof_0_inputShare_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "proof_0_inputShare", "role": "q0" }} , 
 	{ "name": "proof_0_communicatedBits_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "proof_0_communicatedBits", "role": "address0" }} , 
 	{ "name": "proof_0_communicatedBits_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "proof_0_communicatedBits", "role": "ce0" }} , 
 	{ "name": "proof_0_communicatedBits_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "proof_0_communicatedBits", "role": "q0" }} , 
 	{ "name": "view1_inputShare_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "view1_inputShare", "role": "address0" }} , 
 	{ "name": "view1_inputShare_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view1_inputShare", "role": "ce0" }} , 
 	{ "name": "view1_inputShare_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view1_inputShare", "role": "we0" }} , 
 	{ "name": "view1_inputShare_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "view1_inputShare", "role": "d0" }} , 
 	{ "name": "view1_inputShare_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "view1_inputShare", "role": "q0" }} , 
 	{ "name": "view1_communicatedBits_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "view1_communicatedBits", "role": "address0" }} , 
 	{ "name": "view1_communicatedBits_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view1_communicatedBits", "role": "ce0" }} , 
 	{ "name": "view1_communicatedBits_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view1_communicatedBits", "role": "we0" }} , 
 	{ "name": "view1_communicatedBits_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "view1_communicatedBits", "role": "d0" }} , 
 	{ "name": "view1_communicatedBits_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "view1_communicatedBits", "role": "q0" }} , 
 	{ "name": "view1_outputShare_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "view1_outputShare", "role": "address0" }} , 
 	{ "name": "view1_outputShare_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view1_outputShare", "role": "ce0" }} , 
 	{ "name": "view1_outputShare_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view1_outputShare", "role": "we0" }} , 
 	{ "name": "view1_outputShare_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "view1_outputShare", "role": "d0" }} , 
 	{ "name": "view2_inputShare_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "view2_inputShare", "role": "address0" }} , 
 	{ "name": "view2_inputShare_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view2_inputShare", "role": "ce0" }} , 
 	{ "name": "view2_inputShare_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view2_inputShare", "role": "we0" }} , 
 	{ "name": "view2_inputShare_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "view2_inputShare", "role": "d0" }} , 
 	{ "name": "view2_inputShare_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "view2_inputShare", "role": "q0" }} , 
 	{ "name": "view2_communicatedBits_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "view2_communicatedBits", "role": "address0" }} , 
 	{ "name": "view2_communicatedBits_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view2_communicatedBits", "role": "ce0" }} , 
 	{ "name": "view2_communicatedBits_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view2_communicatedBits", "role": "we0" }} , 
 	{ "name": "view2_communicatedBits_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "view2_communicatedBits", "role": "d0" }} , 
 	{ "name": "view2_communicatedBits_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "view2_communicatedBits", "role": "q0" }} , 
 	{ "name": "view2_outputShare_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "view2_outputShare", "role": "address0" }} , 
 	{ "name": "view2_outputShare_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view2_outputShare", "role": "ce0" }} , 
 	{ "name": "view2_outputShare_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view2_outputShare", "role": "we0" }} , 
 	{ "name": "view2_outputShare_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "view2_outputShare", "role": "d0" }} , 
 	{ "name": "challenge", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "challenge", "role": "default" }} , 
 	{ "name": "salt_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "salt_0", "role": "address0" }} , 
 	{ "name": "salt_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "salt_0", "role": "ce0" }} , 
 	{ "name": "salt_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "salt_0", "role": "q0" }} , 
 	{ "name": "roundNumber", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "roundNumber", "role": "default" }} , 
 	{ "name": "tmp_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "tmp", "role": "address0" }} , 
 	{ "name": "tmp_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp", "role": "ce0" }} , 
 	{ "name": "tmp_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp", "role": "we0" }} , 
 	{ "name": "tmp_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tmp", "role": "d0" }} , 
 	{ "name": "tmp_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tmp", "role": "q0" }} , 
 	{ "name": "plaintext_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "plaintext", "role": "address0" }} , 
 	{ "name": "plaintext_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "plaintext", "role": "ce0" }} , 
 	{ "name": "plaintext_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "plaintext", "role": "q0" }} , 
 	{ "name": "tape_0_tape_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "tape_0_tape", "role": "address0" }} , 
 	{ "name": "tape_0_tape_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tape_0_tape", "role": "ce0" }} , 
 	{ "name": "tape_0_tape_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tape_0_tape", "role": "we0" }} , 
 	{ "name": "tape_0_tape_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tape_0_tape", "role": "d0" }} , 
 	{ "name": "tape_0_tape_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tape_0_tape", "role": "q0" }} , 
 	{ "name": "tape_0_tape_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "tape_0_tape", "role": "address1" }} , 
 	{ "name": "tape_0_tape_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tape_0_tape", "role": "ce1" }} , 
 	{ "name": "tape_0_tape_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tape_0_tape", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "98", "111", "124", "137", "150", "163", "176", "189", "202"],
		"CDFG" : "verifyProof_24",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state37", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_createRandomTape13_fu_697"},
			{"State" : "ap_ST_fsm_state37", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_createRandomTape13_fu_697"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_createRandomTape13_fu_697"},
			{"State" : "ap_ST_fsm_state32", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_createRandomTape13_fu_697"},
			{"State" : "ap_ST_fsm_state72", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_createRandomTape13_fu_697"},
			{"State" : "ap_ST_fsm_state80", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_717"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_2_fu_746"},
			{"State" : "ap_ST_fsm_state29", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_2_fu_746"},
			{"State" : "ap_ST_fsm_state50", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_2_fu_746"},
			{"State" : "ap_ST_fsm_state66", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_2_fu_746"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate14_fu_767"},
			{"State" : "ap_ST_fsm_state46", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate14_fu_767"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_7_fu_783"},
			{"State" : "ap_ST_fsm_state54", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_7_fu_783"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_800"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_800"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_800"},
			{"State" : "ap_ST_fsm_state58", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_800"},
			{"State" : "ap_ST_fsm_state60", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_800"},
			{"State" : "ap_ST_fsm_state62", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_800"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_6_fu_815"},
			{"State" : "ap_ST_fsm_state56", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_6_fu_815"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_829"},
			{"State" : "ap_ST_fsm_state44", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_829"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashFinal_fu_843"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashFinal_fu_843"},
			{"State" : "ap_ST_fsm_state48", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashFinal_fu_843"},
			{"State" : "ap_ST_fsm_state64", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashFinal_fu_843"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashInitializ_fu_858"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashInitializ_fu_858"},
			{"State" : "ap_ST_fsm_state42", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashInitializ_fu_858"},
			{"State" : "ap_ST_fsm_state52", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashInitializ_fu_858"}],
		"Port" : [
			{"Name" : "proof_0_seed1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_createRandomTape13_fu_697", "Port" : "seed_0"},
					{"ID" : "124", "SubInstance" : "grp_Keccak_HashUpdate14_fu_767", "Port" : "data_0"}]},
			{"Name" : "proof_seed1_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "proof_0_seed2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_createRandomTape13_fu_697", "Port" : "seed_0"},
					{"ID" : "124", "SubInstance" : "grp_Keccak_HashUpdate14_fu_767", "Port" : "data_0"}]},
			{"Name" : "proof_0_inputShare", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "proof_0_communicatedBits", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "view1_inputShare", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_717", "Port" : "view1_inputShare"}]},
			{"Name" : "view1_communicatedBits", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_717", "Port" : "view1_communicatedBi"}]},
			{"Name" : "view1_outputShare", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_717", "Port" : "view1_outputShare"}]},
			{"Name" : "view2_inputShare", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_717", "Port" : "view2_inputShare"}]},
			{"Name" : "view2_communicatedBits", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_717", "Port" : "view2_communicatedBi"}]},
			{"Name" : "view2_outputShare", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_717", "Port" : "view2_outputShare"}]},
			{"Name" : "challenge", "Type" : "None", "Direction" : "I"},
			{"Name" : "salt_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_createRandomTape13_fu_697", "Port" : "salt_0"},
					{"ID" : "163", "SubInstance" : "grp_Keccak_HashUpdate_6_fu_815", "Port" : "data_0"}]},
			{"Name" : "roundNumber", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_createRandomTape13_fu_697", "Port" : "tape"}]},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_717", "Port" : "plaintext"}]},
			{"Name" : "tape_0_tape", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_717", "Port" : "tapes_0_tape"},
					{"ID" : "111", "SubInstance" : "grp_Keccak_HashSqueeze_2_fu_746", "Port" : "data_0"},
					{"ID" : "137", "SubInstance" : "grp_Keccak_HashUpdate_7_fu_783", "Port" : "data_0"}]},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_createRandomTape13_fu_697", "Port" : "KeccakRhoOffsets"},
					{"ID" : "163", "SubInstance" : "grp_Keccak_HashUpdate_6_fu_815", "Port" : "KeccakRhoOffsets"},
					{"ID" : "150", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_800", "Port" : "KeccakRhoOffsets"},
					{"ID" : "189", "SubInstance" : "grp_Keccak_HashFinal_fu_843", "Port" : "KeccakRhoOffsets"},
					{"ID" : "124", "SubInstance" : "grp_Keccak_HashUpdate14_fu_767", "Port" : "KeccakRhoOffsets"},
					{"ID" : "176", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_829", "Port" : "KeccakRhoOffsets"},
					{"ID" : "111", "SubInstance" : "grp_Keccak_HashSqueeze_2_fu_746", "Port" : "KeccakRhoOffsets"},
					{"ID" : "137", "SubInstance" : "grp_Keccak_HashUpdate_7_fu_783", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_createRandomTape13_fu_697", "Port" : "KeccakRoundConstants"},
					{"ID" : "163", "SubInstance" : "grp_Keccak_HashUpdate_6_fu_815", "Port" : "KeccakRoundConstants"},
					{"ID" : "150", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_800", "Port" : "KeccakRoundConstants"},
					{"ID" : "189", "SubInstance" : "grp_Keccak_HashFinal_fu_843", "Port" : "KeccakRoundConstants"},
					{"ID" : "124", "SubInstance" : "grp_Keccak_HashUpdate14_fu_767", "Port" : "KeccakRoundConstants"},
					{"ID" : "176", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_829", "Port" : "KeccakRoundConstants"},
					{"ID" : "111", "SubInstance" : "grp_Keccak_HashSqueeze_2_fu_746", "Port" : "KeccakRoundConstants"},
					{"ID" : "137", "SubInstance" : "grp_Keccak_HashUpdate_7_fu_783", "Port" : "KeccakRoundConstants"}]},
			{"Name" : "temp_matrix", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_717", "Port" : "temp_matrix"}]},
			{"Name" : "temp_matrix2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_717", "Port" : "temp_matrix2"}]},
			{"Name" : "temp_matrix3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_717", "Port" : "temp_matrix3"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctx_sponge_state_1_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctx_sponge_state_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697", "Parent" : "0", "Child" : ["5", "6", "19", "32", "45", "58", "71", "84", "97"],
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
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_fu_72"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_fu_72"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate14_fu_90"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_2_fu_106"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_6_fu_120"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_134"},
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_134"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_134"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_149"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashFinal_fu_163"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashFinal_fu_163"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashInitializ_fu_178"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashInitializ_fu_178"}],
		"Port" : [
			{"Name" : "seed_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_Keccak_HashUpdate14_fu_90", "Port" : "data_0"}]},
			{"Name" : "seed_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "salt_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_Keccak_HashUpdate_6_fu_120", "Port" : "data_0"}]},
			{"Name" : "roundNumber", "Type" : "None", "Direction" : "I"},
			{"Name" : "playerNumber", "Type" : "None", "Direction" : "I"},
			{"Name" : "tape", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_Keccak_HashSqueeze_fu_72", "Port" : "data"},
					{"ID" : "32", "SubInstance" : "grp_Keccak_HashUpdate_2_fu_106", "Port" : "data"}]},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_Keccak_HashUpdate14_fu_90", "Port" : "KeccakRhoOffsets"},
					{"ID" : "6", "SubInstance" : "grp_Keccak_HashSqueeze_fu_72", "Port" : "KeccakRhoOffsets"},
					{"ID" : "71", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_149", "Port" : "KeccakRhoOffsets"},
					{"ID" : "84", "SubInstance" : "grp_Keccak_HashFinal_fu_163", "Port" : "KeccakRhoOffsets"},
					{"ID" : "58", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_134", "Port" : "KeccakRhoOffsets"},
					{"ID" : "32", "SubInstance" : "grp_Keccak_HashUpdate_2_fu_106", "Port" : "KeccakRhoOffsets"},
					{"ID" : "45", "SubInstance" : "grp_Keccak_HashUpdate_6_fu_120", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_Keccak_HashUpdate14_fu_90", "Port" : "KeccakRoundConstants"},
					{"ID" : "6", "SubInstance" : "grp_Keccak_HashSqueeze_fu_72", "Port" : "KeccakRoundConstants"},
					{"ID" : "71", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_149", "Port" : "KeccakRoundConstants"},
					{"ID" : "84", "SubInstance" : "grp_Keccak_HashFinal_fu_163", "Port" : "KeccakRoundConstants"},
					{"ID" : "58", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_134", "Port" : "KeccakRoundConstants"},
					{"ID" : "32", "SubInstance" : "grp_Keccak_HashUpdate_2_fu_106", "Port" : "KeccakRoundConstants"},
					{"ID" : "45", "SubInstance" : "grp_Keccak_HashUpdate_6_fu_120", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.ctx_sponge_state_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashSqueeze_fu_72", "Parent" : "4", "Child" : ["7"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_288"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_288"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_288"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_288", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "databitlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_288", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_288", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashSqueeze_fu_72.grp_KeccakP1600_Permute_s_fu_288", "Parent" : "6", "Child" : ["8", "9", "10", "11", "14", "16"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "8", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashSqueeze_fu_72.grp_KeccakP1600_Permute_s_fu_288.KeccakRhoOffsets_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashSqueeze_fu_72.grp_KeccakP1600_Permute_s_fu_288.KeccakRoundConstants_U", "Parent" : "7"},
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashSqueeze_fu_72.grp_KeccakP1600_Permute_s_fu_288.stateAsWords_U", "Parent" : "7"},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashSqueeze_fu_72.grp_KeccakP1600_Permute_s_fu_288.grp_theta_fu_225", "Parent" : "7", "Child" : ["12", "13"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "12", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashSqueeze_fu_72.grp_KeccakP1600_Permute_s_fu_288.grp_theta_fu_225.C_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashSqueeze_fu_72.grp_KeccakP1600_Permute_s_fu_288.grp_theta_fu_225.D_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashSqueeze_fu_72.grp_KeccakP1600_Permute_s_fu_288.grp_chi_fu_230", "Parent" : "7", "Child" : ["15"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "15", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashSqueeze_fu_72.grp_KeccakP1600_Permute_s_fu_288.grp_chi_fu_230.C_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashSqueeze_fu_72.grp_KeccakP1600_Permute_s_fu_288.grp_pi_fu_235", "Parent" : "7", "Child" : ["17", "18"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "17", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashSqueeze_fu_72.grp_KeccakP1600_Permute_s_fu_288.grp_pi_fu_235.tempA_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashSqueeze_fu_72.grp_KeccakP1600_Permute_s_fu_288.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "16"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate14_fu_90", "Parent" : "4", "Child" : ["20"],
		"CDFG" : "Keccak_HashUpdate14",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
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
			{"Name" : "instance_sponge_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate14_fu_90.grp_KeccakP1600_Permute_s_fu_197", "Parent" : "19", "Child" : ["21", "22", "23", "24", "27", "29"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "21", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate14_fu_90.grp_KeccakP1600_Permute_s_fu_197.KeccakRhoOffsets_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate14_fu_90.grp_KeccakP1600_Permute_s_fu_197.KeccakRoundConstants_U", "Parent" : "20"},
	{"ID" : "23", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate14_fu_90.grp_KeccakP1600_Permute_s_fu_197.stateAsWords_U", "Parent" : "20"},
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate14_fu_90.grp_KeccakP1600_Permute_s_fu_197.grp_theta_fu_225", "Parent" : "20", "Child" : ["25", "26"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "25", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate14_fu_90.grp_KeccakP1600_Permute_s_fu_197.grp_theta_fu_225.C_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate14_fu_90.grp_KeccakP1600_Permute_s_fu_197.grp_theta_fu_225.D_U", "Parent" : "24"},
	{"ID" : "27", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate14_fu_90.grp_KeccakP1600_Permute_s_fu_197.grp_chi_fu_230", "Parent" : "20", "Child" : ["28"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "28", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate14_fu_90.grp_KeccakP1600_Permute_s_fu_197.grp_chi_fu_230.C_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate14_fu_90.grp_KeccakP1600_Permute_s_fu_197.grp_pi_fu_235", "Parent" : "20", "Child" : ["30", "31"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "30", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate14_fu_90.grp_KeccakP1600_Permute_s_fu_197.grp_pi_fu_235.tempA_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate14_fu_90.grp_KeccakP1600_Permute_s_fu_197.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "29"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_2_fu_106", "Parent" : "4", "Child" : ["33"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_2_fu_106.grp_KeccakP1600_Permute_s_fu_183", "Parent" : "32", "Child" : ["34", "35", "36", "37", "40", "42"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_2_fu_106.grp_KeccakP1600_Permute_s_fu_183.KeccakRhoOffsets_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_2_fu_106.grp_KeccakP1600_Permute_s_fu_183.KeccakRoundConstants_U", "Parent" : "33"},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_2_fu_106.grp_KeccakP1600_Permute_s_fu_183.stateAsWords_U", "Parent" : "33"},
	{"ID" : "37", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_2_fu_106.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225", "Parent" : "33", "Child" : ["38", "39"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "38", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_2_fu_106.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225.C_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_2_fu_106.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225.D_U", "Parent" : "37"},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_2_fu_106.grp_KeccakP1600_Permute_s_fu_183.grp_chi_fu_230", "Parent" : "33", "Child" : ["41"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "41", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_2_fu_106.grp_KeccakP1600_Permute_s_fu_183.grp_chi_fu_230.C_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_2_fu_106.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235", "Parent" : "33", "Child" : ["43", "44"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "43", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_2_fu_106.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235.tempA_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_2_fu_106.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "42"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_6_fu_120", "Parent" : "4", "Child" : ["46"],
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
					{"ID" : "46", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_6_fu_120.grp_KeccakP1600_Permute_s_fu_183", "Parent" : "45", "Child" : ["47", "48", "49", "50", "53", "55"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "47", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_6_fu_120.grp_KeccakP1600_Permute_s_fu_183.KeccakRhoOffsets_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_6_fu_120.grp_KeccakP1600_Permute_s_fu_183.KeccakRoundConstants_U", "Parent" : "46"},
	{"ID" : "49", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_6_fu_120.grp_KeccakP1600_Permute_s_fu_183.stateAsWords_U", "Parent" : "46"},
	{"ID" : "50", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_6_fu_120.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225", "Parent" : "46", "Child" : ["51", "52"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "51", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_6_fu_120.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225.C_U", "Parent" : "50"},
	{"ID" : "52", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_6_fu_120.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225.D_U", "Parent" : "50"},
	{"ID" : "53", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_6_fu_120.grp_KeccakP1600_Permute_s_fu_183.grp_chi_fu_230", "Parent" : "46", "Child" : ["54"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "54", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_6_fu_120.grp_KeccakP1600_Permute_s_fu_183.grp_chi_fu_230.C_U", "Parent" : "53"},
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_6_fu_120.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235", "Parent" : "46", "Child" : ["56", "57"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "56", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_6_fu_120.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235.tempA_U", "Parent" : "55"},
	{"ID" : "57", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_6_fu_120.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "55"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_5_fu_134", "Parent" : "4", "Child" : ["59"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_172"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_172"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_172", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_172", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_172", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_5_fu_134.grp_KeccakP1600_Permute_s_fu_172", "Parent" : "58", "Child" : ["60", "61", "62", "63", "66", "68"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "60", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_5_fu_134.grp_KeccakP1600_Permute_s_fu_172.KeccakRhoOffsets_U", "Parent" : "59"},
	{"ID" : "61", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_5_fu_134.grp_KeccakP1600_Permute_s_fu_172.KeccakRoundConstants_U", "Parent" : "59"},
	{"ID" : "62", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_5_fu_134.grp_KeccakP1600_Permute_s_fu_172.stateAsWords_U", "Parent" : "59"},
	{"ID" : "63", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_5_fu_134.grp_KeccakP1600_Permute_s_fu_172.grp_theta_fu_225", "Parent" : "59", "Child" : ["64", "65"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "64", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_5_fu_134.grp_KeccakP1600_Permute_s_fu_172.grp_theta_fu_225.C_U", "Parent" : "63"},
	{"ID" : "65", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_5_fu_134.grp_KeccakP1600_Permute_s_fu_172.grp_theta_fu_225.D_U", "Parent" : "63"},
	{"ID" : "66", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_5_fu_134.grp_KeccakP1600_Permute_s_fu_172.grp_chi_fu_230", "Parent" : "59", "Child" : ["67"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "67", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_5_fu_134.grp_KeccakP1600_Permute_s_fu_172.grp_chi_fu_230.C_U", "Parent" : "66"},
	{"ID" : "68", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_5_fu_134.grp_KeccakP1600_Permute_s_fu_172.grp_pi_fu_235", "Parent" : "59", "Child" : ["69", "70"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "69", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_5_fu_134.grp_KeccakP1600_Permute_s_fu_172.grp_pi_fu_235.tempA_U", "Parent" : "68"},
	{"ID" : "70", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_5_fu_134.grp_KeccakP1600_Permute_s_fu_172.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "68"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_1_fu_149", "Parent" : "4", "Child" : ["72"],
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
					{"ID" : "72", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_1_fu_149.grp_KeccakP1600_Permute_s_fu_162", "Parent" : "71", "Child" : ["73", "74", "75", "76", "79", "81"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "73", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_1_fu_149.grp_KeccakP1600_Permute_s_fu_162.KeccakRhoOffsets_U", "Parent" : "72"},
	{"ID" : "74", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_1_fu_149.grp_KeccakP1600_Permute_s_fu_162.KeccakRoundConstants_U", "Parent" : "72"},
	{"ID" : "75", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_1_fu_149.grp_KeccakP1600_Permute_s_fu_162.stateAsWords_U", "Parent" : "72"},
	{"ID" : "76", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_1_fu_149.grp_KeccakP1600_Permute_s_fu_162.grp_theta_fu_225", "Parent" : "72", "Child" : ["77", "78"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "77", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_1_fu_149.grp_KeccakP1600_Permute_s_fu_162.grp_theta_fu_225.C_U", "Parent" : "76"},
	{"ID" : "78", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_1_fu_149.grp_KeccakP1600_Permute_s_fu_162.grp_theta_fu_225.D_U", "Parent" : "76"},
	{"ID" : "79", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_1_fu_149.grp_KeccakP1600_Permute_s_fu_162.grp_chi_fu_230", "Parent" : "72", "Child" : ["80"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "80", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_1_fu_149.grp_KeccakP1600_Permute_s_fu_162.grp_chi_fu_230.C_U", "Parent" : "79"},
	{"ID" : "81", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_1_fu_149.grp_KeccakP1600_Permute_s_fu_162.grp_pi_fu_235", "Parent" : "72", "Child" : ["82", "83"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "82", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_1_fu_149.grp_KeccakP1600_Permute_s_fu_162.grp_pi_fu_235.tempA_U", "Parent" : "81"},
	{"ID" : "83", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_1_fu_149.grp_KeccakP1600_Permute_s_fu_162.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "81"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashFinal_fu_163", "Parent" : "4", "Child" : ["85"],
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
					{"ID" : "85", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_delimitedSu", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashFinal_fu_163.grp_KeccakP1600_Permute_s_fu_124", "Parent" : "84", "Child" : ["86", "87", "88", "89", "92", "94"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "86", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashFinal_fu_163.grp_KeccakP1600_Permute_s_fu_124.KeccakRhoOffsets_U", "Parent" : "85"},
	{"ID" : "87", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashFinal_fu_163.grp_KeccakP1600_Permute_s_fu_124.KeccakRoundConstants_U", "Parent" : "85"},
	{"ID" : "88", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashFinal_fu_163.grp_KeccakP1600_Permute_s_fu_124.stateAsWords_U", "Parent" : "85"},
	{"ID" : "89", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashFinal_fu_163.grp_KeccakP1600_Permute_s_fu_124.grp_theta_fu_225", "Parent" : "85", "Child" : ["90", "91"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "90", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashFinal_fu_163.grp_KeccakP1600_Permute_s_fu_124.grp_theta_fu_225.C_U", "Parent" : "89"},
	{"ID" : "91", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashFinal_fu_163.grp_KeccakP1600_Permute_s_fu_124.grp_theta_fu_225.D_U", "Parent" : "89"},
	{"ID" : "92", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashFinal_fu_163.grp_KeccakP1600_Permute_s_fu_124.grp_chi_fu_230", "Parent" : "85", "Child" : ["93"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "93", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashFinal_fu_163.grp_KeccakP1600_Permute_s_fu_124.grp_chi_fu_230.C_U", "Parent" : "92"},
	{"ID" : "94", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashFinal_fu_163.grp_KeccakP1600_Permute_s_fu_124.grp_pi_fu_235", "Parent" : "85", "Child" : ["95", "96"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "95", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashFinal_fu_163.grp_KeccakP1600_Permute_s_fu_124.grp_pi_fu_235.tempA_U", "Parent" : "94"},
	{"ID" : "96", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashFinal_fu_163.grp_KeccakP1600_Permute_s_fu_124.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "94"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashInitializ_fu_178", "Parent" : "4",
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
			{"Name" : "instance_delimitedSuffix_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_717", "Parent" : "0", "Child" : ["99", "100", "104", "108"],
		"CDFG" : "mpc_LowMC_verify_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "217450", "EstimateLatencyMax" : "217618",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_686"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_686"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_686"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_686"},
			{"State" : "ap_ST_fsm_state31", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_1_fu_703"},
			{"State" : "ap_ST_fsm_state33", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_1_fu_703"},
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mpc_AND_verify_2_fu_715"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mpc_AND_verify_2_fu_715"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mpc_AND_verify_2_fu_715"}],
		"Port" : [
			{"Name" : "view1_inputShare", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "100", "SubInstance" : "grp_matrix_mul_fu_686", "Port" : "state"}]},
			{"Name" : "view1_inputShare_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "view1_communicatedBi", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "108", "SubInstance" : "grp_mpc_AND_verify_2_fu_715", "Port" : "view1_communicatedBi"}]},
			{"Name" : "view1_outputShare", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "view2_inputShare", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "100", "SubInstance" : "grp_matrix_mul_fu_686", "Port" : "state"}]},
			{"Name" : "view2_communicatedBi", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "108", "SubInstance" : "grp_mpc_AND_verify_2_fu_715", "Port" : "view2_communicatedBi"}]},
			{"Name" : "view2_outputShare", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tapes_0_tape", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "108", "SubInstance" : "grp_mpc_AND_verify_2_fu_715", "Port" : "rand_0_tape"}]},
			{"Name" : "tmp", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "100", "SubInstance" : "grp_matrix_mul_fu_686", "Port" : "output_r"},
					{"ID" : "104", "SubInstance" : "grp_matrix_mul_1_fu_703", "Port" : "output_r"}]},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "challenge", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_matrix", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "100", "SubInstance" : "grp_matrix_mul_fu_686", "Port" : "temp_matrix"}]},
			{"Name" : "temp_matrix2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "104", "SubInstance" : "grp_matrix_mul_1_fu_703", "Port" : "temp_matrix2"}]},
			{"Name" : "temp_matrix3", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_717.temp_matrix3_U", "Parent" : "98"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_717.grp_matrix_mul_fu_686", "Parent" : "98", "Child" : ["101", "102", "103"],
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
			{"Name" : "matrix_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_matrix", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_717.grp_matrix_mul_fu_686.temp_matrix_U", "Parent" : "100"},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_717.grp_matrix_mul_fu_686.prod_U", "Parent" : "100"},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_717.grp_matrix_mul_fu_686.temp_U", "Parent" : "100"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_717.grp_matrix_mul_1_fu_703", "Parent" : "98", "Child" : ["105", "106", "107"],
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
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_717.grp_matrix_mul_1_fu_703.temp_matrix2_U", "Parent" : "104"},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_717.grp_matrix_mul_1_fu_703.prod_U", "Parent" : "104"},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_717.grp_matrix_mul_1_fu_703.temp_U", "Parent" : "104"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_717.grp_mpc_AND_verify_2_fu_715", "Parent" : "98", "Child" : ["109", "110"],
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
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_717.grp_mpc_AND_verify_2_fu_715.crypto_sign_open_hbi_U100", "Parent" : "108"},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_717.grp_mpc_AND_verify_2_fu_715.crypto_sign_open_hbi_U101", "Parent" : "108"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_746", "Parent" : "0", "Child" : ["112"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_302"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_302"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_302"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_302", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "databitlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_302", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_302", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_746.grp_KeccakP1600_Permute_s_fu_302", "Parent" : "111", "Child" : ["113", "114", "115", "116", "119", "121"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_746.grp_KeccakP1600_Permute_s_fu_302.KeccakRhoOffsets_U", "Parent" : "112"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_746.grp_KeccakP1600_Permute_s_fu_302.KeccakRoundConstants_U", "Parent" : "112"},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_746.grp_KeccakP1600_Permute_s_fu_302.stateAsWords_U", "Parent" : "112"},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_746.grp_KeccakP1600_Permute_s_fu_302.grp_theta_fu_225", "Parent" : "112", "Child" : ["117", "118"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "117", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_746.grp_KeccakP1600_Permute_s_fu_302.grp_theta_fu_225.C_U", "Parent" : "116"},
	{"ID" : "118", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_746.grp_KeccakP1600_Permute_s_fu_302.grp_theta_fu_225.D_U", "Parent" : "116"},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_746.grp_KeccakP1600_Permute_s_fu_302.grp_chi_fu_230", "Parent" : "112", "Child" : ["120"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "120", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_746.grp_KeccakP1600_Permute_s_fu_302.grp_chi_fu_230.C_U", "Parent" : "119"},
	{"ID" : "121", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_746.grp_KeccakP1600_Permute_s_fu_302.grp_pi_fu_235", "Parent" : "112", "Child" : ["122", "123"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "122", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_746.grp_KeccakP1600_Permute_s_fu_302.grp_pi_fu_235.tempA_U", "Parent" : "121"},
	{"ID" : "123", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_746.grp_KeccakP1600_Permute_s_fu_302.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "121"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate14_fu_767", "Parent" : "0", "Child" : ["125"],
		"CDFG" : "Keccak_HashUpdate14",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
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
			{"Name" : "instance_sponge_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate14_fu_767.grp_KeccakP1600_Permute_s_fu_197", "Parent" : "124", "Child" : ["126", "127", "128", "129", "132", "134"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "126", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate14_fu_767.grp_KeccakP1600_Permute_s_fu_197.KeccakRhoOffsets_U", "Parent" : "125"},
	{"ID" : "127", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate14_fu_767.grp_KeccakP1600_Permute_s_fu_197.KeccakRoundConstants_U", "Parent" : "125"},
	{"ID" : "128", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate14_fu_767.grp_KeccakP1600_Permute_s_fu_197.stateAsWords_U", "Parent" : "125"},
	{"ID" : "129", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate14_fu_767.grp_KeccakP1600_Permute_s_fu_197.grp_theta_fu_225", "Parent" : "125", "Child" : ["130", "131"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "130", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate14_fu_767.grp_KeccakP1600_Permute_s_fu_197.grp_theta_fu_225.C_U", "Parent" : "129"},
	{"ID" : "131", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate14_fu_767.grp_KeccakP1600_Permute_s_fu_197.grp_theta_fu_225.D_U", "Parent" : "129"},
	{"ID" : "132", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate14_fu_767.grp_KeccakP1600_Permute_s_fu_197.grp_chi_fu_230", "Parent" : "125", "Child" : ["133"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "133", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate14_fu_767.grp_KeccakP1600_Permute_s_fu_197.grp_chi_fu_230.C_U", "Parent" : "132"},
	{"ID" : "134", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate14_fu_767.grp_KeccakP1600_Permute_s_fu_197.grp_pi_fu_235", "Parent" : "125", "Child" : ["135", "136"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "135", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate14_fu_767.grp_KeccakP1600_Permute_s_fu_197.grp_pi_fu_235.tempA_U", "Parent" : "134"},
	{"ID" : "136", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate14_fu_767.grp_KeccakP1600_Permute_s_fu_197.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "134"},
	{"ID" : "137", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_783", "Parent" : "0", "Child" : ["138"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_783.grp_KeccakP1600_Permute_s_fu_197", "Parent" : "137", "Child" : ["139", "140", "141", "142", "145", "147"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "139", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_783.grp_KeccakP1600_Permute_s_fu_197.KeccakRhoOffsets_U", "Parent" : "138"},
	{"ID" : "140", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_783.grp_KeccakP1600_Permute_s_fu_197.KeccakRoundConstants_U", "Parent" : "138"},
	{"ID" : "141", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_783.grp_KeccakP1600_Permute_s_fu_197.stateAsWords_U", "Parent" : "138"},
	{"ID" : "142", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_783.grp_KeccakP1600_Permute_s_fu_197.grp_theta_fu_225", "Parent" : "138", "Child" : ["143", "144"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "143", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_783.grp_KeccakP1600_Permute_s_fu_197.grp_theta_fu_225.C_U", "Parent" : "142"},
	{"ID" : "144", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_783.grp_KeccakP1600_Permute_s_fu_197.grp_theta_fu_225.D_U", "Parent" : "142"},
	{"ID" : "145", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_783.grp_KeccakP1600_Permute_s_fu_197.grp_chi_fu_230", "Parent" : "138", "Child" : ["146"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "146", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_783.grp_KeccakP1600_Permute_s_fu_197.grp_chi_fu_230.C_U", "Parent" : "145"},
	{"ID" : "147", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_783.grp_KeccakP1600_Permute_s_fu_197.grp_pi_fu_235", "Parent" : "138", "Child" : ["148", "149"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "148", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_783.grp_KeccakP1600_Permute_s_fu_197.grp_pi_fu_235.tempA_U", "Parent" : "147"},
	{"ID" : "149", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_783.grp_KeccakP1600_Permute_s_fu_197.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "147"},
	{"ID" : "150", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_800", "Parent" : "0", "Child" : ["151"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_172"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_172"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_172", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_172", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_172", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_800.grp_KeccakP1600_Permute_s_fu_172", "Parent" : "150", "Child" : ["152", "153", "154", "155", "158", "160"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "152", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_800.grp_KeccakP1600_Permute_s_fu_172.KeccakRhoOffsets_U", "Parent" : "151"},
	{"ID" : "153", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_800.grp_KeccakP1600_Permute_s_fu_172.KeccakRoundConstants_U", "Parent" : "151"},
	{"ID" : "154", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_800.grp_KeccakP1600_Permute_s_fu_172.stateAsWords_U", "Parent" : "151"},
	{"ID" : "155", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_800.grp_KeccakP1600_Permute_s_fu_172.grp_theta_fu_225", "Parent" : "151", "Child" : ["156", "157"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "156", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_800.grp_KeccakP1600_Permute_s_fu_172.grp_theta_fu_225.C_U", "Parent" : "155"},
	{"ID" : "157", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_800.grp_KeccakP1600_Permute_s_fu_172.grp_theta_fu_225.D_U", "Parent" : "155"},
	{"ID" : "158", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_800.grp_KeccakP1600_Permute_s_fu_172.grp_chi_fu_230", "Parent" : "151", "Child" : ["159"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "159", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_800.grp_KeccakP1600_Permute_s_fu_172.grp_chi_fu_230.C_U", "Parent" : "158"},
	{"ID" : "160", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_800.grp_KeccakP1600_Permute_s_fu_172.grp_pi_fu_235", "Parent" : "151", "Child" : ["161", "162"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "161", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_800.grp_KeccakP1600_Permute_s_fu_172.grp_pi_fu_235.tempA_U", "Parent" : "160"},
	{"ID" : "162", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_800.grp_KeccakP1600_Permute_s_fu_172.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "160"},
	{"ID" : "163", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_815", "Parent" : "0", "Child" : ["164"],
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
					{"ID" : "164", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_815.grp_KeccakP1600_Permute_s_fu_183", "Parent" : "163", "Child" : ["165", "166", "167", "168", "171", "173"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "165", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_815.grp_KeccakP1600_Permute_s_fu_183.KeccakRhoOffsets_U", "Parent" : "164"},
	{"ID" : "166", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_815.grp_KeccakP1600_Permute_s_fu_183.KeccakRoundConstants_U", "Parent" : "164"},
	{"ID" : "167", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_815.grp_KeccakP1600_Permute_s_fu_183.stateAsWords_U", "Parent" : "164"},
	{"ID" : "168", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_815.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225", "Parent" : "164", "Child" : ["169", "170"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "169", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_815.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225.C_U", "Parent" : "168"},
	{"ID" : "170", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_815.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225.D_U", "Parent" : "168"},
	{"ID" : "171", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_815.grp_KeccakP1600_Permute_s_fu_183.grp_chi_fu_230", "Parent" : "164", "Child" : ["172"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "172", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_815.grp_KeccakP1600_Permute_s_fu_183.grp_chi_fu_230.C_U", "Parent" : "171"},
	{"ID" : "173", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_815.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235", "Parent" : "164", "Child" : ["174", "175"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "174", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_815.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235.tempA_U", "Parent" : "173"},
	{"ID" : "175", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_815.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "173"},
	{"ID" : "176", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_829", "Parent" : "0", "Child" : ["177"],
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
					{"ID" : "177", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "177", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "177", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "177", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_829.grp_KeccakP1600_Permute_s_fu_162", "Parent" : "176", "Child" : ["178", "179", "180", "181", "184", "186"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "178", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_829.grp_KeccakP1600_Permute_s_fu_162.KeccakRhoOffsets_U", "Parent" : "177"},
	{"ID" : "179", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_829.grp_KeccakP1600_Permute_s_fu_162.KeccakRoundConstants_U", "Parent" : "177"},
	{"ID" : "180", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_829.grp_KeccakP1600_Permute_s_fu_162.stateAsWords_U", "Parent" : "177"},
	{"ID" : "181", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_829.grp_KeccakP1600_Permute_s_fu_162.grp_theta_fu_225", "Parent" : "177", "Child" : ["182", "183"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "182", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_829.grp_KeccakP1600_Permute_s_fu_162.grp_theta_fu_225.C_U", "Parent" : "181"},
	{"ID" : "183", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_829.grp_KeccakP1600_Permute_s_fu_162.grp_theta_fu_225.D_U", "Parent" : "181"},
	{"ID" : "184", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_829.grp_KeccakP1600_Permute_s_fu_162.grp_chi_fu_230", "Parent" : "177", "Child" : ["185"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "185", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_829.grp_KeccakP1600_Permute_s_fu_162.grp_chi_fu_230.C_U", "Parent" : "184"},
	{"ID" : "186", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_829.grp_KeccakP1600_Permute_s_fu_162.grp_pi_fu_235", "Parent" : "177", "Child" : ["187", "188"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "187", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_829.grp_KeccakP1600_Permute_s_fu_162.grp_pi_fu_235.tempA_U", "Parent" : "186"},
	{"ID" : "188", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_829.grp_KeccakP1600_Permute_s_fu_162.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "186"},
	{"ID" : "189", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_843", "Parent" : "0", "Child" : ["190"],
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
					{"ID" : "190", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_delimitedSu", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "190", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "190", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "190", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_843.grp_KeccakP1600_Permute_s_fu_124", "Parent" : "189", "Child" : ["191", "192", "193", "194", "197", "199"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "191", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_843.grp_KeccakP1600_Permute_s_fu_124.KeccakRhoOffsets_U", "Parent" : "190"},
	{"ID" : "192", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_843.grp_KeccakP1600_Permute_s_fu_124.KeccakRoundConstants_U", "Parent" : "190"},
	{"ID" : "193", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_843.grp_KeccakP1600_Permute_s_fu_124.stateAsWords_U", "Parent" : "190"},
	{"ID" : "194", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_843.grp_KeccakP1600_Permute_s_fu_124.grp_theta_fu_225", "Parent" : "190", "Child" : ["195", "196"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "195", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_843.grp_KeccakP1600_Permute_s_fu_124.grp_theta_fu_225.C_U", "Parent" : "194"},
	{"ID" : "196", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_843.grp_KeccakP1600_Permute_s_fu_124.grp_theta_fu_225.D_U", "Parent" : "194"},
	{"ID" : "197", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_843.grp_KeccakP1600_Permute_s_fu_124.grp_chi_fu_230", "Parent" : "190", "Child" : ["198"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "198", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_843.grp_KeccakP1600_Permute_s_fu_124.grp_chi_fu_230.C_U", "Parent" : "197"},
	{"ID" : "199", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_843.grp_KeccakP1600_Permute_s_fu_124.grp_pi_fu_235", "Parent" : "190", "Child" : ["200", "201"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "200", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_843.grp_KeccakP1600_Permute_s_fu_124.grp_pi_fu_235.tempA_U", "Parent" : "199"},
	{"ID" : "201", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_843.grp_KeccakP1600_Permute_s_fu_124.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "199"},
	{"ID" : "202", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashInitializ_fu_858", "Parent" : "0",
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
	verifyProof_24 {
		proof_0_seed1 {Type I LastRead 4 FirstWrite -1}
		proof_seed1_offset1 {Type I LastRead 0 FirstWrite -1}
		proof_0_seed2 {Type I LastRead 4 FirstWrite -1}
		proof_0_inputShare {Type I LastRead 31 FirstWrite -1}
		proof_0_communicatedBits {Type I LastRead 2 FirstWrite -1}
		view1_inputShare {Type IO LastRead 5 FirstWrite -1}
		view1_communicatedBits {Type IO LastRead 1 FirstWrite 2}
		view1_outputShare {Type O LastRead -1 FirstWrite 10}
		view2_inputShare {Type IO LastRead 30 FirstWrite -1}
		view2_communicatedBits {Type IO LastRead 1 FirstWrite -1}
		view2_outputShare {Type O LastRead -1 FirstWrite 11}
		challenge {Type I LastRead 0 FirstWrite -1}
		salt_0 {Type I LastRead 4 FirstWrite -1}
		roundNumber {Type I LastRead 0 FirstWrite -1}
		tmp {Type IO LastRead 33 FirstWrite -1}
		plaintext {Type I LastRead 4 FirstWrite -1}
		tape_0_tape {Type IO LastRead 4 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}
		temp_matrix {Type I LastRead -1 FirstWrite -1}
		temp_matrix2 {Type I LastRead -1 FirstWrite -1}
		temp_matrix3 {Type I LastRead -1 FirstWrite -1}}
	createRandomTape13 {
		seed_0 {Type I LastRead 4 FirstWrite -1}
		seed_offset1 {Type I LastRead 4 FirstWrite -1}
		salt_0 {Type I LastRead 4 FirstWrite -1}
		roundNumber {Type I LastRead 16 FirstWrite -1}
		playerNumber {Type I LastRead 18 FirstWrite -1}
		tape {Type IO LastRead 4 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	Keccak_HashSqueeze {
		instance_sponge_stat {Type IO LastRead 10 FirstWrite 1}
		instance_sponge_rate {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque_25 {Type I LastRead 0 FirstWrite -1}
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
	Keccak_HashUpdate14 {
		instance_sponge_state {Type IO LastRead 4 FirstWrite 4}
		instance_sponge_rate_read {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		instance_sponge_squeezing_read {Type I LastRead 0 FirstWrite -1}
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
	Keccak_HashUpdate_2 {
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
	Keccak_HashUpdate_5 {
		instance_sponge_stat {Type IO LastRead 4 FirstWrite 4}
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
		instance_delimitedSuffix_read {Type I LastRead 0 FirstWrite -1}}
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
	Keccak_HashSqueeze_2 {
		instance_sponge_stat {Type IO LastRead 10 FirstWrite 1}
		instance_sponge_rate {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque_17 {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque {Type I LastRead 0 FirstWrite -1}
		data_0 {Type O LastRead -1 FirstWrite 10}
		data_offset1 {Type I LastRead 0 FirstWrite -1}
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
	Keccak_HashUpdate14 {
		instance_sponge_state {Type IO LastRead 4 FirstWrite 4}
		instance_sponge_rate_read {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		instance_sponge_squeezing_read {Type I LastRead 0 FirstWrite -1}
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
	Keccak_HashUpdate_7 {
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
	Keccak_HashUpdate_5 {
		instance_sponge_stat {Type IO LastRead 4 FirstWrite 4}
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
	proof_0_seed1 { ap_memory {  { proof_0_seed1_address0 mem_address 1 12 }  { proof_0_seed1_ce0 mem_ce 1 1 }  { proof_0_seed1_q0 mem_dout 0 8 } } }
	proof_seed1_offset1 { ap_none {  { proof_seed1_offset1 in_data 0 8 } } }
	proof_0_seed2 { ap_memory {  { proof_0_seed2_address0 mem_address 1 12 }  { proof_0_seed2_ce0 mem_ce 1 1 }  { proof_0_seed2_q0 mem_dout 0 8 } } }
	proof_0_inputShare { ap_memory {  { proof_0_inputShare_address0 mem_address 1 10 }  { proof_0_inputShare_ce0 mem_ce 1 1 }  { proof_0_inputShare_q0 mem_dout 0 32 } } }
	proof_0_communicatedBits { ap_memory {  { proof_0_communicatedBits_address0 mem_address 1 15 }  { proof_0_communicatedBits_ce0 mem_ce 1 1 }  { proof_0_communicatedBits_q0 mem_dout 0 8 } } }
	view1_inputShare { ap_memory {  { view1_inputShare_address0 mem_address 1 10 }  { view1_inputShare_ce0 mem_ce 1 1 }  { view1_inputShare_we0 mem_we 1 1 }  { view1_inputShare_d0 mem_din 1 32 }  { view1_inputShare_q0 mem_dout 0 32 } } }
	view1_communicatedBits { ap_memory {  { view1_communicatedBits_address0 mem_address 1 15 }  { view1_communicatedBits_ce0 mem_ce 1 1 }  { view1_communicatedBits_we0 mem_we 1 1 }  { view1_communicatedBits_d0 mem_din 1 8 }  { view1_communicatedBits_q0 mem_dout 0 8 } } }
	view1_outputShare { ap_memory {  { view1_outputShare_address0 mem_address 1 10 }  { view1_outputShare_ce0 mem_ce 1 1 }  { view1_outputShare_we0 mem_we 1 1 }  { view1_outputShare_d0 mem_din 1 32 } } }
	view2_inputShare { ap_memory {  { view2_inputShare_address0 mem_address 1 10 }  { view2_inputShare_ce0 mem_ce 1 1 }  { view2_inputShare_we0 mem_we 1 1 }  { view2_inputShare_d0 mem_din 1 32 }  { view2_inputShare_q0 mem_dout 0 32 } } }
	view2_communicatedBits { ap_memory {  { view2_communicatedBits_address0 mem_address 1 15 }  { view2_communicatedBits_ce0 mem_ce 1 1 }  { view2_communicatedBits_we0 mem_we 1 1 }  { view2_communicatedBits_d0 mem_din 1 8 }  { view2_communicatedBits_q0 mem_dout 0 8 } } }
	view2_outputShare { ap_memory {  { view2_outputShare_address0 mem_address 1 10 }  { view2_outputShare_ce0 mem_ce 1 1 }  { view2_outputShare_we0 mem_we 1 1 }  { view2_outputShare_d0 mem_din 1 32 } } }
	challenge { ap_none {  { challenge in_data 0 2 } } }
	salt_0 { ap_memory {  { salt_0_address0 mem_address 1 5 }  { salt_0_ce0 mem_ce 1 1 }  { salt_0_q0 mem_dout 0 8 } } }
	roundNumber { ap_none {  { roundNumber in_data 0 8 } } }
	tmp { ap_memory {  { tmp_address0 mem_address 1 7 }  { tmp_ce0 mem_ce 1 1 }  { tmp_we0 mem_we 1 1 }  { tmp_d0 mem_din 1 8 }  { tmp_q0 mem_dout 0 8 } } }
	plaintext { ap_memory {  { plaintext_address0 mem_address 1 3 }  { plaintext_ce0 mem_ce 1 1 }  { plaintext_q0 mem_dout 0 32 } } }
	tape_0_tape { ap_memory {  { tape_0_tape_address0 mem_address 1 9 }  { tape_0_tape_ce0 mem_ce 1 1 }  { tape_0_tape_we0 mem_we 1 1 }  { tape_0_tape_d0 mem_din 1 8 }  { tape_0_tape_q0 mem_dout 0 8 }  { tape_0_tape_address1 mem_address 1 9 }  { tape_0_tape_ce1 mem_ce 1 1 }  { tape_0_tape_q1 mem_dout 0 8 } } }
}
set moduleName verifyProof_24
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
set C_modelName {verifyProof_24}
set C_modelType { void 0 }
set C_modelArgList {
	{ proof_0_seed1 int 8 regular {array 3504 { 1 3 } 1 1 }  }
	{ proof_seed1_offset1 int 8 regular  }
	{ proof_0_seed2 int 8 regular {array 3504 { 1 3 } 1 1 }  }
	{ proof_0_inputShare int 32 regular {array 876 { 1 3 } 1 1 }  }
	{ proof_0_communicatedBits int 8 regular {array 16425 { 1 3 } 1 1 }  }
	{ view1_inputShare int 32 regular {array 876 { 2 3 } 1 1 }  }
	{ view1_communicatedBits int 8 regular {array 16425 { 2 3 } 1 1 }  }
	{ view1_outputShare int 32 regular {array 876 { 0 3 } 0 1 }  }
	{ view2_inputShare int 32 regular {array 876 { 2 3 } 1 1 }  }
	{ view2_communicatedBits int 8 regular {array 16425 { 2 3 } 1 1 }  }
	{ view2_outputShare int 32 regular {array 876 { 0 3 } 0 1 }  }
	{ challenge int 2 regular  }
	{ salt_0 int 8 regular {array 32 { 1 3 } 1 1 }  }
	{ roundNumber int 8 regular  }
	{ tmp int 8 regular {array 96 { 2 3 } 1 1 }  }
	{ plaintext int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ tape_0_tape int 8 regular {array 498 { 2 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "proof_0_seed1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "proof_seed1_offset1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "proof_0_seed2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "proof_0_inputShare", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "proof_0_communicatedBits", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "view1_inputShare", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "view1_communicatedBits", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "view1_outputShare", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "view2_inputShare", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "view2_communicatedBits", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "view2_outputShare", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "challenge", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "salt_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "roundNumber", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "tmp", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "plaintext", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tape_0_tape", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 68
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ proof_0_seed1_address0 sc_out sc_lv 12 signal 0 } 
	{ proof_0_seed1_ce0 sc_out sc_logic 1 signal 0 } 
	{ proof_0_seed1_q0 sc_in sc_lv 8 signal 0 } 
	{ proof_seed1_offset1 sc_in sc_lv 8 signal 1 } 
	{ proof_0_seed2_address0 sc_out sc_lv 12 signal 2 } 
	{ proof_0_seed2_ce0 sc_out sc_logic 1 signal 2 } 
	{ proof_0_seed2_q0 sc_in sc_lv 8 signal 2 } 
	{ proof_0_inputShare_address0 sc_out sc_lv 10 signal 3 } 
	{ proof_0_inputShare_ce0 sc_out sc_logic 1 signal 3 } 
	{ proof_0_inputShare_q0 sc_in sc_lv 32 signal 3 } 
	{ proof_0_communicatedBits_address0 sc_out sc_lv 15 signal 4 } 
	{ proof_0_communicatedBits_ce0 sc_out sc_logic 1 signal 4 } 
	{ proof_0_communicatedBits_q0 sc_in sc_lv 8 signal 4 } 
	{ view1_inputShare_address0 sc_out sc_lv 10 signal 5 } 
	{ view1_inputShare_ce0 sc_out sc_logic 1 signal 5 } 
	{ view1_inputShare_we0 sc_out sc_logic 1 signal 5 } 
	{ view1_inputShare_d0 sc_out sc_lv 32 signal 5 } 
	{ view1_inputShare_q0 sc_in sc_lv 32 signal 5 } 
	{ view1_communicatedBits_address0 sc_out sc_lv 15 signal 6 } 
	{ view1_communicatedBits_ce0 sc_out sc_logic 1 signal 6 } 
	{ view1_communicatedBits_we0 sc_out sc_logic 1 signal 6 } 
	{ view1_communicatedBits_d0 sc_out sc_lv 8 signal 6 } 
	{ view1_communicatedBits_q0 sc_in sc_lv 8 signal 6 } 
	{ view1_outputShare_address0 sc_out sc_lv 10 signal 7 } 
	{ view1_outputShare_ce0 sc_out sc_logic 1 signal 7 } 
	{ view1_outputShare_we0 sc_out sc_logic 1 signal 7 } 
	{ view1_outputShare_d0 sc_out sc_lv 32 signal 7 } 
	{ view2_inputShare_address0 sc_out sc_lv 10 signal 8 } 
	{ view2_inputShare_ce0 sc_out sc_logic 1 signal 8 } 
	{ view2_inputShare_we0 sc_out sc_logic 1 signal 8 } 
	{ view2_inputShare_d0 sc_out sc_lv 32 signal 8 } 
	{ view2_inputShare_q0 sc_in sc_lv 32 signal 8 } 
	{ view2_communicatedBits_address0 sc_out sc_lv 15 signal 9 } 
	{ view2_communicatedBits_ce0 sc_out sc_logic 1 signal 9 } 
	{ view2_communicatedBits_we0 sc_out sc_logic 1 signal 9 } 
	{ view2_communicatedBits_d0 sc_out sc_lv 8 signal 9 } 
	{ view2_communicatedBits_q0 sc_in sc_lv 8 signal 9 } 
	{ view2_outputShare_address0 sc_out sc_lv 10 signal 10 } 
	{ view2_outputShare_ce0 sc_out sc_logic 1 signal 10 } 
	{ view2_outputShare_we0 sc_out sc_logic 1 signal 10 } 
	{ view2_outputShare_d0 sc_out sc_lv 32 signal 10 } 
	{ challenge sc_in sc_lv 2 signal 11 } 
	{ salt_0_address0 sc_out sc_lv 5 signal 12 } 
	{ salt_0_ce0 sc_out sc_logic 1 signal 12 } 
	{ salt_0_q0 sc_in sc_lv 8 signal 12 } 
	{ roundNumber sc_in sc_lv 8 signal 13 } 
	{ tmp_address0 sc_out sc_lv 7 signal 14 } 
	{ tmp_ce0 sc_out sc_logic 1 signal 14 } 
	{ tmp_we0 sc_out sc_logic 1 signal 14 } 
	{ tmp_d0 sc_out sc_lv 8 signal 14 } 
	{ tmp_q0 sc_in sc_lv 8 signal 14 } 
	{ plaintext_address0 sc_out sc_lv 3 signal 15 } 
	{ plaintext_ce0 sc_out sc_logic 1 signal 15 } 
	{ plaintext_q0 sc_in sc_lv 32 signal 15 } 
	{ tape_0_tape_address0 sc_out sc_lv 9 signal 16 } 
	{ tape_0_tape_ce0 sc_out sc_logic 1 signal 16 } 
	{ tape_0_tape_we0 sc_out sc_logic 1 signal 16 } 
	{ tape_0_tape_d0 sc_out sc_lv 8 signal 16 } 
	{ tape_0_tape_q0 sc_in sc_lv 8 signal 16 } 
	{ tape_0_tape_address1 sc_out sc_lv 9 signal 16 } 
	{ tape_0_tape_ce1 sc_out sc_logic 1 signal 16 } 
	{ tape_0_tape_q1 sc_in sc_lv 8 signal 16 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "proof_0_seed1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "proof_0_seed1", "role": "address0" }} , 
 	{ "name": "proof_0_seed1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "proof_0_seed1", "role": "ce0" }} , 
 	{ "name": "proof_0_seed1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "proof_0_seed1", "role": "q0" }} , 
 	{ "name": "proof_seed1_offset1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "proof_seed1_offset1", "role": "default" }} , 
 	{ "name": "proof_0_seed2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "proof_0_seed2", "role": "address0" }} , 
 	{ "name": "proof_0_seed2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "proof_0_seed2", "role": "ce0" }} , 
 	{ "name": "proof_0_seed2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "proof_0_seed2", "role": "q0" }} , 
 	{ "name": "proof_0_inputShare_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "proof_0_inputShare", "role": "address0" }} , 
 	{ "name": "proof_0_inputShare_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "proof_0_inputShare", "role": "ce0" }} , 
 	{ "name": "proof_0_inputShare_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "proof_0_inputShare", "role": "q0" }} , 
 	{ "name": "proof_0_communicatedBits_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "proof_0_communicatedBits", "role": "address0" }} , 
 	{ "name": "proof_0_communicatedBits_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "proof_0_communicatedBits", "role": "ce0" }} , 
 	{ "name": "proof_0_communicatedBits_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "proof_0_communicatedBits", "role": "q0" }} , 
 	{ "name": "view1_inputShare_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "view1_inputShare", "role": "address0" }} , 
 	{ "name": "view1_inputShare_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view1_inputShare", "role": "ce0" }} , 
 	{ "name": "view1_inputShare_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view1_inputShare", "role": "we0" }} , 
 	{ "name": "view1_inputShare_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "view1_inputShare", "role": "d0" }} , 
 	{ "name": "view1_inputShare_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "view1_inputShare", "role": "q0" }} , 
 	{ "name": "view1_communicatedBits_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "view1_communicatedBits", "role": "address0" }} , 
 	{ "name": "view1_communicatedBits_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view1_communicatedBits", "role": "ce0" }} , 
 	{ "name": "view1_communicatedBits_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view1_communicatedBits", "role": "we0" }} , 
 	{ "name": "view1_communicatedBits_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "view1_communicatedBits", "role": "d0" }} , 
 	{ "name": "view1_communicatedBits_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "view1_communicatedBits", "role": "q0" }} , 
 	{ "name": "view1_outputShare_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "view1_outputShare", "role": "address0" }} , 
 	{ "name": "view1_outputShare_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view1_outputShare", "role": "ce0" }} , 
 	{ "name": "view1_outputShare_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view1_outputShare", "role": "we0" }} , 
 	{ "name": "view1_outputShare_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "view1_outputShare", "role": "d0" }} , 
 	{ "name": "view2_inputShare_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "view2_inputShare", "role": "address0" }} , 
 	{ "name": "view2_inputShare_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view2_inputShare", "role": "ce0" }} , 
 	{ "name": "view2_inputShare_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view2_inputShare", "role": "we0" }} , 
 	{ "name": "view2_inputShare_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "view2_inputShare", "role": "d0" }} , 
 	{ "name": "view2_inputShare_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "view2_inputShare", "role": "q0" }} , 
 	{ "name": "view2_communicatedBits_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "view2_communicatedBits", "role": "address0" }} , 
 	{ "name": "view2_communicatedBits_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view2_communicatedBits", "role": "ce0" }} , 
 	{ "name": "view2_communicatedBits_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view2_communicatedBits", "role": "we0" }} , 
 	{ "name": "view2_communicatedBits_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "view2_communicatedBits", "role": "d0" }} , 
 	{ "name": "view2_communicatedBits_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "view2_communicatedBits", "role": "q0" }} , 
 	{ "name": "view2_outputShare_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "view2_outputShare", "role": "address0" }} , 
 	{ "name": "view2_outputShare_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view2_outputShare", "role": "ce0" }} , 
 	{ "name": "view2_outputShare_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view2_outputShare", "role": "we0" }} , 
 	{ "name": "view2_outputShare_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "view2_outputShare", "role": "d0" }} , 
 	{ "name": "challenge", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "challenge", "role": "default" }} , 
 	{ "name": "salt_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "salt_0", "role": "address0" }} , 
 	{ "name": "salt_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "salt_0", "role": "ce0" }} , 
 	{ "name": "salt_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "salt_0", "role": "q0" }} , 
 	{ "name": "roundNumber", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "roundNumber", "role": "default" }} , 
 	{ "name": "tmp_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "tmp", "role": "address0" }} , 
 	{ "name": "tmp_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp", "role": "ce0" }} , 
 	{ "name": "tmp_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp", "role": "we0" }} , 
 	{ "name": "tmp_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tmp", "role": "d0" }} , 
 	{ "name": "tmp_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tmp", "role": "q0" }} , 
 	{ "name": "plaintext_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "plaintext", "role": "address0" }} , 
 	{ "name": "plaintext_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "plaintext", "role": "ce0" }} , 
 	{ "name": "plaintext_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "plaintext", "role": "q0" }} , 
 	{ "name": "tape_0_tape_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "tape_0_tape", "role": "address0" }} , 
 	{ "name": "tape_0_tape_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tape_0_tape", "role": "ce0" }} , 
 	{ "name": "tape_0_tape_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tape_0_tape", "role": "we0" }} , 
 	{ "name": "tape_0_tape_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tape_0_tape", "role": "d0" }} , 
 	{ "name": "tape_0_tape_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tape_0_tape", "role": "q0" }} , 
 	{ "name": "tape_0_tape_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "tape_0_tape", "role": "address1" }} , 
 	{ "name": "tape_0_tape_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tape_0_tape", "role": "ce1" }} , 
 	{ "name": "tape_0_tape_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tape_0_tape", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "98", "111", "124", "137", "150", "163", "176", "189", "202"],
		"CDFG" : "verifyProof_24",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state37", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_createRandomTape13_fu_697"},
			{"State" : "ap_ST_fsm_state37", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_createRandomTape13_fu_697"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_createRandomTape13_fu_697"},
			{"State" : "ap_ST_fsm_state32", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_createRandomTape13_fu_697"},
			{"State" : "ap_ST_fsm_state72", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_createRandomTape13_fu_697"},
			{"State" : "ap_ST_fsm_state80", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_717"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_2_fu_746"},
			{"State" : "ap_ST_fsm_state29", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_2_fu_746"},
			{"State" : "ap_ST_fsm_state50", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_2_fu_746"},
			{"State" : "ap_ST_fsm_state66", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_2_fu_746"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate14_fu_767"},
			{"State" : "ap_ST_fsm_state46", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate14_fu_767"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_7_fu_783"},
			{"State" : "ap_ST_fsm_state54", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_7_fu_783"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_800"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_800"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_800"},
			{"State" : "ap_ST_fsm_state58", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_800"},
			{"State" : "ap_ST_fsm_state60", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_800"},
			{"State" : "ap_ST_fsm_state62", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_800"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_6_fu_815"},
			{"State" : "ap_ST_fsm_state56", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_6_fu_815"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_829"},
			{"State" : "ap_ST_fsm_state44", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_829"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashFinal_fu_843"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashFinal_fu_843"},
			{"State" : "ap_ST_fsm_state48", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashFinal_fu_843"},
			{"State" : "ap_ST_fsm_state64", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashFinal_fu_843"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashInitializ_fu_858"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashInitializ_fu_858"},
			{"State" : "ap_ST_fsm_state42", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashInitializ_fu_858"},
			{"State" : "ap_ST_fsm_state52", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashInitializ_fu_858"}],
		"Port" : [
			{"Name" : "proof_0_seed1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_createRandomTape13_fu_697", "Port" : "seed_0"},
					{"ID" : "124", "SubInstance" : "grp_Keccak_HashUpdate14_fu_767", "Port" : "data_0"}]},
			{"Name" : "proof_seed1_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "proof_0_seed2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_createRandomTape13_fu_697", "Port" : "seed_0"},
					{"ID" : "124", "SubInstance" : "grp_Keccak_HashUpdate14_fu_767", "Port" : "data_0"}]},
			{"Name" : "proof_0_inputShare", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "proof_0_communicatedBits", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "view1_inputShare", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_717", "Port" : "view1_inputShare"}]},
			{"Name" : "view1_communicatedBits", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_717", "Port" : "view1_communicatedBi"}]},
			{"Name" : "view1_outputShare", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_717", "Port" : "view1_outputShare"}]},
			{"Name" : "view2_inputShare", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_717", "Port" : "view2_inputShare"}]},
			{"Name" : "view2_communicatedBits", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_717", "Port" : "view2_communicatedBi"}]},
			{"Name" : "view2_outputShare", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_717", "Port" : "view2_outputShare"}]},
			{"Name" : "challenge", "Type" : "None", "Direction" : "I"},
			{"Name" : "salt_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_createRandomTape13_fu_697", "Port" : "salt_0"},
					{"ID" : "163", "SubInstance" : "grp_Keccak_HashUpdate_6_fu_815", "Port" : "data_0"}]},
			{"Name" : "roundNumber", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_createRandomTape13_fu_697", "Port" : "tape"}]},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_717", "Port" : "plaintext"}]},
			{"Name" : "tape_0_tape", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_717", "Port" : "tapes_0_tape"},
					{"ID" : "111", "SubInstance" : "grp_Keccak_HashSqueeze_2_fu_746", "Port" : "data_0"},
					{"ID" : "137", "SubInstance" : "grp_Keccak_HashUpdate_7_fu_783", "Port" : "data_0"}]},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_createRandomTape13_fu_697", "Port" : "KeccakRhoOffsets"},
					{"ID" : "176", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_829", "Port" : "KeccakRhoOffsets"},
					{"ID" : "163", "SubInstance" : "grp_Keccak_HashUpdate_6_fu_815", "Port" : "KeccakRhoOffsets"},
					{"ID" : "150", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_800", "Port" : "KeccakRhoOffsets"},
					{"ID" : "111", "SubInstance" : "grp_Keccak_HashSqueeze_2_fu_746", "Port" : "KeccakRhoOffsets"},
					{"ID" : "189", "SubInstance" : "grp_Keccak_HashFinal_fu_843", "Port" : "KeccakRhoOffsets"},
					{"ID" : "124", "SubInstance" : "grp_Keccak_HashUpdate14_fu_767", "Port" : "KeccakRhoOffsets"},
					{"ID" : "137", "SubInstance" : "grp_Keccak_HashUpdate_7_fu_783", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_createRandomTape13_fu_697", "Port" : "KeccakRoundConstants"},
					{"ID" : "176", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_829", "Port" : "KeccakRoundConstants"},
					{"ID" : "163", "SubInstance" : "grp_Keccak_HashUpdate_6_fu_815", "Port" : "KeccakRoundConstants"},
					{"ID" : "150", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_800", "Port" : "KeccakRoundConstants"},
					{"ID" : "111", "SubInstance" : "grp_Keccak_HashSqueeze_2_fu_746", "Port" : "KeccakRoundConstants"},
					{"ID" : "189", "SubInstance" : "grp_Keccak_HashFinal_fu_843", "Port" : "KeccakRoundConstants"},
					{"ID" : "124", "SubInstance" : "grp_Keccak_HashUpdate14_fu_767", "Port" : "KeccakRoundConstants"},
					{"ID" : "137", "SubInstance" : "grp_Keccak_HashUpdate_7_fu_783", "Port" : "KeccakRoundConstants"}]},
			{"Name" : "temp_matrix", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_717", "Port" : "temp_matrix"}]},
			{"Name" : "temp_matrix2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_717", "Port" : "temp_matrix2"}]},
			{"Name" : "temp_matrix3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_717", "Port" : "temp_matrix3"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctx_sponge_state_1_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctx_sponge_state_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697", "Parent" : "0", "Child" : ["5", "6", "19", "32", "45", "58", "71", "84", "97"],
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
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_fu_72"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_fu_72"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate14_fu_90"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_2_fu_106"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_6_fu_120"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_134"},
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_134"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_134"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_149"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashFinal_fu_163"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashFinal_fu_163"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashInitializ_fu_178"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashInitializ_fu_178"}],
		"Port" : [
			{"Name" : "seed_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_Keccak_HashUpdate14_fu_90", "Port" : "data_0"}]},
			{"Name" : "seed_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "salt_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_Keccak_HashUpdate_6_fu_120", "Port" : "data_0"}]},
			{"Name" : "roundNumber", "Type" : "None", "Direction" : "I"},
			{"Name" : "playerNumber", "Type" : "None", "Direction" : "I"},
			{"Name" : "tape", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_Keccak_HashSqueeze_fu_72", "Port" : "data"},
					{"ID" : "32", "SubInstance" : "grp_Keccak_HashUpdate_2_fu_106", "Port" : "data"}]},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_Keccak_HashSqueeze_fu_72", "Port" : "KeccakRhoOffsets"},
					{"ID" : "32", "SubInstance" : "grp_Keccak_HashUpdate_2_fu_106", "Port" : "KeccakRhoOffsets"},
					{"ID" : "58", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_134", "Port" : "KeccakRhoOffsets"},
					{"ID" : "71", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_149", "Port" : "KeccakRhoOffsets"},
					{"ID" : "19", "SubInstance" : "grp_Keccak_HashUpdate14_fu_90", "Port" : "KeccakRhoOffsets"},
					{"ID" : "45", "SubInstance" : "grp_Keccak_HashUpdate_6_fu_120", "Port" : "KeccakRhoOffsets"},
					{"ID" : "84", "SubInstance" : "grp_Keccak_HashFinal_fu_163", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_Keccak_HashSqueeze_fu_72", "Port" : "KeccakRoundConstants"},
					{"ID" : "32", "SubInstance" : "grp_Keccak_HashUpdate_2_fu_106", "Port" : "KeccakRoundConstants"},
					{"ID" : "58", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_134", "Port" : "KeccakRoundConstants"},
					{"ID" : "71", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_149", "Port" : "KeccakRoundConstants"},
					{"ID" : "19", "SubInstance" : "grp_Keccak_HashUpdate14_fu_90", "Port" : "KeccakRoundConstants"},
					{"ID" : "45", "SubInstance" : "grp_Keccak_HashUpdate_6_fu_120", "Port" : "KeccakRoundConstants"},
					{"ID" : "84", "SubInstance" : "grp_Keccak_HashFinal_fu_163", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.ctx_sponge_state_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashSqueeze_fu_72", "Parent" : "4", "Child" : ["7"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_288"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_288"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_288"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_288", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "databitlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_288", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_288", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashSqueeze_fu_72.grp_KeccakP1600_Permute_s_fu_288", "Parent" : "6", "Child" : ["8", "9", "10", "11", "14", "16"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "8", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashSqueeze_fu_72.grp_KeccakP1600_Permute_s_fu_288.KeccakRhoOffsets_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashSqueeze_fu_72.grp_KeccakP1600_Permute_s_fu_288.KeccakRoundConstants_U", "Parent" : "7"},
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashSqueeze_fu_72.grp_KeccakP1600_Permute_s_fu_288.stateAsWords_U", "Parent" : "7"},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashSqueeze_fu_72.grp_KeccakP1600_Permute_s_fu_288.grp_theta_fu_225", "Parent" : "7", "Child" : ["12", "13"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "12", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashSqueeze_fu_72.grp_KeccakP1600_Permute_s_fu_288.grp_theta_fu_225.C_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashSqueeze_fu_72.grp_KeccakP1600_Permute_s_fu_288.grp_theta_fu_225.D_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashSqueeze_fu_72.grp_KeccakP1600_Permute_s_fu_288.grp_chi_fu_230", "Parent" : "7", "Child" : ["15"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "15", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashSqueeze_fu_72.grp_KeccakP1600_Permute_s_fu_288.grp_chi_fu_230.C_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashSqueeze_fu_72.grp_KeccakP1600_Permute_s_fu_288.grp_pi_fu_235", "Parent" : "7", "Child" : ["17", "18"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "17", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashSqueeze_fu_72.grp_KeccakP1600_Permute_s_fu_288.grp_pi_fu_235.tempA_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashSqueeze_fu_72.grp_KeccakP1600_Permute_s_fu_288.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "16"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate14_fu_90", "Parent" : "4", "Child" : ["20"],
		"CDFG" : "Keccak_HashUpdate14",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
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
			{"Name" : "instance_sponge_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate14_fu_90.grp_KeccakP1600_Permute_s_fu_197", "Parent" : "19", "Child" : ["21", "22", "23", "24", "27", "29"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "21", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate14_fu_90.grp_KeccakP1600_Permute_s_fu_197.KeccakRhoOffsets_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate14_fu_90.grp_KeccakP1600_Permute_s_fu_197.KeccakRoundConstants_U", "Parent" : "20"},
	{"ID" : "23", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate14_fu_90.grp_KeccakP1600_Permute_s_fu_197.stateAsWords_U", "Parent" : "20"},
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate14_fu_90.grp_KeccakP1600_Permute_s_fu_197.grp_theta_fu_225", "Parent" : "20", "Child" : ["25", "26"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "25", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate14_fu_90.grp_KeccakP1600_Permute_s_fu_197.grp_theta_fu_225.C_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate14_fu_90.grp_KeccakP1600_Permute_s_fu_197.grp_theta_fu_225.D_U", "Parent" : "24"},
	{"ID" : "27", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate14_fu_90.grp_KeccakP1600_Permute_s_fu_197.grp_chi_fu_230", "Parent" : "20", "Child" : ["28"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "28", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate14_fu_90.grp_KeccakP1600_Permute_s_fu_197.grp_chi_fu_230.C_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate14_fu_90.grp_KeccakP1600_Permute_s_fu_197.grp_pi_fu_235", "Parent" : "20", "Child" : ["30", "31"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "30", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate14_fu_90.grp_KeccakP1600_Permute_s_fu_197.grp_pi_fu_235.tempA_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate14_fu_90.grp_KeccakP1600_Permute_s_fu_197.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "29"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_2_fu_106", "Parent" : "4", "Child" : ["33"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_2_fu_106.grp_KeccakP1600_Permute_s_fu_183", "Parent" : "32", "Child" : ["34", "35", "36", "37", "40", "42"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_2_fu_106.grp_KeccakP1600_Permute_s_fu_183.KeccakRhoOffsets_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_2_fu_106.grp_KeccakP1600_Permute_s_fu_183.KeccakRoundConstants_U", "Parent" : "33"},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_2_fu_106.grp_KeccakP1600_Permute_s_fu_183.stateAsWords_U", "Parent" : "33"},
	{"ID" : "37", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_2_fu_106.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225", "Parent" : "33", "Child" : ["38", "39"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "38", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_2_fu_106.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225.C_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_2_fu_106.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225.D_U", "Parent" : "37"},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_2_fu_106.grp_KeccakP1600_Permute_s_fu_183.grp_chi_fu_230", "Parent" : "33", "Child" : ["41"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "41", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_2_fu_106.grp_KeccakP1600_Permute_s_fu_183.grp_chi_fu_230.C_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_2_fu_106.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235", "Parent" : "33", "Child" : ["43", "44"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "43", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_2_fu_106.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235.tempA_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_2_fu_106.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "42"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_6_fu_120", "Parent" : "4", "Child" : ["46"],
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
					{"ID" : "46", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_6_fu_120.grp_KeccakP1600_Permute_s_fu_183", "Parent" : "45", "Child" : ["47", "48", "49", "50", "53", "55"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "47", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_6_fu_120.grp_KeccakP1600_Permute_s_fu_183.KeccakRhoOffsets_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_6_fu_120.grp_KeccakP1600_Permute_s_fu_183.KeccakRoundConstants_U", "Parent" : "46"},
	{"ID" : "49", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_6_fu_120.grp_KeccakP1600_Permute_s_fu_183.stateAsWords_U", "Parent" : "46"},
	{"ID" : "50", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_6_fu_120.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225", "Parent" : "46", "Child" : ["51", "52"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "51", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_6_fu_120.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225.C_U", "Parent" : "50"},
	{"ID" : "52", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_6_fu_120.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225.D_U", "Parent" : "50"},
	{"ID" : "53", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_6_fu_120.grp_KeccakP1600_Permute_s_fu_183.grp_chi_fu_230", "Parent" : "46", "Child" : ["54"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "54", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_6_fu_120.grp_KeccakP1600_Permute_s_fu_183.grp_chi_fu_230.C_U", "Parent" : "53"},
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_6_fu_120.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235", "Parent" : "46", "Child" : ["56", "57"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "56", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_6_fu_120.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235.tempA_U", "Parent" : "55"},
	{"ID" : "57", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_6_fu_120.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "55"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_5_fu_134", "Parent" : "4", "Child" : ["59"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_172"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_172"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_172", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_172", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_172", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_5_fu_134.grp_KeccakP1600_Permute_s_fu_172", "Parent" : "58", "Child" : ["60", "61", "62", "63", "66", "68"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "60", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_5_fu_134.grp_KeccakP1600_Permute_s_fu_172.KeccakRhoOffsets_U", "Parent" : "59"},
	{"ID" : "61", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_5_fu_134.grp_KeccakP1600_Permute_s_fu_172.KeccakRoundConstants_U", "Parent" : "59"},
	{"ID" : "62", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_5_fu_134.grp_KeccakP1600_Permute_s_fu_172.stateAsWords_U", "Parent" : "59"},
	{"ID" : "63", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_5_fu_134.grp_KeccakP1600_Permute_s_fu_172.grp_theta_fu_225", "Parent" : "59", "Child" : ["64", "65"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "64", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_5_fu_134.grp_KeccakP1600_Permute_s_fu_172.grp_theta_fu_225.C_U", "Parent" : "63"},
	{"ID" : "65", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_5_fu_134.grp_KeccakP1600_Permute_s_fu_172.grp_theta_fu_225.D_U", "Parent" : "63"},
	{"ID" : "66", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_5_fu_134.grp_KeccakP1600_Permute_s_fu_172.grp_chi_fu_230", "Parent" : "59", "Child" : ["67"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "67", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_5_fu_134.grp_KeccakP1600_Permute_s_fu_172.grp_chi_fu_230.C_U", "Parent" : "66"},
	{"ID" : "68", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_5_fu_134.grp_KeccakP1600_Permute_s_fu_172.grp_pi_fu_235", "Parent" : "59", "Child" : ["69", "70"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "69", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_5_fu_134.grp_KeccakP1600_Permute_s_fu_172.grp_pi_fu_235.tempA_U", "Parent" : "68"},
	{"ID" : "70", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_5_fu_134.grp_KeccakP1600_Permute_s_fu_172.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "68"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_1_fu_149", "Parent" : "4", "Child" : ["72"],
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
					{"ID" : "72", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_1_fu_149.grp_KeccakP1600_Permute_s_fu_162", "Parent" : "71", "Child" : ["73", "74", "75", "76", "79", "81"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "73", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_1_fu_149.grp_KeccakP1600_Permute_s_fu_162.KeccakRhoOffsets_U", "Parent" : "72"},
	{"ID" : "74", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_1_fu_149.grp_KeccakP1600_Permute_s_fu_162.KeccakRoundConstants_U", "Parent" : "72"},
	{"ID" : "75", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_1_fu_149.grp_KeccakP1600_Permute_s_fu_162.stateAsWords_U", "Parent" : "72"},
	{"ID" : "76", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_1_fu_149.grp_KeccakP1600_Permute_s_fu_162.grp_theta_fu_225", "Parent" : "72", "Child" : ["77", "78"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "77", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_1_fu_149.grp_KeccakP1600_Permute_s_fu_162.grp_theta_fu_225.C_U", "Parent" : "76"},
	{"ID" : "78", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_1_fu_149.grp_KeccakP1600_Permute_s_fu_162.grp_theta_fu_225.D_U", "Parent" : "76"},
	{"ID" : "79", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_1_fu_149.grp_KeccakP1600_Permute_s_fu_162.grp_chi_fu_230", "Parent" : "72", "Child" : ["80"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "80", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_1_fu_149.grp_KeccakP1600_Permute_s_fu_162.grp_chi_fu_230.C_U", "Parent" : "79"},
	{"ID" : "81", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_1_fu_149.grp_KeccakP1600_Permute_s_fu_162.grp_pi_fu_235", "Parent" : "72", "Child" : ["82", "83"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "82", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_1_fu_149.grp_KeccakP1600_Permute_s_fu_162.grp_pi_fu_235.tempA_U", "Parent" : "81"},
	{"ID" : "83", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_1_fu_149.grp_KeccakP1600_Permute_s_fu_162.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "81"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashFinal_fu_163", "Parent" : "4", "Child" : ["85"],
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
					{"ID" : "85", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_delimitedSu", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashFinal_fu_163.grp_KeccakP1600_Permute_s_fu_124", "Parent" : "84", "Child" : ["86", "87", "88", "89", "92", "94"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "86", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashFinal_fu_163.grp_KeccakP1600_Permute_s_fu_124.KeccakRhoOffsets_U", "Parent" : "85"},
	{"ID" : "87", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashFinal_fu_163.grp_KeccakP1600_Permute_s_fu_124.KeccakRoundConstants_U", "Parent" : "85"},
	{"ID" : "88", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashFinal_fu_163.grp_KeccakP1600_Permute_s_fu_124.stateAsWords_U", "Parent" : "85"},
	{"ID" : "89", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashFinal_fu_163.grp_KeccakP1600_Permute_s_fu_124.grp_theta_fu_225", "Parent" : "85", "Child" : ["90", "91"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "90", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashFinal_fu_163.grp_KeccakP1600_Permute_s_fu_124.grp_theta_fu_225.C_U", "Parent" : "89"},
	{"ID" : "91", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashFinal_fu_163.grp_KeccakP1600_Permute_s_fu_124.grp_theta_fu_225.D_U", "Parent" : "89"},
	{"ID" : "92", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashFinal_fu_163.grp_KeccakP1600_Permute_s_fu_124.grp_chi_fu_230", "Parent" : "85", "Child" : ["93"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "93", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashFinal_fu_163.grp_KeccakP1600_Permute_s_fu_124.grp_chi_fu_230.C_U", "Parent" : "92"},
	{"ID" : "94", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashFinal_fu_163.grp_KeccakP1600_Permute_s_fu_124.grp_pi_fu_235", "Parent" : "85", "Child" : ["95", "96"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "95", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashFinal_fu_163.grp_KeccakP1600_Permute_s_fu_124.grp_pi_fu_235.tempA_U", "Parent" : "94"},
	{"ID" : "96", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashFinal_fu_163.grp_KeccakP1600_Permute_s_fu_124.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "94"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashInitializ_fu_178", "Parent" : "4",
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
			{"Name" : "instance_delimitedSuffix_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_717", "Parent" : "0", "Child" : ["99", "100", "104", "108"],
		"CDFG" : "mpc_LowMC_verify_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "217450", "EstimateLatencyMax" : "217618",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_686"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_686"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_686"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_686"},
			{"State" : "ap_ST_fsm_state31", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_1_fu_703"},
			{"State" : "ap_ST_fsm_state33", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_1_fu_703"},
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mpc_AND_verify_2_fu_715"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mpc_AND_verify_2_fu_715"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mpc_AND_verify_2_fu_715"}],
		"Port" : [
			{"Name" : "view1_inputShare", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "100", "SubInstance" : "grp_matrix_mul_fu_686", "Port" : "state"}]},
			{"Name" : "view1_inputShare_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "view1_communicatedBi", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "108", "SubInstance" : "grp_mpc_AND_verify_2_fu_715", "Port" : "view1_communicatedBi"}]},
			{"Name" : "view1_outputShare", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "view2_inputShare", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "100", "SubInstance" : "grp_matrix_mul_fu_686", "Port" : "state"}]},
			{"Name" : "view2_communicatedBi", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "108", "SubInstance" : "grp_mpc_AND_verify_2_fu_715", "Port" : "view2_communicatedBi"}]},
			{"Name" : "view2_outputShare", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tapes_0_tape", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "108", "SubInstance" : "grp_mpc_AND_verify_2_fu_715", "Port" : "rand_0_tape"}]},
			{"Name" : "tmp", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "104", "SubInstance" : "grp_matrix_mul_1_fu_703", "Port" : "output_r"},
					{"ID" : "100", "SubInstance" : "grp_matrix_mul_fu_686", "Port" : "output_r"}]},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "challenge", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_matrix", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "100", "SubInstance" : "grp_matrix_mul_fu_686", "Port" : "temp_matrix"}]},
			{"Name" : "temp_matrix2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "104", "SubInstance" : "grp_matrix_mul_1_fu_703", "Port" : "temp_matrix2"}]},
			{"Name" : "temp_matrix3", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_717.temp_matrix3_U", "Parent" : "98"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_717.grp_matrix_mul_fu_686", "Parent" : "98", "Child" : ["101", "102", "103"],
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
			{"Name" : "matrix_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_matrix", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_717.grp_matrix_mul_fu_686.temp_matrix_U", "Parent" : "100"},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_717.grp_matrix_mul_fu_686.prod_U", "Parent" : "100"},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_717.grp_matrix_mul_fu_686.temp_U", "Parent" : "100"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_717.grp_matrix_mul_1_fu_703", "Parent" : "98", "Child" : ["105", "106", "107"],
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
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_717.grp_matrix_mul_1_fu_703.temp_matrix2_U", "Parent" : "104"},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_717.grp_matrix_mul_1_fu_703.prod_U", "Parent" : "104"},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_717.grp_matrix_mul_1_fu_703.temp_U", "Parent" : "104"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_717.grp_mpc_AND_verify_2_fu_715", "Parent" : "98", "Child" : ["109", "110"],
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
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_717.grp_mpc_AND_verify_2_fu_715.crypto_sign_open_hbi_U100", "Parent" : "108"},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_717.grp_mpc_AND_verify_2_fu_715.crypto_sign_open_hbi_U101", "Parent" : "108"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_746", "Parent" : "0", "Child" : ["112"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_302"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_302"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_302"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_302", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "databitlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_302", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_302", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_746.grp_KeccakP1600_Permute_s_fu_302", "Parent" : "111", "Child" : ["113", "114", "115", "116", "119", "121"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_746.grp_KeccakP1600_Permute_s_fu_302.KeccakRhoOffsets_U", "Parent" : "112"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_746.grp_KeccakP1600_Permute_s_fu_302.KeccakRoundConstants_U", "Parent" : "112"},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_746.grp_KeccakP1600_Permute_s_fu_302.stateAsWords_U", "Parent" : "112"},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_746.grp_KeccakP1600_Permute_s_fu_302.grp_theta_fu_225", "Parent" : "112", "Child" : ["117", "118"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "117", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_746.grp_KeccakP1600_Permute_s_fu_302.grp_theta_fu_225.C_U", "Parent" : "116"},
	{"ID" : "118", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_746.grp_KeccakP1600_Permute_s_fu_302.grp_theta_fu_225.D_U", "Parent" : "116"},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_746.grp_KeccakP1600_Permute_s_fu_302.grp_chi_fu_230", "Parent" : "112", "Child" : ["120"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "120", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_746.grp_KeccakP1600_Permute_s_fu_302.grp_chi_fu_230.C_U", "Parent" : "119"},
	{"ID" : "121", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_746.grp_KeccakP1600_Permute_s_fu_302.grp_pi_fu_235", "Parent" : "112", "Child" : ["122", "123"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "122", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_746.grp_KeccakP1600_Permute_s_fu_302.grp_pi_fu_235.tempA_U", "Parent" : "121"},
	{"ID" : "123", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_746.grp_KeccakP1600_Permute_s_fu_302.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "121"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate14_fu_767", "Parent" : "0", "Child" : ["125"],
		"CDFG" : "Keccak_HashUpdate14",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
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
			{"Name" : "instance_sponge_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate14_fu_767.grp_KeccakP1600_Permute_s_fu_197", "Parent" : "124", "Child" : ["126", "127", "128", "129", "132", "134"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "126", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate14_fu_767.grp_KeccakP1600_Permute_s_fu_197.KeccakRhoOffsets_U", "Parent" : "125"},
	{"ID" : "127", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate14_fu_767.grp_KeccakP1600_Permute_s_fu_197.KeccakRoundConstants_U", "Parent" : "125"},
	{"ID" : "128", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate14_fu_767.grp_KeccakP1600_Permute_s_fu_197.stateAsWords_U", "Parent" : "125"},
	{"ID" : "129", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate14_fu_767.grp_KeccakP1600_Permute_s_fu_197.grp_theta_fu_225", "Parent" : "125", "Child" : ["130", "131"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "130", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate14_fu_767.grp_KeccakP1600_Permute_s_fu_197.grp_theta_fu_225.C_U", "Parent" : "129"},
	{"ID" : "131", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate14_fu_767.grp_KeccakP1600_Permute_s_fu_197.grp_theta_fu_225.D_U", "Parent" : "129"},
	{"ID" : "132", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate14_fu_767.grp_KeccakP1600_Permute_s_fu_197.grp_chi_fu_230", "Parent" : "125", "Child" : ["133"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "133", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate14_fu_767.grp_KeccakP1600_Permute_s_fu_197.grp_chi_fu_230.C_U", "Parent" : "132"},
	{"ID" : "134", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate14_fu_767.grp_KeccakP1600_Permute_s_fu_197.grp_pi_fu_235", "Parent" : "125", "Child" : ["135", "136"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "135", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate14_fu_767.grp_KeccakP1600_Permute_s_fu_197.grp_pi_fu_235.tempA_U", "Parent" : "134"},
	{"ID" : "136", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate14_fu_767.grp_KeccakP1600_Permute_s_fu_197.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "134"},
	{"ID" : "137", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_783", "Parent" : "0", "Child" : ["138"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_783.grp_KeccakP1600_Permute_s_fu_197", "Parent" : "137", "Child" : ["139", "140", "141", "142", "145", "147"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "139", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_783.grp_KeccakP1600_Permute_s_fu_197.KeccakRhoOffsets_U", "Parent" : "138"},
	{"ID" : "140", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_783.grp_KeccakP1600_Permute_s_fu_197.KeccakRoundConstants_U", "Parent" : "138"},
	{"ID" : "141", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_783.grp_KeccakP1600_Permute_s_fu_197.stateAsWords_U", "Parent" : "138"},
	{"ID" : "142", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_783.grp_KeccakP1600_Permute_s_fu_197.grp_theta_fu_225", "Parent" : "138", "Child" : ["143", "144"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "143", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_783.grp_KeccakP1600_Permute_s_fu_197.grp_theta_fu_225.C_U", "Parent" : "142"},
	{"ID" : "144", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_783.grp_KeccakP1600_Permute_s_fu_197.grp_theta_fu_225.D_U", "Parent" : "142"},
	{"ID" : "145", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_783.grp_KeccakP1600_Permute_s_fu_197.grp_chi_fu_230", "Parent" : "138", "Child" : ["146"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "146", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_783.grp_KeccakP1600_Permute_s_fu_197.grp_chi_fu_230.C_U", "Parent" : "145"},
	{"ID" : "147", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_783.grp_KeccakP1600_Permute_s_fu_197.grp_pi_fu_235", "Parent" : "138", "Child" : ["148", "149"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "148", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_783.grp_KeccakP1600_Permute_s_fu_197.grp_pi_fu_235.tempA_U", "Parent" : "147"},
	{"ID" : "149", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_783.grp_KeccakP1600_Permute_s_fu_197.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "147"},
	{"ID" : "150", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_800", "Parent" : "0", "Child" : ["151"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_172"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_172"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_172", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_172", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_172", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_800.grp_KeccakP1600_Permute_s_fu_172", "Parent" : "150", "Child" : ["152", "153", "154", "155", "158", "160"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "152", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_800.grp_KeccakP1600_Permute_s_fu_172.KeccakRhoOffsets_U", "Parent" : "151"},
	{"ID" : "153", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_800.grp_KeccakP1600_Permute_s_fu_172.KeccakRoundConstants_U", "Parent" : "151"},
	{"ID" : "154", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_800.grp_KeccakP1600_Permute_s_fu_172.stateAsWords_U", "Parent" : "151"},
	{"ID" : "155", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_800.grp_KeccakP1600_Permute_s_fu_172.grp_theta_fu_225", "Parent" : "151", "Child" : ["156", "157"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "156", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_800.grp_KeccakP1600_Permute_s_fu_172.grp_theta_fu_225.C_U", "Parent" : "155"},
	{"ID" : "157", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_800.grp_KeccakP1600_Permute_s_fu_172.grp_theta_fu_225.D_U", "Parent" : "155"},
	{"ID" : "158", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_800.grp_KeccakP1600_Permute_s_fu_172.grp_chi_fu_230", "Parent" : "151", "Child" : ["159"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "159", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_800.grp_KeccakP1600_Permute_s_fu_172.grp_chi_fu_230.C_U", "Parent" : "158"},
	{"ID" : "160", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_800.grp_KeccakP1600_Permute_s_fu_172.grp_pi_fu_235", "Parent" : "151", "Child" : ["161", "162"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "161", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_800.grp_KeccakP1600_Permute_s_fu_172.grp_pi_fu_235.tempA_U", "Parent" : "160"},
	{"ID" : "162", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_800.grp_KeccakP1600_Permute_s_fu_172.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "160"},
	{"ID" : "163", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_815", "Parent" : "0", "Child" : ["164"],
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
					{"ID" : "164", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_815.grp_KeccakP1600_Permute_s_fu_183", "Parent" : "163", "Child" : ["165", "166", "167", "168", "171", "173"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "165", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_815.grp_KeccakP1600_Permute_s_fu_183.KeccakRhoOffsets_U", "Parent" : "164"},
	{"ID" : "166", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_815.grp_KeccakP1600_Permute_s_fu_183.KeccakRoundConstants_U", "Parent" : "164"},
	{"ID" : "167", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_815.grp_KeccakP1600_Permute_s_fu_183.stateAsWords_U", "Parent" : "164"},
	{"ID" : "168", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_815.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225", "Parent" : "164", "Child" : ["169", "170"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "169", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_815.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225.C_U", "Parent" : "168"},
	{"ID" : "170", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_815.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225.D_U", "Parent" : "168"},
	{"ID" : "171", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_815.grp_KeccakP1600_Permute_s_fu_183.grp_chi_fu_230", "Parent" : "164", "Child" : ["172"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "172", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_815.grp_KeccakP1600_Permute_s_fu_183.grp_chi_fu_230.C_U", "Parent" : "171"},
	{"ID" : "173", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_815.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235", "Parent" : "164", "Child" : ["174", "175"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "174", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_815.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235.tempA_U", "Parent" : "173"},
	{"ID" : "175", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_815.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "173"},
	{"ID" : "176", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_829", "Parent" : "0", "Child" : ["177"],
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
					{"ID" : "177", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "177", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "177", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "177", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_829.grp_KeccakP1600_Permute_s_fu_162", "Parent" : "176", "Child" : ["178", "179", "180", "181", "184", "186"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "178", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_829.grp_KeccakP1600_Permute_s_fu_162.KeccakRhoOffsets_U", "Parent" : "177"},
	{"ID" : "179", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_829.grp_KeccakP1600_Permute_s_fu_162.KeccakRoundConstants_U", "Parent" : "177"},
	{"ID" : "180", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_829.grp_KeccakP1600_Permute_s_fu_162.stateAsWords_U", "Parent" : "177"},
	{"ID" : "181", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_829.grp_KeccakP1600_Permute_s_fu_162.grp_theta_fu_225", "Parent" : "177", "Child" : ["182", "183"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "182", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_829.grp_KeccakP1600_Permute_s_fu_162.grp_theta_fu_225.C_U", "Parent" : "181"},
	{"ID" : "183", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_829.grp_KeccakP1600_Permute_s_fu_162.grp_theta_fu_225.D_U", "Parent" : "181"},
	{"ID" : "184", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_829.grp_KeccakP1600_Permute_s_fu_162.grp_chi_fu_230", "Parent" : "177", "Child" : ["185"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "185", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_829.grp_KeccakP1600_Permute_s_fu_162.grp_chi_fu_230.C_U", "Parent" : "184"},
	{"ID" : "186", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_829.grp_KeccakP1600_Permute_s_fu_162.grp_pi_fu_235", "Parent" : "177", "Child" : ["187", "188"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "187", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_829.grp_KeccakP1600_Permute_s_fu_162.grp_pi_fu_235.tempA_U", "Parent" : "186"},
	{"ID" : "188", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_829.grp_KeccakP1600_Permute_s_fu_162.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "186"},
	{"ID" : "189", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_843", "Parent" : "0", "Child" : ["190"],
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
					{"ID" : "190", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_delimitedSu", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "190", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "190", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "190", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_843.grp_KeccakP1600_Permute_s_fu_124", "Parent" : "189", "Child" : ["191", "192", "193", "194", "197", "199"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "191", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_843.grp_KeccakP1600_Permute_s_fu_124.KeccakRhoOffsets_U", "Parent" : "190"},
	{"ID" : "192", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_843.grp_KeccakP1600_Permute_s_fu_124.KeccakRoundConstants_U", "Parent" : "190"},
	{"ID" : "193", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_843.grp_KeccakP1600_Permute_s_fu_124.stateAsWords_U", "Parent" : "190"},
	{"ID" : "194", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_843.grp_KeccakP1600_Permute_s_fu_124.grp_theta_fu_225", "Parent" : "190", "Child" : ["195", "196"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "195", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_843.grp_KeccakP1600_Permute_s_fu_124.grp_theta_fu_225.C_U", "Parent" : "194"},
	{"ID" : "196", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_843.grp_KeccakP1600_Permute_s_fu_124.grp_theta_fu_225.D_U", "Parent" : "194"},
	{"ID" : "197", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_843.grp_KeccakP1600_Permute_s_fu_124.grp_chi_fu_230", "Parent" : "190", "Child" : ["198"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "198", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_843.grp_KeccakP1600_Permute_s_fu_124.grp_chi_fu_230.C_U", "Parent" : "197"},
	{"ID" : "199", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_843.grp_KeccakP1600_Permute_s_fu_124.grp_pi_fu_235", "Parent" : "190", "Child" : ["200", "201"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "200", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_843.grp_KeccakP1600_Permute_s_fu_124.grp_pi_fu_235.tempA_U", "Parent" : "199"},
	{"ID" : "201", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_843.grp_KeccakP1600_Permute_s_fu_124.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "199"},
	{"ID" : "202", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashInitializ_fu_858", "Parent" : "0",
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
	verifyProof_24 {
		proof_0_seed1 {Type I LastRead 4 FirstWrite -1}
		proof_seed1_offset1 {Type I LastRead 0 FirstWrite -1}
		proof_0_seed2 {Type I LastRead 4 FirstWrite -1}
		proof_0_inputShare {Type I LastRead 31 FirstWrite -1}
		proof_0_communicatedBits {Type I LastRead 2 FirstWrite -1}
		view1_inputShare {Type IO LastRead 5 FirstWrite -1}
		view1_communicatedBits {Type IO LastRead 1 FirstWrite 2}
		view1_outputShare {Type O LastRead -1 FirstWrite 10}
		view2_inputShare {Type IO LastRead 30 FirstWrite -1}
		view2_communicatedBits {Type IO LastRead 1 FirstWrite -1}
		view2_outputShare {Type O LastRead -1 FirstWrite 11}
		challenge {Type I LastRead 0 FirstWrite -1}
		salt_0 {Type I LastRead 4 FirstWrite -1}
		roundNumber {Type I LastRead 0 FirstWrite -1}
		tmp {Type IO LastRead 33 FirstWrite -1}
		plaintext {Type I LastRead 4 FirstWrite -1}
		tape_0_tape {Type IO LastRead 4 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}
		temp_matrix {Type I LastRead -1 FirstWrite -1}
		temp_matrix2 {Type I LastRead -1 FirstWrite -1}
		temp_matrix3 {Type I LastRead -1 FirstWrite -1}}
	createRandomTape13 {
		seed_0 {Type I LastRead 4 FirstWrite -1}
		seed_offset1 {Type I LastRead 4 FirstWrite -1}
		salt_0 {Type I LastRead 4 FirstWrite -1}
		roundNumber {Type I LastRead 16 FirstWrite -1}
		playerNumber {Type I LastRead 18 FirstWrite -1}
		tape {Type IO LastRead 4 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	Keccak_HashSqueeze {
		instance_sponge_stat {Type IO LastRead 10 FirstWrite 1}
		instance_sponge_rate {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque_25 {Type I LastRead 0 FirstWrite -1}
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
	Keccak_HashUpdate14 {
		instance_sponge_state {Type IO LastRead 4 FirstWrite 4}
		instance_sponge_rate_read {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		instance_sponge_squeezing_read {Type I LastRead 0 FirstWrite -1}
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
	Keccak_HashUpdate_2 {
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
	Keccak_HashUpdate_5 {
		instance_sponge_stat {Type IO LastRead 4 FirstWrite 4}
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
		instance_delimitedSuffix_read {Type I LastRead 0 FirstWrite -1}}
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
	Keccak_HashSqueeze_2 {
		instance_sponge_stat {Type IO LastRead 10 FirstWrite 1}
		instance_sponge_rate {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque_17 {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque {Type I LastRead 0 FirstWrite -1}
		data_0 {Type O LastRead -1 FirstWrite 10}
		data_offset1 {Type I LastRead 0 FirstWrite -1}
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
	Keccak_HashUpdate14 {
		instance_sponge_state {Type IO LastRead 4 FirstWrite 4}
		instance_sponge_rate_read {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		instance_sponge_squeezing_read {Type I LastRead 0 FirstWrite -1}
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
	Keccak_HashUpdate_7 {
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
	Keccak_HashUpdate_5 {
		instance_sponge_stat {Type IO LastRead 4 FirstWrite 4}
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
	proof_0_seed1 { ap_memory {  { proof_0_seed1_address0 mem_address 1 12 }  { proof_0_seed1_ce0 mem_ce 1 1 }  { proof_0_seed1_q0 mem_dout 0 8 } } }
	proof_seed1_offset1 { ap_none {  { proof_seed1_offset1 in_data 0 8 } } }
	proof_0_seed2 { ap_memory {  { proof_0_seed2_address0 mem_address 1 12 }  { proof_0_seed2_ce0 mem_ce 1 1 }  { proof_0_seed2_q0 mem_dout 0 8 } } }
	proof_0_inputShare { ap_memory {  { proof_0_inputShare_address0 mem_address 1 10 }  { proof_0_inputShare_ce0 mem_ce 1 1 }  { proof_0_inputShare_q0 mem_dout 0 32 } } }
	proof_0_communicatedBits { ap_memory {  { proof_0_communicatedBits_address0 mem_address 1 15 }  { proof_0_communicatedBits_ce0 mem_ce 1 1 }  { proof_0_communicatedBits_q0 mem_dout 0 8 } } }
	view1_inputShare { ap_memory {  { view1_inputShare_address0 mem_address 1 10 }  { view1_inputShare_ce0 mem_ce 1 1 }  { view1_inputShare_we0 mem_we 1 1 }  { view1_inputShare_d0 mem_din 1 32 }  { view1_inputShare_q0 mem_dout 0 32 } } }
	view1_communicatedBits { ap_memory {  { view1_communicatedBits_address0 mem_address 1 15 }  { view1_communicatedBits_ce0 mem_ce 1 1 }  { view1_communicatedBits_we0 mem_we 1 1 }  { view1_communicatedBits_d0 mem_din 1 8 }  { view1_communicatedBits_q0 mem_dout 0 8 } } }
	view1_outputShare { ap_memory {  { view1_outputShare_address0 mem_address 1 10 }  { view1_outputShare_ce0 mem_ce 1 1 }  { view1_outputShare_we0 mem_we 1 1 }  { view1_outputShare_d0 mem_din 1 32 } } }
	view2_inputShare { ap_memory {  { view2_inputShare_address0 mem_address 1 10 }  { view2_inputShare_ce0 mem_ce 1 1 }  { view2_inputShare_we0 mem_we 1 1 }  { view2_inputShare_d0 mem_din 1 32 }  { view2_inputShare_q0 mem_dout 0 32 } } }
	view2_communicatedBits { ap_memory {  { view2_communicatedBits_address0 mem_address 1 15 }  { view2_communicatedBits_ce0 mem_ce 1 1 }  { view2_communicatedBits_we0 mem_we 1 1 }  { view2_communicatedBits_d0 mem_din 1 8 }  { view2_communicatedBits_q0 mem_dout 0 8 } } }
	view2_outputShare { ap_memory {  { view2_outputShare_address0 mem_address 1 10 }  { view2_outputShare_ce0 mem_ce 1 1 }  { view2_outputShare_we0 mem_we 1 1 }  { view2_outputShare_d0 mem_din 1 32 } } }
	challenge { ap_none {  { challenge in_data 0 2 } } }
	salt_0 { ap_memory {  { salt_0_address0 mem_address 1 5 }  { salt_0_ce0 mem_ce 1 1 }  { salt_0_q0 mem_dout 0 8 } } }
	roundNumber { ap_none {  { roundNumber in_data 0 8 } } }
	tmp { ap_memory {  { tmp_address0 mem_address 1 7 }  { tmp_ce0 mem_ce 1 1 }  { tmp_we0 mem_we 1 1 }  { tmp_d0 mem_din 1 8 }  { tmp_q0 mem_dout 0 8 } } }
	plaintext { ap_memory {  { plaintext_address0 mem_address 1 3 }  { plaintext_ce0 mem_ce 1 1 }  { plaintext_q0 mem_dout 0 32 } } }
	tape_0_tape { ap_memory {  { tape_0_tape_address0 mem_address 1 9 }  { tape_0_tape_ce0 mem_ce 1 1 }  { tape_0_tape_we0 mem_we 1 1 }  { tape_0_tape_d0 mem_din 1 8 }  { tape_0_tape_q0 mem_dout 0 8 }  { tape_0_tape_address1 mem_address 1 9 }  { tape_0_tape_ce1 mem_ce 1 1 }  { tape_0_tape_q1 mem_dout 0 8 } } }
}
set moduleName verifyProof_24
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
set C_modelName {verifyProof_24}
set C_modelType { void 0 }
set C_modelArgList {
	{ proof_0_seed1 int 8 regular {array 3504 { 1 3 } 1 1 }  }
	{ proof_seed1_offset1 int 8 regular  }
	{ proof_0_seed2 int 8 regular {array 3504 { 1 3 } 1 1 }  }
	{ proof_0_inputShare int 32 regular {array 876 { 1 3 } 1 1 }  }
	{ proof_0_communicatedBits int 8 regular {array 16425 { 1 3 } 1 1 }  }
	{ view1_inputShare int 32 regular {array 876 { 2 3 } 1 1 }  }
	{ view1_communicatedBits int 8 regular {array 16425 { 2 3 } 1 1 }  }
	{ view1_outputShare int 32 regular {array 876 { 0 3 } 0 1 }  }
	{ view2_inputShare int 32 regular {array 876 { 2 3 } 1 1 }  }
	{ view2_communicatedBits int 8 regular {array 16425 { 2 3 } 1 1 }  }
	{ view2_outputShare int 32 regular {array 876 { 0 3 } 0 1 }  }
	{ challenge int 2 regular  }
	{ salt_0 int 8 regular {array 32 { 1 3 } 1 1 }  }
	{ roundNumber int 8 regular  }
	{ tmp int 8 regular {array 96 { 2 3 } 1 1 }  }
	{ plaintext int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ tape_0_tape int 8 regular {array 498 { 2 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "proof_0_seed1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "proof_seed1_offset1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "proof_0_seed2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "proof_0_inputShare", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "proof_0_communicatedBits", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "view1_inputShare", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "view1_communicatedBits", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "view1_outputShare", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "view2_inputShare", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "view2_communicatedBits", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "view2_outputShare", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "challenge", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "salt_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "roundNumber", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "tmp", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "plaintext", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tape_0_tape", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 68
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ proof_0_seed1_address0 sc_out sc_lv 12 signal 0 } 
	{ proof_0_seed1_ce0 sc_out sc_logic 1 signal 0 } 
	{ proof_0_seed1_q0 sc_in sc_lv 8 signal 0 } 
	{ proof_seed1_offset1 sc_in sc_lv 8 signal 1 } 
	{ proof_0_seed2_address0 sc_out sc_lv 12 signal 2 } 
	{ proof_0_seed2_ce0 sc_out sc_logic 1 signal 2 } 
	{ proof_0_seed2_q0 sc_in sc_lv 8 signal 2 } 
	{ proof_0_inputShare_address0 sc_out sc_lv 10 signal 3 } 
	{ proof_0_inputShare_ce0 sc_out sc_logic 1 signal 3 } 
	{ proof_0_inputShare_q0 sc_in sc_lv 32 signal 3 } 
	{ proof_0_communicatedBits_address0 sc_out sc_lv 15 signal 4 } 
	{ proof_0_communicatedBits_ce0 sc_out sc_logic 1 signal 4 } 
	{ proof_0_communicatedBits_q0 sc_in sc_lv 8 signal 4 } 
	{ view1_inputShare_address0 sc_out sc_lv 10 signal 5 } 
	{ view1_inputShare_ce0 sc_out sc_logic 1 signal 5 } 
	{ view1_inputShare_we0 sc_out sc_logic 1 signal 5 } 
	{ view1_inputShare_d0 sc_out sc_lv 32 signal 5 } 
	{ view1_inputShare_q0 sc_in sc_lv 32 signal 5 } 
	{ view1_communicatedBits_address0 sc_out sc_lv 15 signal 6 } 
	{ view1_communicatedBits_ce0 sc_out sc_logic 1 signal 6 } 
	{ view1_communicatedBits_we0 sc_out sc_logic 1 signal 6 } 
	{ view1_communicatedBits_d0 sc_out sc_lv 8 signal 6 } 
	{ view1_communicatedBits_q0 sc_in sc_lv 8 signal 6 } 
	{ view1_outputShare_address0 sc_out sc_lv 10 signal 7 } 
	{ view1_outputShare_ce0 sc_out sc_logic 1 signal 7 } 
	{ view1_outputShare_we0 sc_out sc_logic 1 signal 7 } 
	{ view1_outputShare_d0 sc_out sc_lv 32 signal 7 } 
	{ view2_inputShare_address0 sc_out sc_lv 10 signal 8 } 
	{ view2_inputShare_ce0 sc_out sc_logic 1 signal 8 } 
	{ view2_inputShare_we0 sc_out sc_logic 1 signal 8 } 
	{ view2_inputShare_d0 sc_out sc_lv 32 signal 8 } 
	{ view2_inputShare_q0 sc_in sc_lv 32 signal 8 } 
	{ view2_communicatedBits_address0 sc_out sc_lv 15 signal 9 } 
	{ view2_communicatedBits_ce0 sc_out sc_logic 1 signal 9 } 
	{ view2_communicatedBits_we0 sc_out sc_logic 1 signal 9 } 
	{ view2_communicatedBits_d0 sc_out sc_lv 8 signal 9 } 
	{ view2_communicatedBits_q0 sc_in sc_lv 8 signal 9 } 
	{ view2_outputShare_address0 sc_out sc_lv 10 signal 10 } 
	{ view2_outputShare_ce0 sc_out sc_logic 1 signal 10 } 
	{ view2_outputShare_we0 sc_out sc_logic 1 signal 10 } 
	{ view2_outputShare_d0 sc_out sc_lv 32 signal 10 } 
	{ challenge sc_in sc_lv 2 signal 11 } 
	{ salt_0_address0 sc_out sc_lv 5 signal 12 } 
	{ salt_0_ce0 sc_out sc_logic 1 signal 12 } 
	{ salt_0_q0 sc_in sc_lv 8 signal 12 } 
	{ roundNumber sc_in sc_lv 8 signal 13 } 
	{ tmp_address0 sc_out sc_lv 7 signal 14 } 
	{ tmp_ce0 sc_out sc_logic 1 signal 14 } 
	{ tmp_we0 sc_out sc_logic 1 signal 14 } 
	{ tmp_d0 sc_out sc_lv 8 signal 14 } 
	{ tmp_q0 sc_in sc_lv 8 signal 14 } 
	{ plaintext_address0 sc_out sc_lv 3 signal 15 } 
	{ plaintext_ce0 sc_out sc_logic 1 signal 15 } 
	{ plaintext_q0 sc_in sc_lv 32 signal 15 } 
	{ tape_0_tape_address0 sc_out sc_lv 9 signal 16 } 
	{ tape_0_tape_ce0 sc_out sc_logic 1 signal 16 } 
	{ tape_0_tape_we0 sc_out sc_logic 1 signal 16 } 
	{ tape_0_tape_d0 sc_out sc_lv 8 signal 16 } 
	{ tape_0_tape_q0 sc_in sc_lv 8 signal 16 } 
	{ tape_0_tape_address1 sc_out sc_lv 9 signal 16 } 
	{ tape_0_tape_ce1 sc_out sc_logic 1 signal 16 } 
	{ tape_0_tape_q1 sc_in sc_lv 8 signal 16 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "proof_0_seed1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "proof_0_seed1", "role": "address0" }} , 
 	{ "name": "proof_0_seed1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "proof_0_seed1", "role": "ce0" }} , 
 	{ "name": "proof_0_seed1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "proof_0_seed1", "role": "q0" }} , 
 	{ "name": "proof_seed1_offset1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "proof_seed1_offset1", "role": "default" }} , 
 	{ "name": "proof_0_seed2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "proof_0_seed2", "role": "address0" }} , 
 	{ "name": "proof_0_seed2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "proof_0_seed2", "role": "ce0" }} , 
 	{ "name": "proof_0_seed2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "proof_0_seed2", "role": "q0" }} , 
 	{ "name": "proof_0_inputShare_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "proof_0_inputShare", "role": "address0" }} , 
 	{ "name": "proof_0_inputShare_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "proof_0_inputShare", "role": "ce0" }} , 
 	{ "name": "proof_0_inputShare_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "proof_0_inputShare", "role": "q0" }} , 
 	{ "name": "proof_0_communicatedBits_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "proof_0_communicatedBits", "role": "address0" }} , 
 	{ "name": "proof_0_communicatedBits_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "proof_0_communicatedBits", "role": "ce0" }} , 
 	{ "name": "proof_0_communicatedBits_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "proof_0_communicatedBits", "role": "q0" }} , 
 	{ "name": "view1_inputShare_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "view1_inputShare", "role": "address0" }} , 
 	{ "name": "view1_inputShare_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view1_inputShare", "role": "ce0" }} , 
 	{ "name": "view1_inputShare_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view1_inputShare", "role": "we0" }} , 
 	{ "name": "view1_inputShare_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "view1_inputShare", "role": "d0" }} , 
 	{ "name": "view1_inputShare_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "view1_inputShare", "role": "q0" }} , 
 	{ "name": "view1_communicatedBits_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "view1_communicatedBits", "role": "address0" }} , 
 	{ "name": "view1_communicatedBits_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view1_communicatedBits", "role": "ce0" }} , 
 	{ "name": "view1_communicatedBits_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view1_communicatedBits", "role": "we0" }} , 
 	{ "name": "view1_communicatedBits_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "view1_communicatedBits", "role": "d0" }} , 
 	{ "name": "view1_communicatedBits_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "view1_communicatedBits", "role": "q0" }} , 
 	{ "name": "view1_outputShare_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "view1_outputShare", "role": "address0" }} , 
 	{ "name": "view1_outputShare_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view1_outputShare", "role": "ce0" }} , 
 	{ "name": "view1_outputShare_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view1_outputShare", "role": "we0" }} , 
 	{ "name": "view1_outputShare_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "view1_outputShare", "role": "d0" }} , 
 	{ "name": "view2_inputShare_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "view2_inputShare", "role": "address0" }} , 
 	{ "name": "view2_inputShare_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view2_inputShare", "role": "ce0" }} , 
 	{ "name": "view2_inputShare_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view2_inputShare", "role": "we0" }} , 
 	{ "name": "view2_inputShare_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "view2_inputShare", "role": "d0" }} , 
 	{ "name": "view2_inputShare_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "view2_inputShare", "role": "q0" }} , 
 	{ "name": "view2_communicatedBits_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "view2_communicatedBits", "role": "address0" }} , 
 	{ "name": "view2_communicatedBits_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view2_communicatedBits", "role": "ce0" }} , 
 	{ "name": "view2_communicatedBits_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view2_communicatedBits", "role": "we0" }} , 
 	{ "name": "view2_communicatedBits_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "view2_communicatedBits", "role": "d0" }} , 
 	{ "name": "view2_communicatedBits_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "view2_communicatedBits", "role": "q0" }} , 
 	{ "name": "view2_outputShare_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "view2_outputShare", "role": "address0" }} , 
 	{ "name": "view2_outputShare_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view2_outputShare", "role": "ce0" }} , 
 	{ "name": "view2_outputShare_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view2_outputShare", "role": "we0" }} , 
 	{ "name": "view2_outputShare_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "view2_outputShare", "role": "d0" }} , 
 	{ "name": "challenge", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "challenge", "role": "default" }} , 
 	{ "name": "salt_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "salt_0", "role": "address0" }} , 
 	{ "name": "salt_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "salt_0", "role": "ce0" }} , 
 	{ "name": "salt_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "salt_0", "role": "q0" }} , 
 	{ "name": "roundNumber", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "roundNumber", "role": "default" }} , 
 	{ "name": "tmp_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "tmp", "role": "address0" }} , 
 	{ "name": "tmp_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp", "role": "ce0" }} , 
 	{ "name": "tmp_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp", "role": "we0" }} , 
 	{ "name": "tmp_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tmp", "role": "d0" }} , 
 	{ "name": "tmp_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tmp", "role": "q0" }} , 
 	{ "name": "plaintext_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "plaintext", "role": "address0" }} , 
 	{ "name": "plaintext_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "plaintext", "role": "ce0" }} , 
 	{ "name": "plaintext_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "plaintext", "role": "q0" }} , 
 	{ "name": "tape_0_tape_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "tape_0_tape", "role": "address0" }} , 
 	{ "name": "tape_0_tape_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tape_0_tape", "role": "ce0" }} , 
 	{ "name": "tape_0_tape_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tape_0_tape", "role": "we0" }} , 
 	{ "name": "tape_0_tape_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tape_0_tape", "role": "d0" }} , 
 	{ "name": "tape_0_tape_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tape_0_tape", "role": "q0" }} , 
 	{ "name": "tape_0_tape_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "tape_0_tape", "role": "address1" }} , 
 	{ "name": "tape_0_tape_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tape_0_tape", "role": "ce1" }} , 
 	{ "name": "tape_0_tape_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tape_0_tape", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "98", "111", "124", "137", "150", "163", "176", "189", "202"],
		"CDFG" : "verifyProof_24",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state37", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_createRandomTape13_fu_697"},
			{"State" : "ap_ST_fsm_state37", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_createRandomTape13_fu_697"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_createRandomTape13_fu_697"},
			{"State" : "ap_ST_fsm_state32", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_createRandomTape13_fu_697"},
			{"State" : "ap_ST_fsm_state72", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_createRandomTape13_fu_697"},
			{"State" : "ap_ST_fsm_state80", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_717"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_2_fu_746"},
			{"State" : "ap_ST_fsm_state29", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_2_fu_746"},
			{"State" : "ap_ST_fsm_state50", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_2_fu_746"},
			{"State" : "ap_ST_fsm_state66", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_2_fu_746"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate14_fu_767"},
			{"State" : "ap_ST_fsm_state46", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate14_fu_767"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_7_fu_783"},
			{"State" : "ap_ST_fsm_state54", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_7_fu_783"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_800"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_800"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_800"},
			{"State" : "ap_ST_fsm_state58", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_800"},
			{"State" : "ap_ST_fsm_state60", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_800"},
			{"State" : "ap_ST_fsm_state62", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_800"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_6_fu_815"},
			{"State" : "ap_ST_fsm_state56", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_6_fu_815"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_829"},
			{"State" : "ap_ST_fsm_state44", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_829"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashFinal_fu_843"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashFinal_fu_843"},
			{"State" : "ap_ST_fsm_state48", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashFinal_fu_843"},
			{"State" : "ap_ST_fsm_state64", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashFinal_fu_843"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashInitializ_fu_858"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashInitializ_fu_858"},
			{"State" : "ap_ST_fsm_state42", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashInitializ_fu_858"},
			{"State" : "ap_ST_fsm_state52", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashInitializ_fu_858"}],
		"Port" : [
			{"Name" : "proof_0_seed1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "124", "SubInstance" : "grp_Keccak_HashUpdate14_fu_767", "Port" : "data_0"},
					{"ID" : "4", "SubInstance" : "grp_createRandomTape13_fu_697", "Port" : "seed_0"}]},
			{"Name" : "proof_seed1_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "proof_0_seed2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "124", "SubInstance" : "grp_Keccak_HashUpdate14_fu_767", "Port" : "data_0"},
					{"ID" : "4", "SubInstance" : "grp_createRandomTape13_fu_697", "Port" : "seed_0"}]},
			{"Name" : "proof_0_inputShare", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "proof_0_communicatedBits", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "view1_inputShare", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_717", "Port" : "view1_inputShare"}]},
			{"Name" : "view1_communicatedBits", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_717", "Port" : "view1_communicatedBi"}]},
			{"Name" : "view1_outputShare", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_717", "Port" : "view1_outputShare"}]},
			{"Name" : "view2_inputShare", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_717", "Port" : "view2_inputShare"}]},
			{"Name" : "view2_communicatedBits", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_717", "Port" : "view2_communicatedBi"}]},
			{"Name" : "view2_outputShare", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_717", "Port" : "view2_outputShare"}]},
			{"Name" : "challenge", "Type" : "None", "Direction" : "I"},
			{"Name" : "salt_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "163", "SubInstance" : "grp_Keccak_HashUpdate_6_fu_815", "Port" : "data_0"},
					{"ID" : "4", "SubInstance" : "grp_createRandomTape13_fu_697", "Port" : "salt_0"}]},
			{"Name" : "roundNumber", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_createRandomTape13_fu_697", "Port" : "tape"}]},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_717", "Port" : "plaintext"}]},
			{"Name" : "tape_0_tape", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_717", "Port" : "tapes_0_tape"},
					{"ID" : "111", "SubInstance" : "grp_Keccak_HashSqueeze_2_fu_746", "Port" : "data_0"},
					{"ID" : "137", "SubInstance" : "grp_Keccak_HashUpdate_7_fu_783", "Port" : "data_0"}]},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "176", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_829", "Port" : "KeccakRhoOffsets"},
					{"ID" : "163", "SubInstance" : "grp_Keccak_HashUpdate_6_fu_815", "Port" : "KeccakRhoOffsets"},
					{"ID" : "189", "SubInstance" : "grp_Keccak_HashFinal_fu_843", "Port" : "KeccakRhoOffsets"},
					{"ID" : "150", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_800", "Port" : "KeccakRhoOffsets"},
					{"ID" : "124", "SubInstance" : "grp_Keccak_HashUpdate14_fu_767", "Port" : "KeccakRhoOffsets"},
					{"ID" : "111", "SubInstance" : "grp_Keccak_HashSqueeze_2_fu_746", "Port" : "KeccakRhoOffsets"},
					{"ID" : "137", "SubInstance" : "grp_Keccak_HashUpdate_7_fu_783", "Port" : "KeccakRhoOffsets"},
					{"ID" : "4", "SubInstance" : "grp_createRandomTape13_fu_697", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "176", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_829", "Port" : "KeccakRoundConstants"},
					{"ID" : "163", "SubInstance" : "grp_Keccak_HashUpdate_6_fu_815", "Port" : "KeccakRoundConstants"},
					{"ID" : "189", "SubInstance" : "grp_Keccak_HashFinal_fu_843", "Port" : "KeccakRoundConstants"},
					{"ID" : "150", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_800", "Port" : "KeccakRoundConstants"},
					{"ID" : "124", "SubInstance" : "grp_Keccak_HashUpdate14_fu_767", "Port" : "KeccakRoundConstants"},
					{"ID" : "111", "SubInstance" : "grp_Keccak_HashSqueeze_2_fu_746", "Port" : "KeccakRoundConstants"},
					{"ID" : "137", "SubInstance" : "grp_Keccak_HashUpdate_7_fu_783", "Port" : "KeccakRoundConstants"},
					{"ID" : "4", "SubInstance" : "grp_createRandomTape13_fu_697", "Port" : "KeccakRoundConstants"}]},
			{"Name" : "temp_matrix", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_717", "Port" : "temp_matrix"}]},
			{"Name" : "temp_matrix2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_717", "Port" : "temp_matrix2"}]},
			{"Name" : "temp_matrix3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_717", "Port" : "temp_matrix3"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctx_sponge_state_1_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctx_sponge_state_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697", "Parent" : "0", "Child" : ["5", "6", "19", "32", "45", "58", "71", "84", "97"],
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
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_fu_72"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_fu_72"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate14_fu_90"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_2_fu_106"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_6_fu_120"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_134"},
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_134"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_134"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_149"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashFinal_fu_163"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashFinal_fu_163"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashInitializ_fu_178"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashInitializ_fu_178"}],
		"Port" : [
			{"Name" : "seed_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_Keccak_HashUpdate14_fu_90", "Port" : "data_0"}]},
			{"Name" : "seed_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "salt_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_Keccak_HashUpdate_6_fu_120", "Port" : "data_0"}]},
			{"Name" : "roundNumber", "Type" : "None", "Direction" : "I"},
			{"Name" : "playerNumber", "Type" : "None", "Direction" : "I"},
			{"Name" : "tape", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_Keccak_HashUpdate_2_fu_106", "Port" : "data"},
					{"ID" : "6", "SubInstance" : "grp_Keccak_HashSqueeze_fu_72", "Port" : "data"}]},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_Keccak_HashUpdate14_fu_90", "Port" : "KeccakRhoOffsets"},
					{"ID" : "84", "SubInstance" : "grp_Keccak_HashFinal_fu_163", "Port" : "KeccakRhoOffsets"},
					{"ID" : "45", "SubInstance" : "grp_Keccak_HashUpdate_6_fu_120", "Port" : "KeccakRhoOffsets"},
					{"ID" : "71", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_149", "Port" : "KeccakRhoOffsets"},
					{"ID" : "32", "SubInstance" : "grp_Keccak_HashUpdate_2_fu_106", "Port" : "KeccakRhoOffsets"},
					{"ID" : "6", "SubInstance" : "grp_Keccak_HashSqueeze_fu_72", "Port" : "KeccakRhoOffsets"},
					{"ID" : "58", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_134", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_Keccak_HashUpdate14_fu_90", "Port" : "KeccakRoundConstants"},
					{"ID" : "84", "SubInstance" : "grp_Keccak_HashFinal_fu_163", "Port" : "KeccakRoundConstants"},
					{"ID" : "45", "SubInstance" : "grp_Keccak_HashUpdate_6_fu_120", "Port" : "KeccakRoundConstants"},
					{"ID" : "71", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_149", "Port" : "KeccakRoundConstants"},
					{"ID" : "32", "SubInstance" : "grp_Keccak_HashUpdate_2_fu_106", "Port" : "KeccakRoundConstants"},
					{"ID" : "6", "SubInstance" : "grp_Keccak_HashSqueeze_fu_72", "Port" : "KeccakRoundConstants"},
					{"ID" : "58", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_134", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.ctx_sponge_state_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashSqueeze_fu_72", "Parent" : "4", "Child" : ["7"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_288"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_288"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_288"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_288", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "databitlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_288", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_288", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashSqueeze_fu_72.grp_KeccakP1600_Permute_s_fu_288", "Parent" : "6", "Child" : ["8", "9", "10", "11", "14", "16"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "8", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashSqueeze_fu_72.grp_KeccakP1600_Permute_s_fu_288.KeccakRhoOffsets_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashSqueeze_fu_72.grp_KeccakP1600_Permute_s_fu_288.KeccakRoundConstants_U", "Parent" : "7"},
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashSqueeze_fu_72.grp_KeccakP1600_Permute_s_fu_288.stateAsWords_U", "Parent" : "7"},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashSqueeze_fu_72.grp_KeccakP1600_Permute_s_fu_288.grp_theta_fu_225", "Parent" : "7", "Child" : ["12", "13"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "12", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashSqueeze_fu_72.grp_KeccakP1600_Permute_s_fu_288.grp_theta_fu_225.C_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashSqueeze_fu_72.grp_KeccakP1600_Permute_s_fu_288.grp_theta_fu_225.D_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashSqueeze_fu_72.grp_KeccakP1600_Permute_s_fu_288.grp_chi_fu_230", "Parent" : "7", "Child" : ["15"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "15", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashSqueeze_fu_72.grp_KeccakP1600_Permute_s_fu_288.grp_chi_fu_230.C_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashSqueeze_fu_72.grp_KeccakP1600_Permute_s_fu_288.grp_pi_fu_235", "Parent" : "7", "Child" : ["17", "18"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "17", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashSqueeze_fu_72.grp_KeccakP1600_Permute_s_fu_288.grp_pi_fu_235.tempA_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashSqueeze_fu_72.grp_KeccakP1600_Permute_s_fu_288.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "16"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate14_fu_90", "Parent" : "4", "Child" : ["20"],
		"CDFG" : "Keccak_HashUpdate14",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
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
			{"Name" : "instance_sponge_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate14_fu_90.grp_KeccakP1600_Permute_s_fu_197", "Parent" : "19", "Child" : ["21", "22", "23", "24", "27", "29"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "21", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate14_fu_90.grp_KeccakP1600_Permute_s_fu_197.KeccakRhoOffsets_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate14_fu_90.grp_KeccakP1600_Permute_s_fu_197.KeccakRoundConstants_U", "Parent" : "20"},
	{"ID" : "23", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate14_fu_90.grp_KeccakP1600_Permute_s_fu_197.stateAsWords_U", "Parent" : "20"},
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate14_fu_90.grp_KeccakP1600_Permute_s_fu_197.grp_theta_fu_225", "Parent" : "20", "Child" : ["25", "26"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "25", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate14_fu_90.grp_KeccakP1600_Permute_s_fu_197.grp_theta_fu_225.C_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate14_fu_90.grp_KeccakP1600_Permute_s_fu_197.grp_theta_fu_225.D_U", "Parent" : "24"},
	{"ID" : "27", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate14_fu_90.grp_KeccakP1600_Permute_s_fu_197.grp_chi_fu_230", "Parent" : "20", "Child" : ["28"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "28", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate14_fu_90.grp_KeccakP1600_Permute_s_fu_197.grp_chi_fu_230.C_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate14_fu_90.grp_KeccakP1600_Permute_s_fu_197.grp_pi_fu_235", "Parent" : "20", "Child" : ["30", "31"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "30", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate14_fu_90.grp_KeccakP1600_Permute_s_fu_197.grp_pi_fu_235.tempA_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate14_fu_90.grp_KeccakP1600_Permute_s_fu_197.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "29"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_2_fu_106", "Parent" : "4", "Child" : ["33"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_2_fu_106.grp_KeccakP1600_Permute_s_fu_183", "Parent" : "32", "Child" : ["34", "35", "36", "37", "40", "42"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_2_fu_106.grp_KeccakP1600_Permute_s_fu_183.KeccakRhoOffsets_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_2_fu_106.grp_KeccakP1600_Permute_s_fu_183.KeccakRoundConstants_U", "Parent" : "33"},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_2_fu_106.grp_KeccakP1600_Permute_s_fu_183.stateAsWords_U", "Parent" : "33"},
	{"ID" : "37", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_2_fu_106.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225", "Parent" : "33", "Child" : ["38", "39"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "38", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_2_fu_106.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225.C_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_2_fu_106.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225.D_U", "Parent" : "37"},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_2_fu_106.grp_KeccakP1600_Permute_s_fu_183.grp_chi_fu_230", "Parent" : "33", "Child" : ["41"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "41", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_2_fu_106.grp_KeccakP1600_Permute_s_fu_183.grp_chi_fu_230.C_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_2_fu_106.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235", "Parent" : "33", "Child" : ["43", "44"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "43", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_2_fu_106.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235.tempA_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_2_fu_106.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "42"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_6_fu_120", "Parent" : "4", "Child" : ["46"],
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
					{"ID" : "46", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_6_fu_120.grp_KeccakP1600_Permute_s_fu_183", "Parent" : "45", "Child" : ["47", "48", "49", "50", "53", "55"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "47", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_6_fu_120.grp_KeccakP1600_Permute_s_fu_183.KeccakRhoOffsets_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_6_fu_120.grp_KeccakP1600_Permute_s_fu_183.KeccakRoundConstants_U", "Parent" : "46"},
	{"ID" : "49", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_6_fu_120.grp_KeccakP1600_Permute_s_fu_183.stateAsWords_U", "Parent" : "46"},
	{"ID" : "50", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_6_fu_120.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225", "Parent" : "46", "Child" : ["51", "52"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "51", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_6_fu_120.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225.C_U", "Parent" : "50"},
	{"ID" : "52", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_6_fu_120.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225.D_U", "Parent" : "50"},
	{"ID" : "53", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_6_fu_120.grp_KeccakP1600_Permute_s_fu_183.grp_chi_fu_230", "Parent" : "46", "Child" : ["54"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "54", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_6_fu_120.grp_KeccakP1600_Permute_s_fu_183.grp_chi_fu_230.C_U", "Parent" : "53"},
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_6_fu_120.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235", "Parent" : "46", "Child" : ["56", "57"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "56", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_6_fu_120.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235.tempA_U", "Parent" : "55"},
	{"ID" : "57", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_6_fu_120.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "55"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_5_fu_134", "Parent" : "4", "Child" : ["59"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_172"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_172"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_172", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_172", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_172", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_5_fu_134.grp_KeccakP1600_Permute_s_fu_172", "Parent" : "58", "Child" : ["60", "61", "62", "63", "66", "68"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "60", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_5_fu_134.grp_KeccakP1600_Permute_s_fu_172.KeccakRhoOffsets_U", "Parent" : "59"},
	{"ID" : "61", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_5_fu_134.grp_KeccakP1600_Permute_s_fu_172.KeccakRoundConstants_U", "Parent" : "59"},
	{"ID" : "62", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_5_fu_134.grp_KeccakP1600_Permute_s_fu_172.stateAsWords_U", "Parent" : "59"},
	{"ID" : "63", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_5_fu_134.grp_KeccakP1600_Permute_s_fu_172.grp_theta_fu_225", "Parent" : "59", "Child" : ["64", "65"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "64", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_5_fu_134.grp_KeccakP1600_Permute_s_fu_172.grp_theta_fu_225.C_U", "Parent" : "63"},
	{"ID" : "65", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_5_fu_134.grp_KeccakP1600_Permute_s_fu_172.grp_theta_fu_225.D_U", "Parent" : "63"},
	{"ID" : "66", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_5_fu_134.grp_KeccakP1600_Permute_s_fu_172.grp_chi_fu_230", "Parent" : "59", "Child" : ["67"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "67", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_5_fu_134.grp_KeccakP1600_Permute_s_fu_172.grp_chi_fu_230.C_U", "Parent" : "66"},
	{"ID" : "68", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_5_fu_134.grp_KeccakP1600_Permute_s_fu_172.grp_pi_fu_235", "Parent" : "59", "Child" : ["69", "70"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "69", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_5_fu_134.grp_KeccakP1600_Permute_s_fu_172.grp_pi_fu_235.tempA_U", "Parent" : "68"},
	{"ID" : "70", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_5_fu_134.grp_KeccakP1600_Permute_s_fu_172.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "68"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_1_fu_149", "Parent" : "4", "Child" : ["72"],
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
					{"ID" : "72", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_1_fu_149.grp_KeccakP1600_Permute_s_fu_162", "Parent" : "71", "Child" : ["73", "74", "75", "76", "79", "81"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "73", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_1_fu_149.grp_KeccakP1600_Permute_s_fu_162.KeccakRhoOffsets_U", "Parent" : "72"},
	{"ID" : "74", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_1_fu_149.grp_KeccakP1600_Permute_s_fu_162.KeccakRoundConstants_U", "Parent" : "72"},
	{"ID" : "75", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_1_fu_149.grp_KeccakP1600_Permute_s_fu_162.stateAsWords_U", "Parent" : "72"},
	{"ID" : "76", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_1_fu_149.grp_KeccakP1600_Permute_s_fu_162.grp_theta_fu_225", "Parent" : "72", "Child" : ["77", "78"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "77", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_1_fu_149.grp_KeccakP1600_Permute_s_fu_162.grp_theta_fu_225.C_U", "Parent" : "76"},
	{"ID" : "78", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_1_fu_149.grp_KeccakP1600_Permute_s_fu_162.grp_theta_fu_225.D_U", "Parent" : "76"},
	{"ID" : "79", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_1_fu_149.grp_KeccakP1600_Permute_s_fu_162.grp_chi_fu_230", "Parent" : "72", "Child" : ["80"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "80", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_1_fu_149.grp_KeccakP1600_Permute_s_fu_162.grp_chi_fu_230.C_U", "Parent" : "79"},
	{"ID" : "81", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_1_fu_149.grp_KeccakP1600_Permute_s_fu_162.grp_pi_fu_235", "Parent" : "72", "Child" : ["82", "83"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "82", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_1_fu_149.grp_KeccakP1600_Permute_s_fu_162.grp_pi_fu_235.tempA_U", "Parent" : "81"},
	{"ID" : "83", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_1_fu_149.grp_KeccakP1600_Permute_s_fu_162.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "81"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashFinal_fu_163", "Parent" : "4", "Child" : ["85"],
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
					{"ID" : "85", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_delimitedSu", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashFinal_fu_163.grp_KeccakP1600_Permute_s_fu_124", "Parent" : "84", "Child" : ["86", "87", "88", "89", "92", "94"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "86", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashFinal_fu_163.grp_KeccakP1600_Permute_s_fu_124.KeccakRhoOffsets_U", "Parent" : "85"},
	{"ID" : "87", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashFinal_fu_163.grp_KeccakP1600_Permute_s_fu_124.KeccakRoundConstants_U", "Parent" : "85"},
	{"ID" : "88", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashFinal_fu_163.grp_KeccakP1600_Permute_s_fu_124.stateAsWords_U", "Parent" : "85"},
	{"ID" : "89", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashFinal_fu_163.grp_KeccakP1600_Permute_s_fu_124.grp_theta_fu_225", "Parent" : "85", "Child" : ["90", "91"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "90", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashFinal_fu_163.grp_KeccakP1600_Permute_s_fu_124.grp_theta_fu_225.C_U", "Parent" : "89"},
	{"ID" : "91", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashFinal_fu_163.grp_KeccakP1600_Permute_s_fu_124.grp_theta_fu_225.D_U", "Parent" : "89"},
	{"ID" : "92", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashFinal_fu_163.grp_KeccakP1600_Permute_s_fu_124.grp_chi_fu_230", "Parent" : "85", "Child" : ["93"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "93", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashFinal_fu_163.grp_KeccakP1600_Permute_s_fu_124.grp_chi_fu_230.C_U", "Parent" : "92"},
	{"ID" : "94", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashFinal_fu_163.grp_KeccakP1600_Permute_s_fu_124.grp_pi_fu_235", "Parent" : "85", "Child" : ["95", "96"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "95", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashFinal_fu_163.grp_KeccakP1600_Permute_s_fu_124.grp_pi_fu_235.tempA_U", "Parent" : "94"},
	{"ID" : "96", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashFinal_fu_163.grp_KeccakP1600_Permute_s_fu_124.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "94"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashInitializ_fu_178", "Parent" : "4",
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
			{"Name" : "instance_delimitedSuffix_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_717", "Parent" : "0", "Child" : ["99", "100", "104", "108"],
		"CDFG" : "mpc_LowMC_verify_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "217450", "EstimateLatencyMax" : "217618",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_686"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_686"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_686"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_686"},
			{"State" : "ap_ST_fsm_state31", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_1_fu_703"},
			{"State" : "ap_ST_fsm_state33", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_1_fu_703"},
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mpc_AND_verify_2_fu_715"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mpc_AND_verify_2_fu_715"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mpc_AND_verify_2_fu_715"}],
		"Port" : [
			{"Name" : "view1_inputShare", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "100", "SubInstance" : "grp_matrix_mul_fu_686", "Port" : "state"}]},
			{"Name" : "view1_inputShare_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "view1_communicatedBi", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "108", "SubInstance" : "grp_mpc_AND_verify_2_fu_715", "Port" : "view1_communicatedBi"}]},
			{"Name" : "view1_outputShare", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "view2_inputShare", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "100", "SubInstance" : "grp_matrix_mul_fu_686", "Port" : "state"}]},
			{"Name" : "view2_communicatedBi", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "108", "SubInstance" : "grp_mpc_AND_verify_2_fu_715", "Port" : "view2_communicatedBi"}]},
			{"Name" : "view2_outputShare", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tapes_0_tape", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "108", "SubInstance" : "grp_mpc_AND_verify_2_fu_715", "Port" : "rand_0_tape"}]},
			{"Name" : "tmp", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "100", "SubInstance" : "grp_matrix_mul_fu_686", "Port" : "output_r"},
					{"ID" : "104", "SubInstance" : "grp_matrix_mul_1_fu_703", "Port" : "output_r"}]},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "challenge", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_matrix", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "100", "SubInstance" : "grp_matrix_mul_fu_686", "Port" : "temp_matrix"}]},
			{"Name" : "temp_matrix2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "104", "SubInstance" : "grp_matrix_mul_1_fu_703", "Port" : "temp_matrix2"}]},
			{"Name" : "temp_matrix3", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_717.temp_matrix3_U", "Parent" : "98"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_717.grp_matrix_mul_fu_686", "Parent" : "98", "Child" : ["101", "102", "103"],
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
			{"Name" : "matrix_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_matrix", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_717.grp_matrix_mul_fu_686.temp_matrix_U", "Parent" : "100"},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_717.grp_matrix_mul_fu_686.prod_U", "Parent" : "100"},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_717.grp_matrix_mul_fu_686.temp_U", "Parent" : "100"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_717.grp_matrix_mul_1_fu_703", "Parent" : "98", "Child" : ["105", "106", "107"],
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
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_717.grp_matrix_mul_1_fu_703.temp_matrix2_U", "Parent" : "104"},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_717.grp_matrix_mul_1_fu_703.prod_U", "Parent" : "104"},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_717.grp_matrix_mul_1_fu_703.temp_U", "Parent" : "104"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_717.grp_mpc_AND_verify_2_fu_715", "Parent" : "98", "Child" : ["109", "110"],
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
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_717.grp_mpc_AND_verify_2_fu_715.crypto_sign_open_hbi_U100", "Parent" : "108"},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_717.grp_mpc_AND_verify_2_fu_715.crypto_sign_open_hbi_U101", "Parent" : "108"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_746", "Parent" : "0", "Child" : ["112"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_302"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_302"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_302"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_302", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "databitlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_302", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_302", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_746.grp_KeccakP1600_Permute_s_fu_302", "Parent" : "111", "Child" : ["113", "114", "115", "116", "119", "121"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_746.grp_KeccakP1600_Permute_s_fu_302.KeccakRhoOffsets_U", "Parent" : "112"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_746.grp_KeccakP1600_Permute_s_fu_302.KeccakRoundConstants_U", "Parent" : "112"},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_746.grp_KeccakP1600_Permute_s_fu_302.stateAsWords_U", "Parent" : "112"},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_746.grp_KeccakP1600_Permute_s_fu_302.grp_theta_fu_225", "Parent" : "112", "Child" : ["117", "118"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "117", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_746.grp_KeccakP1600_Permute_s_fu_302.grp_theta_fu_225.C_U", "Parent" : "116"},
	{"ID" : "118", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_746.grp_KeccakP1600_Permute_s_fu_302.grp_theta_fu_225.D_U", "Parent" : "116"},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_746.grp_KeccakP1600_Permute_s_fu_302.grp_chi_fu_230", "Parent" : "112", "Child" : ["120"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "120", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_746.grp_KeccakP1600_Permute_s_fu_302.grp_chi_fu_230.C_U", "Parent" : "119"},
	{"ID" : "121", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_746.grp_KeccakP1600_Permute_s_fu_302.grp_pi_fu_235", "Parent" : "112", "Child" : ["122", "123"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "122", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_746.grp_KeccakP1600_Permute_s_fu_302.grp_pi_fu_235.tempA_U", "Parent" : "121"},
	{"ID" : "123", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_746.grp_KeccakP1600_Permute_s_fu_302.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "121"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate14_fu_767", "Parent" : "0", "Child" : ["125"],
		"CDFG" : "Keccak_HashUpdate14",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
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
			{"Name" : "instance_sponge_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate14_fu_767.grp_KeccakP1600_Permute_s_fu_197", "Parent" : "124", "Child" : ["126", "127", "128", "129", "132", "134"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "126", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate14_fu_767.grp_KeccakP1600_Permute_s_fu_197.KeccakRhoOffsets_U", "Parent" : "125"},
	{"ID" : "127", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate14_fu_767.grp_KeccakP1600_Permute_s_fu_197.KeccakRoundConstants_U", "Parent" : "125"},
	{"ID" : "128", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate14_fu_767.grp_KeccakP1600_Permute_s_fu_197.stateAsWords_U", "Parent" : "125"},
	{"ID" : "129", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate14_fu_767.grp_KeccakP1600_Permute_s_fu_197.grp_theta_fu_225", "Parent" : "125", "Child" : ["130", "131"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "130", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate14_fu_767.grp_KeccakP1600_Permute_s_fu_197.grp_theta_fu_225.C_U", "Parent" : "129"},
	{"ID" : "131", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate14_fu_767.grp_KeccakP1600_Permute_s_fu_197.grp_theta_fu_225.D_U", "Parent" : "129"},
	{"ID" : "132", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate14_fu_767.grp_KeccakP1600_Permute_s_fu_197.grp_chi_fu_230", "Parent" : "125", "Child" : ["133"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "133", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate14_fu_767.grp_KeccakP1600_Permute_s_fu_197.grp_chi_fu_230.C_U", "Parent" : "132"},
	{"ID" : "134", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate14_fu_767.grp_KeccakP1600_Permute_s_fu_197.grp_pi_fu_235", "Parent" : "125", "Child" : ["135", "136"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "135", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate14_fu_767.grp_KeccakP1600_Permute_s_fu_197.grp_pi_fu_235.tempA_U", "Parent" : "134"},
	{"ID" : "136", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate14_fu_767.grp_KeccakP1600_Permute_s_fu_197.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "134"},
	{"ID" : "137", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_783", "Parent" : "0", "Child" : ["138"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_783.grp_KeccakP1600_Permute_s_fu_197", "Parent" : "137", "Child" : ["139", "140", "141", "142", "145", "147"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "139", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_783.grp_KeccakP1600_Permute_s_fu_197.KeccakRhoOffsets_U", "Parent" : "138"},
	{"ID" : "140", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_783.grp_KeccakP1600_Permute_s_fu_197.KeccakRoundConstants_U", "Parent" : "138"},
	{"ID" : "141", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_783.grp_KeccakP1600_Permute_s_fu_197.stateAsWords_U", "Parent" : "138"},
	{"ID" : "142", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_783.grp_KeccakP1600_Permute_s_fu_197.grp_theta_fu_225", "Parent" : "138", "Child" : ["143", "144"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "143", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_783.grp_KeccakP1600_Permute_s_fu_197.grp_theta_fu_225.C_U", "Parent" : "142"},
	{"ID" : "144", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_783.grp_KeccakP1600_Permute_s_fu_197.grp_theta_fu_225.D_U", "Parent" : "142"},
	{"ID" : "145", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_783.grp_KeccakP1600_Permute_s_fu_197.grp_chi_fu_230", "Parent" : "138", "Child" : ["146"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "146", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_783.grp_KeccakP1600_Permute_s_fu_197.grp_chi_fu_230.C_U", "Parent" : "145"},
	{"ID" : "147", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_783.grp_KeccakP1600_Permute_s_fu_197.grp_pi_fu_235", "Parent" : "138", "Child" : ["148", "149"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "148", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_783.grp_KeccakP1600_Permute_s_fu_197.grp_pi_fu_235.tempA_U", "Parent" : "147"},
	{"ID" : "149", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_783.grp_KeccakP1600_Permute_s_fu_197.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "147"},
	{"ID" : "150", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_800", "Parent" : "0", "Child" : ["151"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_172"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_172"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_172", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_172", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_172", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_800.grp_KeccakP1600_Permute_s_fu_172", "Parent" : "150", "Child" : ["152", "153", "154", "155", "158", "160"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "152", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_800.grp_KeccakP1600_Permute_s_fu_172.KeccakRhoOffsets_U", "Parent" : "151"},
	{"ID" : "153", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_800.grp_KeccakP1600_Permute_s_fu_172.KeccakRoundConstants_U", "Parent" : "151"},
	{"ID" : "154", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_800.grp_KeccakP1600_Permute_s_fu_172.stateAsWords_U", "Parent" : "151"},
	{"ID" : "155", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_800.grp_KeccakP1600_Permute_s_fu_172.grp_theta_fu_225", "Parent" : "151", "Child" : ["156", "157"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "156", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_800.grp_KeccakP1600_Permute_s_fu_172.grp_theta_fu_225.C_U", "Parent" : "155"},
	{"ID" : "157", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_800.grp_KeccakP1600_Permute_s_fu_172.grp_theta_fu_225.D_U", "Parent" : "155"},
	{"ID" : "158", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_800.grp_KeccakP1600_Permute_s_fu_172.grp_chi_fu_230", "Parent" : "151", "Child" : ["159"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "159", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_800.grp_KeccakP1600_Permute_s_fu_172.grp_chi_fu_230.C_U", "Parent" : "158"},
	{"ID" : "160", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_800.grp_KeccakP1600_Permute_s_fu_172.grp_pi_fu_235", "Parent" : "151", "Child" : ["161", "162"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "161", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_800.grp_KeccakP1600_Permute_s_fu_172.grp_pi_fu_235.tempA_U", "Parent" : "160"},
	{"ID" : "162", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_800.grp_KeccakP1600_Permute_s_fu_172.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "160"},
	{"ID" : "163", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_815", "Parent" : "0", "Child" : ["164"],
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
					{"ID" : "164", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_815.grp_KeccakP1600_Permute_s_fu_183", "Parent" : "163", "Child" : ["165", "166", "167", "168", "171", "173"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "165", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_815.grp_KeccakP1600_Permute_s_fu_183.KeccakRhoOffsets_U", "Parent" : "164"},
	{"ID" : "166", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_815.grp_KeccakP1600_Permute_s_fu_183.KeccakRoundConstants_U", "Parent" : "164"},
	{"ID" : "167", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_815.grp_KeccakP1600_Permute_s_fu_183.stateAsWords_U", "Parent" : "164"},
	{"ID" : "168", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_815.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225", "Parent" : "164", "Child" : ["169", "170"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "169", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_815.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225.C_U", "Parent" : "168"},
	{"ID" : "170", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_815.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225.D_U", "Parent" : "168"},
	{"ID" : "171", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_815.grp_KeccakP1600_Permute_s_fu_183.grp_chi_fu_230", "Parent" : "164", "Child" : ["172"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "172", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_815.grp_KeccakP1600_Permute_s_fu_183.grp_chi_fu_230.C_U", "Parent" : "171"},
	{"ID" : "173", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_815.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235", "Parent" : "164", "Child" : ["174", "175"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "174", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_815.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235.tempA_U", "Parent" : "173"},
	{"ID" : "175", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_815.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "173"},
	{"ID" : "176", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_829", "Parent" : "0", "Child" : ["177"],
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
					{"ID" : "177", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "177", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "177", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "177", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_829.grp_KeccakP1600_Permute_s_fu_162", "Parent" : "176", "Child" : ["178", "179", "180", "181", "184", "186"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "178", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_829.grp_KeccakP1600_Permute_s_fu_162.KeccakRhoOffsets_U", "Parent" : "177"},
	{"ID" : "179", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_829.grp_KeccakP1600_Permute_s_fu_162.KeccakRoundConstants_U", "Parent" : "177"},
	{"ID" : "180", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_829.grp_KeccakP1600_Permute_s_fu_162.stateAsWords_U", "Parent" : "177"},
	{"ID" : "181", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_829.grp_KeccakP1600_Permute_s_fu_162.grp_theta_fu_225", "Parent" : "177", "Child" : ["182", "183"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "182", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_829.grp_KeccakP1600_Permute_s_fu_162.grp_theta_fu_225.C_U", "Parent" : "181"},
	{"ID" : "183", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_829.grp_KeccakP1600_Permute_s_fu_162.grp_theta_fu_225.D_U", "Parent" : "181"},
	{"ID" : "184", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_829.grp_KeccakP1600_Permute_s_fu_162.grp_chi_fu_230", "Parent" : "177", "Child" : ["185"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "185", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_829.grp_KeccakP1600_Permute_s_fu_162.grp_chi_fu_230.C_U", "Parent" : "184"},
	{"ID" : "186", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_829.grp_KeccakP1600_Permute_s_fu_162.grp_pi_fu_235", "Parent" : "177", "Child" : ["187", "188"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "187", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_829.grp_KeccakP1600_Permute_s_fu_162.grp_pi_fu_235.tempA_U", "Parent" : "186"},
	{"ID" : "188", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_829.grp_KeccakP1600_Permute_s_fu_162.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "186"},
	{"ID" : "189", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_843", "Parent" : "0", "Child" : ["190"],
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
					{"ID" : "190", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_delimitedSu", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "190", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "190", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "190", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_843.grp_KeccakP1600_Permute_s_fu_124", "Parent" : "189", "Child" : ["191", "192", "193", "194", "197", "199"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "191", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_843.grp_KeccakP1600_Permute_s_fu_124.KeccakRhoOffsets_U", "Parent" : "190"},
	{"ID" : "192", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_843.grp_KeccakP1600_Permute_s_fu_124.KeccakRoundConstants_U", "Parent" : "190"},
	{"ID" : "193", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_843.grp_KeccakP1600_Permute_s_fu_124.stateAsWords_U", "Parent" : "190"},
	{"ID" : "194", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_843.grp_KeccakP1600_Permute_s_fu_124.grp_theta_fu_225", "Parent" : "190", "Child" : ["195", "196"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "195", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_843.grp_KeccakP1600_Permute_s_fu_124.grp_theta_fu_225.C_U", "Parent" : "194"},
	{"ID" : "196", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_843.grp_KeccakP1600_Permute_s_fu_124.grp_theta_fu_225.D_U", "Parent" : "194"},
	{"ID" : "197", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_843.grp_KeccakP1600_Permute_s_fu_124.grp_chi_fu_230", "Parent" : "190", "Child" : ["198"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "198", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_843.grp_KeccakP1600_Permute_s_fu_124.grp_chi_fu_230.C_U", "Parent" : "197"},
	{"ID" : "199", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_843.grp_KeccakP1600_Permute_s_fu_124.grp_pi_fu_235", "Parent" : "190", "Child" : ["200", "201"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "200", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_843.grp_KeccakP1600_Permute_s_fu_124.grp_pi_fu_235.tempA_U", "Parent" : "199"},
	{"ID" : "201", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_843.grp_KeccakP1600_Permute_s_fu_124.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "199"},
	{"ID" : "202", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashInitializ_fu_858", "Parent" : "0",
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
	verifyProof_24 {
		proof_0_seed1 {Type I LastRead 4 FirstWrite -1}
		proof_seed1_offset1 {Type I LastRead 0 FirstWrite -1}
		proof_0_seed2 {Type I LastRead 4 FirstWrite -1}
		proof_0_inputShare {Type I LastRead 31 FirstWrite -1}
		proof_0_communicatedBits {Type I LastRead 2 FirstWrite -1}
		view1_inputShare {Type IO LastRead 5 FirstWrite -1}
		view1_communicatedBits {Type IO LastRead 1 FirstWrite 2}
		view1_outputShare {Type O LastRead -1 FirstWrite 10}
		view2_inputShare {Type IO LastRead 30 FirstWrite -1}
		view2_communicatedBits {Type IO LastRead 1 FirstWrite -1}
		view2_outputShare {Type O LastRead -1 FirstWrite 11}
		challenge {Type I LastRead 0 FirstWrite -1}
		salt_0 {Type I LastRead 4 FirstWrite -1}
		roundNumber {Type I LastRead 0 FirstWrite -1}
		tmp {Type IO LastRead 33 FirstWrite -1}
		plaintext {Type I LastRead 4 FirstWrite -1}
		tape_0_tape {Type IO LastRead 4 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}
		temp_matrix {Type I LastRead -1 FirstWrite -1}
		temp_matrix2 {Type I LastRead -1 FirstWrite -1}
		temp_matrix3 {Type I LastRead -1 FirstWrite -1}}
	createRandomTape13 {
		seed_0 {Type I LastRead 4 FirstWrite -1}
		seed_offset1 {Type I LastRead 4 FirstWrite -1}
		salt_0 {Type I LastRead 4 FirstWrite -1}
		roundNumber {Type I LastRead 16 FirstWrite -1}
		playerNumber {Type I LastRead 18 FirstWrite -1}
		tape {Type IO LastRead 4 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	Keccak_HashSqueeze {
		instance_sponge_stat {Type IO LastRead 10 FirstWrite 1}
		instance_sponge_rate {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque_25 {Type I LastRead 0 FirstWrite -1}
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
	Keccak_HashUpdate14 {
		instance_sponge_state {Type IO LastRead 4 FirstWrite 4}
		instance_sponge_rate_read {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		instance_sponge_squeezing_read {Type I LastRead 0 FirstWrite -1}
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
	Keccak_HashUpdate_2 {
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
	Keccak_HashUpdate_5 {
		instance_sponge_stat {Type IO LastRead 4 FirstWrite 4}
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
		instance_delimitedSuffix_read {Type I LastRead 0 FirstWrite -1}}
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
	Keccak_HashSqueeze_2 {
		instance_sponge_stat {Type IO LastRead 10 FirstWrite 1}
		instance_sponge_rate {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque_17 {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque {Type I LastRead 0 FirstWrite -1}
		data_0 {Type O LastRead -1 FirstWrite 10}
		data_offset1 {Type I LastRead 0 FirstWrite -1}
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
	Keccak_HashUpdate14 {
		instance_sponge_state {Type IO LastRead 4 FirstWrite 4}
		instance_sponge_rate_read {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		instance_sponge_squeezing_read {Type I LastRead 0 FirstWrite -1}
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
	Keccak_HashUpdate_7 {
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
	Keccak_HashUpdate_5 {
		instance_sponge_stat {Type IO LastRead 4 FirstWrite 4}
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
	proof_0_seed1 { ap_memory {  { proof_0_seed1_address0 mem_address 1 12 }  { proof_0_seed1_ce0 mem_ce 1 1 }  { proof_0_seed1_q0 mem_dout 0 8 } } }
	proof_seed1_offset1 { ap_none {  { proof_seed1_offset1 in_data 0 8 } } }
	proof_0_seed2 { ap_memory {  { proof_0_seed2_address0 mem_address 1 12 }  { proof_0_seed2_ce0 mem_ce 1 1 }  { proof_0_seed2_q0 mem_dout 0 8 } } }
	proof_0_inputShare { ap_memory {  { proof_0_inputShare_address0 mem_address 1 10 }  { proof_0_inputShare_ce0 mem_ce 1 1 }  { proof_0_inputShare_q0 mem_dout 0 32 } } }
	proof_0_communicatedBits { ap_memory {  { proof_0_communicatedBits_address0 mem_address 1 15 }  { proof_0_communicatedBits_ce0 mem_ce 1 1 }  { proof_0_communicatedBits_q0 mem_dout 0 8 } } }
	view1_inputShare { ap_memory {  { view1_inputShare_address0 mem_address 1 10 }  { view1_inputShare_ce0 mem_ce 1 1 }  { view1_inputShare_we0 mem_we 1 1 }  { view1_inputShare_d0 mem_din 1 32 }  { view1_inputShare_q0 mem_dout 0 32 } } }
	view1_communicatedBits { ap_memory {  { view1_communicatedBits_address0 mem_address 1 15 }  { view1_communicatedBits_ce0 mem_ce 1 1 }  { view1_communicatedBits_we0 mem_we 1 1 }  { view1_communicatedBits_d0 mem_din 1 8 }  { view1_communicatedBits_q0 mem_dout 0 8 } } }
	view1_outputShare { ap_memory {  { view1_outputShare_address0 mem_address 1 10 }  { view1_outputShare_ce0 mem_ce 1 1 }  { view1_outputShare_we0 mem_we 1 1 }  { view1_outputShare_d0 mem_din 1 32 } } }
	view2_inputShare { ap_memory {  { view2_inputShare_address0 mem_address 1 10 }  { view2_inputShare_ce0 mem_ce 1 1 }  { view2_inputShare_we0 mem_we 1 1 }  { view2_inputShare_d0 mem_din 1 32 }  { view2_inputShare_q0 mem_dout 0 32 } } }
	view2_communicatedBits { ap_memory {  { view2_communicatedBits_address0 mem_address 1 15 }  { view2_communicatedBits_ce0 mem_ce 1 1 }  { view2_communicatedBits_we0 mem_we 1 1 }  { view2_communicatedBits_d0 mem_din 1 8 }  { view2_communicatedBits_q0 mem_dout 0 8 } } }
	view2_outputShare { ap_memory {  { view2_outputShare_address0 mem_address 1 10 }  { view2_outputShare_ce0 mem_ce 1 1 }  { view2_outputShare_we0 mem_we 1 1 }  { view2_outputShare_d0 mem_din 1 32 } } }
	challenge { ap_none {  { challenge in_data 0 2 } } }
	salt_0 { ap_memory {  { salt_0_address0 mem_address 1 5 }  { salt_0_ce0 mem_ce 1 1 }  { salt_0_q0 mem_dout 0 8 } } }
	roundNumber { ap_none {  { roundNumber in_data 0 8 } } }
	tmp { ap_memory {  { tmp_address0 mem_address 1 7 }  { tmp_ce0 mem_ce 1 1 }  { tmp_we0 mem_we 1 1 }  { tmp_d0 mem_din 1 8 }  { tmp_q0 mem_dout 0 8 } } }
	plaintext { ap_memory {  { plaintext_address0 mem_address 1 3 }  { plaintext_ce0 mem_ce 1 1 }  { plaintext_q0 mem_dout 0 32 } } }
	tape_0_tape { ap_memory {  { tape_0_tape_address0 mem_address 1 9 }  { tape_0_tape_ce0 mem_ce 1 1 }  { tape_0_tape_we0 mem_we 1 1 }  { tape_0_tape_d0 mem_din 1 8 }  { tape_0_tape_q0 mem_dout 0 8 }  { tape_0_tape_address1 mem_address 1 9 }  { tape_0_tape_ce1 mem_ce 1 1 }  { tape_0_tape_q1 mem_dout 0 8 } } }
}
set moduleName verifyProof_24
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
set C_modelName {verifyProof_24}
set C_modelType { void 0 }
set C_modelArgList {
	{ proof_0_seed1 int 8 regular {array 3504 { 1 3 } 1 1 }  }
	{ proof_seed1_offset1 int 8 regular  }
	{ proof_0_seed2 int 8 regular {array 3504 { 1 3 } 1 1 }  }
	{ proof_0_inputShare int 32 regular {array 876 { 1 3 } 1 1 }  }
	{ proof_0_communicatedBits int 8 regular {array 16425 { 1 3 } 1 1 }  }
	{ view1_inputShare int 32 regular {array 876 { 2 3 } 1 1 }  }
	{ view1_communicatedBits int 8 regular {array 16425 { 2 3 } 1 1 }  }
	{ view1_outputShare int 32 regular {array 876 { 0 3 } 0 1 }  }
	{ view2_inputShare int 32 regular {array 876 { 2 3 } 1 1 }  }
	{ view2_communicatedBits int 8 regular {array 16425 { 2 3 } 1 1 }  }
	{ view2_outputShare int 32 regular {array 876 { 0 3 } 0 1 }  }
	{ challenge int 2 regular  }
	{ salt_0 int 8 regular {array 32 { 1 3 } 1 1 }  }
	{ roundNumber int 8 regular  }
	{ tmp int 8 regular {array 96 { 2 3 } 1 1 }  }
	{ plaintext int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ tape_0_tape int 8 regular {array 498 { 2 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "proof_0_seed1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "proof_seed1_offset1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "proof_0_seed2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "proof_0_inputShare", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "proof_0_communicatedBits", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "view1_inputShare", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "view1_communicatedBits", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "view1_outputShare", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "view2_inputShare", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "view2_communicatedBits", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "view2_outputShare", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "challenge", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "salt_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "roundNumber", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "tmp", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "plaintext", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tape_0_tape", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 68
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ proof_0_seed1_address0 sc_out sc_lv 12 signal 0 } 
	{ proof_0_seed1_ce0 sc_out sc_logic 1 signal 0 } 
	{ proof_0_seed1_q0 sc_in sc_lv 8 signal 0 } 
	{ proof_seed1_offset1 sc_in sc_lv 8 signal 1 } 
	{ proof_0_seed2_address0 sc_out sc_lv 12 signal 2 } 
	{ proof_0_seed2_ce0 sc_out sc_logic 1 signal 2 } 
	{ proof_0_seed2_q0 sc_in sc_lv 8 signal 2 } 
	{ proof_0_inputShare_address0 sc_out sc_lv 10 signal 3 } 
	{ proof_0_inputShare_ce0 sc_out sc_logic 1 signal 3 } 
	{ proof_0_inputShare_q0 sc_in sc_lv 32 signal 3 } 
	{ proof_0_communicatedBits_address0 sc_out sc_lv 15 signal 4 } 
	{ proof_0_communicatedBits_ce0 sc_out sc_logic 1 signal 4 } 
	{ proof_0_communicatedBits_q0 sc_in sc_lv 8 signal 4 } 
	{ view1_inputShare_address0 sc_out sc_lv 10 signal 5 } 
	{ view1_inputShare_ce0 sc_out sc_logic 1 signal 5 } 
	{ view1_inputShare_we0 sc_out sc_logic 1 signal 5 } 
	{ view1_inputShare_d0 sc_out sc_lv 32 signal 5 } 
	{ view1_inputShare_q0 sc_in sc_lv 32 signal 5 } 
	{ view1_communicatedBits_address0 sc_out sc_lv 15 signal 6 } 
	{ view1_communicatedBits_ce0 sc_out sc_logic 1 signal 6 } 
	{ view1_communicatedBits_we0 sc_out sc_logic 1 signal 6 } 
	{ view1_communicatedBits_d0 sc_out sc_lv 8 signal 6 } 
	{ view1_communicatedBits_q0 sc_in sc_lv 8 signal 6 } 
	{ view1_outputShare_address0 sc_out sc_lv 10 signal 7 } 
	{ view1_outputShare_ce0 sc_out sc_logic 1 signal 7 } 
	{ view1_outputShare_we0 sc_out sc_logic 1 signal 7 } 
	{ view1_outputShare_d0 sc_out sc_lv 32 signal 7 } 
	{ view2_inputShare_address0 sc_out sc_lv 10 signal 8 } 
	{ view2_inputShare_ce0 sc_out sc_logic 1 signal 8 } 
	{ view2_inputShare_we0 sc_out sc_logic 1 signal 8 } 
	{ view2_inputShare_d0 sc_out sc_lv 32 signal 8 } 
	{ view2_inputShare_q0 sc_in sc_lv 32 signal 8 } 
	{ view2_communicatedBits_address0 sc_out sc_lv 15 signal 9 } 
	{ view2_communicatedBits_ce0 sc_out sc_logic 1 signal 9 } 
	{ view2_communicatedBits_we0 sc_out sc_logic 1 signal 9 } 
	{ view2_communicatedBits_d0 sc_out sc_lv 8 signal 9 } 
	{ view2_communicatedBits_q0 sc_in sc_lv 8 signal 9 } 
	{ view2_outputShare_address0 sc_out sc_lv 10 signal 10 } 
	{ view2_outputShare_ce0 sc_out sc_logic 1 signal 10 } 
	{ view2_outputShare_we0 sc_out sc_logic 1 signal 10 } 
	{ view2_outputShare_d0 sc_out sc_lv 32 signal 10 } 
	{ challenge sc_in sc_lv 2 signal 11 } 
	{ salt_0_address0 sc_out sc_lv 5 signal 12 } 
	{ salt_0_ce0 sc_out sc_logic 1 signal 12 } 
	{ salt_0_q0 sc_in sc_lv 8 signal 12 } 
	{ roundNumber sc_in sc_lv 8 signal 13 } 
	{ tmp_address0 sc_out sc_lv 7 signal 14 } 
	{ tmp_ce0 sc_out sc_logic 1 signal 14 } 
	{ tmp_we0 sc_out sc_logic 1 signal 14 } 
	{ tmp_d0 sc_out sc_lv 8 signal 14 } 
	{ tmp_q0 sc_in sc_lv 8 signal 14 } 
	{ plaintext_address0 sc_out sc_lv 3 signal 15 } 
	{ plaintext_ce0 sc_out sc_logic 1 signal 15 } 
	{ plaintext_q0 sc_in sc_lv 32 signal 15 } 
	{ tape_0_tape_address0 sc_out sc_lv 9 signal 16 } 
	{ tape_0_tape_ce0 sc_out sc_logic 1 signal 16 } 
	{ tape_0_tape_we0 sc_out sc_logic 1 signal 16 } 
	{ tape_0_tape_d0 sc_out sc_lv 8 signal 16 } 
	{ tape_0_tape_q0 sc_in sc_lv 8 signal 16 } 
	{ tape_0_tape_address1 sc_out sc_lv 9 signal 16 } 
	{ tape_0_tape_ce1 sc_out sc_logic 1 signal 16 } 
	{ tape_0_tape_q1 sc_in sc_lv 8 signal 16 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "proof_0_seed1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "proof_0_seed1", "role": "address0" }} , 
 	{ "name": "proof_0_seed1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "proof_0_seed1", "role": "ce0" }} , 
 	{ "name": "proof_0_seed1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "proof_0_seed1", "role": "q0" }} , 
 	{ "name": "proof_seed1_offset1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "proof_seed1_offset1", "role": "default" }} , 
 	{ "name": "proof_0_seed2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "proof_0_seed2", "role": "address0" }} , 
 	{ "name": "proof_0_seed2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "proof_0_seed2", "role": "ce0" }} , 
 	{ "name": "proof_0_seed2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "proof_0_seed2", "role": "q0" }} , 
 	{ "name": "proof_0_inputShare_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "proof_0_inputShare", "role": "address0" }} , 
 	{ "name": "proof_0_inputShare_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "proof_0_inputShare", "role": "ce0" }} , 
 	{ "name": "proof_0_inputShare_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "proof_0_inputShare", "role": "q0" }} , 
 	{ "name": "proof_0_communicatedBits_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "proof_0_communicatedBits", "role": "address0" }} , 
 	{ "name": "proof_0_communicatedBits_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "proof_0_communicatedBits", "role": "ce0" }} , 
 	{ "name": "proof_0_communicatedBits_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "proof_0_communicatedBits", "role": "q0" }} , 
 	{ "name": "view1_inputShare_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "view1_inputShare", "role": "address0" }} , 
 	{ "name": "view1_inputShare_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view1_inputShare", "role": "ce0" }} , 
 	{ "name": "view1_inputShare_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view1_inputShare", "role": "we0" }} , 
 	{ "name": "view1_inputShare_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "view1_inputShare", "role": "d0" }} , 
 	{ "name": "view1_inputShare_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "view1_inputShare", "role": "q0" }} , 
 	{ "name": "view1_communicatedBits_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "view1_communicatedBits", "role": "address0" }} , 
 	{ "name": "view1_communicatedBits_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view1_communicatedBits", "role": "ce0" }} , 
 	{ "name": "view1_communicatedBits_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view1_communicatedBits", "role": "we0" }} , 
 	{ "name": "view1_communicatedBits_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "view1_communicatedBits", "role": "d0" }} , 
 	{ "name": "view1_communicatedBits_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "view1_communicatedBits", "role": "q0" }} , 
 	{ "name": "view1_outputShare_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "view1_outputShare", "role": "address0" }} , 
 	{ "name": "view1_outputShare_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view1_outputShare", "role": "ce0" }} , 
 	{ "name": "view1_outputShare_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view1_outputShare", "role": "we0" }} , 
 	{ "name": "view1_outputShare_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "view1_outputShare", "role": "d0" }} , 
 	{ "name": "view2_inputShare_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "view2_inputShare", "role": "address0" }} , 
 	{ "name": "view2_inputShare_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view2_inputShare", "role": "ce0" }} , 
 	{ "name": "view2_inputShare_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view2_inputShare", "role": "we0" }} , 
 	{ "name": "view2_inputShare_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "view2_inputShare", "role": "d0" }} , 
 	{ "name": "view2_inputShare_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "view2_inputShare", "role": "q0" }} , 
 	{ "name": "view2_communicatedBits_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "view2_communicatedBits", "role": "address0" }} , 
 	{ "name": "view2_communicatedBits_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view2_communicatedBits", "role": "ce0" }} , 
 	{ "name": "view2_communicatedBits_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view2_communicatedBits", "role": "we0" }} , 
 	{ "name": "view2_communicatedBits_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "view2_communicatedBits", "role": "d0" }} , 
 	{ "name": "view2_communicatedBits_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "view2_communicatedBits", "role": "q0" }} , 
 	{ "name": "view2_outputShare_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "view2_outputShare", "role": "address0" }} , 
 	{ "name": "view2_outputShare_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view2_outputShare", "role": "ce0" }} , 
 	{ "name": "view2_outputShare_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view2_outputShare", "role": "we0" }} , 
 	{ "name": "view2_outputShare_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "view2_outputShare", "role": "d0" }} , 
 	{ "name": "challenge", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "challenge", "role": "default" }} , 
 	{ "name": "salt_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "salt_0", "role": "address0" }} , 
 	{ "name": "salt_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "salt_0", "role": "ce0" }} , 
 	{ "name": "salt_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "salt_0", "role": "q0" }} , 
 	{ "name": "roundNumber", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "roundNumber", "role": "default" }} , 
 	{ "name": "tmp_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "tmp", "role": "address0" }} , 
 	{ "name": "tmp_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp", "role": "ce0" }} , 
 	{ "name": "tmp_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp", "role": "we0" }} , 
 	{ "name": "tmp_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tmp", "role": "d0" }} , 
 	{ "name": "tmp_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tmp", "role": "q0" }} , 
 	{ "name": "plaintext_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "plaintext", "role": "address0" }} , 
 	{ "name": "plaintext_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "plaintext", "role": "ce0" }} , 
 	{ "name": "plaintext_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "plaintext", "role": "q0" }} , 
 	{ "name": "tape_0_tape_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "tape_0_tape", "role": "address0" }} , 
 	{ "name": "tape_0_tape_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tape_0_tape", "role": "ce0" }} , 
 	{ "name": "tape_0_tape_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tape_0_tape", "role": "we0" }} , 
 	{ "name": "tape_0_tape_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tape_0_tape", "role": "d0" }} , 
 	{ "name": "tape_0_tape_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tape_0_tape", "role": "q0" }} , 
 	{ "name": "tape_0_tape_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "tape_0_tape", "role": "address1" }} , 
 	{ "name": "tape_0_tape_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tape_0_tape", "role": "ce1" }} , 
 	{ "name": "tape_0_tape_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tape_0_tape", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "98", "111", "124", "137", "150", "163", "176", "189", "202"],
		"CDFG" : "verifyProof_24",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state37", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_createRandomTape13_fu_697"},
			{"State" : "ap_ST_fsm_state37", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_createRandomTape13_fu_697"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_createRandomTape13_fu_697"},
			{"State" : "ap_ST_fsm_state32", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_createRandomTape13_fu_697"},
			{"State" : "ap_ST_fsm_state72", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_createRandomTape13_fu_697"},
			{"State" : "ap_ST_fsm_state80", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_717"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_2_fu_746"},
			{"State" : "ap_ST_fsm_state29", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_2_fu_746"},
			{"State" : "ap_ST_fsm_state50", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_2_fu_746"},
			{"State" : "ap_ST_fsm_state66", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_2_fu_746"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate14_fu_767"},
			{"State" : "ap_ST_fsm_state46", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate14_fu_767"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_7_fu_783"},
			{"State" : "ap_ST_fsm_state54", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_7_fu_783"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_800"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_800"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_800"},
			{"State" : "ap_ST_fsm_state58", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_800"},
			{"State" : "ap_ST_fsm_state60", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_800"},
			{"State" : "ap_ST_fsm_state62", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_800"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_6_fu_815"},
			{"State" : "ap_ST_fsm_state56", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_6_fu_815"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_829"},
			{"State" : "ap_ST_fsm_state44", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_829"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashFinal_fu_843"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashFinal_fu_843"},
			{"State" : "ap_ST_fsm_state48", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashFinal_fu_843"},
			{"State" : "ap_ST_fsm_state64", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashFinal_fu_843"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashInitializ_fu_858"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashInitializ_fu_858"},
			{"State" : "ap_ST_fsm_state42", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashInitializ_fu_858"},
			{"State" : "ap_ST_fsm_state52", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashInitializ_fu_858"}],
		"Port" : [
			{"Name" : "proof_0_seed1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "124", "SubInstance" : "grp_Keccak_HashUpdate14_fu_767", "Port" : "data_0"},
					{"ID" : "4", "SubInstance" : "grp_createRandomTape13_fu_697", "Port" : "seed_0"}]},
			{"Name" : "proof_seed1_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "proof_0_seed2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "124", "SubInstance" : "grp_Keccak_HashUpdate14_fu_767", "Port" : "data_0"},
					{"ID" : "4", "SubInstance" : "grp_createRandomTape13_fu_697", "Port" : "seed_0"}]},
			{"Name" : "proof_0_inputShare", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "proof_0_communicatedBits", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "view1_inputShare", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_717", "Port" : "view1_inputShare"}]},
			{"Name" : "view1_communicatedBits", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_717", "Port" : "view1_communicatedBi"}]},
			{"Name" : "view1_outputShare", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_717", "Port" : "view1_outputShare"}]},
			{"Name" : "view2_inputShare", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_717", "Port" : "view2_inputShare"}]},
			{"Name" : "view2_communicatedBits", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_717", "Port" : "view2_communicatedBi"}]},
			{"Name" : "view2_outputShare", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_717", "Port" : "view2_outputShare"}]},
			{"Name" : "challenge", "Type" : "None", "Direction" : "I"},
			{"Name" : "salt_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_createRandomTape13_fu_697", "Port" : "salt_0"},
					{"ID" : "163", "SubInstance" : "grp_Keccak_HashUpdate_6_fu_815", "Port" : "data_0"}]},
			{"Name" : "roundNumber", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_createRandomTape13_fu_697", "Port" : "tape"}]},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_717", "Port" : "plaintext"}]},
			{"Name" : "tape_0_tape", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_Keccak_HashUpdate_7_fu_783", "Port" : "data_0"},
					{"ID" : "98", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_717", "Port" : "tapes_0_tape"},
					{"ID" : "111", "SubInstance" : "grp_Keccak_HashSqueeze_2_fu_746", "Port" : "data_0"}]},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "124", "SubInstance" : "grp_Keccak_HashUpdate14_fu_767", "Port" : "KeccakRhoOffsets"},
					{"ID" : "4", "SubInstance" : "grp_createRandomTape13_fu_697", "Port" : "KeccakRhoOffsets"},
					{"ID" : "150", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_800", "Port" : "KeccakRhoOffsets"},
					{"ID" : "137", "SubInstance" : "grp_Keccak_HashUpdate_7_fu_783", "Port" : "KeccakRhoOffsets"},
					{"ID" : "176", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_829", "Port" : "KeccakRhoOffsets"},
					{"ID" : "163", "SubInstance" : "grp_Keccak_HashUpdate_6_fu_815", "Port" : "KeccakRhoOffsets"},
					{"ID" : "189", "SubInstance" : "grp_Keccak_HashFinal_fu_843", "Port" : "KeccakRhoOffsets"},
					{"ID" : "111", "SubInstance" : "grp_Keccak_HashSqueeze_2_fu_746", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "124", "SubInstance" : "grp_Keccak_HashUpdate14_fu_767", "Port" : "KeccakRoundConstants"},
					{"ID" : "4", "SubInstance" : "grp_createRandomTape13_fu_697", "Port" : "KeccakRoundConstants"},
					{"ID" : "150", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_800", "Port" : "KeccakRoundConstants"},
					{"ID" : "137", "SubInstance" : "grp_Keccak_HashUpdate_7_fu_783", "Port" : "KeccakRoundConstants"},
					{"ID" : "176", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_829", "Port" : "KeccakRoundConstants"},
					{"ID" : "163", "SubInstance" : "grp_Keccak_HashUpdate_6_fu_815", "Port" : "KeccakRoundConstants"},
					{"ID" : "189", "SubInstance" : "grp_Keccak_HashFinal_fu_843", "Port" : "KeccakRoundConstants"},
					{"ID" : "111", "SubInstance" : "grp_Keccak_HashSqueeze_2_fu_746", "Port" : "KeccakRoundConstants"}]},
			{"Name" : "temp_matrix", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_717", "Port" : "temp_matrix"}]},
			{"Name" : "temp_matrix2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_717", "Port" : "temp_matrix2"}]},
			{"Name" : "temp_matrix3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_mpc_LowMC_verify_2_fu_717", "Port" : "temp_matrix3"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctx_sponge_state_1_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctx_sponge_state_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697", "Parent" : "0", "Child" : ["5", "6", "19", "32", "45", "58", "71", "84", "97"],
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
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_fu_72"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashSqueeze_fu_72"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate14_fu_90"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_2_fu_106"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_6_fu_120"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_134"},
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_134"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_134"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_149"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashFinal_fu_163"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashFinal_fu_163"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashInitializ_fu_178"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Keccak_HashInitializ_fu_178"}],
		"Port" : [
			{"Name" : "seed_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_Keccak_HashUpdate14_fu_90", "Port" : "data_0"}]},
			{"Name" : "seed_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "salt_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_Keccak_HashUpdate_6_fu_120", "Port" : "data_0"}]},
			{"Name" : "roundNumber", "Type" : "None", "Direction" : "I"},
			{"Name" : "playerNumber", "Type" : "None", "Direction" : "I"},
			{"Name" : "tape", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_Keccak_HashSqueeze_fu_72", "Port" : "data"},
					{"ID" : "32", "SubInstance" : "grp_Keccak_HashUpdate_2_fu_106", "Port" : "data"}]},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "71", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_149", "Port" : "KeccakRhoOffsets"},
					{"ID" : "6", "SubInstance" : "grp_Keccak_HashSqueeze_fu_72", "Port" : "KeccakRhoOffsets"},
					{"ID" : "45", "SubInstance" : "grp_Keccak_HashUpdate_6_fu_120", "Port" : "KeccakRhoOffsets"},
					{"ID" : "58", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_134", "Port" : "KeccakRhoOffsets"},
					{"ID" : "84", "SubInstance" : "grp_Keccak_HashFinal_fu_163", "Port" : "KeccakRhoOffsets"},
					{"ID" : "32", "SubInstance" : "grp_Keccak_HashUpdate_2_fu_106", "Port" : "KeccakRhoOffsets"},
					{"ID" : "19", "SubInstance" : "grp_Keccak_HashUpdate14_fu_90", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "71", "SubInstance" : "grp_Keccak_HashUpdate_1_fu_149", "Port" : "KeccakRoundConstants"},
					{"ID" : "6", "SubInstance" : "grp_Keccak_HashSqueeze_fu_72", "Port" : "KeccakRoundConstants"},
					{"ID" : "45", "SubInstance" : "grp_Keccak_HashUpdate_6_fu_120", "Port" : "KeccakRoundConstants"},
					{"ID" : "58", "SubInstance" : "grp_Keccak_HashUpdate_5_fu_134", "Port" : "KeccakRoundConstants"},
					{"ID" : "84", "SubInstance" : "grp_Keccak_HashFinal_fu_163", "Port" : "KeccakRoundConstants"},
					{"ID" : "32", "SubInstance" : "grp_Keccak_HashUpdate_2_fu_106", "Port" : "KeccakRoundConstants"},
					{"ID" : "19", "SubInstance" : "grp_Keccak_HashUpdate14_fu_90", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.ctx_sponge_state_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashSqueeze_fu_72", "Parent" : "4", "Child" : ["7"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_288"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_288"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_288"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_288", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "databitlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_288", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_288", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashSqueeze_fu_72.grp_KeccakP1600_Permute_s_fu_288", "Parent" : "6", "Child" : ["8", "9", "10", "11", "14", "16"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "8", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashSqueeze_fu_72.grp_KeccakP1600_Permute_s_fu_288.KeccakRhoOffsets_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashSqueeze_fu_72.grp_KeccakP1600_Permute_s_fu_288.KeccakRoundConstants_U", "Parent" : "7"},
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashSqueeze_fu_72.grp_KeccakP1600_Permute_s_fu_288.stateAsWords_U", "Parent" : "7"},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashSqueeze_fu_72.grp_KeccakP1600_Permute_s_fu_288.grp_theta_fu_225", "Parent" : "7", "Child" : ["12", "13"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "12", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashSqueeze_fu_72.grp_KeccakP1600_Permute_s_fu_288.grp_theta_fu_225.C_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashSqueeze_fu_72.grp_KeccakP1600_Permute_s_fu_288.grp_theta_fu_225.D_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashSqueeze_fu_72.grp_KeccakP1600_Permute_s_fu_288.grp_chi_fu_230", "Parent" : "7", "Child" : ["15"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "15", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashSqueeze_fu_72.grp_KeccakP1600_Permute_s_fu_288.grp_chi_fu_230.C_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashSqueeze_fu_72.grp_KeccakP1600_Permute_s_fu_288.grp_pi_fu_235", "Parent" : "7", "Child" : ["17", "18"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "17", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashSqueeze_fu_72.grp_KeccakP1600_Permute_s_fu_288.grp_pi_fu_235.tempA_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashSqueeze_fu_72.grp_KeccakP1600_Permute_s_fu_288.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "16"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate14_fu_90", "Parent" : "4", "Child" : ["20"],
		"CDFG" : "Keccak_HashUpdate14",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
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
			{"Name" : "instance_sponge_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate14_fu_90.grp_KeccakP1600_Permute_s_fu_197", "Parent" : "19", "Child" : ["21", "22", "23", "24", "27", "29"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "21", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate14_fu_90.grp_KeccakP1600_Permute_s_fu_197.KeccakRhoOffsets_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate14_fu_90.grp_KeccakP1600_Permute_s_fu_197.KeccakRoundConstants_U", "Parent" : "20"},
	{"ID" : "23", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate14_fu_90.grp_KeccakP1600_Permute_s_fu_197.stateAsWords_U", "Parent" : "20"},
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate14_fu_90.grp_KeccakP1600_Permute_s_fu_197.grp_theta_fu_225", "Parent" : "20", "Child" : ["25", "26"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "25", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate14_fu_90.grp_KeccakP1600_Permute_s_fu_197.grp_theta_fu_225.C_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate14_fu_90.grp_KeccakP1600_Permute_s_fu_197.grp_theta_fu_225.D_U", "Parent" : "24"},
	{"ID" : "27", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate14_fu_90.grp_KeccakP1600_Permute_s_fu_197.grp_chi_fu_230", "Parent" : "20", "Child" : ["28"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "28", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate14_fu_90.grp_KeccakP1600_Permute_s_fu_197.grp_chi_fu_230.C_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate14_fu_90.grp_KeccakP1600_Permute_s_fu_197.grp_pi_fu_235", "Parent" : "20", "Child" : ["30", "31"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "30", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate14_fu_90.grp_KeccakP1600_Permute_s_fu_197.grp_pi_fu_235.tempA_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate14_fu_90.grp_KeccakP1600_Permute_s_fu_197.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "29"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_2_fu_106", "Parent" : "4", "Child" : ["33"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_2_fu_106.grp_KeccakP1600_Permute_s_fu_183", "Parent" : "32", "Child" : ["34", "35", "36", "37", "40", "42"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_2_fu_106.grp_KeccakP1600_Permute_s_fu_183.KeccakRhoOffsets_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_2_fu_106.grp_KeccakP1600_Permute_s_fu_183.KeccakRoundConstants_U", "Parent" : "33"},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_2_fu_106.grp_KeccakP1600_Permute_s_fu_183.stateAsWords_U", "Parent" : "33"},
	{"ID" : "37", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_2_fu_106.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225", "Parent" : "33", "Child" : ["38", "39"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "38", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_2_fu_106.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225.C_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_2_fu_106.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225.D_U", "Parent" : "37"},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_2_fu_106.grp_KeccakP1600_Permute_s_fu_183.grp_chi_fu_230", "Parent" : "33", "Child" : ["41"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "41", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_2_fu_106.grp_KeccakP1600_Permute_s_fu_183.grp_chi_fu_230.C_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_2_fu_106.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235", "Parent" : "33", "Child" : ["43", "44"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "43", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_2_fu_106.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235.tempA_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_2_fu_106.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "42"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_6_fu_120", "Parent" : "4", "Child" : ["46"],
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
					{"ID" : "46", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_6_fu_120.grp_KeccakP1600_Permute_s_fu_183", "Parent" : "45", "Child" : ["47", "48", "49", "50", "53", "55"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "47", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_6_fu_120.grp_KeccakP1600_Permute_s_fu_183.KeccakRhoOffsets_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_6_fu_120.grp_KeccakP1600_Permute_s_fu_183.KeccakRoundConstants_U", "Parent" : "46"},
	{"ID" : "49", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_6_fu_120.grp_KeccakP1600_Permute_s_fu_183.stateAsWords_U", "Parent" : "46"},
	{"ID" : "50", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_6_fu_120.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225", "Parent" : "46", "Child" : ["51", "52"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "51", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_6_fu_120.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225.C_U", "Parent" : "50"},
	{"ID" : "52", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_6_fu_120.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225.D_U", "Parent" : "50"},
	{"ID" : "53", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_6_fu_120.grp_KeccakP1600_Permute_s_fu_183.grp_chi_fu_230", "Parent" : "46", "Child" : ["54"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "54", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_6_fu_120.grp_KeccakP1600_Permute_s_fu_183.grp_chi_fu_230.C_U", "Parent" : "53"},
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_6_fu_120.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235", "Parent" : "46", "Child" : ["56", "57"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "56", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_6_fu_120.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235.tempA_U", "Parent" : "55"},
	{"ID" : "57", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_6_fu_120.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "55"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_5_fu_134", "Parent" : "4", "Child" : ["59"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_172"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_172"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_172", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_172", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_172", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_5_fu_134.grp_KeccakP1600_Permute_s_fu_172", "Parent" : "58", "Child" : ["60", "61", "62", "63", "66", "68"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "60", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_5_fu_134.grp_KeccakP1600_Permute_s_fu_172.KeccakRhoOffsets_U", "Parent" : "59"},
	{"ID" : "61", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_5_fu_134.grp_KeccakP1600_Permute_s_fu_172.KeccakRoundConstants_U", "Parent" : "59"},
	{"ID" : "62", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_5_fu_134.grp_KeccakP1600_Permute_s_fu_172.stateAsWords_U", "Parent" : "59"},
	{"ID" : "63", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_5_fu_134.grp_KeccakP1600_Permute_s_fu_172.grp_theta_fu_225", "Parent" : "59", "Child" : ["64", "65"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "64", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_5_fu_134.grp_KeccakP1600_Permute_s_fu_172.grp_theta_fu_225.C_U", "Parent" : "63"},
	{"ID" : "65", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_5_fu_134.grp_KeccakP1600_Permute_s_fu_172.grp_theta_fu_225.D_U", "Parent" : "63"},
	{"ID" : "66", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_5_fu_134.grp_KeccakP1600_Permute_s_fu_172.grp_chi_fu_230", "Parent" : "59", "Child" : ["67"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "67", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_5_fu_134.grp_KeccakP1600_Permute_s_fu_172.grp_chi_fu_230.C_U", "Parent" : "66"},
	{"ID" : "68", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_5_fu_134.grp_KeccakP1600_Permute_s_fu_172.grp_pi_fu_235", "Parent" : "59", "Child" : ["69", "70"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "69", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_5_fu_134.grp_KeccakP1600_Permute_s_fu_172.grp_pi_fu_235.tempA_U", "Parent" : "68"},
	{"ID" : "70", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_5_fu_134.grp_KeccakP1600_Permute_s_fu_172.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "68"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_1_fu_149", "Parent" : "4", "Child" : ["72"],
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
					{"ID" : "72", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_1_fu_149.grp_KeccakP1600_Permute_s_fu_162", "Parent" : "71", "Child" : ["73", "74", "75", "76", "79", "81"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "73", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_1_fu_149.grp_KeccakP1600_Permute_s_fu_162.KeccakRhoOffsets_U", "Parent" : "72"},
	{"ID" : "74", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_1_fu_149.grp_KeccakP1600_Permute_s_fu_162.KeccakRoundConstants_U", "Parent" : "72"},
	{"ID" : "75", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_1_fu_149.grp_KeccakP1600_Permute_s_fu_162.stateAsWords_U", "Parent" : "72"},
	{"ID" : "76", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_1_fu_149.grp_KeccakP1600_Permute_s_fu_162.grp_theta_fu_225", "Parent" : "72", "Child" : ["77", "78"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "77", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_1_fu_149.grp_KeccakP1600_Permute_s_fu_162.grp_theta_fu_225.C_U", "Parent" : "76"},
	{"ID" : "78", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_1_fu_149.grp_KeccakP1600_Permute_s_fu_162.grp_theta_fu_225.D_U", "Parent" : "76"},
	{"ID" : "79", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_1_fu_149.grp_KeccakP1600_Permute_s_fu_162.grp_chi_fu_230", "Parent" : "72", "Child" : ["80"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "80", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_1_fu_149.grp_KeccakP1600_Permute_s_fu_162.grp_chi_fu_230.C_U", "Parent" : "79"},
	{"ID" : "81", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_1_fu_149.grp_KeccakP1600_Permute_s_fu_162.grp_pi_fu_235", "Parent" : "72", "Child" : ["82", "83"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "82", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_1_fu_149.grp_KeccakP1600_Permute_s_fu_162.grp_pi_fu_235.tempA_U", "Parent" : "81"},
	{"ID" : "83", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashUpdate_1_fu_149.grp_KeccakP1600_Permute_s_fu_162.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "81"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashFinal_fu_163", "Parent" : "4", "Child" : ["85"],
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
					{"ID" : "85", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_delimitedSu", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashFinal_fu_163.grp_KeccakP1600_Permute_s_fu_124", "Parent" : "84", "Child" : ["86", "87", "88", "89", "92", "94"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "86", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashFinal_fu_163.grp_KeccakP1600_Permute_s_fu_124.KeccakRhoOffsets_U", "Parent" : "85"},
	{"ID" : "87", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashFinal_fu_163.grp_KeccakP1600_Permute_s_fu_124.KeccakRoundConstants_U", "Parent" : "85"},
	{"ID" : "88", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashFinal_fu_163.grp_KeccakP1600_Permute_s_fu_124.stateAsWords_U", "Parent" : "85"},
	{"ID" : "89", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashFinal_fu_163.grp_KeccakP1600_Permute_s_fu_124.grp_theta_fu_225", "Parent" : "85", "Child" : ["90", "91"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "90", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashFinal_fu_163.grp_KeccakP1600_Permute_s_fu_124.grp_theta_fu_225.C_U", "Parent" : "89"},
	{"ID" : "91", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashFinal_fu_163.grp_KeccakP1600_Permute_s_fu_124.grp_theta_fu_225.D_U", "Parent" : "89"},
	{"ID" : "92", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashFinal_fu_163.grp_KeccakP1600_Permute_s_fu_124.grp_chi_fu_230", "Parent" : "85", "Child" : ["93"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "93", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashFinal_fu_163.grp_KeccakP1600_Permute_s_fu_124.grp_chi_fu_230.C_U", "Parent" : "92"},
	{"ID" : "94", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashFinal_fu_163.grp_KeccakP1600_Permute_s_fu_124.grp_pi_fu_235", "Parent" : "85", "Child" : ["95", "96"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "95", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashFinal_fu_163.grp_KeccakP1600_Permute_s_fu_124.grp_pi_fu_235.tempA_U", "Parent" : "94"},
	{"ID" : "96", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashFinal_fu_163.grp_KeccakP1600_Permute_s_fu_124.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "94"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape13_fu_697.grp_Keccak_HashInitializ_fu_178", "Parent" : "4",
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
			{"Name" : "instance_delimitedSuffix_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_717", "Parent" : "0", "Child" : ["99", "100", "104", "108"],
		"CDFG" : "mpc_LowMC_verify_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "217450", "EstimateLatencyMax" : "217618",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_686"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_686"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_686"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_686"},
			{"State" : "ap_ST_fsm_state31", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_1_fu_703"},
			{"State" : "ap_ST_fsm_state33", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_1_fu_703"},
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mpc_AND_verify_2_fu_715"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mpc_AND_verify_2_fu_715"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mpc_AND_verify_2_fu_715"}],
		"Port" : [
			{"Name" : "view1_inputShare", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "100", "SubInstance" : "grp_matrix_mul_fu_686", "Port" : "state"}]},
			{"Name" : "view1_inputShare_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "view1_communicatedBi", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "108", "SubInstance" : "grp_mpc_AND_verify_2_fu_715", "Port" : "view1_communicatedBi"}]},
			{"Name" : "view1_outputShare", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "view2_inputShare", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "100", "SubInstance" : "grp_matrix_mul_fu_686", "Port" : "state"}]},
			{"Name" : "view2_communicatedBi", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "108", "SubInstance" : "grp_mpc_AND_verify_2_fu_715", "Port" : "view2_communicatedBi"}]},
			{"Name" : "view2_outputShare", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tapes_0_tape", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "108", "SubInstance" : "grp_mpc_AND_verify_2_fu_715", "Port" : "rand_0_tape"}]},
			{"Name" : "tmp", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "104", "SubInstance" : "grp_matrix_mul_1_fu_703", "Port" : "output_r"},
					{"ID" : "100", "SubInstance" : "grp_matrix_mul_fu_686", "Port" : "output_r"}]},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "challenge", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_matrix", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "100", "SubInstance" : "grp_matrix_mul_fu_686", "Port" : "temp_matrix"}]},
			{"Name" : "temp_matrix2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "104", "SubInstance" : "grp_matrix_mul_1_fu_703", "Port" : "temp_matrix2"}]},
			{"Name" : "temp_matrix3", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_717.temp_matrix3_U", "Parent" : "98"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_717.grp_matrix_mul_fu_686", "Parent" : "98", "Child" : ["101", "102", "103"],
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
			{"Name" : "matrix_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_matrix", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_717.grp_matrix_mul_fu_686.temp_matrix_U", "Parent" : "100"},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_717.grp_matrix_mul_fu_686.prod_U", "Parent" : "100"},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_717.grp_matrix_mul_fu_686.temp_U", "Parent" : "100"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_717.grp_matrix_mul_1_fu_703", "Parent" : "98", "Child" : ["105", "106", "107"],
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
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_717.grp_matrix_mul_1_fu_703.temp_matrix2_U", "Parent" : "104"},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_717.grp_matrix_mul_1_fu_703.prod_U", "Parent" : "104"},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_717.grp_matrix_mul_1_fu_703.temp_U", "Parent" : "104"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_717.grp_mpc_AND_verify_2_fu_715", "Parent" : "98", "Child" : ["109", "110"],
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
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_717.grp_mpc_AND_verify_2_fu_715.crypto_sign_open_hbi_U100", "Parent" : "108"},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_verify_2_fu_717.grp_mpc_AND_verify_2_fu_715.crypto_sign_open_hbi_U101", "Parent" : "108"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_746", "Parent" : "0", "Child" : ["112"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_302"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_302"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_302"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_302", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "databitlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_302", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_302", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_746.grp_KeccakP1600_Permute_s_fu_302", "Parent" : "111", "Child" : ["113", "114", "115", "116", "119", "121"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_746.grp_KeccakP1600_Permute_s_fu_302.KeccakRhoOffsets_U", "Parent" : "112"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_746.grp_KeccakP1600_Permute_s_fu_302.KeccakRoundConstants_U", "Parent" : "112"},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_746.grp_KeccakP1600_Permute_s_fu_302.stateAsWords_U", "Parent" : "112"},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_746.grp_KeccakP1600_Permute_s_fu_302.grp_theta_fu_225", "Parent" : "112", "Child" : ["117", "118"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "117", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_746.grp_KeccakP1600_Permute_s_fu_302.grp_theta_fu_225.C_U", "Parent" : "116"},
	{"ID" : "118", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_746.grp_KeccakP1600_Permute_s_fu_302.grp_theta_fu_225.D_U", "Parent" : "116"},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_746.grp_KeccakP1600_Permute_s_fu_302.grp_chi_fu_230", "Parent" : "112", "Child" : ["120"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "120", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_746.grp_KeccakP1600_Permute_s_fu_302.grp_chi_fu_230.C_U", "Parent" : "119"},
	{"ID" : "121", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_746.grp_KeccakP1600_Permute_s_fu_302.grp_pi_fu_235", "Parent" : "112", "Child" : ["122", "123"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "122", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_746.grp_KeccakP1600_Permute_s_fu_302.grp_pi_fu_235.tempA_U", "Parent" : "121"},
	{"ID" : "123", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashSqueeze_2_fu_746.grp_KeccakP1600_Permute_s_fu_302.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "121"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate14_fu_767", "Parent" : "0", "Child" : ["125"],
		"CDFG" : "Keccak_HashUpdate14",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
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
			{"Name" : "instance_sponge_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate14_fu_767.grp_KeccakP1600_Permute_s_fu_197", "Parent" : "124", "Child" : ["126", "127", "128", "129", "132", "134"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "126", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate14_fu_767.grp_KeccakP1600_Permute_s_fu_197.KeccakRhoOffsets_U", "Parent" : "125"},
	{"ID" : "127", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate14_fu_767.grp_KeccakP1600_Permute_s_fu_197.KeccakRoundConstants_U", "Parent" : "125"},
	{"ID" : "128", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate14_fu_767.grp_KeccakP1600_Permute_s_fu_197.stateAsWords_U", "Parent" : "125"},
	{"ID" : "129", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate14_fu_767.grp_KeccakP1600_Permute_s_fu_197.grp_theta_fu_225", "Parent" : "125", "Child" : ["130", "131"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "130", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate14_fu_767.grp_KeccakP1600_Permute_s_fu_197.grp_theta_fu_225.C_U", "Parent" : "129"},
	{"ID" : "131", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate14_fu_767.grp_KeccakP1600_Permute_s_fu_197.grp_theta_fu_225.D_U", "Parent" : "129"},
	{"ID" : "132", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate14_fu_767.grp_KeccakP1600_Permute_s_fu_197.grp_chi_fu_230", "Parent" : "125", "Child" : ["133"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "133", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate14_fu_767.grp_KeccakP1600_Permute_s_fu_197.grp_chi_fu_230.C_U", "Parent" : "132"},
	{"ID" : "134", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate14_fu_767.grp_KeccakP1600_Permute_s_fu_197.grp_pi_fu_235", "Parent" : "125", "Child" : ["135", "136"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "135", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate14_fu_767.grp_KeccakP1600_Permute_s_fu_197.grp_pi_fu_235.tempA_U", "Parent" : "134"},
	{"ID" : "136", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate14_fu_767.grp_KeccakP1600_Permute_s_fu_197.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "134"},
	{"ID" : "137", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_783", "Parent" : "0", "Child" : ["138"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_197", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_783.grp_KeccakP1600_Permute_s_fu_197", "Parent" : "137", "Child" : ["139", "140", "141", "142", "145", "147"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "139", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_783.grp_KeccakP1600_Permute_s_fu_197.KeccakRhoOffsets_U", "Parent" : "138"},
	{"ID" : "140", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_783.grp_KeccakP1600_Permute_s_fu_197.KeccakRoundConstants_U", "Parent" : "138"},
	{"ID" : "141", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_783.grp_KeccakP1600_Permute_s_fu_197.stateAsWords_U", "Parent" : "138"},
	{"ID" : "142", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_783.grp_KeccakP1600_Permute_s_fu_197.grp_theta_fu_225", "Parent" : "138", "Child" : ["143", "144"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "143", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_783.grp_KeccakP1600_Permute_s_fu_197.grp_theta_fu_225.C_U", "Parent" : "142"},
	{"ID" : "144", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_783.grp_KeccakP1600_Permute_s_fu_197.grp_theta_fu_225.D_U", "Parent" : "142"},
	{"ID" : "145", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_783.grp_KeccakP1600_Permute_s_fu_197.grp_chi_fu_230", "Parent" : "138", "Child" : ["146"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "146", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_783.grp_KeccakP1600_Permute_s_fu_197.grp_chi_fu_230.C_U", "Parent" : "145"},
	{"ID" : "147", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_783.grp_KeccakP1600_Permute_s_fu_197.grp_pi_fu_235", "Parent" : "138", "Child" : ["148", "149"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "148", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_783.grp_KeccakP1600_Permute_s_fu_197.grp_pi_fu_235.tempA_U", "Parent" : "147"},
	{"ID" : "149", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_7_fu_783.grp_KeccakP1600_Permute_s_fu_197.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "147"},
	{"ID" : "150", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_800", "Parent" : "0", "Child" : ["151"],
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_172"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_172"}],
		"Port" : [
			{"Name" : "instance_sponge_stat", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_172", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_172", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_172", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_800.grp_KeccakP1600_Permute_s_fu_172", "Parent" : "150", "Child" : ["152", "153", "154", "155", "158", "160"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "152", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_800.grp_KeccakP1600_Permute_s_fu_172.KeccakRhoOffsets_U", "Parent" : "151"},
	{"ID" : "153", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_800.grp_KeccakP1600_Permute_s_fu_172.KeccakRoundConstants_U", "Parent" : "151"},
	{"ID" : "154", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_800.grp_KeccakP1600_Permute_s_fu_172.stateAsWords_U", "Parent" : "151"},
	{"ID" : "155", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_800.grp_KeccakP1600_Permute_s_fu_172.grp_theta_fu_225", "Parent" : "151", "Child" : ["156", "157"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "156", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_800.grp_KeccakP1600_Permute_s_fu_172.grp_theta_fu_225.C_U", "Parent" : "155"},
	{"ID" : "157", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_800.grp_KeccakP1600_Permute_s_fu_172.grp_theta_fu_225.D_U", "Parent" : "155"},
	{"ID" : "158", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_800.grp_KeccakP1600_Permute_s_fu_172.grp_chi_fu_230", "Parent" : "151", "Child" : ["159"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "159", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_800.grp_KeccakP1600_Permute_s_fu_172.grp_chi_fu_230.C_U", "Parent" : "158"},
	{"ID" : "160", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_800.grp_KeccakP1600_Permute_s_fu_172.grp_pi_fu_235", "Parent" : "151", "Child" : ["161", "162"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "161", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_800.grp_KeccakP1600_Permute_s_fu_172.grp_pi_fu_235.tempA_U", "Parent" : "160"},
	{"ID" : "162", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_5_fu_800.grp_KeccakP1600_Permute_s_fu_172.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "160"},
	{"ID" : "163", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_815", "Parent" : "0", "Child" : ["164"],
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
					{"ID" : "164", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_183", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_815.grp_KeccakP1600_Permute_s_fu_183", "Parent" : "163", "Child" : ["165", "166", "167", "168", "171", "173"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "165", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_815.grp_KeccakP1600_Permute_s_fu_183.KeccakRhoOffsets_U", "Parent" : "164"},
	{"ID" : "166", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_815.grp_KeccakP1600_Permute_s_fu_183.KeccakRoundConstants_U", "Parent" : "164"},
	{"ID" : "167", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_815.grp_KeccakP1600_Permute_s_fu_183.stateAsWords_U", "Parent" : "164"},
	{"ID" : "168", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_815.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225", "Parent" : "164", "Child" : ["169", "170"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "169", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_815.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225.C_U", "Parent" : "168"},
	{"ID" : "170", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_815.grp_KeccakP1600_Permute_s_fu_183.grp_theta_fu_225.D_U", "Parent" : "168"},
	{"ID" : "171", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_815.grp_KeccakP1600_Permute_s_fu_183.grp_chi_fu_230", "Parent" : "164", "Child" : ["172"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "172", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_815.grp_KeccakP1600_Permute_s_fu_183.grp_chi_fu_230.C_U", "Parent" : "171"},
	{"ID" : "173", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_815.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235", "Parent" : "164", "Child" : ["174", "175"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "174", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_815.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235.tempA_U", "Parent" : "173"},
	{"ID" : "175", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_6_fu_815.grp_KeccakP1600_Permute_s_fu_183.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "173"},
	{"ID" : "176", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_829", "Parent" : "0", "Child" : ["177"],
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
					{"ID" : "177", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "177", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "177", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_162", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "177", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_829.grp_KeccakP1600_Permute_s_fu_162", "Parent" : "176", "Child" : ["178", "179", "180", "181", "184", "186"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "178", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_829.grp_KeccakP1600_Permute_s_fu_162.KeccakRhoOffsets_U", "Parent" : "177"},
	{"ID" : "179", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_829.grp_KeccakP1600_Permute_s_fu_162.KeccakRoundConstants_U", "Parent" : "177"},
	{"ID" : "180", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_829.grp_KeccakP1600_Permute_s_fu_162.stateAsWords_U", "Parent" : "177"},
	{"ID" : "181", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_829.grp_KeccakP1600_Permute_s_fu_162.grp_theta_fu_225", "Parent" : "177", "Child" : ["182", "183"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "182", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_829.grp_KeccakP1600_Permute_s_fu_162.grp_theta_fu_225.C_U", "Parent" : "181"},
	{"ID" : "183", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_829.grp_KeccakP1600_Permute_s_fu_162.grp_theta_fu_225.D_U", "Parent" : "181"},
	{"ID" : "184", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_829.grp_KeccakP1600_Permute_s_fu_162.grp_chi_fu_230", "Parent" : "177", "Child" : ["185"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "185", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_829.grp_KeccakP1600_Permute_s_fu_162.grp_chi_fu_230.C_U", "Parent" : "184"},
	{"ID" : "186", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_829.grp_KeccakP1600_Permute_s_fu_162.grp_pi_fu_235", "Parent" : "177", "Child" : ["187", "188"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "187", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_829.grp_KeccakP1600_Permute_s_fu_162.grp_pi_fu_235.tempA_U", "Parent" : "186"},
	{"ID" : "188", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashUpdate_1_fu_829.grp_KeccakP1600_Permute_s_fu_162.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "186"},
	{"ID" : "189", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_843", "Parent" : "0", "Child" : ["190"],
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
					{"ID" : "190", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124", "Port" : "state"}]},
			{"Name" : "instance_sponge_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_byte", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_sponge_sque", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_delimitedSu", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "190", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "190", "SubInstance" : "grp_KeccakP1600_Permute_s_fu_124", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "190", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_843.grp_KeccakP1600_Permute_s_fu_124", "Parent" : "189", "Child" : ["191", "192", "193", "194", "197", "199"],
		"CDFG" : "KeccakP1600_Permute_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18584", "EstimateLatencyMax" : "18584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_230"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_235"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "191", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_843.grp_KeccakP1600_Permute_s_fu_124.KeccakRhoOffsets_U", "Parent" : "190"},
	{"ID" : "192", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_843.grp_KeccakP1600_Permute_s_fu_124.KeccakRoundConstants_U", "Parent" : "190"},
	{"ID" : "193", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_843.grp_KeccakP1600_Permute_s_fu_124.stateAsWords_U", "Parent" : "190"},
	{"ID" : "194", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_843.grp_KeccakP1600_Permute_s_fu_124.grp_theta_fu_225", "Parent" : "190", "Child" : ["195", "196"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "195", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_843.grp_KeccakP1600_Permute_s_fu_124.grp_theta_fu_225.C_U", "Parent" : "194"},
	{"ID" : "196", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_843.grp_KeccakP1600_Permute_s_fu_124.grp_theta_fu_225.D_U", "Parent" : "194"},
	{"ID" : "197", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_843.grp_KeccakP1600_Permute_s_fu_124.grp_chi_fu_230", "Parent" : "190", "Child" : ["198"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "198", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_843.grp_KeccakP1600_Permute_s_fu_124.grp_chi_fu_230.C_U", "Parent" : "197"},
	{"ID" : "199", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_843.grp_KeccakP1600_Permute_s_fu_124.grp_pi_fu_235", "Parent" : "190", "Child" : ["200", "201"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "200", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_843.grp_KeccakP1600_Permute_s_fu_124.grp_pi_fu_235.tempA_U", "Parent" : "199"},
	{"ID" : "201", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashFinal_fu_843.grp_KeccakP1600_Permute_s_fu_124.grp_pi_fu_235.crypto_sign_open_bkb_U22", "Parent" : "199"},
	{"ID" : "202", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Keccak_HashInitializ_fu_858", "Parent" : "0",
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
	verifyProof_24 {
		proof_0_seed1 {Type I LastRead 4 FirstWrite -1}
		proof_seed1_offset1 {Type I LastRead 0 FirstWrite -1}
		proof_0_seed2 {Type I LastRead 4 FirstWrite -1}
		proof_0_inputShare {Type I LastRead 31 FirstWrite -1}
		proof_0_communicatedBits {Type I LastRead 2 FirstWrite -1}
		view1_inputShare {Type IO LastRead 5 FirstWrite -1}
		view1_communicatedBits {Type IO LastRead 1 FirstWrite 2}
		view1_outputShare {Type O LastRead -1 FirstWrite 10}
		view2_inputShare {Type IO LastRead 30 FirstWrite -1}
		view2_communicatedBits {Type IO LastRead 1 FirstWrite -1}
		view2_outputShare {Type O LastRead -1 FirstWrite 11}
		challenge {Type I LastRead 0 FirstWrite -1}
		salt_0 {Type I LastRead 4 FirstWrite -1}
		roundNumber {Type I LastRead 0 FirstWrite -1}
		tmp {Type IO LastRead 33 FirstWrite -1}
		plaintext {Type I LastRead 4 FirstWrite -1}
		tape_0_tape {Type IO LastRead 4 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}
		temp_matrix {Type I LastRead -1 FirstWrite -1}
		temp_matrix2 {Type I LastRead -1 FirstWrite -1}
		temp_matrix3 {Type I LastRead -1 FirstWrite -1}}
	createRandomTape13 {
		seed_0 {Type I LastRead 4 FirstWrite -1}
		seed_offset1 {Type I LastRead 4 FirstWrite -1}
		salt_0 {Type I LastRead 4 FirstWrite -1}
		roundNumber {Type I LastRead 16 FirstWrite -1}
		playerNumber {Type I LastRead 18 FirstWrite -1}
		tape {Type IO LastRead 4 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	Keccak_HashSqueeze {
		instance_sponge_stat {Type IO LastRead 10 FirstWrite 1}
		instance_sponge_rate {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque_25 {Type I LastRead 0 FirstWrite -1}
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
	Keccak_HashUpdate14 {
		instance_sponge_state {Type IO LastRead 4 FirstWrite 4}
		instance_sponge_rate_read {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		instance_sponge_squeezing_read {Type I LastRead 0 FirstWrite -1}
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
	Keccak_HashUpdate_2 {
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
	Keccak_HashUpdate_5 {
		instance_sponge_stat {Type IO LastRead 4 FirstWrite 4}
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
		instance_delimitedSuffix_read {Type I LastRead 0 FirstWrite -1}}
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
	Keccak_HashSqueeze_2 {
		instance_sponge_stat {Type IO LastRead 10 FirstWrite 1}
		instance_sponge_rate {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque_17 {Type I LastRead 0 FirstWrite -1}
		instance_sponge_sque {Type I LastRead 0 FirstWrite -1}
		data_0 {Type O LastRead -1 FirstWrite 10}
		data_offset1 {Type I LastRead 0 FirstWrite -1}
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
	Keccak_HashUpdate14 {
		instance_sponge_state {Type IO LastRead 4 FirstWrite 4}
		instance_sponge_rate_read {Type I LastRead 0 FirstWrite -1}
		instance_sponge_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		instance_sponge_squeezing_read {Type I LastRead 0 FirstWrite -1}
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
	Keccak_HashUpdate_7 {
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
	Keccak_HashUpdate_5 {
		instance_sponge_stat {Type IO LastRead 4 FirstWrite 4}
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
	proof_0_seed1 { ap_memory {  { proof_0_seed1_address0 mem_address 1 12 }  { proof_0_seed1_ce0 mem_ce 1 1 }  { proof_0_seed1_q0 mem_dout 0 8 } } }
	proof_seed1_offset1 { ap_none {  { proof_seed1_offset1 in_data 0 8 } } }
	proof_0_seed2 { ap_memory {  { proof_0_seed2_address0 mem_address 1 12 }  { proof_0_seed2_ce0 mem_ce 1 1 }  { proof_0_seed2_q0 mem_dout 0 8 } } }
	proof_0_inputShare { ap_memory {  { proof_0_inputShare_address0 mem_address 1 10 }  { proof_0_inputShare_ce0 mem_ce 1 1 }  { proof_0_inputShare_q0 mem_dout 0 32 } } }
	proof_0_communicatedBits { ap_memory {  { proof_0_communicatedBits_address0 mem_address 1 15 }  { proof_0_communicatedBits_ce0 mem_ce 1 1 }  { proof_0_communicatedBits_q0 mem_dout 0 8 } } }
	view1_inputShare { ap_memory {  { view1_inputShare_address0 mem_address 1 10 }  { view1_inputShare_ce0 mem_ce 1 1 }  { view1_inputShare_we0 mem_we 1 1 }  { view1_inputShare_d0 mem_din 1 32 }  { view1_inputShare_q0 mem_dout 0 32 } } }
	view1_communicatedBits { ap_memory {  { view1_communicatedBits_address0 mem_address 1 15 }  { view1_communicatedBits_ce0 mem_ce 1 1 }  { view1_communicatedBits_we0 mem_we 1 1 }  { view1_communicatedBits_d0 mem_din 1 8 }  { view1_communicatedBits_q0 mem_dout 0 8 } } }
	view1_outputShare { ap_memory {  { view1_outputShare_address0 mem_address 1 10 }  { view1_outputShare_ce0 mem_ce 1 1 }  { view1_outputShare_we0 mem_we 1 1 }  { view1_outputShare_d0 mem_din 1 32 } } }
	view2_inputShare { ap_memory {  { view2_inputShare_address0 mem_address 1 10 }  { view2_inputShare_ce0 mem_ce 1 1 }  { view2_inputShare_we0 mem_we 1 1 }  { view2_inputShare_d0 mem_din 1 32 }  { view2_inputShare_q0 mem_dout 0 32 } } }
	view2_communicatedBits { ap_memory {  { view2_communicatedBits_address0 mem_address 1 15 }  { view2_communicatedBits_ce0 mem_ce 1 1 }  { view2_communicatedBits_we0 mem_we 1 1 }  { view2_communicatedBits_d0 mem_din 1 8 }  { view2_communicatedBits_q0 mem_dout 0 8 } } }
	view2_outputShare { ap_memory {  { view2_outputShare_address0 mem_address 1 10 }  { view2_outputShare_ce0 mem_ce 1 1 }  { view2_outputShare_we0 mem_we 1 1 }  { view2_outputShare_d0 mem_din 1 32 } } }
	challenge { ap_none {  { challenge in_data 0 2 } } }
	salt_0 { ap_memory {  { salt_0_address0 mem_address 1 5 }  { salt_0_ce0 mem_ce 1 1 }  { salt_0_q0 mem_dout 0 8 } } }
	roundNumber { ap_none {  { roundNumber in_data 0 8 } } }
	tmp { ap_memory {  { tmp_address0 mem_address 1 7 }  { tmp_ce0 mem_ce 1 1 }  { tmp_we0 mem_we 1 1 }  { tmp_d0 mem_din 1 8 }  { tmp_q0 mem_dout 0 8 } } }
	plaintext { ap_memory {  { plaintext_address0 mem_address 1 3 }  { plaintext_ce0 mem_ce 1 1 }  { plaintext_q0 mem_dout 0 32 } } }
	tape_0_tape { ap_memory {  { tape_0_tape_address0 mem_address 1 9 }  { tape_0_tape_ce0 mem_ce 1 1 }  { tape_0_tape_we0 mem_we 1 1 }  { tape_0_tape_d0 mem_din 1 8 }  { tape_0_tape_q0 mem_dout 0 8 }  { tape_0_tape_address1 mem_address 1 9 }  { tape_0_tape_ce1 mem_ce 1 1 }  { tape_0_tape_q1 mem_dout 0 8 } } }
}
