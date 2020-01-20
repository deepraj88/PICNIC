############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project picnic3.prj
set_top crypto_sign_open
add_files tree.c
add_files NIST-KATs/rng.c
add_files picnic_types.c
add_files picnic_impl.c
add_files picnic2_impl.c
add_files picnic.c
add_files lowmc_constants.c
add_files hash.c
add_files api.c
add_files NIST-KATs/aes.c
add_files sha3/KeccakSpongeWidth1600.c
add_files sha3/KeccakP-1600-reference.c
add_files sha3/KeccakHash.c
add_files -tb newtest_sign.c -cflags "-Wno-unknown-pragmas"
open_solution "sign_open"
set_part {xc7a200tfbg676-2} -tool vivado
create_clock -period 10 -name default
config_interface  -expose_global  -m_axi_offset off -register_io off 
source "./picnic3.prj/sign_open/directives_bk.tcl"
#csim_design
csynth_design
cosim_design
#export_design -format ip_catalog
exit
