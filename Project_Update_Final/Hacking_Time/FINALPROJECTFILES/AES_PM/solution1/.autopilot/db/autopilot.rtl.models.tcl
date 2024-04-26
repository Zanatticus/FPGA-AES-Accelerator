set SynModuleInfo {
  {SRCNAME aes_Pipeline_1 MODELNAME aes_Pipeline_1 RTLNAME aes_aes_Pipeline_1
    SUBMODULES {
      {MODELNAME aes_flow_control_loop_pipe_sequential_init RTLNAME aes_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME aes_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME aes_Pipeline_2 MODELNAME aes_Pipeline_2 RTLNAME aes_aes_Pipeline_2}
  {SRCNAME aes_Pipeline_3 MODELNAME aes_Pipeline_3 RTLNAME aes_aes_Pipeline_3}
  {SRCNAME aes_Pipeline_cipherkeyLoop MODELNAME aes_Pipeline_cipherkeyLoop RTLNAME aes_aes_Pipeline_cipherkeyLoop}
  {SRCNAME aes_Pipeline_plaintextLoop MODELNAME aes_Pipeline_plaintextLoop RTLNAME aes_aes_Pipeline_plaintextLoop}
  {SRCNAME aes_Pipeline_aesEncryptLoop1_aesEncryptLoop2 MODELNAME aes_Pipeline_aesEncryptLoop1_aesEncryptLoop2 RTLNAME aes_aes_Pipeline_aesEncryptLoop1_aesEncryptLoop2}
  {SRCNAME expandKey_Pipeline_expandKeyLoop1 MODELNAME expandKey_Pipeline_expandKeyLoop1 RTLNAME aes_expandKey_Pipeline_expandKeyLoop1}
  {SRCNAME expandKey_Pipeline_expandKeyLoop2 MODELNAME expandKey_Pipeline_expandKeyLoop2 RTLNAME aes_expandKey_Pipeline_expandKeyLoop2
    SUBMODULES {
      {MODELNAME aes_srem_32ns_7ns_6_36_1 RTLNAME aes_srem_32ns_7ns_6_36_1 BINDTYPE op TYPE srem IMPL auto LATENCY 35 ALLOW_PRAGMA 1}
      {MODELNAME aes_mux_21_8_1_1 RTLNAME aes_mux_21_8_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME aes_expandKey_Pipeline_expandKeyLoop2_sbox_ROM_2P_AUTO_1R RTLNAME aes_expandKey_Pipeline_expandKeyLoop2_sbox_ROM_2P_AUTO_1R BINDTYPE storage TYPE rom_2p IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME aes_expandKey_Pipeline_expandKeyLoop2_Rcon_ROM_2P_AUTO_1R RTLNAME aes_expandKey_Pipeline_expandKeyLoop2_Rcon_ROM_2P_AUTO_1R BINDTYPE storage TYPE rom_2p IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME expandKey MODELNAME expandKey RTLNAME aes_expandKey}
  {SRCNAME aes_main_Pipeline_createRoundKeyLoop1_createRoundKeyLoop2 MODELNAME aes_main_Pipeline_createRoundKeyLoop1_createRoundKeyLoop2 RTLNAME aes_aes_main_Pipeline_createRoundKeyLoop1_createRoundKeyLoop2}
  {SRCNAME aes_main_Pipeline_addRoundKeyLoop MODELNAME aes_main_Pipeline_addRoundKeyLoop RTLNAME aes_aes_main_Pipeline_addRoundKeyLoop}
  {SRCNAME galois_multiplication MODELNAME galois_multiplication RTLNAME aes_galois_multiplication}
  {SRCNAME aes_round MODELNAME aes_round RTLNAME aes_aes_round}
  {SRCNAME aes_main_Pipeline_aesMainLoop MODELNAME aes_main_Pipeline_aesMainLoop RTLNAME aes_aes_main_Pipeline_aesMainLoop}
  {SRCNAME aes_main_Pipeline_createRoundKeyLoop1_createRoundKeyLoop21 MODELNAME aes_main_Pipeline_createRoundKeyLoop1_createRoundKeyLoop21 RTLNAME aes_aes_main_Pipeline_createRoundKeyLoop1_createRoundKeyLoop21}
  {SRCNAME aes_main_Pipeline_shiftRowLoop1 MODELNAME aes_main_Pipeline_shiftRowLoop1 RTLNAME aes_aes_main_Pipeline_shiftRowLoop1}
  {SRCNAME aes_main_Pipeline_shiftRowLoop12 MODELNAME aes_main_Pipeline_shiftRowLoop12 RTLNAME aes_aes_main_Pipeline_shiftRowLoop12}
  {SRCNAME aes_main_Pipeline_addRoundKeyLoop3 MODELNAME aes_main_Pipeline_addRoundKeyLoop3 RTLNAME aes_aes_main_Pipeline_addRoundKeyLoop3}
  {SRCNAME aes_main MODELNAME aes_main RTLNAME aes_aes_main
    SUBMODULES {
      {MODELNAME aes_aes_main_roundKey_RAM_AUTO_1R1W RTLNAME aes_aes_main_roundKey_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME aes_Pipeline_aesEncryptLoop3_aesEncryptLoop4 MODELNAME aes_Pipeline_aesEncryptLoop3_aesEncryptLoop4 RTLNAME aes_aes_Pipeline_aesEncryptLoop3_aesEncryptLoop4}
  {SRCNAME aes_Pipeline_aesDecryptLoop1_aesDecryptLoop2 MODELNAME aes_Pipeline_aesDecryptLoop1_aesDecryptLoop2 RTLNAME aes_aes_Pipeline_aesDecryptLoop1_aesDecryptLoop2}
  {SRCNAME aes_invMain_Pipeline_createRoundKeyLoop1_createRoundKeyLoop2 MODELNAME aes_invMain_Pipeline_createRoundKeyLoop1_createRoundKeyLoop2 RTLNAME aes_aes_invMain_Pipeline_createRoundKeyLoop1_createRoundKeyLoop2}
  {SRCNAME aes_invMain_Pipeline_addRoundKeyLoop MODELNAME aes_invMain_Pipeline_addRoundKeyLoop RTLNAME aes_aes_invMain_Pipeline_addRoundKeyLoop}
  {SRCNAME aes_invRound MODELNAME aes_invRound RTLNAME aes_aes_invRound
    SUBMODULES {
      {MODELNAME aes_aes_invRound_rsbox_ROM_2P_AUTO_1R RTLNAME aes_aes_invRound_rsbox_ROM_2P_AUTO_1R BINDTYPE storage TYPE rom_2p IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME aes_invMain_Pipeline_aesInvMainLoop MODELNAME aes_invMain_Pipeline_aesInvMainLoop RTLNAME aes_aes_invMain_Pipeline_aesInvMainLoop}
  {SRCNAME aes_invMain_Pipeline_createRoundKeyLoop1_createRoundKeyLoop24 MODELNAME aes_invMain_Pipeline_createRoundKeyLoop1_createRoundKeyLoop24 RTLNAME aes_aes_invMain_Pipeline_createRoundKeyLoop1_createRoundKeyLoop24}
  {SRCNAME aes_invMain_Pipeline_invShiftRowLoop1 MODELNAME aes_invMain_Pipeline_invShiftRowLoop1 RTLNAME aes_aes_invMain_Pipeline_invShiftRowLoop1}
  {SRCNAME aes_invMain_Pipeline_invShiftRowLoop15 MODELNAME aes_invMain_Pipeline_invShiftRowLoop15 RTLNAME aes_aes_invMain_Pipeline_invShiftRowLoop15}
  {SRCNAME aes_invMain_Pipeline_addRoundKeyLoop6 MODELNAME aes_invMain_Pipeline_addRoundKeyLoop6 RTLNAME aes_aes_invMain_Pipeline_addRoundKeyLoop6}
  {SRCNAME aes_invMain MODELNAME aes_invMain RTLNAME aes_aes_invMain
    SUBMODULES {
      {MODELNAME aes_aes_invMain_roundKey_RAM_AUTO_1R1W RTLNAME aes_aes_invMain_roundKey_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME aes_Pipeline_aesDecryptLoop3_aesDecryptLoop4 MODELNAME aes_Pipeline_aesDecryptLoop3_aesDecryptLoop4 RTLNAME aes_aes_Pipeline_aesDecryptLoop3_aesDecryptLoop4}
  {SRCNAME aes_Pipeline_ciphertextLoop MODELNAME aes_Pipeline_ciphertextLoop RTLNAME aes_aes_Pipeline_ciphertextLoop}
  {SRCNAME aes_Pipeline_decryptedTextLoop MODELNAME aes_Pipeline_decryptedTextLoop RTLNAME aes_aes_Pipeline_decryptedTextLoop}
  {SRCNAME aes MODELNAME aes RTLNAME aes IS_TOP 1
    SUBMODULES {
      {MODELNAME aes_key_array128_RAM_1WNR_AUTO_1R1W RTLNAME aes_key_array128_RAM_1WNR_AUTO_1R1W BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME aes_expandedKey_RAM_AUTO_1R1W RTLNAME aes_expandedKey_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME aes_block_RAM_AUTO_1R1W RTLNAME aes_block_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME aes_plaintext_array_RAM_AUTO_1R1W RTLNAME aes_plaintext_array_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME aes_CTRL_BUS_s_axi RTLNAME aes_CTRL_BUS_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME aes_control_s_axi RTLNAME aes_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME aes_regslice_both RTLNAME aes_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME aes_regslice_both_U}
    }
  }
}
