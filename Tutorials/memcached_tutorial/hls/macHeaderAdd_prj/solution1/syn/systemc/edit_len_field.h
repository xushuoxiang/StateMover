// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _edit_len_field_HH_
#define _edit_len_field_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct edit_len_field : public sc_module {
    // Port declarations 19
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<185> > dataFifo_V_dout;
    sc_in< sc_logic > dataFifo_V_empty_n;
    sc_out< sc_logic > dataFifo_V_read;
    sc_in< sc_lv<16> > dataLenFifo_V_V_dout;
    sc_in< sc_logic > dataLenFifo_V_V_empty_n;
    sc_out< sc_logic > dataLenFifo_V_V_read;
    sc_in< sc_logic > dataOut_TREADY;
    sc_out< sc_lv<64> > dataOut_TDATA;
    sc_out< sc_logic > dataOut_TVALID;
    sc_out< sc_lv<8> > dataOut_TKEEP;
    sc_out< sc_lv<1> > dataOut_TLAST;
    sc_out< sc_lv<112> > dataOut_TUSER;


    // Module declarations
    edit_len_field(sc_module_name name);
    SC_HAS_PROCESS(edit_len_field);

    ~edit_len_field();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<1> > ap_CS_iter0_fsm;
    sc_signal< sc_logic > ap_CS_iter0_fsm_state1;
    sc_signal< sc_lv<2> > ap_CS_iter1_fsm;
    sc_signal< sc_logic > ap_CS_iter1_fsm_state0;
    sc_signal< sc_lv<2> > ap_CS_iter2_fsm;
    sc_signal< sc_logic > ap_CS_iter2_fsm_state0;
    sc_signal< sc_lv<1> > grp_nbreadreq_fu_80_p3;
    sc_signal< bool > ap_predicate_op8_read_state1;
    sc_signal< bool > ap_predicate_op14_read_state1;
    sc_signal< sc_lv<1> > tmp_3_nbreadreq_fu_94_p3;
    sc_signal< bool > ap_predicate_op25_read_state1;
    sc_signal< bool > ap_predicate_op27_read_state1;
    sc_signal< bool > ap_block_state1_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter1;
    sc_signal< sc_logic > dataOut_V_data_V_1_ack_in;
    sc_signal< sc_lv<2> > pkt_state_load_reg_235;
    sc_signal< sc_lv<1> > tmp_2_reg_239;
    sc_signal< bool > ap_predicate_op33_write_state2;
    sc_signal< sc_lv<1> > tmp_1_reg_253;
    sc_signal< bool > ap_predicate_op39_write_state2;
    sc_signal< sc_lv<1> > tmp_reg_282;
    sc_signal< sc_lv<1> > tmp_3_reg_286;
    sc_signal< bool > ap_predicate_op41_write_state2;
    sc_signal< bool > ap_block_state2_io;
    sc_signal< sc_logic > ap_CS_iter1_fsm_state2;
    sc_signal< sc_logic > dataOut_V_keep_V_1_ack_in;
    sc_signal< sc_logic > dataOut_V_last_V_1_ack_in;
    sc_signal< sc_logic > dataOut_V_user_V_1_ack_in;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter2;
    sc_signal< sc_lv<2> > pkt_state_load_reg_235_pp0_iter1_reg;
    sc_signal< sc_lv<1> > tmp_2_reg_239_pp0_iter1_reg;
    sc_signal< bool > ap_predicate_op46_write_state3;
    sc_signal< sc_lv<1> > tmp_1_reg_253_pp0_iter1_reg;
    sc_signal< bool > ap_predicate_op50_write_state3;
    sc_signal< sc_lv<1> > tmp_reg_282_pp0_iter1_reg;
    sc_signal< sc_lv<1> > tmp_3_reg_286_pp0_iter1_reg;
    sc_signal< bool > ap_predicate_op53_write_state3;
    sc_signal< bool > ap_block_state3_io;
    sc_signal< sc_logic > ap_CS_iter2_fsm_state3;
    sc_signal< sc_lv<64> > dataOut_V_data_V_1_data_in;
    sc_signal< sc_lv<64> > dataOut_V_data_V_1_data_out;
    sc_signal< sc_logic > dataOut_V_data_V_1_vld_in;
    sc_signal< sc_logic > dataOut_V_data_V_1_vld_out;
    sc_signal< sc_logic > dataOut_V_data_V_1_ack_out;
    sc_signal< sc_lv<64> > dataOut_V_data_V_1_payload_A;
    sc_signal< sc_lv<64> > dataOut_V_data_V_1_payload_B;
    sc_signal< sc_logic > dataOut_V_data_V_1_sel_rd;
    sc_signal< sc_logic > dataOut_V_data_V_1_sel_wr;
    sc_signal< sc_logic > dataOut_V_data_V_1_sel;
    sc_signal< sc_logic > dataOut_V_data_V_1_load_A;
    sc_signal< sc_logic > dataOut_V_data_V_1_load_B;
    sc_signal< sc_lv<2> > dataOut_V_data_V_1_state;
    sc_signal< sc_logic > dataOut_V_data_V_1_state_cmp_full;
    sc_signal< sc_lv<8> > dataOut_V_keep_V_1_data_out;
    sc_signal< sc_logic > dataOut_V_keep_V_1_vld_in;
    sc_signal< sc_logic > dataOut_V_keep_V_1_vld_out;
    sc_signal< sc_logic > dataOut_V_keep_V_1_ack_out;
    sc_signal< sc_lv<8> > dataOut_V_keep_V_1_payload_A;
    sc_signal< sc_lv<8> > dataOut_V_keep_V_1_payload_B;
    sc_signal< sc_logic > dataOut_V_keep_V_1_sel_rd;
    sc_signal< sc_logic > dataOut_V_keep_V_1_sel_wr;
    sc_signal< sc_logic > dataOut_V_keep_V_1_sel;
    sc_signal< sc_logic > dataOut_V_keep_V_1_load_A;
    sc_signal< sc_logic > dataOut_V_keep_V_1_load_B;
    sc_signal< sc_lv<2> > dataOut_V_keep_V_1_state;
    sc_signal< sc_logic > dataOut_V_keep_V_1_state_cmp_full;
    sc_signal< sc_lv<1> > dataOut_V_last_V_1_data_in;
    sc_signal< sc_lv<1> > dataOut_V_last_V_1_data_out;
    sc_signal< sc_logic > dataOut_V_last_V_1_vld_in;
    sc_signal< sc_logic > dataOut_V_last_V_1_vld_out;
    sc_signal< sc_logic > dataOut_V_last_V_1_ack_out;
    sc_signal< sc_lv<1> > dataOut_V_last_V_1_payload_A;
    sc_signal< sc_lv<1> > dataOut_V_last_V_1_payload_B;
    sc_signal< sc_logic > dataOut_V_last_V_1_sel_rd;
    sc_signal< sc_logic > dataOut_V_last_V_1_sel_wr;
    sc_signal< sc_logic > dataOut_V_last_V_1_sel;
    sc_signal< sc_logic > dataOut_V_last_V_1_load_A;
    sc_signal< sc_logic > dataOut_V_last_V_1_load_B;
    sc_signal< sc_lv<2> > dataOut_V_last_V_1_state;
    sc_signal< sc_logic > dataOut_V_last_V_1_state_cmp_full;
    sc_signal< sc_lv<112> > dataOut_V_user_V_1_data_out;
    sc_signal< sc_logic > dataOut_V_user_V_1_vld_in;
    sc_signal< sc_logic > dataOut_V_user_V_1_vld_out;
    sc_signal< sc_logic > dataOut_V_user_V_1_ack_out;
    sc_signal< sc_logic > dataOut_V_user_V_1_sel_rd;
    sc_signal< sc_logic > dataOut_V_user_V_1_sel;
    sc_signal< sc_lv<2> > dataOut_V_user_V_1_state;
    sc_signal< sc_lv<2> > pkt_state;
    sc_signal< sc_lv<16> > dataLen_V_1;
    sc_signal< sc_logic > dataOut_TDATA_blk_n;
    sc_signal< sc_logic > dataFifo_V_blk_n;
    sc_signal< sc_logic > dataLenFifo_V_V_blk_n;
    sc_signal< sc_lv<8> > reg_143;
    sc_signal< sc_lv<64> > sendWord_data_V_1_fu_156_p1;
    sc_signal< sc_lv<64> > sendWord_data_V_1_reg_243;
    sc_signal< sc_lv<1> > grp_fu_135_p3;
    sc_signal< sc_lv<1> > sendWord_last_V_2_reg_248;
    sc_signal< sc_lv<1> > sendWord_last_V_1_reg_257;
    sc_signal< sc_lv<32> > tmp_6_fu_166_p1;
    sc_signal< sc_lv<32> > tmp_6_reg_262;
    sc_signal< sc_lv<1> > tmp_6_i_fu_170_p2;
    sc_signal< sc_lv<1> > tmp_6_i_reg_267;
    sc_signal< sc_lv<8> > tmp_7_fu_176_p1;
    sc_signal< sc_lv<8> > tmp_7_reg_272;
    sc_signal< sc_lv<16> > p_Result_6_i_reg_277;
    sc_signal< sc_lv<64> > sendWord_data_V_fu_202_p1;
    sc_signal< sc_lv<64> > sendWord_data_V_reg_290;
    sc_signal< sc_lv<1> > sendWord_last_V_reg_295;
    sc_signal< sc_lv<64> > p_Result_s_fu_226_p4;
    sc_signal< sc_lv<16> > tmp_4_i_fu_212_p3;
    sc_signal< sc_lv<16> > tmp_4_fu_219_p3;
    sc_signal< sc_lv<1> > ap_NS_iter0_fsm;
    sc_signal< sc_lv<2> > ap_NS_iter1_fsm;
    sc_signal< sc_lv<2> > ap_NS_iter2_fsm;
    sc_signal< bool > ap_condition_521;
    sc_signal< bool > ap_condition_620;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<1> ap_ST_iter0_fsm_state1;
    static const sc_lv<2> ap_ST_iter1_fsm_state2;
    static const sc_lv<2> ap_ST_iter2_fsm_state3;
    static const sc_lv<2> ap_ST_iter1_fsm_state0;
    static const sc_lv<2> ap_ST_iter2_fsm_state0;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<16> ap_const_lv16_0;
    static const sc_lv<112> ap_const_lv112_0;
    static const sc_lv<32> ap_const_lv32_40;
    static const sc_lv<32> ap_const_lv32_47;
    static const sc_lv<32> ap_const_lv32_48;
    static const sc_lv<32> ap_const_lv32_30;
    static const sc_lv<32> ap_const_lv32_3F;
    static const sc_lv<8> ap_const_lv8_8;
    static const sc_lv<16> ap_const_lv16_8;
    static const bool ap_const_boolean_0;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_iter0_fsm_state1();
    void thread_ap_CS_iter1_fsm_state0();
    void thread_ap_CS_iter1_fsm_state2();
    void thread_ap_CS_iter2_fsm_state0();
    void thread_ap_CS_iter2_fsm_state3();
    void thread_ap_block_state1_pp0_stage0_iter0();
    void thread_ap_block_state2_io();
    void thread_ap_block_state2_pp0_stage0_iter1();
    void thread_ap_block_state3_io();
    void thread_ap_block_state3_pp0_stage0_iter2();
    void thread_ap_condition_521();
    void thread_ap_condition_620();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_predicate_op14_read_state1();
    void thread_ap_predicate_op25_read_state1();
    void thread_ap_predicate_op27_read_state1();
    void thread_ap_predicate_op33_write_state2();
    void thread_ap_predicate_op39_write_state2();
    void thread_ap_predicate_op41_write_state2();
    void thread_ap_predicate_op46_write_state3();
    void thread_ap_predicate_op50_write_state3();
    void thread_ap_predicate_op53_write_state3();
    void thread_ap_predicate_op8_read_state1();
    void thread_ap_ready();
    void thread_dataFifo_V_blk_n();
    void thread_dataFifo_V_read();
    void thread_dataLenFifo_V_V_blk_n();
    void thread_dataLenFifo_V_V_read();
    void thread_dataOut_TDATA();
    void thread_dataOut_TDATA_blk_n();
    void thread_dataOut_TKEEP();
    void thread_dataOut_TLAST();
    void thread_dataOut_TUSER();
    void thread_dataOut_TVALID();
    void thread_dataOut_V_data_V_1_ack_in();
    void thread_dataOut_V_data_V_1_ack_out();
    void thread_dataOut_V_data_V_1_data_in();
    void thread_dataOut_V_data_V_1_data_out();
    void thread_dataOut_V_data_V_1_load_A();
    void thread_dataOut_V_data_V_1_load_B();
    void thread_dataOut_V_data_V_1_sel();
    void thread_dataOut_V_data_V_1_state_cmp_full();
    void thread_dataOut_V_data_V_1_vld_in();
    void thread_dataOut_V_data_V_1_vld_out();
    void thread_dataOut_V_keep_V_1_ack_in();
    void thread_dataOut_V_keep_V_1_ack_out();
    void thread_dataOut_V_keep_V_1_data_out();
    void thread_dataOut_V_keep_V_1_load_A();
    void thread_dataOut_V_keep_V_1_load_B();
    void thread_dataOut_V_keep_V_1_sel();
    void thread_dataOut_V_keep_V_1_state_cmp_full();
    void thread_dataOut_V_keep_V_1_vld_in();
    void thread_dataOut_V_keep_V_1_vld_out();
    void thread_dataOut_V_last_V_1_ack_in();
    void thread_dataOut_V_last_V_1_ack_out();
    void thread_dataOut_V_last_V_1_data_in();
    void thread_dataOut_V_last_V_1_data_out();
    void thread_dataOut_V_last_V_1_load_A();
    void thread_dataOut_V_last_V_1_load_B();
    void thread_dataOut_V_last_V_1_sel();
    void thread_dataOut_V_last_V_1_state_cmp_full();
    void thread_dataOut_V_last_V_1_vld_in();
    void thread_dataOut_V_last_V_1_vld_out();
    void thread_dataOut_V_user_V_1_ack_in();
    void thread_dataOut_V_user_V_1_ack_out();
    void thread_dataOut_V_user_V_1_data_out();
    void thread_dataOut_V_user_V_1_sel();
    void thread_dataOut_V_user_V_1_vld_in();
    void thread_dataOut_V_user_V_1_vld_out();
    void thread_grp_fu_135_p3();
    void thread_grp_nbreadreq_fu_80_p3();
    void thread_p_Result_s_fu_226_p4();
    void thread_sendWord_data_V_1_fu_156_p1();
    void thread_sendWord_data_V_fu_202_p1();
    void thread_tmp_3_nbreadreq_fu_94_p3();
    void thread_tmp_4_fu_219_p3();
    void thread_tmp_4_i_fu_212_p3();
    void thread_tmp_6_fu_166_p1();
    void thread_tmp_6_i_fu_170_p2();
    void thread_tmp_7_fu_176_p1();
    void thread_ap_NS_iter0_fsm();
    void thread_ap_NS_iter1_fsm();
    void thread_ap_NS_iter2_fsm();
};

}

using namespace ap_rtl;

#endif