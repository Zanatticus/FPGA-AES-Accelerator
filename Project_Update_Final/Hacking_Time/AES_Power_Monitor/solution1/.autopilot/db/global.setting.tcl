
set TopModule "aes"
set ClockPeriod 10
set ClockList ap_clk
set HasVivadoClockPeriod 1
set CombLogicFlag 0
set PipelineFlag 0
set DataflowTaskPipelineFlag 1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 0
set FftOrFirFlag 0
set NbRWValue 0
set intNbAccess 0
set NewDSPMapping 1
set HasDSPModule 0
set ResetLevelFlag 0
set ResetStyle control
set ResetSyncFlag 1
set ResetRegisterFlag 0
set ResetVariableFlag 0
set ResetRegisterNum 0
set FsmEncStyle onehot
set MaxFanout 0
set RtlPrefix {}
set RtlSubPrefix aes_
set ExtraCCFlags {}
set ExtraCLdFlags {}
set SynCheckOptions {}
set PresynOptions {}
set PreprocOptions {}
set SchedOptions {}
set BindOptions {}
set RtlGenOptions {}
set RtlWriterOptions {}
set CbcGenFlag {}
set CasGenFlag {}
set CasMonitorFlag {}
set AutoSimOptions {}
set ExportMCPathFlag 0
set SCTraceFileName mytrace
set SCTraceFileFormat vcd
set SCTraceOption all
set TargetInfo xc7z020:-clg400:-1
set SourceFiles {sc {} c ../../AES_AXIS_HLS/vitis/vitis_source/aes_axis.cpp}
set SourceFlags {sc {} c {{}}}
set DirectiveFile Z:/Users/hiqbal/AES_Power_Monitor/solution1/solution1.directive
set TBFiles {verilog {../../AES_AXIS_HLS/vitis/vitis_test/encrypted256.golden.dat ../../AES_AXIS_HLS/vitis/vitis_test/encrypted192.golden.dat ../../AES_AXIS_HLS/vitis/vitis_test/encrypted128.golden.dat ../../AES_AXIS_HLS/vitis/vitis_test/decrypted.golden.dat ../../AES_AXIS_HLS/vitis/vitis_test/aes_axis_test.cpp} bc {../../AES_AXIS_HLS/vitis/vitis_test/encrypted256.golden.dat ../../AES_AXIS_HLS/vitis/vitis_test/encrypted192.golden.dat ../../AES_AXIS_HLS/vitis/vitis_test/encrypted128.golden.dat ../../AES_AXIS_HLS/vitis/vitis_test/decrypted.golden.dat ../../AES_AXIS_HLS/vitis/vitis_test/aes_axis_test.cpp} vhdl {../../AES_AXIS_HLS/vitis/vitis_test/encrypted256.golden.dat ../../AES_AXIS_HLS/vitis/vitis_test/encrypted192.golden.dat ../../AES_AXIS_HLS/vitis/vitis_test/encrypted128.golden.dat ../../AES_AXIS_HLS/vitis/vitis_test/decrypted.golden.dat ../../AES_AXIS_HLS/vitis/vitis_test/aes_axis_test.cpp} sc {../../AES_AXIS_HLS/vitis/vitis_test/encrypted256.golden.dat ../../AES_AXIS_HLS/vitis/vitis_test/encrypted192.golden.dat ../../AES_AXIS_HLS/vitis/vitis_test/encrypted128.golden.dat ../../AES_AXIS_HLS/vitis/vitis_test/decrypted.golden.dat ../../AES_AXIS_HLS/vitis/vitis_test/aes_axis_test.cpp} cas {../../AES_AXIS_HLS/vitis/vitis_test/encrypted256.golden.dat ../../AES_AXIS_HLS/vitis/vitis_test/encrypted192.golden.dat ../../AES_AXIS_HLS/vitis/vitis_test/encrypted128.golden.dat ../../AES_AXIS_HLS/vitis/vitis_test/decrypted.golden.dat ../../AES_AXIS_HLS/vitis/vitis_test/aes_axis_test.cpp} c {}}
set SpecLanguage C
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set TBInstNames {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set TBTVFileNotFound {}
set AppFile ../hls.app
set ApsFile solution1.aps
set AvePath ../..
set DefaultPlatform DefaultPlatform
set multiClockList {}
set SCPortClockMap {}
set intNbAccess 0
set PlatformFiles {{DefaultPlatform {xilinx/zynq/zynq}}}
set HPFPO 0
