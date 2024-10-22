-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Version: 2022.1
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity aes_aes_invRound_Pipeline_invMixColumnsLoop is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    state_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    state_ce0 : OUT STD_LOGIC;
    state_we0 : OUT STD_LOGIC;
    state_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    state_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    state_address1 : OUT STD_LOGIC_VECTOR (3 downto 0);
    state_ce1 : OUT STD_LOGIC;
    state_we1 : OUT STD_LOGIC;
    state_d1 : OUT STD_LOGIC_VECTOR (7 downto 0);
    state_q1 : IN STD_LOGIC_VECTOR (7 downto 0);
    grp_galois_multiplication_fu_329_p_din1 : OUT STD_LOGIC_VECTOR (7 downto 0);
    grp_galois_multiplication_fu_329_p_din2 : OUT STD_LOGIC_VECTOR (3 downto 0);
    grp_galois_multiplication_fu_329_p_dout0 : IN STD_LOGIC_VECTOR (7 downto 0);
    grp_galois_multiplication_fu_329_p_ready : IN STD_LOGIC;
    grp_galois_multiplication_fu_334_p_din1 : OUT STD_LOGIC_VECTOR (7 downto 0);
    grp_galois_multiplication_fu_334_p_din2 : OUT STD_LOGIC_VECTOR (3 downto 0);
    grp_galois_multiplication_fu_334_p_dout0 : IN STD_LOGIC_VECTOR (7 downto 0);
    grp_galois_multiplication_fu_334_p_ready : IN STD_LOGIC;
    grp_galois_multiplication_fu_339_p_din1 : OUT STD_LOGIC_VECTOR (7 downto 0);
    grp_galois_multiplication_fu_339_p_din2 : OUT STD_LOGIC_VECTOR (3 downto 0);
    grp_galois_multiplication_fu_339_p_dout0 : IN STD_LOGIC_VECTOR (7 downto 0);
    grp_galois_multiplication_fu_339_p_ready : IN STD_LOGIC );
end;


