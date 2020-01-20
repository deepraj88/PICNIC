############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_allocation -limit 1 -type function "HashUpdate" HashUpdate
set_directive_inline "HashUpdate"
set_directive_allocation -limit 1 -type function "HashUpdate_2" HashUpdate_2
set_directive_inline "HashUpdate_2"
set_directive_unroll -factor 8 "HashUpdate_2/HashUpdate_2_label2"
set_directive_pipeline "HashUpdate_2/HashUpdate_2_label2"
set_directive_allocation -limit 1 -type function "HashInit" HashInit
set_directive_inline "HashInit"
set_directive_allocation -limit 1 -type function "HashFinal" HashFinal
set_directive_inline "HashFinal"
set_directive_allocation -limit 1 -type function "HashSqueeze" HashSqueeze
set_directive_inline "HashSqueeze"
set_directive_allocation -limit 1 -type function "KeccakWidth1600_Sponge" KeccakWidth1600_Sponge
set_directive_inline "KeccakWidth1600_Sponge"
set_directive_allocation -limit 1 -type function "KeccakWidth1600_SpongeInitialize" KeccakWidth1600_SpongeInitialize
set_directive_inline "KeccakWidth1600_SpongeInitialize"
set_directive_allocation -limit 1 -type function "KeccakWidth1600_SpongeAbsorb" KeccakWidth1600_SpongeAbsorb
set_directive_inline "KeccakWidth1600_SpongeAbsorb"
set_directive_allocation -limit 1 -type function "KeccakWidth1600_SpongeAbsorbLastFewBits" KeccakWidth1600_SpongeAbsorbLastFewBits
set_directive_inline "KeccakWidth1600_SpongeAbsorbLastFewBits"
set_directive_allocation -limit 1 -type function "KeccakWidth1600_SpongeSqueeze" KeccakWidth1600_SpongeSqueeze
set_directive_inline "KeccakWidth1600_SpongeSqueeze"
set_directive_unroll -factor 8 "KeccakP1600_Initialize/KeccakP1600_Initialize_label0"
set_directive_pipeline "KeccakP1600_Initialize/KeccakP1600_Initialize_label0"
set_directive_unroll -factor 8 "KeccakP1600_AddBytes/KeccakP1600_AddBytes_label1"
set_directive_pipeline "KeccakP1600_AddBytes/KeccakP1600_AddBytes_label1"
set_directive_unroll -factor 8 "xor_array/xor_array_label5"
set_directive_pipeline "xor_array/xor_array_label5"
set_directive_unroll -factor 8 "matrix_mul/matrix_mul_label6"
set_directive_pipeline "matrix_mul/matrix_mul_label6"
set_directive_unroll -factor 8 "matrix_mul/matrix_mul_label7"
set_directive_pipeline "matrix_mul/matrix_mul_label7"
