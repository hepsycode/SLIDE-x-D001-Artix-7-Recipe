// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Primary design header
//
// This header should be included by all source files instantiating the design.
// The class here is then constructed to instantiate the design.
// See the Verilator manual for examples.

#ifndef _Vmain_tb_H_
#define _Vmain_tb_H_

#include "verilated_heavy.h"

class Vmain_tb__Syms;

//----------

VL_MODULE(Vmain_tb) {
  public:
    
    // PORTS
    // The application code writes and reads these signals to
    // propagate new values into/out from the Verilated model.
    VL_IN8(clock,0,0);
    
    // LOCAL SIGNALS
    // Internals; generally not touched by application code
    VL_SIG8(main_tb__DOT__compare_outputs,0,0);
    VL_SIG8(main_tb__DOT__success,0,0);
    VL_SIG8(main_tb__DOT___bambu_databyte_,7,0);
    VL_SIG8(main_tb__DOT_____05Fstate,3,0);
    VL_SIG8(main_tb__DOT_____05Fnext_state,3,0);
    VL_SIG8(main_tb__DOT__start_results_comparison,0,0);
    VL_SIG8(main_tb__DOT__next_start_port,0,0);
    VL_SIG8(main_tb__DOT__reset,0,0);
    VL_SIG8(main_tb__DOT__start_port,0,0);
    VL_SIG8(main_tb__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in,0,0);
    VL_SIG8(main_tb__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_26085_26186,0,0);
    VL_SIG8(main_tb__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___present_state,2,0);
    VL_SIG8(main_tb__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state,2,0);
    VL_SIG8(main_tb__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_26085_26186__DOT__done_delayed_REG_signal_in,0,0);
    VL_SIG8(main_tb__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_26085_26186__DOT__fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE,0,0);
    VL_SIG8(main_tb__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_26085_26186__DOT__fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_STORE,0,0);
    VL_SIG8(main_tb__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_26085_26186__DOT__selector_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_0,0,0);
    VL_SIG8(main_tb__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_26085_26186__DOT__selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_1_0_0,0,0);
    VL_SIG8(main_tb__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_26085_26186__DOT__wrenable_reg_0,0,0);
    VL_SIG8(main_tb__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_26085_26186__DOT__wrenable_reg_2,0,0);
    VL_SIG8(main_tb__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_26085_26186__DOT__wrenable_reg_3,0,0);
    VL_SIG8(main_tb__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_26085_26186__DOT__wrenable_reg_5,0,0);
    VL_SIG8(main_tb__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_26085_26186__DOT__Controller_i__DOT___present_state,5,0);
    VL_SIG8(main_tb__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_26085_26186__DOT__Controller_i__DOT___next_state,5,0);
    VL_SIG8(main_tb__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_26085_26186__DOT__Datapath_i__DOT__out_ui_pointer_plus_expr_FU_8_0_8_10_i0_fu_bsort100_26084_26247,5,0);
    VL_SIG8(main_tb__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_26085_26186__DOT__Datapath_i__DOT__out_ui_pointer_plus_expr_FU_8_0_8_11_i0_fu_bsort100_26084_26273,5,0);
    VL_SIG8(main_tb__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_26085_26186__DOT__Datapath_i__DOT__out_ui_pointer_plus_expr_FU_8_0_8_9_i0_fu_bsort100_26084_26221,5,0);
    VL_SIG8(main_tb__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_26085_26186__DOT__Datapath_i__DOT__array_26078_0__DOT__bram_write,1,0);
    VL_SIG8(main_tb__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_26085_26186__DOT__Datapath_i__DOT__array_26078_0__DOT__memory_addr_a,1,0);
    VL_SIG8(main_tb__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_26085_26186__DOT__Datapath_i__DOT__reg_0__DOT__reg_out1,5,0);
    VL_SIG8(main_tb__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_26085_26186__DOT__Datapath_i__DOT__reg_1__DOT__reg_out1,5,0);
    VL_SIG8(main_tb__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_26085_26186__DOT__Datapath_i__DOT__reg_2__DOT__reg_out1,5,0);
    VL_SIG8(main_tb__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_26085_26186__DOT__Datapath_i__DOT__reg_3__DOT__reg_out1,5,0);
    VL_SIG8(main_tb__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_26085_26186__DOT__done_delayed_REG__DOT__reg_out1,0,0);
    VL_SIG8(main_tb__DOT__main__DOT___main_i0__DOT__done_delayed_REG__DOT__reg_out1,0,0);
    VL_SIG16(main_tb__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_26085_26186__DOT__Datapath_i__DOT__array_26078_0__DOT__tmp_addr,13,0);
    VL_SIG16(main_tb__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_26085_26186__DOT__Datapath_i__DOT__array_26078_0__DOT__relative_addr,13,0);
    VL_SIG(main_tb__DOT__res_file,31,0);
    VL_SIG(main_tb__DOT__file,31,0);
    VL_SIG(main_tb__DOT___r_,31,0);
    VL_SIG(main_tb__DOT___n_,31,0);
    VL_SIG(main_tb__DOT___addr_i_,31,0);
    VL_SIG(main_tb__DOT___ch_,31,0);
    VL_SIGW(main_tb__DOT__line,8000,0,251);
    VL_SIG(main_tb__DOT__base_addr,31,0);
    VL_SIGW(main_tb__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_26085_26186__DOT__Datapath_i__DOT__array_26078_0__DOT__din_value_aggregated,127,0,4);
    VL_SIGW(main_tb__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_26085_26186__DOT__Datapath_i__DOT__array_26078_0__DOT__dout_a,127,0,4);
    VL_SIG64(main_tb__DOT__startTime,63,0);
    VL_SIG64(main_tb__DOT__endTime,63,0);
    VL_SIG64(main_tb__DOT__sim_time,63,0);
    VL_SIG64(main_tb__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_26085_26186__DOT__Datapath_i__DOT__reg_4__DOT__reg_out1,63,0);
    VL_SIG64(main_tb__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_26085_26186__DOT__Datapath_i__DOT__reg_5__DOT__reg_out1,63,0);
    VL_SIG64(main_tb__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_26085_26186__DOT__Datapath_i__DOT__reg_6__DOT__reg_out1,63,0);
    VL_SIG8(main_tb__DOT___bambu_testbench_mem_[1],7,0);
    VL_SIG64(main_tb__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_26085_26186__DOT__Datapath_i__DOT__array_26078_0__DOT__memory[2],63,0);
    
    // LOCAL VARIABLES
    // Internals; generally not touched by application code
    static VL_ST_SIG8(__Vtable1_main_tb__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[32],0,0);
    static VL_ST_SIG8(__Vtable1_main_tb__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_26085_26186[32],0,0);
    static VL_ST_SIG8(__Vtable1_main_tb__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[32],2,0);
    static VL_ST_SIG8(__Vtable2_main_tb__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_26085_26186__DOT__done_delayed_REG_signal_in[256],0,0);
    static VL_ST_SIG8(__Vtable2_main_tb__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_26085_26186__DOT__fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE[256],0,0);
    static VL_ST_SIG8(__Vtable2_main_tb__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_26085_26186__DOT__fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_STORE[256],0,0);
    static VL_ST_SIG8(__Vtable2_main_tb__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_26085_26186__DOT__selector_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_0[256],0,0);
    static VL_ST_SIG8(__Vtable2_main_tb__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_26085_26186__DOT__selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_1_0_0[256],0,0);
    static VL_ST_SIG8(__Vtable2_main_tb__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_26085_26186__DOT__wrenable_reg_0[256],0,0);
    static VL_ST_SIG8(__Vtable2_main_tb__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_26085_26186__DOT__wrenable_reg_2[256],0,0);
    static VL_ST_SIG8(__Vtable2_main_tb__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_26085_26186__DOT__wrenable_reg_3[256],0,0);
    static VL_ST_SIG8(__Vtable2_main_tb__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_26085_26186__DOT__wrenable_reg_5[256],0,0);
    static VL_ST_SIG8(__Vtable2_main_tb__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_26085_26186__DOT__Controller_i__DOT___next_state[256],5,0);
    VL_SIG8(main_tb__DOT____Vlvbound2,7,0);
    VL_SIG8(main_tb__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_26085_26186__DOT__Datapath_i__DOT____Vcellinp__array_26078_0__sel_STORE,1,0);
    VL_SIG8(__Vtableidx1,4,0);
    VL_SIG8(__Vtableidx2,7,0);
    VL_SIG8(__Vclklast__TOP__clock,0,0);
    VL_SIG16(main_tb__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_26085_26186__DOT__Datapath_i__DOT____Vcellinp__array_26078_0__in2,13,0);
    VL_SIGW(main_tb__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_26085_26186__DOT__Datapath_i__DOT____Vcellinp__array_26078_0__in1,127,0,4);
    VL_SIGW(main_tb__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_26085_26186__DOT__Datapath_i__DOT____Vcellout__array_26078_0__out1,127,0,4);
    
    // INTERNAL VARIABLES
    // Internals; generally not touched by application code
    Vmain_tb__Syms* __VlSymsp;  // Symbol table
    
    // PARAMETERS
    // Parameters marked /*verilator public*/ for use by application code
    
    // CONSTRUCTORS
  private:
    Vmain_tb& operator= (const Vmain_tb&);  ///< Copying not allowed
    Vmain_tb(const Vmain_tb&);  ///< Copying not allowed
  public:
    /// Construct the model; called by application code
    /// The special name  may be used to make a wrapper with a
    /// single model invisible WRT DPI scope names.
    Vmain_tb(const char* name="TOP");
    /// Destroy the model; called (often implicitly) by application code
    ~Vmain_tb();
    
    // API METHODS
    /// Evaluate the model.  Application must call when inputs change.
    void eval();
    /// Simulation complete, run final blocks.  Application must call on completion.
    void final();
    
    // INTERNAL METHODS
  private:
    static void _eval_initial_loop(Vmain_tb__Syms* __restrict vlSymsp);
  public:
    void __Vconfigure(Vmain_tb__Syms* symsp, bool first);
  private:
    static QData _change_request(Vmain_tb__Syms* __restrict vlSymsp);
    void _ctor_var_reset();
  public:
    static void _eval(Vmain_tb__Syms* __restrict vlSymsp);
  private:
#ifdef VL_DEBUG
    void _eval_debug_assertions();
#endif // VL_DEBUG
  public:
    static void _eval_initial(Vmain_tb__Syms* __restrict vlSymsp);
    static void _eval_settle(Vmain_tb__Syms* __restrict vlSymsp);
    static void _initial__TOP__1(Vmain_tb__Syms* __restrict vlSymsp);
    static void _sequent__TOP__2(Vmain_tb__Syms* __restrict vlSymsp);
    static void _sequent__TOP__3(Vmain_tb__Syms* __restrict vlSymsp);
    static void _settle__TOP__4(Vmain_tb__Syms* __restrict vlSymsp);
} VL_ATTR_ALIGNED(128);

#endif // guard
