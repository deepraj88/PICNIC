<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="com.autoesl.autopilot.project" name="picnic1" top="crypto_sign_keypair">
  <files>
    <file name="../../newtest_sign.c" sc="0" tb="1" cflags=" -Wno-unknown-pragmas -Wno-unknown-pragmas"/>
    <file name="sha3/KeccakHash.c" sc="0" tb="false" cflags=""/>
    <file name="sha3/KeccakP-1600-reference.c" sc="0" tb="false" cflags=""/>
    <file name="sha3/KeccakSpongeWidth1600.c" sc="0" tb="false" cflags=""/>
    <file name="NIST-KATs/aes.c" sc="0" tb="false" cflags=""/>
    <file name="api.c" sc="0" tb="false" cflags=""/>
    <file name="hash.c" sc="0" tb="false" cflags=""/>
    <file name="lowmc_constants.c" sc="0" tb="false" cflags=""/>
    <file name="picnic.c" sc="0" tb="false" cflags=""/>
    <file name="picnic2_impl.c" sc="0" tb="false" cflags=""/>
    <file name="picnic_impl.c" sc="0" tb="false" cflags=""/>
    <file name="picnic_types.c" sc="0" tb="false" cflags=""/>
    <file name="NIST-KATs/rng.c" sc="0" tb="false" cflags=""/>
    <file name="tree.c" sc="0" tb="false" cflags=""/>
  </files>
  <solutions>
    <solution name="sign_open" status="active"/>
    <solution name="sign" status="inactive"/>
    <solution name="keypair" status="inactive"/>
  </solutions>
  <includePaths/>
  <libraryPaths/>
  <Simulation>
    <SimFlow askAgain="false" name="csim" clean="true" csimMode="2" lastCsimMode="2"/>
  </Simulation>
</project>
