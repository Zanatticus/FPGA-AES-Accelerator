set SynModuleInfo {
  {SRCNAME aes_Pipeline_1 MODELNAME aes_Pipeline_1 RTLNAME aes_aes_Pipeline_1
    SUBMODULES {
      {MODELNAME aes_flow_control_loop_pipe_sequential_init RTLNAME aes_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME aes_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME aes_Pipeline_2 MODELNAME aes_Pipeline_2 RTLNAME aes_aes_Pipeline_2}
  {SRCNAME aes_Pipeline_3 MODELNAME aes_Pipeline_3 RTLNAME aes_aes_Pipeline_3}
  {SRCNAME aes_Pipeline_VITIS_LOOP_70_2 MODELNAME aes_Pipeline_VITIS_LOOP_70_2 RTLNAME aes_aes_Pipeline_VITIS_LOOP_70_2}
  {SRCNAME aes_Pipeline_VITIS_LOOP_75_3 MODELNAME aes_Pipeline_VITIS_LOOP_75_3 RTLNAME aes_aes_Pipeline_VITIS_LOOP_75_3}
  {SRCNAME aes_Pipeline_VITIS_LOOP_475_1_VITIS_LOOP_478_2 MODELNAME aes_Pipeline_VITIS_LOOP_475_1_VITIS_LOOP_478_2 RTLNAME aes_aes_Pipeline_VITIS_LOOP_475_1_VITIS_LOOP_478_2}
  {SRCNAME expandKey_Pipeline_VITIS_LOOP_227_1 MODELNAME expandKey_Pipeline_VITIS_LOOP_227_1 RTLNAME aes_expandKey_Pipeline_VITIS_LOOP_227_1}
  {SRCNAME expandKey_Pipeline_expandKeyLoop MODELNAME expandKey_Pipeline_expandKeyLoop RTLNAME aes_expandKey_Pipeline_expandKeyLoop
    SUBMODULES {
      {MODELNAME aes_urem_8ns_6ns_5_12_1 RTLNAME aes_urem_8ns_6ns_5_12_1 BINDTYPE op TYPE urem IMPL auto LATENCY 11 ALLOW_PRAGMA 1}
      {MODELNAME aes_expandKey_Pipeline_expandKeyLoop_sbox_ROM_AUTO_1R RTLNAME aes_expandKey_Pipeline_expandKeyLoop_sbox_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME aes_expandKey_Pipeline_expandKeyLoop_Rcon_ROM_AUTO_1R RTLNAME aes_expandKey_Pipeline_expandKeyLoop_Rcon_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME expandKey MODELNAME expandKey RTLNAME aes_expandKey}
  {SRCNAME aes_main_Pipeline_VITIS_LOOP_398_1_VITIS_LOOP_401_2 MODELNAME aes_main_Pipeline_VITIS_LOOP_398_1_VITIS_LOOP_401_2 RTLNAME aes_aes_main_Pipeline_VITIS_LOOP_398_1_VITIS_LOOP_401_2}
  {SRCNAME aes_main_Pipeline_VITIS_LOOP_308_1 MODELNAME aes_main_Pipeline_VITIS_LOOP_308_1 RTLNAME aes_aes_main_Pipeline_VITIS_LOOP_308_1}
  {SRCNAME aes_round_Pipeline_VITIS_LOOP_276_1 MODELNAME aes_round_Pipeline_VITIS_LOOP_276_1 RTLNAME aes_aes_round_Pipeline_VITIS_LOOP_276_1}
  {SRCNAME galois_multiplication MODELNAME galois_multiplication RTLNAME aes_galois_multiplication}
  {SRCNAME aes_round_Pipeline_mixColumnsLoop MODELNAME aes_round_Pipeline_mixColumnsLoop RTLNAME aes_aes_round_Pipeline_mixColumnsLoop}
  {SRCNAME aes_round_Pipeline_VITIS_LOOP_308_1 MODELNAME aes_round_Pipeline_VITIS_LOOP_308_1 RTLNAME aes_aes_round_Pipeline_VITIS_LOOP_308_1}
  {SRCNAME aes_round MODELNAME aes_round RTLNAME aes_aes_round}
  {SRCNAME aes_main_Pipeline_VITIS_LOOP_398_1_VITIS_LOOP_401_21 MODELNAME aes_main_Pipeline_VITIS_LOOP_398_1_VITIS_LOOP_401_21 RTLNAME aes_aes_main_Pipeline_VITIS_LOOP_398_1_VITIS_LOOP_401_21}
  {SRCNAME aes_main_Pipeline_VITIS_LOOP_276_1 MODELNAME aes_main_Pipeline_VITIS_LOOP_276_1 RTLNAME aes_aes_main_Pipeline_VITIS_LOOP_276_1}
  {SRCNAME aes_main_Pipeline_VITIS_LOOP_308_12 MODELNAME aes_main_Pipeline_VITIS_LOOP_308_12 RTLNAME aes_aes_main_Pipeline_VITIS_LOOP_308_12}
  {SRCNAME aes_main MODELNAME aes_main RTLNAME aes_aes_main
    SUBMODULES {
      {MODELNAME aes_aes_main_roundKey_RAM_AUTO_1R1W RTLNAME aes_aes_main_roundKey_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME aes_Pipeline_VITIS_LOOP_489_3_VITIS_LOOP_492_4 MODELNAME aes_Pipeline_VITIS_LOOP_489_3_VITIS_LOOP_492_4 RTLNAME aes_aes_Pipeline_VITIS_LOOP_489_3_VITIS_LOOP_492_4}
  {SRCNAME aes_Pipeline_VITIS_LOOP_665_1_VITIS_LOOP_668_2 MODELNAME aes_Pipeline_VITIS_LOOP_665_1_VITIS_LOOP_668_2 RTLNAME aes_aes_Pipeline_VITIS_LOOP_665_1_VITIS_LOOP_668_2}
  {SRCNAME aes_invRound_Pipeline_invShiftRowLoop MODELNAME aes_invRound_Pipeline_invShiftRowLoop RTLNAME aes_aes_invRound_Pipeline_invShiftRowLoop}
  {SRCNAME aes_invRound_Pipeline_VITIS_LOOP_507_1 MODELNAME aes_invRound_Pipeline_VITIS_LOOP_507_1 RTLNAME aes_aes_invRound_Pipeline_VITIS_LOOP_507_1
    SUBMODULES {
      {MODELNAME aes_aes_invRound_Pipeline_VITIS_LOOP_507_1_rsbox_ROM_AUTO_1R RTLNAME aes_aes_invRound_Pipeline_VITIS_LOOP_507_1_rsbox_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME aes_invRound_Pipeline_VITIS_LOOP_308_1 MODELNAME aes_invRound_Pipeline_VITIS_LOOP_308_1 RTLNAME aes_aes_invRound_Pipeline_VITIS_LOOP_308_1}
  {SRCNAME aes_invRound_Pipeline_invMixColumnsLoop MODELNAME aes_invRound_Pipeline_invMixColumnsLoop RTLNAME aes_aes_invRound_Pipeline_invMixColumnsLoop}
  {SRCNAME aes_invRound MODELNAME aes_invRound RTLNAME aes_aes_invRound}
  {SRCNAME aes_invMain_Pipeline_VITIS_LOOP_398_1_VITIS_LOOP_401_2 MODELNAME aes_invMain_Pipeline_VITIS_LOOP_398_1_VITIS_LOOP_401_2 RTLNAME aes_aes_invMain_Pipeline_VITIS_LOOP_398_1_VITIS_LOOP_401_2}
  {SRCNAME aes_invMain_Pipeline_invShiftRowLoop MODELNAME aes_invMain_Pipeline_invShiftRowLoop RTLNAME aes_aes_invMain_Pipeline_invShiftRowLoop}
  {SRCNAME aes_invMain_Pipeline_VITIS_LOOP_507_1 MODELNAME aes_invMain_Pipeline_VITIS_LOOP_507_1 RTLNAME aes_aes_invMain_Pipeline_VITIS_LOOP_507_1}
  {SRCNAME aes_invMain_Pipeline_VITIS_LOOP_308_1 MODELNAME aes_invMain_Pipeline_VITIS_LOOP_308_1 RTLNAME aes_aes_invMain_Pipeline_VITIS_LOOP_308_1}
  {SRCNAME aes_invMain MODELNAME aes_invMain RTLNAME aes_aes_invMain}
  {SRCNAME aes_Pipeline_VITIS_LOOP_679_3_VITIS_LOOP_682_4 MODELNAME aes_Pipeline_VITIS_LOOP_679_3_VITIS_LOOP_682_4 RTLNAME aes_aes_Pipeline_VITIS_LOOP_679_3_VITIS_LOOP_682_4}
  {SRCNAME aes_Pipeline_VITIS_LOOP_85_4 MODELNAME aes_Pipeline_VITIS_LOOP_85_4 RTLNAME aes_aes_Pipeline_VITIS_LOOP_85_4}
  {SRCNAME aes_Pipeline_VITIS_LOOP_94_5 MODELNAME aes_Pipeline_VITIS_LOOP_94_5 RTLNAME aes_aes_Pipeline_VITIS_LOOP_94_5}
  {SRCNAME aes MODELNAME aes RTLNAME aes IS_TOP 1
    SUBMODULES {
      {MODELNAME aes_key_array128_RAM_AUTO_1R1W RTLNAME aes_key_array128_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME aes_expandedKey_RAM_AUTO_1R1W RTLNAME aes_expandedKey_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME aes_block_RAM_AUTO_1R1W RTLNAME aes_block_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME aes_CTRL_BUS_s_axi RTLNAME aes_CTRL_BUS_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME aes_control_s_axi RTLNAME aes_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME aes_regslice_both RTLNAME aes_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME aes_regslice_both_U}
    }
  }
}