architecture behav of aes_aes_invRound_Pipeline_invMixColumnsLoop is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (6 downto 0) := "0000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (6 downto 0) := "0000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (6 downto 0) := "0001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (6 downto 0) := "0010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (6 downto 0) := "0100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (6 downto 0) := "1000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv4_E : STD_LOGIC_VECTOR (3 downto 0) := "1110";
    constant ap_const_lv4_9 : STD_LOGIC_VECTOR (3 downto 0) := "1001";
    constant ap_const_lv4_B : STD_LOGIC_VECTOR (3 downto 0) := "1011";
    constant ap_const_lv4_D : STD_LOGIC_VECTOR (3 downto 0) := "1101";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal icmp_ln542_fu_128_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal ap_block_state7_pp0_stage6_iter0 : BOOLEAN;
    signal i_13_reg_256 : STD_LOGIC_VECTOR (2 downto 0);
    signal state_addr_reg_264 : STD_LOGIC_VECTOR (3 downto 0);
    signal xor_ln548_fu_145_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal xor_ln548_reg_269 : STD_LOGIC_VECTOR (2 downto 0);
    signal state_addr_9_reg_274 : STD_LOGIC_VECTOR (3 downto 0);
    signal cpy_reg_279 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal ap_block_state2_pp0_stage1_iter0 : BOOLEAN;
    signal cpy_4_reg_286 : STD_LOGIC_VECTOR (7 downto 0);
    signal state_addr_10_reg_292 : STD_LOGIC_VECTOR (3 downto 0);
    signal state_addr_11_reg_298 : STD_LOGIC_VECTOR (3 downto 0);
    signal cpy_5_reg_304 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal ap_block_state3_pp0_stage2_iter0 : BOOLEAN;
    signal cpy_6_reg_311 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_s_reg_318 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_galois_multiplication_fu_94_ap_return : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_13_reg_323 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_14_reg_328 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_15_reg_333 : STD_LOGIC_VECTOR (7 downto 0);
    signal xor_ln572_fu_191_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal xor_ln572_reg_338 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal ap_block_state4_pp0_stage3_iter0 : BOOLEAN;
    signal xor_ln576_fu_207_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal xor_ln576_reg_343 : STD_LOGIC_VECTOR (7 downto 0);
    signal xor_ln580_fu_225_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal xor_ln580_reg_348 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal ap_block_state5_pp0_stage4_iter0 : BOOLEAN;
    signal xor_ln584_fu_243_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal xor_ln584_reg_353 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal ap_block_state6_pp0_stage5_iter0 : BOOLEAN;
    signal grp_galois_multiplication_fu_87_a : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_galois_multiplication_fu_87_b : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_galois_multiplication_fu_94_ap_ready : STD_LOGIC;
    signal grp_galois_multiplication_fu_94_a : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_galois_multiplication_fu_94_b : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_galois_multiplication_fu_101_a : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_galois_multiplication_fu_101_b : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_galois_multiplication_fu_108_a : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_galois_multiplication_fu_108_b : STD_LOGIC_VECTOR (3 downto 0);
    signal zext_ln542_fu_140_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln548_fu_151_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln548_1_fu_168_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln548_2_fu_176_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_fu_42 : STD_LOGIC_VECTOR (2 downto 0);
    signal add_ln542_fu_134_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_i_13 : STD_LOGIC_VECTOR (2 downto 0);
    signal zext_ln548_1_cast_fu_161_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal sext_ln548_fu_173_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal xor_ln572_1_fu_186_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal xor_ln572_2_fu_181_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal xor_ln576_2_fu_201_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal xor_ln576_1_fu_197_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal xor_ln580_2_fu_219_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal xor_ln580_1_fu_213_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal xor_ln584_1_fu_237_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal xor_ln584_2_fu_231_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ST_fsm_state3_blk : STD_LOGIC;
    signal ap_ST_fsm_state4_blk : STD_LOGIC;
    signal ap_ST_fsm_state5_blk : STD_LOGIC;
    signal ap_ST_fsm_state6_blk : STD_LOGIC;
    signal ap_ST_fsm_state7_blk : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component aes_galois_multiplication IS
    port (
        ap_ready : OUT STD_LOGIC;
        a : IN STD_LOGIC_VECTOR (7 downto 0);
        b : IN STD_LOGIC_VECTOR (3 downto 0);
        ap_return : OUT STD_LOGIC_VECTOR (7 downto 0) );
    end component;


    component aes_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    grp_galois_multiplication_fu_94 : component aes_galois_multiplication
    port map (
        ap_ready => grp_galois_multiplication_fu_94_ap_ready,
        a => grp_galois_multiplication_fu_94_a,
        b => grp_galois_multiplication_fu_94_b,
        ap_return => grp_galois_multiplication_fu_94_ap_return);

    flow_control_loop_pipe_sequential_init_U : component aes_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_loop_exit_ready = ap_const_logic_1) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    i_fu_42_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                if ((icmp_ln542_fu_128_p2 = ap_const_lv1_0)) then 
                    i_fu_42 <= add_ln542_fu_134_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    i_fu_42 <= ap_const_lv3_0;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                cpy_4_reg_286 <= state_q0;
                cpy_reg_279 <= state_q1;
                    state_addr_10_reg_292(2 downto 0) <= zext_ln548_1_fu_168_p1(4 - 1 downto 0)(2 downto 0);
                state_addr_11_reg_298 <= zext_ln548_2_fu_176_p1(4 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                cpy_5_reg_304 <= state_q1;
                cpy_6_reg_311 <= state_q0;
                tmp_13_reg_323 <= grp_galois_multiplication_fu_94_ap_return;
                tmp_14_reg_328 <= grp_galois_multiplication_fu_329_p_dout0;
                tmp_15_reg_333 <= grp_galois_multiplication_fu_334_p_dout0;
                tmp_s_reg_318 <= grp_galois_multiplication_fu_339_p_dout0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                i_13_reg_256 <= ap_sig_allocacmp_i_13;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln542_fu_128_p2 = ap_const_lv1_0) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    state_addr_9_reg_274(2 downto 0) <= zext_ln548_fu_151_p1(4 - 1 downto 0)(2 downto 0);
                    state_addr_reg_264(2 downto 0) <= zext_ln542_fu_140_p1(4 - 1 downto 0)(2 downto 0);
                xor_ln548_reg_269 <= xor_ln548_fu_145_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                xor_ln572_reg_338 <= xor_ln572_fu_191_p2;
                xor_ln576_reg_343 <= xor_ln576_fu_207_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                xor_ln580_reg_348 <= xor_ln580_fu_225_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                xor_ln584_reg_353 <= xor_ln584_fu_243_p2;
            end if;
        end if;
    end process;
    state_addr_reg_264(3) <= '0';
    state_addr_9_reg_274(3) <= '0';
    state_addr_10_reg_292(3) <= '1';

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_CS_fsm_state1, icmp_ln542_fu_128_p2, ap_start_int)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((icmp_ln542_fu_128_p2 = ap_const_lv1_1) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                elsif (((ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXXXXX";
        end case;
    end process;
    add_ln542_fu_134_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_i_13) + unsigned(ap_const_lv3_1));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start_int)
    begin
        if ((ap_start_int = ap_const_logic_0)) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state2_blk <= ap_const_logic_0;
    ap_ST_fsm_state3_blk <= ap_const_logic_0;
    ap_ST_fsm_state4_blk <= ap_const_logic_0;
    ap_ST_fsm_state5_blk <= ap_const_logic_0;
    ap_ST_fsm_state6_blk <= ap_const_logic_0;
    ap_ST_fsm_state7_blk <= ap_const_logic_0;

    ap_block_state1_pp0_stage0_iter0_assign_proc : process(ap_start_int)
    begin
                ap_block_state1_pp0_stage0_iter0 <= (ap_start_int = ap_const_logic_0);
    end process;

        ap_block_state2_pp0_stage1_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage2_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage3_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state5_pp0_stage4_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state6_pp0_stage5_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state7_pp0_stage6_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_state1, icmp_ln542_fu_128_p2, ap_start_int)
    begin
        if (((icmp_ln542_fu_128_p2 = ap_const_lv1_1) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_state1, ap_loop_exit_ready, ap_done_reg, ap_start_int)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_CS_fsm_state1, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_i_13_assign_proc : process(ap_CS_fsm_state1, i_fu_42, ap_loop_init)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_i_13 <= ap_const_lv3_0;
        else 
            ap_sig_allocacmp_i_13 <= i_fu_42;
        end if; 
    end process;


    grp_galois_multiplication_fu_101_a_assign_proc : process(cpy_reg_279, cpy_4_reg_286, ap_CS_fsm_state3, cpy_6_reg_311, ap_CS_fsm_state4, ap_CS_fsm_state5, ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            grp_galois_multiplication_fu_101_a <= cpy_reg_279;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            grp_galois_multiplication_fu_101_a <= cpy_6_reg_311;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            grp_galois_multiplication_fu_101_a <= cpy_4_reg_286;
        else 
            grp_galois_multiplication_fu_101_a <= "XXXXXXXX";
        end if; 
    end process;


    grp_galois_multiplication_fu_101_b_assign_proc : process(ap_CS_fsm_state3, ap_CS_fsm_state4, ap_CS_fsm_state5, ap_CS_fsm_state6)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state6) or (ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            grp_galois_multiplication_fu_101_b <= ap_const_lv4_D;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            grp_galois_multiplication_fu_101_b <= ap_const_lv4_E;
        else 
            grp_galois_multiplication_fu_101_b <= "XXXX";
        end if; 
    end process;


    grp_galois_multiplication_fu_108_a_assign_proc : process(cpy_reg_279, cpy_5_reg_304, ap_CS_fsm_state3, cpy_6_reg_311, ap_CS_fsm_state4, ap_CS_fsm_state5, ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            grp_galois_multiplication_fu_108_a <= cpy_6_reg_311;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            grp_galois_multiplication_fu_108_a <= cpy_5_reg_304;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            grp_galois_multiplication_fu_108_a <= cpy_reg_279;
        else 
            grp_galois_multiplication_fu_108_a <= "XXXXXXXX";
        end if; 
    end process;


    grp_galois_multiplication_fu_108_b_assign_proc : process(ap_CS_fsm_state3, ap_CS_fsm_state4, ap_CS_fsm_state5, ap_CS_fsm_state6)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state6) or (ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            grp_galois_multiplication_fu_108_b <= ap_const_lv4_B;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            grp_galois_multiplication_fu_108_b <= ap_const_lv4_9;
        else 
            grp_galois_multiplication_fu_108_b <= "XXXX";
        end if; 
    end process;

    grp_galois_multiplication_fu_329_p_din1 <= grp_galois_multiplication_fu_101_a;
    grp_galois_multiplication_fu_329_p_din2 <= grp_galois_multiplication_fu_101_b;
    grp_galois_multiplication_fu_334_p_din1 <= grp_galois_multiplication_fu_108_a;
    grp_galois_multiplication_fu_334_p_din2 <= grp_galois_multiplication_fu_108_b;
    grp_galois_multiplication_fu_339_p_din1 <= grp_galois_multiplication_fu_87_a;
    grp_galois_multiplication_fu_339_p_din2 <= grp_galois_multiplication_fu_87_b;

    grp_galois_multiplication_fu_87_a_assign_proc : process(cpy_reg_279, cpy_5_reg_304, ap_CS_fsm_state3, cpy_6_reg_311, ap_CS_fsm_state4, ap_CS_fsm_state5, ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            grp_galois_multiplication_fu_87_a <= cpy_5_reg_304;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state6) or (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            grp_galois_multiplication_fu_87_a <= cpy_6_reg_311;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            grp_galois_multiplication_fu_87_a <= cpy_reg_279;
        else 
            grp_galois_multiplication_fu_87_a <= "XXXXXXXX";
        end if; 
    end process;


    grp_galois_multiplication_fu_87_b_assign_proc : process(ap_CS_fsm_state3, ap_CS_fsm_state4, ap_CS_fsm_state5, ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            grp_galois_multiplication_fu_87_b <= ap_const_lv4_9;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state6) or (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            grp_galois_multiplication_fu_87_b <= ap_const_lv4_E;
        else 
            grp_galois_multiplication_fu_87_b <= "XXXX";
        end if; 
    end process;


    grp_galois_multiplication_fu_94_a_assign_proc : process(cpy_4_reg_286, cpy_5_reg_304, ap_CS_fsm_state3, ap_CS_fsm_state4, ap_CS_fsm_state5, ap_CS_fsm_state6)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state6) or (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            grp_galois_multiplication_fu_94_a <= cpy_5_reg_304;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            grp_galois_multiplication_fu_94_a <= cpy_4_reg_286;
        else 
            grp_galois_multiplication_fu_94_a <= "XXXXXXXX";
        end if; 
    end process;


    grp_galois_multiplication_fu_94_b_assign_proc : process(ap_CS_fsm_state3, ap_CS_fsm_state4, ap_CS_fsm_state5, ap_CS_fsm_state6)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state6) or (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            grp_galois_multiplication_fu_94_b <= ap_const_lv4_9;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            grp_galois_multiplication_fu_94_b <= ap_const_lv4_D;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            grp_galois_multiplication_fu_94_b <= ap_const_lv4_B;
        else 
            grp_galois_multiplication_fu_94_b <= "XXXX";
        end if; 
    end process;

    icmp_ln542_fu_128_p2 <= "1" when (ap_sig_allocacmp_i_13 = ap_const_lv3_4) else "0";
        sext_ln548_fu_173_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(xor_ln548_reg_269),4));


    state_address0_assign_proc : process(ap_CS_fsm_state1, icmp_ln542_fu_128_p2, state_addr_9_reg_274, ap_CS_fsm_state2, state_addr_10_reg_292, ap_CS_fsm_state5, ap_CS_fsm_state6, zext_ln548_fu_151_p1, zext_ln548_2_fu_176_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            state_address0 <= state_addr_10_reg_292;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            state_address0 <= state_addr_9_reg_274;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            state_address0 <= zext_ln548_2_fu_176_p1(4 - 1 downto 0);
        elsif (((icmp_ln542_fu_128_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            state_address0 <= zext_ln548_fu_151_p1(4 - 1 downto 0);
        else 
            state_address0 <= "XXXX";
        end if; 
    end process;


    state_address1_assign_proc : process(ap_CS_fsm_state1, icmp_ln542_fu_128_p2, ap_CS_fsm_state7, state_addr_reg_264, ap_CS_fsm_state2, state_addr_11_reg_298, ap_CS_fsm_state5, zext_ln542_fu_140_p1, zext_ln548_1_fu_168_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            state_address1 <= state_addr_11_reg_298;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            state_address1 <= state_addr_reg_264;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            state_address1 <= zext_ln548_1_fu_168_p1(4 - 1 downto 0);
        elsif (((icmp_ln542_fu_128_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            state_address1 <= zext_ln542_fu_140_p1(4 - 1 downto 0);
        else 
            state_address1 <= "XXXX";
        end if; 
    end process;


    state_ce0_assign_proc : process(ap_CS_fsm_state1, icmp_ln542_fu_128_p2, ap_CS_fsm_state2, ap_CS_fsm_state5, ap_CS_fsm_state6, ap_start_int)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) or (ap_const_logic_1 = ap_CS_fsm_state6) or (ap_const_logic_1 = ap_CS_fsm_state5) or ((icmp_ln542_fu_128_p2 = ap_const_lv1_0) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            state_ce0 <= ap_const_logic_1;
        else 
            state_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    state_ce1_assign_proc : process(ap_CS_fsm_state1, icmp_ln542_fu_128_p2, ap_CS_fsm_state7, ap_CS_fsm_state2, ap_CS_fsm_state5, ap_start_int)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) or (ap_const_logic_1 = ap_CS_fsm_state7) or (ap_const_logic_1 = ap_CS_fsm_state5) or ((icmp_ln542_fu_128_p2 = ap_const_lv1_0) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            state_ce1 <= ap_const_logic_1;
        else 
            state_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    state_d0_assign_proc : process(xor_ln576_reg_343, xor_ln580_reg_348, ap_CS_fsm_state5, ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            state_d0 <= xor_ln580_reg_348;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            state_d0 <= xor_ln576_reg_343;
        else 
            state_d0 <= "XXXXXXXX";
        end if; 
    end process;


    state_d1_assign_proc : process(ap_CS_fsm_state7, xor_ln572_reg_338, ap_CS_fsm_state5, xor_ln584_reg_353)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            state_d1 <= xor_ln584_reg_353;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            state_d1 <= xor_ln572_reg_338;
        else 
            state_d1 <= "XXXXXXXX";
        end if; 
    end process;


    state_we0_assign_proc : process(ap_CS_fsm_state5, ap_CS_fsm_state6)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state6) or (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            state_we0 <= ap_const_logic_1;
        else 
            state_we0 <= ap_const_logic_0;
        end if; 
    end process;


    state_we1_assign_proc : process(ap_CS_fsm_state7, ap_CS_fsm_state5)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state7) or (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            state_we1 <= ap_const_logic_1;
        else 
            state_we1 <= ap_const_logic_0;
        end if; 
    end process;

    xor_ln548_fu_145_p2 <= (ap_sig_allocacmp_i_13 xor ap_const_lv3_4);
    xor_ln572_1_fu_186_p2 <= (tmp_s_reg_318 xor grp_galois_multiplication_fu_339_p_dout0);
    xor_ln572_2_fu_181_p2 <= (tmp_13_reg_323 xor grp_galois_multiplication_fu_94_ap_return);
    xor_ln572_fu_191_p2 <= (xor_ln572_2_fu_181_p2 xor xor_ln572_1_fu_186_p2);
    xor_ln576_1_fu_197_p2 <= (tmp_15_reg_333 xor tmp_14_reg_328);
    xor_ln576_2_fu_201_p2 <= (grp_galois_multiplication_fu_334_p_dout0 xor grp_galois_multiplication_fu_329_p_dout0);
    xor_ln576_fu_207_p2 <= (xor_ln576_2_fu_201_p2 xor xor_ln576_1_fu_197_p2);
    xor_ln580_1_fu_213_p2 <= (grp_galois_multiplication_fu_94_ap_return xor grp_galois_multiplication_fu_339_p_dout0);
    xor_ln580_2_fu_219_p2 <= (grp_galois_multiplication_fu_334_p_dout0 xor grp_galois_multiplication_fu_329_p_dout0);
    xor_ln580_fu_225_p2 <= (xor_ln580_2_fu_219_p2 xor xor_ln580_1_fu_213_p2);
    xor_ln584_1_fu_237_p2 <= (grp_galois_multiplication_fu_94_ap_return xor grp_galois_multiplication_fu_339_p_dout0);
    xor_ln584_2_fu_231_p2 <= (grp_galois_multiplication_fu_334_p_dout0 xor grp_galois_multiplication_fu_329_p_dout0);
    xor_ln584_fu_243_p2 <= (xor_ln584_2_fu_231_p2 xor xor_ln584_1_fu_237_p2);
    zext_ln542_fu_140_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_sig_allocacmp_i_13),64));
    zext_ln548_1_cast_fu_161_p3 <= (ap_const_lv1_1 & i_13_reg_256);
    zext_ln548_1_fu_168_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(zext_ln548_1_cast_fu_161_p3),64));
    zext_ln548_2_fu_176_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(sext_ln548_fu_173_p1),64));
    zext_ln548_fu_151_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(xor_ln548_fu_145_p2),64));
end behav;
