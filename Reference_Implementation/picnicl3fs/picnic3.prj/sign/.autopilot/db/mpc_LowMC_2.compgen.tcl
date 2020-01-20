# This script segment is generated automatically by AutoPilot

set id 111
set name crypto_sign_mux_4lbW
set corename simcore_mux
set op mux
set stage_num 1
set max_latency -1
set registered_input 1
set din0_width 22
set din0_signed 1
set din1_width 22
set din1_signed 1
set din2_width 22
set din2_signed 1
set din3_width 22
set din3_signed 1
set din4_width 2
set din4_signed 0
set dout_width 22
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mux] == "ap_gen_simcore_mux"} {
eval "ap_gen_simcore_mux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mux, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mux
set corename MuxnS
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


# Memory (RAM/ROM)  definition:
set ID 125
set hasByteEnable 0
set MemName mpc_LowMC_2_temp_kbM
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 180
set AddrWd 8
set TrueReset 0
set IsROM 1
set ROMData { "01101010110100100101000000101000" "00100100000101110101111100111000" "01010100101010100110010101100001" "10010001001100111110001101010000" "10110100100110101110110100111001" "11000000111010011000111101010111" "00010001010001111011111101100010" "00110110001100000000101110010100" "11111000101101101000101111111010" "10100011110010010010110110000110" "10111100111000001001110101100110" "00101110101000110100110001100111" "01011011010001111110001010000001" "01100001001100101100010001000000" "10111000000011101010000111110000" "00111000001001001100101111100110" "00111000001100110011110101100101" "01111000000000011111111000111001" "01011001100011011110000010110001" "11111111110011111000101101100001" "10001010100011111110101011101100" "00101001110100011011101101011101" "00001101000010000010100101011001" "10011010101100000001101101001011" "01000011000101110100010001001010" "11110001010111001110101101101001" "00000110111111010111000011000000" "11001010001010011000110011011010" "11011101110100110110001110100101" "11011100010111010001100010011110" "10011101011101001110110110011110" "10011100110010010010110100101110" "01001001111100110101000001110100" "10111011101001000000111000111011" "11100110001010110110000100110000" "10110100101100010010111011111001" "00101110001000000101011110100111" "00001010111010110100110110000110" "11101001000110011010110111111110" "01001000011011010111110000000101" "10000110111000101110000010011111" "11000110111011011110110111000010" "11100000000101110110011101111001" "01111100011000000000110001110001" "00000111000000001001010110100110" "11111100100111111111000110011110" "00001011000110111110111000000000" "10111111000100111110101011111100" "00100101111001100001110110010111" "01101000110101001101100111010001" "10100110100111110111110010011110" "11011101110011110000101010111001" "00001010001110011000001110010010" "00010111000111101111101111100101" "00111010010111010011010100110010" "11010100111000001001110010110010" "11010101011101010010011001101011" "00110110110101110110100000011111" "01010101000111000100100111101010" "10100110001001111101110011111001" "10100011010110011010110011000110" "10110111011111011000010001011111" "00011100000111100000101101100011" "01000000110011100111001101011000" "10100101110000110111111111001011" "00011111010101011001010110110010" "10001100101110100100000001010001" "00001001111010110001011010001011" "11000111101100111001010100110011" "10100010110011111001001111110000" "01001001000100001000100111101110" "01001110001001011111111001100110" "10111100010111001001110100011010" "00100101011101100111011101111101" "10110100001001000011011110100100" "10111000100101111001100110010011" "11011000101101010000110110101110" "10101100110101001110011111011010" "10010111000000001100100100001110" "01000111011001010011101010000001" "01100110100001101000000000001100" "00010111010101111110101111011110" "01101101100000011100010000000100" "11000011011010101001100101110100" "11001010111001010111100001110010" "10101111010010011001001101000111" "01000110011101100101011001100010" "01111000000111010010001001000110" "01000000111011111100110000000101" "01010000111111111111001110000100" "01101010011111011010000100011111" "00011111111011011011101000011011" "11101010110011001011011111011110" "00100011011110011100111111101101" "10001001011101110001001111010001" "11001110001001100101100110111100" "11111010111110000101000001011100" "11110001100111000011110101101100" "00011000000000001001111101001000" "11010111101100010100000000111111" "11110000110101001101011010101101" "10011010000110101111000110100001" "10110110001011101001110101010000" "01100101000011000100111111111001" "00110111111000110100101101010000" "10110001010100010100010001000101" "11111001000101001111111100010001" "01110001111111000101101111010010" "10000001100101010101101101111100" "11111000110010100100101000100000" "01010000001100111010001010011111" "10100010101111001011000101110100" "10001001100011000010101100100001" "01110001101010110100111011011001" "01011111111000011101110100010010" "00100100100100001111100101110100" "10000011101011010111101111010000" "10101111010101001000110010000110" "01000101010010011101110001010010" "00011111101100111000111011011110" "00010101011100111010000110100101" "11110111101011100000010111000100" "00101101101001001001111111101110" "00000111011010110101001100011111" "00010000011100010111001011110111" "01000111111110110100100110100100" "01100101111100100001101100000111" "01110010001000100010111101011100" "00101010110000110010000101111111" "00110000011000011111111101111010" "10001000110011010101101111000011" "00100010001101100010100111010001" "01110101000001000100011111100101" "00111111110011100100010000110010" "10000100001100011000111110011110" "11111000001110101101000101000111" "00101110001110100111000101001000" "01011011101101110001110010101111" "01000010000111010101001101010110" "10101101001111110001010101101010" "01011110001101100011110110010100" "00100011110000101100000101100101" "00000000101100000111000011010110" "01111001100010011000101011100001" "10001101011100111110011011110000" "00000000010100111110111011010011" "01011011110001110100011110110011" "00001000010101101111110111100100" "11010100001111100101011110110110" "11111100101100001111111111001010" "01010110110011100101001000101100" "10101010000111011000011100010000" "11111011011010001110110100001000" "10100011101100000100011000011000" "10100101100101101011000001011101" "01101111111110100010010101001011" "00001000100111000100111110110101" "11110110100001101110110111010110" "00010011101100001000110011000101" "00010101110010100000001011000110" "01110111100010010000000000000001" "10111101100111100101000110111111" "00110011001100001011111011000111" "01110000100100001011111101011100" "01101000011110100011011111010100" "11001110000110111101001110110101" "00110011010100001100111100101001" "00010110001111001011111101011100" "10110111001001111110001101000011" "10111111010010001101101111000100" "00100110111010101111110101001011" "01110101010100001111000011010000" "11000001110001011001001010001110" "00101100110011010000100111011010" "11110110010010110100101111100011" "01011001000010001101110011100110" "00111101111100111001110010011110" "11000101101100100001100100000000" "00001000100001000101001001010000" "01011110111111100110001101010100" }
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
    id 126 \
    name tapes_tape \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename tapes_tape \
    op interface \
    ports { tapes_tape_address0 { O 10 vector } tapes_tape_ce0 { O 1 bit } tapes_tape_q0 { I 8 vector } tapes_tape_address1 { O 10 vector } tapes_tape_ce1 { O 1 bit } tapes_tape_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tapes_tape'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 127 \
    name views_inputShare \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename views_inputShare \
    op interface \
    ports { views_inputShare_address0 { O 13 vector } views_inputShare_ce0 { O 1 bit } views_inputShare_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'views_inputShare'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 129 \
    name views_communicatedBi \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename views_communicatedBi \
    op interface \
    ports { views_communicatedBi_address0 { O 17 vector } views_communicatedBi_ce0 { O 1 bit } views_communicatedBi_we0 { O 1 bit } views_communicatedBi_d0 { O 8 vector } views_communicatedBi_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'views_communicatedBi'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 130 \
    name views_outputShare \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename views_outputShare \
    op interface \
    ports { views_outputShare_address0 { O 13 vector } views_outputShare_ce0 { O 1 bit } views_outputShare_we0 { O 1 bit } views_outputShare_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'views_outputShare'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 131 \
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


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 132 \
    name slab \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename slab \
    op interface \
    ports { slab_address0 { O 6 vector } slab_ce0 { O 1 bit } slab_we0 { O 4 vector } slab_d0 { O 32 vector } slab_q0 { I 32 vector } slab_address1 { O 6 vector } slab_ce1 { O 1 bit } slab_we1 { O 4 vector } slab_d1 { O 32 vector } slab_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'slab'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 128 \
    name views_inputShare_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_views_inputShare_offset \
    op interface \
    ports { views_inputShare_offset { I 9 vector } } \
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


