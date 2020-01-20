############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_unroll -factor 32 "KeyExpansion/KeyExpansion_label0"
set_directive_unroll -factor 32 "KeyExpansion/KeyExpansion_label1"
set_directive_unroll -factor 32 "AddRoundKey/AddRoundKey_label1"
set_directive_unroll -factor 32 "AddRoundKey/AddRoundKey_label0"
set_directive_inline "AddRoundKey"
set_directive_unroll -factor 32 "SubBytes/SubBytes_label2"
set_directive_unroll -factor 32 "SubBytes/SubBytes_label3"
set_directive_inline "SubBytes"
set_directive_inline "ShiftRows"
set_directive_unroll -factor 32 "MixColumns/MixColumns_label4"
set_directive_inline "MixColumns"
set_directive_inline "Cipher"
set_directive_allocation -limit 1 -type function "Cipher" Cipher
set_directive_unroll -factor 32 "xor_array/xor_array_label5"
set_directive_unroll -factor 32 "matrix_mul/matrix_mul_label6"
set_directive_unroll -factor 32 "matrix_mul/matrix_mul_label7"
set_directive_pipeline "KeyExpansion/KeyExpansion_label0"
set_directive_pipeline "KeyExpansion/KeyExpansion_label1"
set_directive_pipeline "AddRoundKey/AddRoundKey_label0"
set_directive_pipeline "AddRoundKey/AddRoundKey_label1"
set_directive_pipeline "SubBytes/SubBytes_label3"
set_directive_pipeline "SubBytes/SubBytes_label2"
set_directive_pipeline "MixColumns/MixColumns_label4"
set_directive_pipeline "xor_array/xor_array_label5"
set_directive_pipeline "matrix_mul/matrix_mul_label6"
set_directive_pipeline "matrix_mul/matrix_mul_label7"
