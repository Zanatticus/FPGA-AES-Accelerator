; ModuleID = 'Z:/Users/hiqbal/AES_Power_Monitor/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>" = type { %"struct.hls::axis<ap_int<8>, 1, 1, 1>" }
%"struct.hls::axis<ap_int<8>, 1, 1, 1>" = type { %"struct.ap_int<8>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>" }
%"struct.ap_int<8>" = type { %"struct.ap_int_base<8, true>" }
%"struct.ap_int_base<8, true>" = type { %"struct.ssdm_int<8, true>" }
%"struct.ssdm_int<8, true>" = type { i8 }
%"struct.ap_uint<1>" = type { %"struct.ap_int_base<1, false>" }
%"struct.ap_int_base<1, false>" = type { %"struct.ssdm_int<1, false>" }
%"struct.ssdm_int<1, false>" = type { i1 }

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define void @apatb_aes_ir(%"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"* noalias nonnull dereferenceable(7) %key_and_plaintext, %"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"* noalias nonnull dereferenceable(7) %ciphertext_and_decryptedtext, i32 %mode, i8 zeroext %enable_in, i8 zeroext %enable_out, i32 %power_reading_in, i32 %power_reading_out) local_unnamed_addr #0 {
entry:
  %key_and_plaintext_copy.data = alloca i8
  %key_and_plaintext_copy.keep = alloca i1
  %key_and_plaintext_copy.strb = alloca i1
  %key_and_plaintext_copy.user = alloca i1
  %key_and_plaintext_copy.last = alloca i1
  %key_and_plaintext_copy.id = alloca i1
  %key_and_plaintext_copy.dest = alloca i1
  %ciphertext_and_decryptedtext_copy.data = alloca i8
  %ciphertext_and_decryptedtext_copy.keep = alloca i1
  %ciphertext_and_decryptedtext_copy.strb = alloca i1
  %ciphertext_and_decryptedtext_copy.user = alloca i1
  %ciphertext_and_decryptedtext_copy.last = alloca i1
  %ciphertext_and_decryptedtext_copy.id = alloca i1
  %ciphertext_and_decryptedtext_copy.dest = alloca i1
  call fastcc void @copy_in(%"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"* nonnull %key_and_plaintext, i8* %key_and_plaintext_copy.data, i1* %key_and_plaintext_copy.keep, i1* %key_and_plaintext_copy.strb, i1* %key_and_plaintext_copy.user, i1* %key_and_plaintext_copy.last, i1* %key_and_plaintext_copy.id, i1* %key_and_plaintext_copy.dest, %"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"* nonnull %ciphertext_and_decryptedtext, i8* %ciphertext_and_decryptedtext_copy.data, i1* %ciphertext_and_decryptedtext_copy.keep, i1* %ciphertext_and_decryptedtext_copy.strb, i1* %ciphertext_and_decryptedtext_copy.user, i1* %ciphertext_and_decryptedtext_copy.last, i1* %ciphertext_and_decryptedtext_copy.id, i1* %ciphertext_and_decryptedtext_copy.dest)
  call void @apatb_aes_hw(i8* %key_and_plaintext_copy.data, i1* %key_and_plaintext_copy.keep, i1* %key_and_plaintext_copy.strb, i1* %key_and_plaintext_copy.user, i1* %key_and_plaintext_copy.last, i1* %key_and_plaintext_copy.id, i1* %key_and_plaintext_copy.dest, i8* %ciphertext_and_decryptedtext_copy.data, i1* %ciphertext_and_decryptedtext_copy.keep, i1* %ciphertext_and_decryptedtext_copy.strb, i1* %ciphertext_and_decryptedtext_copy.user, i1* %ciphertext_and_decryptedtext_copy.last, i1* %ciphertext_and_decryptedtext_copy.id, i1* %ciphertext_and_decryptedtext_copy.dest, i32 %mode, i8 %enable_in, i8 %enable_out, i32 %power_reading_in, i32 %power_reading_out)
  call void @copy_back(%"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"* %key_and_plaintext, i8* %key_and_plaintext_copy.data, i1* %key_and_plaintext_copy.keep, i1* %key_and_plaintext_copy.strb, i1* %key_and_plaintext_copy.user, i1* %key_and_plaintext_copy.last, i1* %key_and_plaintext_copy.id, i1* %key_and_plaintext_copy.dest, %"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"* %ciphertext_and_decryptedtext, i8* %ciphertext_and_decryptedtext_copy.data, i1* %ciphertext_and_decryptedtext_copy.keep, i1* %ciphertext_and_decryptedtext_copy.strb, i1* %ciphertext_and_decryptedtext_copy.user, i1* %ciphertext_and_decryptedtext_copy.last, i1* %ciphertext_and_decryptedtext_copy.id, i1* %ciphertext_and_decryptedtext_copy.dest)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in(%"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"* noalias, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_user_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.4" %_V_last_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.5" %_V_id_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.6" %_V_dest_V, %"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"* noalias, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.0" %_V_data_V1, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.1" %_V_keep_V2, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.2" %_V_strb_V3, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.3" %_V_user_V4, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.4" %_V_last_V5, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.5" %_V_id_V6, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.6" %_V_dest_V7) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>.12"(i8* %_V_data_V, i1* %_V_keep_V, i1* %_V_strb_V, i1* %_V_user_V, i1* %_V_last_V, i1* %_V_id_V, i1* %_V_dest_V, %"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>.12"(i8* %_V_data_V1, i1* %_V_keep_V2, i1* %_V_strb_V3, i1* %_V_user_V4, i1* %_V_last_V5, i1* %_V_id_V6, i1* %_V_dest_V7, %"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"* %1)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out(%"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"* noalias, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_user_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.4" %_V_last_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.5" %_V_id_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.6" %_V_dest_V, %"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"* noalias, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.0" %_V_data_V1, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.1" %_V_keep_V2, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.2" %_V_strb_V3, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.3" %_V_user_V4, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.4" %_V_last_V5, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.5" %_V_id_V6, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.6" %_V_dest_V7) unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"(%"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"* %0, i8* %_V_data_V, i1* %_V_keep_V, i1* %_V_strb_V, i1* %_V_user_V, i1* %_V_last_V, i1* %_V_id_V, i1* %_V_dest_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"(%"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"* %1, i8* %_V_data_V1, i1* %_V_keep_V2, i1* %_V_strb_V3, i1* %_V_user_V4, i1* %_V_last_V5, i1* %_V_id_V6, i1* %_V_dest_V7)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"(%"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_user_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.4" %_V_last_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.5" %_V_id_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.6" %_V_dest_V) unnamed_addr #3 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"* %0, null
  %2 = or i1 %1, false
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>.7"(%"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"* nonnull align 512 %0, i8* %_V_data_V, i1* %_V_keep_V, i1* %_V_strb_V, i1* %_V_user_V, i1* %_V_last_V, i1* %_V_id_V, i1* %_V_dest_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>.7"(%"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", i8* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_user_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.4" %_V_last_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.5" %_V_id_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.6" %_V_dest_V) unnamed_addr #4 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"
  %2 = alloca i8
  %3 = alloca i1
  %4 = alloca i1
  %5 = alloca i1
  %6 = alloca i1
  %7 = alloca i1
  %8 = alloca i1
  br label %empty

empty:                                            ; preds = %push, %entry
  %9 = call i1 @fpga_fifo_not_empty_1(i8* %_V_data_V)
  br i1 %9, label %push, label %ret

push:                                             ; preds = %empty
  call void @fpga_fifo_pop_1(i8* %2, i8* %_V_data_V)
  %10 = load volatile i8, i8* %2
  %11 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 0
  %12 = bitcast %"struct.ap_int<8>"* %11 to i8*
  store i8 %10, i8* %12
  %13 = bitcast i1* %8 to i8*
  %14 = bitcast i1* %_V_keep_V to i8*
  call void @fpga_fifo_pop_1(i8* %13, i8* %14)
  %15 = bitcast i1* %8 to i8*
  %16 = load i8, i8* %15
  %17 = trunc i8 %16 to i1
  %18 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 1
  %19 = bitcast %"struct.ap_uint<1>"* %18 to i1*
  store i1 %17, i1* %19
  %20 = bitcast i1* %7 to i8*
  %21 = bitcast i1* %_V_strb_V to i8*
  call void @fpga_fifo_pop_1(i8* %20, i8* %21)
  %22 = bitcast i1* %7 to i8*
  %23 = load i8, i8* %22
  %24 = trunc i8 %23 to i1
  %25 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 2
  %26 = bitcast %"struct.ap_uint<1>"* %25 to i1*
  store i1 %24, i1* %26
  %27 = bitcast i1* %6 to i8*
  %28 = bitcast i1* %_V_user_V to i8*
  call void @fpga_fifo_pop_1(i8* %27, i8* %28)
  %29 = bitcast i1* %6 to i8*
  %30 = load i8, i8* %29
  %31 = trunc i8 %30 to i1
  %32 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 3
  %33 = bitcast %"struct.ap_uint<1>"* %32 to i1*
  store i1 %31, i1* %33
  %34 = bitcast i1* %5 to i8*
  %35 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %34, i8* %35)
  %36 = bitcast i1* %5 to i8*
  %37 = load i8, i8* %36
  %38 = trunc i8 %37 to i1
  %39 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 4
  %40 = bitcast %"struct.ap_uint<1>"* %39 to i1*
  store i1 %38, i1* %40
  %41 = bitcast i1* %4 to i8*
  %42 = bitcast i1* %_V_id_V to i8*
  call void @fpga_fifo_pop_1(i8* %41, i8* %42)
  %43 = bitcast i1* %4 to i8*
  %44 = load i8, i8* %43
  %45 = trunc i8 %44 to i1
  %46 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 5
  %47 = bitcast %"struct.ap_uint<1>"* %46 to i1*
  store i1 %45, i1* %47
  %48 = bitcast i1* %3 to i8*
  %49 = bitcast i1* %_V_dest_V to i8*
  call void @fpga_fifo_pop_1(i8* %48, i8* %49)
  %50 = bitcast i1* %3 to i8*
  %51 = load i8, i8* %50
  %52 = trunc i8 %51 to i1
  %53 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 6
  %54 = bitcast %"struct.ap_uint<1>"* %53 to i1*
  store i1 %52, i1* %54
  %55 = bitcast %"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"* %1 to i8*
  %56 = bitcast %"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"* %0 to i8*
  call void @fpga_fifo_push_7(i8* %55, i8* %56)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>.12"(i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_user_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.4" %_V_last_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.5" %_V_id_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.6" %_V_dest_V, %"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"* %0, null
  %2 = or i1 false, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>.15"(i8* %_V_data_V, i1* %_V_keep_V, i1* %_V_strb_V, i1* %_V_user_V, i1* %_V_last_V, i1* %_V_id_V, i1* %_V_dest_V, %"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"* nonnull %0)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>.15"(i8* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_user_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.4" %_V_last_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.5" %_V_id_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.6" %_V_dest_V, %"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"
  %2 = alloca %"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"* %0 to i8*
  %4 = call i1 @fpga_fifo_not_empty_7(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"* %0 to i8*
  call void @fpga_fifo_pop_7(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"* %2
  store %"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>" %7, %"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"* %1
  %8 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 0
  %9 = bitcast %"struct.ap_int<8>"* %8 to i8*
  call void @fpga_fifo_push_1(i8* %9, i8* %_V_data_V)
  %10 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 1
  %11 = bitcast %"struct.ap_uint<1>"* %10 to i1*
  %12 = bitcast i1* %11 to i8*
  %13 = bitcast i1* %_V_keep_V to i8*
  call void @fpga_fifo_push_1(i8* %12, i8* %13)
  %14 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 2
  %15 = bitcast %"struct.ap_uint<1>"* %14 to i1*
  %16 = bitcast i1* %15 to i8*
  %17 = bitcast i1* %_V_strb_V to i8*
  call void @fpga_fifo_push_1(i8* %16, i8* %17)
  %18 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 3
  %19 = bitcast %"struct.ap_uint<1>"* %18 to i1*
  %20 = bitcast i1* %19 to i8*
  %21 = bitcast i1* %_V_user_V to i8*
  call void @fpga_fifo_push_1(i8* %20, i8* %21)
  %22 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 4
  %23 = bitcast %"struct.ap_uint<1>"* %22 to i1*
  %24 = bitcast i1* %23 to i8*
  %25 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_push_1(i8* %24, i8* %25)
  %26 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 5
  %27 = bitcast %"struct.ap_uint<1>"* %26 to i1*
  %28 = bitcast i1* %27 to i8*
  %29 = bitcast i1* %_V_id_V to i8*
  call void @fpga_fifo_push_1(i8* %28, i8* %29)
  %30 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 6
  %31 = bitcast %"struct.ap_uint<1>"* %30 to i1*
  %32 = bitcast i1* %31 to i8*
  %33 = bitcast i1* %_V_dest_V to i8*
  call void @fpga_fifo_push_1(i8* %32, i8* %33)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

declare void @apatb_aes_hw(i8*, i1*, i1*, i1*, i1*, i1*, i1*, i8*, i1*, i1*, i1*, i1*, i1*, i1*, i32, i8, i8, i32, i32)

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_back(%"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"* noalias, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_user_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.4" %_V_last_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.5" %_V_id_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.6" %_V_dest_V, %"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"* noalias, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.0" %_V_data_V1, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.1" %_V_keep_V2, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.2" %_V_strb_V3, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.3" %_V_user_V4, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.4" %_V_last_V5, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.5" %_V_id_V6, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.6" %_V_dest_V7) unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"(%"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"* %0, i8* %_V_data_V, i1* %_V_keep_V, i1* %_V_strb_V, i1* %_V_user_V, i1* %_V_last_V, i1* %_V_id_V, i1* %_V_dest_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"(%"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"* %1, i8* %_V_data_V1, i1* %_V_keep_V2, i1* %_V_strb_V3, i1* %_V_user_V4, i1* %_V_last_V5, i1* %_V_id_V6, i1* %_V_dest_V7)
  ret void
}

define void @aes_hw_stub_wrapper(i8*, i1*, i1*, i1*, i1*, i1*, i1*, i8*, i1*, i1*, i1*, i1*, i1*, i1*, i32, i8, i8, i32, i32) #5 {
entry:
  %19 = alloca %"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"
  %20 = alloca %"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"
  call void @copy_out(%"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"* %19, i8* %0, i1* %1, i1* %2, i1* %3, i1* %4, i1* %5, i1* %6, %"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"* %20, i8* %7, i1* %8, i1* %9, i1* %10, i1* %11, i1* %12, i1* %13)
  call void @aes_hw_stub(%"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"* %19, %"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"* %20, i32 %14, i8 %15, i8 %16, i32 %17, i32 %18)
  call void @copy_in(%"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"* %19, i8* %0, i1* %1, i1* %2, i1* %3, i1* %4, i1* %5, i1* %6, %"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"* %20, i8* %7, i1* %8, i1* %9, i1* %10, i1* %11, i1* %12, i1* %13)
  ret void
}

declare void @aes_hw_stub(%"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"*, %"class.hls::stream<hls::axis<ap_int<8>, 1, 1, 1>, 0>"*, i32, i8, i8, i32, i32)

declare i1 @fpga_fifo_not_empty_7(i8*)

declare i1 @fpga_fifo_not_empty_1(i8*)

declare void @fpga_fifo_pop_7(i8*, i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_push_7(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

attributes #0 = { inaccessiblemem_or_argmemonly noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #3 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
