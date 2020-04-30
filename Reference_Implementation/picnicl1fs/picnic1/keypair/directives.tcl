############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_unroll -factor 128 "KeyExpansion/KeyExpansion_label4"
set_directive_pipeline "KeyExpansion/KeyExpansion_label4"
set_directive_unroll -factor 128 "KeyExpansion/KeyExpansion_label5"
set_directive_pipeline "KeyExpansion/KeyExpansion_label5"
set_directive_inline "KeyExpansion"
set_directive_unroll -factor 128 "AddRoundKey/AddRoundKey_label1"
set_directive_pipeline "AddRoundKey/AddRoundKey_label1"
set_directive_unroll -factor 128 "AddRoundKey/AddRoundKey_label0"
set_directive_pipeline "AddRoundKey/AddRoundKey_label0"
set_directive_inline "AddRoundKey"
set_directive_unroll -factor 128 "SubBytes/SubBytes_label0"
set_directive_pipeline "SubBytes/SubBytes_label0"
set_directive_unroll -factor 128 "SubBytes/SubBytes_label1"
set_directive_pipeline "SubBytes/SubBytes_label1"
set_directive_inline "SubBytes"
set_directive_unroll -factor 128 "MixColumns/MixColumns_label2"
set_directive_pipeline "MixColumns/MixColumns_label2"
set_directive_inline "MixColumns"
set_directive_inline "ShiftRows"
set_directive_allocation -limit 1 -type function "Cipher" Cipher
set_directive_inline "Cipher"
set_directive_unroll -factor 128 "xor_array/xor_array_label4"
set_directive_pipeline "xor_array/xor_array_label4"
set_directive_unroll -factor 128 "matrix_mul/matrix_mul_label5"
set_directive_pipeline "matrix_mul/matrix_mul_label5"
set_directive_unroll -factor 128 "matrix_mul/matrix_mul_label7"
set_directive_pipeline "matrix_mul/matrix_mul_label7"
