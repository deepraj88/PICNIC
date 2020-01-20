############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_unroll -factor 64 "KeyExpansion/KeyExpansion_label3"
set_directive_unroll -factor 64 "KeyExpansion/KeyExpansion_label4"
set_directive_inline "KeyExpansion"
set_directive_unroll -factor 64 "AddRoundKey/AddRoundKey_label1"
set_directive_unroll -factor 64 "AddRoundKey/AddRoundKey_label0"
set_directive_inline "AddRoundKey"
set_directive_unroll -factor 64 "SubBytes/SubBytes_label0"
set_directive_unroll -factor 64 "SubBytes/SubBytes_label1"
set_directive_inline "SubBytes"
set_directive_inline "ShiftRows"
set_directive_unroll -factor 64 "MixColumns/MixColumns_label2"
set_directive_inline "MixColumns"
set_directive_inline "Cipher"
set_directive_unroll -factor 64 "xor_array/xor_array_label0"
set_directive_unroll -factor 64 "matrix_mul/matrix_mul_label1"
set_directive_unroll -factor 64 "matrix_mul/matrix_mul_label2"
