# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 91
set hasByteEnable 0
set MemName mpc_LowMC_verify_jbC
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 80
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "10010101000011110000010001011001" "00000111111011110110001010101000" "00111011100001110111000001000000" "00111011011100110010001110101011" "01011011111000110000000100101101" "00001011100010110111100110100111" "11101110011001001001111011111100" "01100000101110001101000011010110" "10000001011111010001110110011110" "11000001011100010010000101100110" "00100110110111101001101001000110" "11001001000010011110110101100101" "00001100001010010010101111100101" "11010001011111110111011111010100" "11010111011001110111001111010101" "01101110011101110110010101111111" "10001110001110010011011011100111" "10101010000110011011110010011101" "11100111100100001110011001000011" "10110011100101000000011111011011" "01011010001010011101010011101011" "00000000100011001001010101000000" "10001110111001101001000001010111" "01000011001101001010011000100001" "11110010011011111001001010111100" "10110111001110001111111110010111" "10001011001111101010010011010110" "01110000111110011010010100010010" "00010010111100101110101010001010" "00010101001010000001011101110010" "00011101100000110111001011111101" "01011001100100010001100001110111" "01111110100101110100011001010010" "01001100110000110010100100111101" "01110011101101011110001011000010" "00111110100000010111001010011011" "00101110100001011000110000000000" "11000110000110110110001110010011" "00100110111010111100101110001000" "10001000111000001011010001100010" "11011000100001000100110000010001" "11001001100010001011110110001011" "10111111011001000011100010010000" "10010111101001001011010011000101" "01100001000110000111111010110111" "01101101011111011000001011111000" "10110011110000000010110111001000" "00000000001011001010011101001100" "01110101101110011101010100000010" "10110011001010000011010010111101" "11111111011001110101111110100001" "10011100100111101000111101000110" "01110100011100110111101001001110" "01101100111111100110001111001100" "00011111001111101111000110011001" "00000100000000110110110100110100" "11101100000011010001111110110100" "10100101100100000010001111100101" "01101100111000010000111001001001" "01001100110100000101001001111000" "00001010001011111101101000101010" "01110100110110001000111101110111" "10101010001111101110111011110110" "11011000010110100010011001010111" "10010000110111111101110100001100" "01100010010001110100100010010111" "11011000111101010111000110100011" "00000100000100001010001010010100" "00100100000100101101001000100110" "11001000000010101101000001101100" "01111001101101000001010110101010" "10101001011101111100001001100010" "11010101001100110010100100011100" "10111111000000000010001101011110" "01111101011110000001001111101000" "00001010110000111010000101100001" "01110110100001110111011101111100" "11010001100010011011010110111010" "00111011101001100111100000100110" "10110010001110001111010011110100" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 2.772
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 92 \
    name view1_inputShare \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename view1_inputShare \
    op interface \
    ports { view1_inputShare_address0 { O 10 vector } view1_inputShare_ce0 { O 1 bit } view1_inputShare_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'view1_inputShare'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 94 \
    name view1_communicatedBi \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename view1_communicatedBi \
    op interface \
    ports { view1_communicatedBi_address0 { O 15 vector } view1_communicatedBi_ce0 { O 1 bit } view1_communicatedBi_we0 { O 1 bit } view1_communicatedBi_d0 { O 8 vector } view1_communicatedBi_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'view1_communicatedBi'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 95 \
    name view1_outputShare \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename view1_outputShare \
    op interface \
    ports { view1_outputShare_address0 { O 10 vector } view1_outputShare_ce0 { O 1 bit } view1_outputShare_we0 { O 1 bit } view1_outputShare_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'view1_outputShare'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 96 \
    name view2_inputShare \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename view2_inputShare \
    op interface \
    ports { view2_inputShare_address0 { O 10 vector } view2_inputShare_ce0 { O 1 bit } view2_inputShare_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'view2_inputShare'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 97 \
    name view2_communicatedBi \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename view2_communicatedBi \
    op interface \
    ports { view2_communicatedBi_address0 { O 15 vector } view2_communicatedBi_ce0 { O 1 bit } view2_communicatedBi_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'view2_communicatedBi'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 98 \
    name view2_outputShare \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename view2_outputShare \
    op interface \
    ports { view2_outputShare_address0 { O 10 vector } view2_outputShare_ce0 { O 1 bit } view2_outputShare_we0 { O 1 bit } view2_outputShare_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'view2_outputShare'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 99 \
    name tapes_0_tape \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename tapes_0_tape \
    op interface \
    ports { tapes_0_tape_address0 { O 9 vector } tapes_0_tape_ce0 { O 1 bit } tapes_0_tape_q0 { I 8 vector } tapes_0_tape_address1 { O 9 vector } tapes_0_tape_ce1 { O 1 bit } tapes_0_tape_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tapes_0_tape'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 100 \
    name tmp \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename tmp \
    op interface \
    ports { tmp_address0 { O 5 vector } tmp_ce0 { O 1 bit } tmp_we0 { O 4 vector } tmp_d0 { O 32 vector } tmp_q0 { I 32 vector } tmp_address1 { O 5 vector } tmp_ce1 { O 1 bit } tmp_we1 { O 4 vector } tmp_d1 { O 32 vector } tmp_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 101 \
    name plaintext \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename plaintext \
    op interface \
    ports { plaintext_address0 { O 3 vector } plaintext_ce0 { O 1 bit } plaintext_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'plaintext'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name view1_inputShare_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_view1_inputShare_offset \
    op interface \
    ports { view1_inputShare_offset { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name challenge \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_challenge \
    op interface \
    ports { challenge { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


