// 
// Politecnico di Milano
// Code created using PandA - Version: PandA 0.9.7-dev - Revision 151822f6eb6b28b68ef7cde4c7c3c0add185ed9d-panda-0.9.7-dev - Date 2024-04-24T17:05:06
// bambu executed with: bambu -O3 -fno-inline-functions-called-once -fno-regmove -frename-registers -fno-tree-copyrename -I/home/ubuntu/Desktop/SLIDE-x-Repository/SLIDE-x/SLIDE-x-AGGR/RECIPE_INT/bsort100/includes/values_75 --simulate --simulator=VERILATOR --clock-period=5 --device-name=xc7a100t-1csg324-VVD /home/ubuntu/Desktop/SLIDE-x-Repository/SLIDE-x//SLIDE-x-BENCH/RECIPE/bsort100/frst.c 
// 
// Send any bug to: panda-info@polimi.it
// ************************************************************************
// The following text holds for all the components tagged with PANDA_LGPLv3.
// They are all part of the BAMBU/PANDA IP LIBRARY.
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public
// License as published by the Free Software Foundation; either
// version 3 of the License, or (at your option) any later version.
// 
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
// Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public
// License along with the PandA framework; see the files COPYING.LIB
// If not, see <http://www.gnu.org/licenses/>.
// ************************************************************************

`ifdef __ICARUS__
  `define _SIM_HAVE_CLOG2
`endif
`ifdef VERILATOR
  `define _SIM_HAVE_CLOG2
`endif
`ifdef MODEL_TECH
  `define _SIM_HAVE_CLOG2
`endif
`ifdef VCS
  `define _SIM_HAVE_CLOG2
`endif
`ifdef NCVERILOG
  `define _SIM_HAVE_CLOG2
`endif
`ifdef XILINX_SIMULATOR
  `define _SIM_HAVE_CLOG2
`endif
`ifdef XILINX_ISIM
  `define _SIM_HAVE_CLOG2
`endif

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>, Christian Pilato <christian.pilato@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module constant_value(out1);
  parameter BITSIZE_out1=1, value=1'b0;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = value;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module register_SE(clock, reset, in1, wenable, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1;
  // IN
  input clock;
  input reset;
  input [BITSIZE_in1-1:0] in1;
  input wenable;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  
  reg [BITSIZE_out1-1:0] reg_out1 =0;
  assign out1 = reg_out1;
  always @(posedge clock)
    if (wenable)
      reg_out1 <= in1;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module register_STD(clock, reset, in1, wenable, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1;
  // IN
  input clock;
  input reset;
  input [BITSIZE_in1-1:0] in1;
  input wenable;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  reg [BITSIZE_out1-1:0] reg_out1 =0;
  assign out1 = reg_out1;
  always @(posedge clock)
    reg_out1 <= in1;

endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ARRAY_1D_STD_DISTRAM_NN_SDS(clock, reset, in1, in2, in3, in4, out1, sel_LOAD, sel_STORE, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, Sin_Rdata_ram, Sout_Rdata_ram, S_data_ram_size, Sin_DataRdy, Sout_DataRdy, proxy_in1, proxy_in2, proxy_in3, proxy_sel_LOAD, proxy_sel_STORE, proxy_out1);
  parameter BITSIZE_in1=1, PORTSIZE_in1=2, BITSIZE_in2=1, PORTSIZE_in2=2, BITSIZE_in3=1, PORTSIZE_in3=2, BITSIZE_in4=1, PORTSIZE_in4=2, BITSIZE_sel_LOAD=1, PORTSIZE_sel_LOAD=2, BITSIZE_sel_STORE=1, PORTSIZE_sel_STORE=2, BITSIZE_S_oe_ram=1, PORTSIZE_S_oe_ram=2, BITSIZE_S_we_ram=1, PORTSIZE_S_we_ram=2, BITSIZE_out1=1, PORTSIZE_out1=2, BITSIZE_S_addr_ram=1, PORTSIZE_S_addr_ram=2, BITSIZE_S_Wdata_ram=8, PORTSIZE_S_Wdata_ram=2, BITSIZE_Sin_Rdata_ram=8, PORTSIZE_Sin_Rdata_ram=2, BITSIZE_Sout_Rdata_ram=8, PORTSIZE_Sout_Rdata_ram=2, BITSIZE_S_data_ram_size=1, PORTSIZE_S_data_ram_size=2, BITSIZE_Sin_DataRdy=1, PORTSIZE_Sin_DataRdy=2, BITSIZE_Sout_DataRdy=1, PORTSIZE_Sout_DataRdy=2, MEMORY_INIT_file="array.mem", n_elements=1, data_size=32, address_space_begin=0, address_space_rangesize=4, BUS_PIPELINED=1, BRAM_BITSIZE=32, PRIVATE_MEMORY=0, READ_ONLY_MEMORY=0, USE_SPARSE_MEMORY=1, BITSIZE_proxy_in1=1, PORTSIZE_proxy_in1=2, BITSIZE_proxy_in2=1, PORTSIZE_proxy_in2=2, BITSIZE_proxy_in3=1, PORTSIZE_proxy_in3=2, BITSIZE_proxy_sel_LOAD=1, PORTSIZE_proxy_sel_LOAD=2, BITSIZE_proxy_sel_STORE=1, PORTSIZE_proxy_sel_STORE=2, BITSIZE_proxy_out1=1, PORTSIZE_proxy_out1=2;
  // IN
  input clock;
  input reset;
  input [(PORTSIZE_in1*BITSIZE_in1)+(-1):0] in1;
  input [(PORTSIZE_in2*BITSIZE_in2)+(-1):0] in2;
  input [(PORTSIZE_in3*BITSIZE_in3)+(-1):0] in3;
  input [PORTSIZE_in4-1:0] in4;
  input [PORTSIZE_sel_LOAD-1:0] sel_LOAD;
  input [PORTSIZE_sel_STORE-1:0] sel_STORE;
  input [PORTSIZE_S_oe_ram-1:0] S_oe_ram;
  input [PORTSIZE_S_we_ram-1:0] S_we_ram;
  input [(PORTSIZE_S_addr_ram*BITSIZE_S_addr_ram)+(-1):0] S_addr_ram;
  input [(PORTSIZE_S_Wdata_ram*BITSIZE_S_Wdata_ram)+(-1):0] S_Wdata_ram;
  input [(PORTSIZE_Sin_Rdata_ram*BITSIZE_Sin_Rdata_ram)+(-1):0] Sin_Rdata_ram;
  input [(PORTSIZE_S_data_ram_size*BITSIZE_S_data_ram_size)+(-1):0] S_data_ram_size;
  input [PORTSIZE_Sin_DataRdy-1:0] Sin_DataRdy;
  input [(PORTSIZE_proxy_in1*BITSIZE_proxy_in1)+(-1):0] proxy_in1;
  input [(PORTSIZE_proxy_in2*BITSIZE_proxy_in2)+(-1):0] proxy_in2;
  input [(PORTSIZE_proxy_in3*BITSIZE_proxy_in3)+(-1):0] proxy_in3;
  input [PORTSIZE_proxy_sel_LOAD-1:0] proxy_sel_LOAD;
  input [PORTSIZE_proxy_sel_STORE-1:0] proxy_sel_STORE;
  // OUT
  output [(PORTSIZE_out1*BITSIZE_out1)+(-1):0] out1;
  output [(PORTSIZE_Sout_Rdata_ram*BITSIZE_Sout_Rdata_ram)+(-1):0] Sout_Rdata_ram;
  output [PORTSIZE_Sout_DataRdy-1:0] Sout_DataRdy;
  output [(PORTSIZE_proxy_out1*BITSIZE_proxy_out1)+(-1):0] proxy_out1;
  `ifndef _SIM_HAVE_CLOG2
      function integer log2;
        input integer value;
        integer temp_value;
        begin
        temp_value = value-1;
        for (log2=0; temp_value>0; log2=log2+1)
          temp_value = temp_value>>1;
        end
      endfunction
  `endif
  parameter n_byte_data = BRAM_BITSIZE/8;
  parameter n_bytes = n_elements*n_byte_data;
  parameter n_byte_on_databus = BRAM_BITSIZE/8;
  parameter n_mem_elements = n_bytes/(n_byte_on_databus) + (n_bytes % (n_byte_on_databus) == 0 ? 0 : 1);
  parameter nbit_addr = BITSIZE_in2 > BITSIZE_proxy_in2 ? BITSIZE_in2 : BITSIZE_proxy_in2;
  `ifdef _SIM_HAVE_CLOG2
    parameter nbit_read_addr = n_mem_elements == 1 ? 1 : $clog2(n_mem_elements);
    parameter nbits_byte_offset = n_byte_on_databus==1 ? 0 : $clog2(n_byte_on_databus);
  `else
    parameter nbit_read_addr = n_mem_elements == 1 ? 1 : log2(n_mem_elements);
    parameter nbits_byte_offset = n_byte_on_databus==1 ? 0 : log2(n_byte_on_databus);
  `endif
  parameter max_n_writes = PORTSIZE_sel_STORE;
  parameter max_n_reads = PORTSIZE_sel_LOAD;
  parameter max_n_rw = max_n_writes > max_n_reads ? max_n_writes : max_n_reads;
  
  wire [max_n_writes-1:0] bram_write;
  
  wire [nbit_read_addr*max_n_rw-1:0] memory_addr_a;
  wire [nbit_read_addr-1:0] memory_addr_a_0;
  wire [nbit_read_addr-1:0] memory_addr_a_1;
  
  wire [data_size*max_n_writes-1:0] din_value_aggregated;
  wire [data_size*max_n_reads-1:0] dout_a;
  wire [nbit_addr*max_n_rw-1:0] tmp_addr;
  wire [nbit_addr*max_n_rw-1:0] relative_addr;
  wire [PORTSIZE_sel_LOAD-1:0] int_sel_LOAD;
  wire [PORTSIZE_sel_STORE-1:0] int_sel_STORE;
  integer index2;
  
  reg [data_size-1:0] memory [0:n_elements-1] /* synthesis syn_ramstyle = "no_rw_check" */;
  
  initial
  begin
    $readmemb(MEMORY_INIT_file, memory, 0, n_elements-1);
  end
  
  generate
  genvar ind2;
  for (ind2=0; ind2<max_n_rw; ind2=ind2+1)
    begin : Lind2
      assign tmp_addr[(ind2+1)*nbit_addr-1:ind2*nbit_addr] = (proxy_sel_LOAD[ind2]||proxy_sel_STORE[ind2]) ? proxy_in2[(ind2+1)*BITSIZE_proxy_in2-1:ind2*BITSIZE_proxy_in2] : in2[(ind2+1)*BITSIZE_in2-1:ind2*BITSIZE_in2];
    end
  endgenerate
  
  generate
  genvar i6;
    for (i6=0; i6<max_n_rw; i6=i6+1)
    begin : L6
      if(USE_SPARSE_MEMORY==1)
        assign relative_addr[(i6)*nbit_addr+nbit_addr-1:i6*nbit_addr] = tmp_addr[(i6)*nbit_addr+nbit_addr-1:i6*nbit_addr];
      else
        assign relative_addr[(i6+1)*nbit_addr-1:i6*nbit_addr] = tmp_addr[(i6+1)*nbit_addr-1:i6*nbit_addr]-address_space_begin;
    end
  endgenerate
  
  generate
  genvar i7;
    for (i7=0; i7<max_n_rw; i7=i7+1)
    begin : L7_A
      if (n_mem_elements==1)
        assign memory_addr_a[(i7+1)*nbit_read_addr-1:i7*nbit_read_addr] = {nbit_read_addr{1'b0}};
      else
        assign memory_addr_a[(i7+1)*nbit_read_addr-1:i7*nbit_read_addr] = relative_addr[nbit_read_addr+nbits_byte_offset-1+i7*nbit_addr:nbits_byte_offset+i7*nbit_addr];
    end
  endgenerate
  
  generate
  genvar i14;
    for (i14=0; i14<max_n_writes; i14=i14+1)
    begin : L14
      assign din_value_aggregated[(i14+1)*data_size-1:i14*data_size] = proxy_sel_STORE[i14] ? proxy_in1[(i14+1)*BITSIZE_proxy_in1-1:i14*BITSIZE_proxy_in1] : in1[(i14+1)*BITSIZE_in1-1:i14*BITSIZE_in1];
    end
  endgenerate
  
  generate
  genvar i11;
    for (i11=0; i11<max_n_reads; i11=i11+1)
    begin : asynchronous_read
      assign dout_a[data_size*i11+:data_size] = memory[memory_addr_a[nbit_read_addr*i11+:nbit_read_addr]];
    end
  endgenerate
  
  assign memory_addr_a_0 = memory_addr_a[nbit_read_addr*0+:nbit_read_addr];
  assign memory_addr_a_1 = memory_addr_a[nbit_read_addr*1+:nbit_read_addr];
  
  generate if(READ_ONLY_MEMORY==0)
    always @(posedge clock)
    begin
      if(bram_write[0])
        memory[memory_addr_a_0] <= din_value_aggregated[data_size*0+:data_size];
      if(bram_write[1])
        memory[memory_addr_a_1] <= din_value_aggregated[data_size*1+:data_size];
    end
  endgenerate
  
  generate
  genvar i21;
    for (i21=0; i21<max_n_writes; i21=i21+1)
    begin : L21
        assign bram_write[i21] = int_sel_STORE[i21] || proxy_sel_STORE[i21];
    end
  endgenerate
  
  generate
  genvar i20;
    for (i20=0; i20<max_n_reads; i20=i20+1)
    begin : L20
      assign out1[(i20+1)*BITSIZE_out1-1:i20*BITSIZE_out1] = dout_a[(i20+1)*data_size-1:i20*data_size];
      assign proxy_out1[(i20+1)*BITSIZE_proxy_out1-1:i20*BITSIZE_proxy_out1] = dout_a[(i20+1)*data_size-1:i20*data_size];
    end
  endgenerate
  assign Sout_Rdata_ram =Sin_Rdata_ram;
  assign Sout_DataRdy = Sin_DataRdy;
  assign int_sel_LOAD = sel_LOAD & in4;
  assign int_sel_STORE = sel_STORE & in4;
  
  assign Sout_DataRdy = Sin_DataRdy;

endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module addr_expr_FU(in1, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module UUdata_converter_FU(in1, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  generate
  if (BITSIZE_out1 <= BITSIZE_in1)
  begin
    assign out1 = in1[BITSIZE_out1-1:0];
  end
  else
  begin
    assign out1 = {{(BITSIZE_out1-BITSIZE_in1){1'b0}},in1};
  end
  endgenerate
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module UIdata_converter_FU(in1, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  // OUT
  output signed [BITSIZE_out1-1:0] out1;
  generate
  if (BITSIZE_out1 <= BITSIZE_in1)
  begin
    assign out1 = in1[BITSIZE_out1-1:0];
  end
  else
  begin
    assign out1 = {{(BITSIZE_out1-BITSIZE_in1){1'b0}},in1};
  end
  endgenerate
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module IUdata_converter_FU(in1, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1;
  // IN
  input signed [BITSIZE_in1-1:0] in1;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  generate
  if (BITSIZE_out1 <= BITSIZE_in1)
  begin
    assign out1 = in1[BITSIZE_out1-1:0];
  end
  else
  begin
    assign out1 = {{(BITSIZE_out1-BITSIZE_in1){in1[BITSIZE_in1-1]}},in1};
  end
  endgenerate
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module extract_bit_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1;
  // IN
  input signed [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output out1;
  assign out1 = (in1 >>> in2)&1;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2016-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module lut_expr_FU(in1, in2, in3, in4, in5, in6, in7, in8, in9, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input in2;
  input in3;
  input in4;
  input in5;
  input in6;
  input in7;
  input in8;
  input in9;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  
  reg[7:0] cleaned_in0;
  wire [7:0] in0;
  wire[BITSIZE_in1-1:0] shifted_s;
  
  assign in0 = {in9, in8, in7, in6, in5, in4, in3, in2};
  generate
  genvar i0;
  for (i0=0; i0<8; i0=i0+1)
  begin : L0
        always @(*)
        begin
           if (in0[i0] == 1'b1)
              cleaned_in0[i0] = 1'b1;
           else
              cleaned_in0[i0] = 1'b0;
        end
    end
  endgenerate
  assign shifted_s = in1 >> cleaned_in0;
  assign out1[0] = shifted_s[0];
  generate
   if(BITSIZE_out1 > 1)
     assign out1[BITSIZE_out1-1:1] = 0;
  endgenerate

endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module multi_read_cond_FU(in1, out1);
  parameter BITSIZE_in1=1, PORTSIZE_in1=2, BITSIZE_out1=1;
  // IN
  input [(PORTSIZE_in1*BITSIZE_in1)+(-1):0] in1;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module read_cond_FU(in1, out1);
  parameter BITSIZE_in1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  // OUT
  output out1;
  assign out1 = in1 != {BITSIZE_in1{1'b0}};
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module gt_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1;
  // IN
  input signed [BITSIZE_in1-1:0] in1;
  input signed [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1 > in2;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module lt_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1;
  // IN
  input signed [BITSIZE_in1-1:0] in1;
  input signed [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1 < in2;

endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module plus_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1;
  // IN
  input signed [BITSIZE_in1-1:0] in1;
  input signed [BITSIZE_in2-1:0] in2;
  // OUT
  output signed [BITSIZE_out1-1:0] out1;
  assign out1 = in1 + in2;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ui_lshift_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1, PRECISION=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  `ifndef _SIM_HAVE_CLOG2
    function integer log2;
       input integer value;
       integer temp_value;
      begin
        temp_value = value-1;
        for (log2=0; temp_value>0; log2=log2+1)
          temp_value = temp_value>>1;
      end
    endfunction
  `endif
  `ifdef _SIM_HAVE_CLOG2
    parameter arg2_bitsize = $clog2(PRECISION);
  `else
    parameter arg2_bitsize = log2(PRECISION);
  `endif
  generate
    if(BITSIZE_in2 > arg2_bitsize)
      assign out1 = in1 << in2[arg2_bitsize-1:0];
    else
      assign out1 = in1 << in2;
  endgenerate
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ui_plus_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1 + in2;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ui_pointer_plus_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1, LSB_PARAMETER=-1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  wire [BITSIZE_out1-1:0] in1_tmp;
  wire [BITSIZE_out1-1:0] in2_tmp;
  assign in1_tmp = in1;
  assign in2_tmp = in2;generate if (BITSIZE_out1 > LSB_PARAMETER) assign out1[BITSIZE_out1-1:LSB_PARAMETER] = (in1_tmp[BITSIZE_out1-1:LSB_PARAMETER] + in2_tmp[BITSIZE_out1-1:LSB_PARAMETER]); else assign out1 = 0; endgenerate
  generate if (LSB_PARAMETER != 0 && BITSIZE_out1 > LSB_PARAMETER) assign out1[LSB_PARAMETER-1:0] = 0; endgenerate
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2013-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module bus_merger(in1, out1);
  parameter BITSIZE_in1=1, PORTSIZE_in1=2, BITSIZE_out1=1;
  // IN
  input [(PORTSIZE_in1*BITSIZE_in1)+(-1):0] in1;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  
  function [BITSIZE_out1-1:0] merge;
    input [BITSIZE_in1*PORTSIZE_in1-1:0] m;
    reg [BITSIZE_out1-1:0] res;
    integer i1;
  begin
    res={BITSIZE_in1{1'b0}};
    for(i1 = 0; i1 < PORTSIZE_in1; i1 = i1 + 1)
    begin
      res = res | m[i1*BITSIZE_in1 +:BITSIZE_in1];
    end
    merge = res;
  end
  endfunction
  
  assign out1 = merge(in1);
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module join_signal(in1, out1);
  parameter BITSIZE_in1=1, PORTSIZE_in1=2, BITSIZE_out1=1;
  // IN
  input [(PORTSIZE_in1*BITSIZE_in1)+(-1):0] in1;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  
  generate
  genvar i1;
  for (i1=0; i1<PORTSIZE_in1; i1=i1+1)
    begin : L1
      assign out1[(i1+1)*(BITSIZE_out1/PORTSIZE_in1)-1:i1*(BITSIZE_out1/PORTSIZE_in1)] = in1[(i1+1)*BITSIZE_in1-1:i1*BITSIZE_in1];
    end
  endgenerate
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module split_signal(in1, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1, PORTSIZE_out1=2;
  // IN
  input [BITSIZE_in1-1:0] in1;
  // OUT
  output [(PORTSIZE_out1*BITSIZE_out1)+(-1):0] out1;
  assign out1 = in1;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ASSIGN_SIGNED_FU(in1, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1;
  // IN
  input signed [BITSIZE_in1-1:0] in1;
  // OUT
  output signed [BITSIZE_out1-1:0] out1;
  assign out1 = in1;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ASSIGN_UNSIGNED_FU(in1, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>, Christian Pilato <christian.pilato@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module MUX_GATE(sel, in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1;
  // IN
  input sel;
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = sel ? in1 : in2;
endmodule

// Datapath RTL description for bsort100
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module datapath_bsort100(clock, reset, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, S_data_ram_size, Sin_Rdata_ram, Sin_DataRdy, Sout_Rdata_ram, Sout_DataRdy, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_LOAD, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_STORE, selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_0, selector_MUX_105_reg_2_0_0_0, selector_MUX_106_reg_20_0_0_0, selector_MUX_107_reg_3_0_0_0, selector_MUX_111_reg_7_0_0_0, selector_MUX_111_reg_7_0_0_1, selector_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_0, selector_MUX_93_reg_0_0_0_0, selector_MUX_94_reg_1_0_0_0, selector_MUX_94_reg_1_0_0_1, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_17, wrenable_reg_18, wrenable_reg_19, wrenable_reg_2, wrenable_reg_20, wrenable_reg_3, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_CONDITION_bsort100_26084_26275, OUT_MULTIIF_bsort100_26084_26452, OUT_MULTIIF_bsort100_26084_26462);
  parameter MEM_var_26078_26084=32;
  // IN
  input clock;
  input reset;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [13:0] S_addr_ram;
  input [127:0] S_Wdata_ram;
  input [13:0] S_data_ram_size;
  input [127:0] Sin_Rdata_ram;
  input [1:0] Sin_DataRdy;
  input fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD;
  input fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE;
  input fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_LOAD;
  input fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_STORE;
  input selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_0;
  input selector_MUX_105_reg_2_0_0_0;
  input selector_MUX_106_reg_20_0_0_0;
  input selector_MUX_107_reg_3_0_0_0;
  input selector_MUX_111_reg_7_0_0_0;
  input selector_MUX_111_reg_7_0_0_1;
  input selector_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_0;
  input selector_MUX_93_reg_0_0_0_0;
  input selector_MUX_94_reg_1_0_0_0;
  input selector_MUX_94_reg_1_0_0_1;
  input wrenable_reg_0;
  input wrenable_reg_1;
  input wrenable_reg_10;
  input wrenable_reg_11;
  input wrenable_reg_12;
  input wrenable_reg_13;
  input wrenable_reg_14;
  input wrenable_reg_15;
  input wrenable_reg_16;
  input wrenable_reg_17;
  input wrenable_reg_18;
  input wrenable_reg_19;
  input wrenable_reg_2;
  input wrenable_reg_20;
  input wrenable_reg_3;
  input wrenable_reg_4;
  input wrenable_reg_5;
  input wrenable_reg_6;
  input wrenable_reg_7;
  input wrenable_reg_8;
  input wrenable_reg_9;
  // OUT
  output [127:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  output OUT_CONDITION_bsort100_26084_26275;
  output [2:0] OUT_MULTIIF_bsort100_26084_26452;
  output OUT_MULTIIF_bsort100_26084_26462;
  // Component and signal declarations
  wire [63:0] null_out_signal_array_26078_0_proxy_out1_0;
  wire [63:0] null_out_signal_array_26078_0_proxy_out1_1;
  wire [63:0] out_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_array_26078_0;
  wire [63:0] out_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_array_26078_0;
  wire [2:0] out_IUdata_converter_FU_14_i0_fu_bsort100_26084_26303;
  wire [2:0] out_IUdata_converter_FU_15_i0_fu_bsort100_26084_26318;
  wire [7:0] out_IUdata_converter_FU_17_i0_fu_bsort100_26084_26191;
  wire [2:0] out_IUdata_converter_FU_19_i0_fu_bsort100_26084_26344;
  wire [63:0] out_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_0;
  wire [3:0] out_MUX_105_reg_2_0_0_0;
  wire [8:0] out_MUX_106_reg_20_0_0_0;
  wire [8:0] out_MUX_107_reg_3_0_0_0;
  wire [7:0] out_MUX_111_reg_7_0_0_0;
  wire [7:0] out_MUX_111_reg_7_0_0_1;
  wire [6:0] out_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_0;
  wire [1:0] out_MUX_93_reg_0_0_0_0;
  wire [8:0] out_MUX_94_reg_1_0_0_0;
  wire [8:0] out_MUX_94_reg_1_0_0_1;
  wire signed [8:0] out_UIdata_converter_FU_13_i0_fu_bsort100_26084_26253;
  wire signed [7:0] out_UIdata_converter_FU_16_i0_fu_bsort100_26084_26201;
  wire signed [8:0] out_UIdata_converter_FU_18_i0_fu_bsort100_26084_26258;
  wire signed [8:0] out_UIdata_converter_FU_20_i0_fu_bsort100_26084_26188;
  wire signed [8:0] out_UIdata_converter_FU_21_i0_fu_bsort100_26084_26175;
  wire [5:0] out_UUdata_converter_FU_4_i0_fu_bsort100_26084_26300;
  wire [5:0] out_addr_expr_FU_3_i0_fu_bsort100_26084_26330;
  wire out_const_0;
  wire [1:0] out_const_1;
  wire [1:0] out_const_10;
  wire [2:0] out_const_11;
  wire [2:0] out_const_12;
  wire [27:0] out_const_13;
  wire [7:0] out_const_14;
  wire [5:0] out_const_15;
  wire [7:0] out_const_2;
  wire [2:0] out_const_3;
  wire out_const_4;
  wire [1:0] out_const_5;
  wire [2:0] out_const_6;
  wire [3:0] out_const_7;
  wire [4:0] out_const_8;
  wire [2:0] out_const_9;
  wire [31:0] out_conv_out_const_15_6_32;
  wire [6:0] out_conv_out_const_2_8_7;
  wire [1:0] out_conv_out_i_assign_conn_obj_0_ASSIGN_SIGNED_FU_i_assign_0_I_1_2;
  wire [3:0] out_conv_out_i_assign_conn_obj_0_ASSIGN_SIGNED_FU_i_assign_0_I_1_4;
  wire [8:0] out_conv_out_i_assign_conn_obj_0_ASSIGN_SIGNED_FU_i_assign_0_I_1_9;
  wire [8:0] out_conv_out_i_assign_conn_obj_2_ASSIGN_SIGNED_FU_i_assign_1_I_2_9;
  wire [8:0] out_conv_out_i_assign_conn_obj_3_ASSIGN_SIGNED_FU_i_assign_2_I_3_9;
  wire [6:0] out_conv_out_reg_10_reg_10_6_7;
  wire [6:0] out_conv_out_reg_11_reg_11_6_7;
  wire [6:0] out_conv_out_reg_12_reg_12_6_7;
  wire [7:0] out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_5_1_8;
  wire out_extract_bit_expr_FU_22_i0_fu_bsort100_26084_26550;
  wire out_extract_bit_expr_FU_23_i0_fu_bsort100_26084_26587;
  wire out_extract_bit_expr_FU_24_i0_fu_bsort100_26084_26651;
  wire out_extract_bit_expr_FU_27_i0_fu_bsort100_26084_26505;
  wire out_extract_bit_expr_FU_36_i0_fu_bsort100_26084_26512;
  wire out_extract_bit_expr_FU_37_i0_fu_bsort100_26084_26515;
  wire out_extract_bit_expr_FU_38_i0_fu_bsort100_26084_26518;
  wire out_extract_bit_expr_FU_39_i0_fu_bsort100_26084_26521;
  wire out_extract_bit_expr_FU_40_i0_fu_bsort100_26084_26524;
  wire out_extract_bit_expr_FU_41_i0_fu_bsort100_26084_26528;
  wire out_extract_bit_expr_FU_43_i0_fu_bsort100_26084_26536;
  wire out_extract_bit_expr_FU_44_i0_fu_bsort100_26084_26540;
  wire out_extract_bit_expr_FU_45_i0_fu_bsort100_26084_26544;
  wire out_gt_expr_FU_64_64_64_48_i0_fu_bsort100_26084_26396;
  wire signed [0:0] out_i_assign_conn_obj_0_ASSIGN_SIGNED_FU_i_assign_0;
  wire signed [1:0] out_i_assign_conn_obj_2_ASSIGN_SIGNED_FU_i_assign_1;
  wire signed [2:0] out_i_assign_conn_obj_3_ASSIGN_SIGNED_FU_i_assign_2;
  wire [63:0] out_iu_conv_conn_obj_4_IUdata_converter_FU_iu_conv_3;
  wire [63:0] out_iu_conv_conn_obj_5_IUdata_converter_FU_iu_conv_4;
  wire out_lt_expr_FU_16_16_16_49_i0_fu_bsort100_26084_26398;
  wire out_lt_expr_FU_16_16_16_49_i1_fu_bsort100_26084_26400;
  wire out_lut_expr_FU_25_i0_fu_bsort100_26084_26404;
  wire out_lut_expr_FU_26_i0_fu_bsort100_26084_26451;
  wire out_lut_expr_FU_28_i0_fu_bsort100_26084_26461;
  wire out_lut_expr_FU_42_i0_fu_bsort100_26084_26531;
  wire out_lut_expr_FU_46_i0_fu_bsort100_26084_26468;
  wire [2:0] out_multi_read_cond_FU_29_i0_fu_bsort100_26084_26452;
  wire out_multi_read_cond_FU_47_i0_fu_bsort100_26084_26462;
  wire signed [9:0] out_plus_expr_FU_16_0_16_50_i0_fu_bsort100_26084_26262;
  wire signed [7:0] out_plus_expr_FU_8_0_8_51_i0_fu_bsort100_26084_26195;
  wire signed [3:0] out_plus_expr_FU_8_0_8_52_i0_fu_bsort100_26084_26227;
  wire out_read_cond_FU_33_i0_fu_bsort100_26084_26275;
  wire [1:0] out_reg_0_reg_0;
  wire [5:0] out_reg_10_reg_10;
  wire [5:0] out_reg_11_reg_11;
  wire [5:0] out_reg_12_reg_12;
  wire out_reg_13_reg_13;
  wire out_reg_14_reg_14;
  wire out_reg_15_reg_15;
  wire out_reg_16_reg_16;
  wire [63:0] out_reg_17_reg_17;
  wire [63:0] out_reg_18_reg_18;
  wire [63:0] out_reg_19_reg_19;
  wire [8:0] out_reg_1_reg_1;
  wire [8:0] out_reg_20_reg_20;
  wire [3:0] out_reg_2_reg_2;
  wire [8:0] out_reg_3_reg_3;
  wire [5:0] out_reg_4_reg_4;
  wire [8:0] out_reg_5_reg_5;
  wire [8:0] out_reg_6_reg_6;
  wire [7:0] out_reg_7_reg_7;
  wire [7:0] out_reg_8_reg_8;
  wire [3:0] out_reg_9_reg_9;
  wire [0:0] out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_5;
  wire [5:0] out_ui_lshift_expr_FU_8_0_8_53_i0_fu_bsort100_26084_26307;
  wire [5:0] out_ui_lshift_expr_FU_8_0_8_53_i1_fu_bsort100_26084_26321;
  wire [5:0] out_ui_lshift_expr_FU_8_0_8_53_i2_fu_bsort100_26084_26347;
  wire [7:0] out_ui_plus_expr_FU_8_0_8_54_i0_fu_bsort100_26084_26178;
  wire [5:0] out_ui_pointer_plus_expr_FU_8_8_8_55_i0_fu_bsort100_26084_26310;
  wire [5:0] out_ui_pointer_plus_expr_FU_8_8_8_55_i1_fu_bsort100_26084_26324;
  wire [5:0] out_ui_pointer_plus_expr_FU_8_8_8_55_i2_fu_bsort100_26084_26350;
  wire [1:0] sig_in_bus_mergerSout_DataRdy0_0;
  wire [127:0] sig_in_bus_mergerSout_Rdata_ram1_0;
  wire [1:0] sig_in_vector_bus_mergerSout_DataRdy0_0;
  wire [127:0] sig_in_vector_bus_mergerSout_Rdata_ram1_0;
  wire [1:0] sig_out_bus_mergerSout_DataRdy0_;
  wire [127:0] sig_out_bus_mergerSout_Rdata_ram1_;
  
  ASSIGN_SIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_SIGNED_FU_i_assign_0 (.out1(out_i_assign_conn_obj_0_ASSIGN_SIGNED_FU_i_assign_0), .in1(out_const_0));
  ASSIGN_SIGNED_FU #(.BITSIZE_in1(2), .BITSIZE_out1(2)) ASSIGN_SIGNED_FU_i_assign_1 (.out1(out_i_assign_conn_obj_2_ASSIGN_SIGNED_FU_i_assign_1), .in1(out_const_10));
  ASSIGN_SIGNED_FU #(.BITSIZE_in1(3), .BITSIZE_out1(3)) ASSIGN_SIGNED_FU_i_assign_2 (.out1(out_i_assign_conn_obj_3_ASSIGN_SIGNED_FU_i_assign_2), .in1(out_const_3));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_5 (.out1(out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_5), .in1(out_const_0));
  IUdata_converter_FU #(.BITSIZE_in1(64), .BITSIZE_out1(64)) IUdata_converter_FU_iu_conv_3 (.out1(out_iu_conv_conn_obj_4_IUdata_converter_FU_iu_conv_3), .in1(out_reg_19_reg_19));
  IUdata_converter_FU #(.BITSIZE_in1(64), .BITSIZE_out1(64)) IUdata_converter_FU_iu_conv_4 (.out1(out_iu_conv_conn_obj_5_IUdata_converter_FU_iu_conv_4), .in1(out_reg_18_reg_18));
  MUX_GATE #(.BITSIZE_in1(64), .BITSIZE_in2(64), .BITSIZE_out1(64)) MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_0 (.out1(out_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_0), .sel(selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_0), .in1(out_iu_conv_conn_obj_4_IUdata_converter_FU_iu_conv_3), .in2(out_iu_conv_conn_obj_5_IUdata_converter_FU_iu_conv_4));
  MUX_GATE #(.BITSIZE_in1(4), .BITSIZE_in2(4), .BITSIZE_out1(4)) MUX_105_reg_2_0_0_0 (.out1(out_MUX_105_reg_2_0_0_0), .sel(selector_MUX_105_reg_2_0_0_0), .in1(out_reg_9_reg_9), .in2(out_conv_out_i_assign_conn_obj_0_ASSIGN_SIGNED_FU_i_assign_0_I_1_4));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_106_reg_20_0_0_0 (.out1(out_MUX_106_reg_20_0_0_0), .sel(selector_MUX_106_reg_20_0_0_0), .in1(out_reg_1_reg_1), .in2(out_conv_out_i_assign_conn_obj_2_ASSIGN_SIGNED_FU_i_assign_1_I_2_9));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_107_reg_3_0_0_0 (.out1(out_MUX_107_reg_3_0_0_0), .sel(selector_MUX_107_reg_3_0_0_0), .in1(out_reg_20_reg_20), .in2(out_conv_out_i_assign_conn_obj_3_ASSIGN_SIGNED_FU_i_assign_2_I_3_9));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_111_reg_7_0_0_0 (.out1(out_MUX_111_reg_7_0_0_0), .sel(selector_MUX_111_reg_7_0_0_0), .in1(out_reg_8_reg_8), .in2(out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_5_1_8));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_111_reg_7_0_0_1 (.out1(out_MUX_111_reg_7_0_0_1), .sel(selector_MUX_111_reg_7_0_0_1), .in1(out_ui_plus_expr_FU_8_0_8_54_i0_fu_bsort100_26084_26178), .in2(out_MUX_111_reg_7_0_0_0));
  MUX_GATE #(.BITSIZE_in1(7), .BITSIZE_in2(7), .BITSIZE_out1(7)) MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_0 (.out1(out_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_0), .sel(selector_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_0), .in1(out_conv_out_reg_12_reg_12_6_7), .in2(out_conv_out_reg_10_reg_10_6_7));
  MUX_GATE #(.BITSIZE_in1(2), .BITSIZE_in2(2), .BITSIZE_out1(2)) MUX_93_reg_0_0_0_0 (.out1(out_MUX_93_reg_0_0_0_0), .sel(selector_MUX_93_reg_0_0_0_0), .in1(out_const_1), .in2(out_conv_out_i_assign_conn_obj_0_ASSIGN_SIGNED_FU_i_assign_0_I_1_2));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_94_reg_1_0_0_0 (.out1(out_MUX_94_reg_1_0_0_0), .sel(selector_MUX_94_reg_1_0_0_0), .in1(out_reg_6_reg_6), .in2(out_reg_5_reg_5));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_94_reg_1_0_0_1 (.out1(out_MUX_94_reg_1_0_0_1), .sel(selector_MUX_94_reg_1_0_0_1), .in1(out_conv_out_i_assign_conn_obj_0_ASSIGN_SIGNED_FU_i_assign_0_I_1_9), .in2(out_MUX_94_reg_1_0_0_0));
  ARRAY_1D_STD_DISTRAM_NN_SDS #(.BITSIZE_in1(64), .PORTSIZE_in1(2), .BITSIZE_in2(7), .PORTSIZE_in2(2), .BITSIZE_in3(7), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(64), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(7), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(64), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(64), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(64), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(7), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_26078.mem"), .n_elements(4), .data_size(64), .address_space_begin(MEM_var_26078_26084), .address_space_rangesize(32), .BUS_PIPELINED(1), .BRAM_BITSIZE(64), .PRIVATE_MEMORY(0), .READ_ONLY_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(64), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(7), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(7), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(64), .PORTSIZE_proxy_out1(2)) array_26078_0 (.out1({out_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_array_26078_0, out_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_array_26078_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram1_0), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy0_0), .proxy_out1({null_out_signal_array_26078_0_proxy_out1_1, null_out_signal_array_26078_0_proxy_out1_0}), .clock(clock), .reset(reset), .in1({64'b0000000000000000000000000000000000000000000000000000000000000000, out_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_0}), .in2({out_conv_out_reg_11_reg_11_6_7, out_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_0}), .in3({out_conv_out_const_2_8_7, out_conv_out_const_2_8_7}), .in4({out_const_4, out_const_4}), .sel_LOAD({fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_LOAD, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD}), .sel_STORE({fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_STORE, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1({64'b0000000000000000000000000000000000000000000000000000000000000000, 64'b0000000000000000000000000000000000000000000000000000000000000000}), .proxy_in2({7'b0000000, 7'b0000000}), .proxy_in3({7'b0000000, 7'b0000000}), .proxy_sel_LOAD({1'b0, 1'b0}), .proxy_sel_STORE({1'b0, 1'b0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerSout_DataRdy0_ (.out1(sig_out_bus_mergerSout_DataRdy0_), .in1({sig_in_bus_mergerSout_DataRdy0_0}));
  bus_merger #(.BITSIZE_in1(128), .PORTSIZE_in1(1), .BITSIZE_out1(128)) bus_mergerSout_Rdata_ram1_ (.out1(sig_out_bus_mergerSout_Rdata_ram1_), .in1({sig_in_bus_mergerSout_Rdata_ram1_0}));
  constant_value #(.BITSIZE_out1(1), .value(1'b0)) const_0 (.out1(out_const_0));
  constant_value #(.BITSIZE_out1(2), .value(2'b01)) const_1 (.out1(out_const_1));
  constant_value #(.BITSIZE_out1(2), .value(2'b11)) const_10 (.out1(out_const_10));
  constant_value #(.BITSIZE_out1(3), .value(3'b110)) const_11 (.out1(out_const_11));
  constant_value #(.BITSIZE_out1(3), .value(3'b111)) const_12 (.out1(out_const_12));
  constant_value #(.BITSIZE_out1(28), .value(28'b1110000000000000111100000000)) const_13 (.out1(out_const_13));
  constant_value #(.BITSIZE_out1(8), .value(8'b11110111)) const_14 (.out1(out_const_14));
  constant_value #(.BITSIZE_out1(6), .value(MEM_var_26078_26084)) const_15 (.out1(out_const_15));
  constant_value #(.BITSIZE_out1(8), .value(8'b01000000)) const_2 (.out1(out_const_2));
  constant_value #(.BITSIZE_out1(3), .value(3'b011)) const_3 (.out1(out_const_3));
  constant_value #(.BITSIZE_out1(1), .value(1'b1)) const_4 (.out1(out_const_4));
  constant_value #(.BITSIZE_out1(2), .value(2'b10)) const_5 (.out1(out_const_5));
  constant_value #(.BITSIZE_out1(3), .value(3'b100)) const_6 (.out1(out_const_6));
  constant_value #(.BITSIZE_out1(4), .value(4'b1000)) const_7 (.out1(out_const_7));
  constant_value #(.BITSIZE_out1(5), .value(5'b10000)) const_8 (.out1(out_const_8));
  constant_value #(.BITSIZE_out1(3), .value(3'b101)) const_9 (.out1(out_const_9));
  UUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(32)) conv_out_const_15_6_32 (.out1(out_conv_out_const_15_6_32), .in1(out_const_15));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(7)) conv_out_const_2_8_7 (.out1(out_conv_out_const_2_8_7), .in1(out_const_2));
  IUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(2)) conv_out_i_assign_conn_obj_0_ASSIGN_SIGNED_FU_i_assign_0_I_1_2 (.out1(out_conv_out_i_assign_conn_obj_0_ASSIGN_SIGNED_FU_i_assign_0_I_1_2), .in1(out_i_assign_conn_obj_0_ASSIGN_SIGNED_FU_i_assign_0));
  IUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(4)) conv_out_i_assign_conn_obj_0_ASSIGN_SIGNED_FU_i_assign_0_I_1_4 (.out1(out_conv_out_i_assign_conn_obj_0_ASSIGN_SIGNED_FU_i_assign_0_I_1_4), .in1(out_i_assign_conn_obj_0_ASSIGN_SIGNED_FU_i_assign_0));
  IUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(9)) conv_out_i_assign_conn_obj_0_ASSIGN_SIGNED_FU_i_assign_0_I_1_9 (.out1(out_conv_out_i_assign_conn_obj_0_ASSIGN_SIGNED_FU_i_assign_0_I_1_9), .in1(out_i_assign_conn_obj_0_ASSIGN_SIGNED_FU_i_assign_0));
  IUdata_converter_FU #(.BITSIZE_in1(2), .BITSIZE_out1(9)) conv_out_i_assign_conn_obj_2_ASSIGN_SIGNED_FU_i_assign_1_I_2_9 (.out1(out_conv_out_i_assign_conn_obj_2_ASSIGN_SIGNED_FU_i_assign_1_I_2_9), .in1(out_i_assign_conn_obj_2_ASSIGN_SIGNED_FU_i_assign_1));
  IUdata_converter_FU #(.BITSIZE_in1(3), .BITSIZE_out1(9)) conv_out_i_assign_conn_obj_3_ASSIGN_SIGNED_FU_i_assign_2_I_3_9 (.out1(out_conv_out_i_assign_conn_obj_3_ASSIGN_SIGNED_FU_i_assign_2_I_3_9), .in1(out_i_assign_conn_obj_3_ASSIGN_SIGNED_FU_i_assign_2));
  UUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(7)) conv_out_reg_10_reg_10_6_7 (.out1(out_conv_out_reg_10_reg_10_6_7), .in1(out_reg_10_reg_10));
  UUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(7)) conv_out_reg_11_reg_11_6_7 (.out1(out_conv_out_reg_11_reg_11_6_7), .in1(out_reg_11_reg_11));
  UUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(7)) conv_out_reg_12_reg_12_6_7 (.out1(out_conv_out_reg_12_reg_12_6_7), .in1(out_reg_12_reg_12));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(8)) conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_5_1_8 (.out1(out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_5_1_8), .in1(out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_5));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_bsort100_26084_26175 (.out1(out_UIdata_converter_FU_21_i0_fu_bsort100_26084_26175), .in1(out_ui_plus_expr_FU_8_0_8_54_i0_fu_bsort100_26084_26178));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(8)) fu_bsort100_26084_26178 (.out1(out_ui_plus_expr_FU_8_0_8_54_i0_fu_bsort100_26084_26178), .in1(out_reg_7_reg_7), .in2(out_const_4));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_bsort100_26084_26188 (.out1(out_UIdata_converter_FU_20_i0_fu_bsort100_26084_26188), .in1(out_IUdata_converter_FU_17_i0_fu_bsort100_26084_26191));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_bsort100_26084_26191 (.out1(out_IUdata_converter_FU_17_i0_fu_bsort100_26084_26191), .in1(out_plus_expr_FU_8_0_8_51_i0_fu_bsort100_26084_26195));
  plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(8)) fu_bsort100_26084_26195 (.out1(out_plus_expr_FU_8_0_8_51_i0_fu_bsort100_26084_26195), .in1(out_UIdata_converter_FU_16_i0_fu_bsort100_26084_26201), .in2(out_const_1));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_bsort100_26084_26201 (.out1(out_UIdata_converter_FU_16_i0_fu_bsort100_26084_26201), .in1(out_reg_7_reg_7));
  plus_expr_FU #(.BITSIZE_in1(4), .BITSIZE_in2(2), .BITSIZE_out1(4)) fu_bsort100_26084_26227 (.out1(out_plus_expr_FU_8_0_8_52_i0_fu_bsort100_26084_26227), .in1(out_reg_2_reg_2), .in2(out_const_1));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_bsort100_26084_26253 (.out1(out_UIdata_converter_FU_13_i0_fu_bsort100_26084_26253), .in1(out_reg_7_reg_7));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_bsort100_26084_26258 (.out1(out_UIdata_converter_FU_18_i0_fu_bsort100_26084_26258), .in1(out_IUdata_converter_FU_17_i0_fu_bsort100_26084_26191));
  plus_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(2), .BITSIZE_out1(10)) fu_bsort100_26084_26262 (.out1(out_plus_expr_FU_16_0_16_50_i0_fu_bsort100_26084_26262), .in1(out_UIdata_converter_FU_13_i0_fu_bsort100_26084_26253), .in2(out_const_1));
  read_cond_FU #(.BITSIZE_in1(1)) fu_bsort100_26084_26275 (.out1(out_read_cond_FU_33_i0_fu_bsort100_26084_26275), .in1(out_reg_14_reg_14));
  UUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(6)) fu_bsort100_26084_26300 (.out1(out_UUdata_converter_FU_4_i0_fu_bsort100_26084_26300), .in1(out_addr_expr_FU_3_i0_fu_bsort100_26084_26330));
  IUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(3)) fu_bsort100_26084_26303 (.out1(out_IUdata_converter_FU_14_i0_fu_bsort100_26084_26303), .in1(out_UIdata_converter_FU_13_i0_fu_bsort100_26084_26253));
  ui_lshift_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(2), .BITSIZE_out1(6), .PRECISION(32)) fu_bsort100_26084_26307 (.out1(out_ui_lshift_expr_FU_8_0_8_53_i0_fu_bsort100_26084_26307), .in1(out_IUdata_converter_FU_14_i0_fu_bsort100_26084_26303), .in2(out_const_10));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(6), .BITSIZE_in2(6), .BITSIZE_out1(6), .LSB_PARAMETER(3)) fu_bsort100_26084_26310 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_55_i0_fu_bsort100_26084_26310), .in1(out_reg_4_reg_4), .in2(out_ui_lshift_expr_FU_8_0_8_53_i0_fu_bsort100_26084_26307));
  IUdata_converter_FU #(.BITSIZE_in1(10), .BITSIZE_out1(3)) fu_bsort100_26084_26318 (.out1(out_IUdata_converter_FU_15_i0_fu_bsort100_26084_26318), .in1(out_plus_expr_FU_16_0_16_50_i0_fu_bsort100_26084_26262));
  ui_lshift_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(2), .BITSIZE_out1(6), .PRECISION(32)) fu_bsort100_26084_26321 (.out1(out_ui_lshift_expr_FU_8_0_8_53_i1_fu_bsort100_26084_26321), .in1(out_IUdata_converter_FU_15_i0_fu_bsort100_26084_26318), .in2(out_const_10));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(6), .BITSIZE_in2(6), .BITSIZE_out1(6), .LSB_PARAMETER(3)) fu_bsort100_26084_26324 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_55_i1_fu_bsort100_26084_26324), .in1(out_reg_4_reg_4), .in2(out_ui_lshift_expr_FU_8_0_8_53_i1_fu_bsort100_26084_26321));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(6)) fu_bsort100_26084_26330 (.out1(out_addr_expr_FU_3_i0_fu_bsort100_26084_26330), .in1(out_conv_out_const_15_6_32));
  IUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(3)) fu_bsort100_26084_26344 (.out1(out_IUdata_converter_FU_19_i0_fu_bsort100_26084_26344), .in1(out_UIdata_converter_FU_18_i0_fu_bsort100_26084_26258));
  ui_lshift_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(2), .BITSIZE_out1(6), .PRECISION(32)) fu_bsort100_26084_26347 (.out1(out_ui_lshift_expr_FU_8_0_8_53_i2_fu_bsort100_26084_26347), .in1(out_IUdata_converter_FU_19_i0_fu_bsort100_26084_26344), .in2(out_const_10));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(6), .BITSIZE_in2(6), .BITSIZE_out1(6), .LSB_PARAMETER(3)) fu_bsort100_26084_26350 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_55_i2_fu_bsort100_26084_26350), .in1(out_reg_4_reg_4), .in2(out_ui_lshift_expr_FU_8_0_8_53_i2_fu_bsort100_26084_26347));
  gt_expr_FU #(.BITSIZE_in1(64), .BITSIZE_in2(64), .BITSIZE_out1(1)) fu_bsort100_26084_26396 (.out1(out_gt_expr_FU_64_64_64_48_i0_fu_bsort100_26084_26396), .in1(out_reg_18_reg_18), .in2(out_reg_17_reg_17));
  lt_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(1)) fu_bsort100_26084_26398 (.out1(out_lt_expr_FU_16_16_16_49_i0_fu_bsort100_26084_26398), .in1(out_UIdata_converter_FU_21_i0_fu_bsort100_26084_26175), .in2(out_reg_3_reg_3));
  lt_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(1)) fu_bsort100_26084_26400 (.out1(out_lt_expr_FU_16_16_16_49_i1_fu_bsort100_26084_26400), .in1(out_UIdata_converter_FU_20_i0_fu_bsort100_26084_26188), .in2(out_reg_3_reg_3));
  lut_expr_FU #(.BITSIZE_in1(8), .BITSIZE_out1(1)) fu_bsort100_26084_26404 (.out1(out_lut_expr_FU_25_i0_fu_bsort100_26084_26404), .in1(out_const_14), .in2(out_extract_bit_expr_FU_22_i0_fu_bsort100_26084_26550), .in3(out_extract_bit_expr_FU_23_i0_fu_bsort100_26084_26587), .in4(out_extract_bit_expr_FU_24_i0_fu_bsort100_26084_26651), .in5(1'b0), .in6(1'b0), .in7(1'b0), .in8(1'b0), .in9(1'b0));
  lut_expr_FU #(.BITSIZE_in1(3), .BITSIZE_out1(1)) fu_bsort100_26084_26451 (.out1(out_lut_expr_FU_26_i0_fu_bsort100_26084_26451), .in1(out_const_6), .in2(out_gt_expr_FU_64_64_64_48_i0_fu_bsort100_26084_26396), .in3(out_reg_13_reg_13), .in4(1'b0), .in5(1'b0), .in6(1'b0), .in7(1'b0), .in8(1'b0), .in9(1'b0));
  multi_read_cond_FU #(.BITSIZE_in1(1), .PORTSIZE_in1(3), .BITSIZE_out1(3)) fu_bsort100_26084_26452 (.out1(out_multi_read_cond_FU_29_i0_fu_bsort100_26084_26452), .in1({out_lut_expr_FU_28_i0_fu_bsort100_26084_26461, out_lut_expr_FU_26_i0_fu_bsort100_26084_26451, out_gt_expr_FU_64_64_64_48_i0_fu_bsort100_26084_26396}));
  lut_expr_FU #(.BITSIZE_in1(5), .BITSIZE_out1(1)) fu_bsort100_26084_26461 (.out1(out_lut_expr_FU_28_i0_fu_bsort100_26084_26461), .in1(out_const_8), .in2(out_gt_expr_FU_64_64_64_48_i0_fu_bsort100_26084_26396), .in3(out_reg_13_reg_13), .in4(out_reg_16_reg_16), .in5(1'b0), .in6(1'b0), .in7(1'b0), .in8(1'b0), .in9(1'b0));
  multi_read_cond_FU #(.BITSIZE_in1(1), .PORTSIZE_in1(1), .BITSIZE_out1(1)) fu_bsort100_26084_26462 (.out1(out_multi_read_cond_FU_47_i0_fu_bsort100_26084_26462), .in1({out_lut_expr_FU_46_i0_fu_bsort100_26084_26468}));
  lut_expr_FU #(.BITSIZE_in1(28), .BITSIZE_out1(1)) fu_bsort100_26084_26468 (.out1(out_lut_expr_FU_46_i0_fu_bsort100_26084_26468), .in1(out_const_13), .in2(out_extract_bit_expr_FU_43_i0_fu_bsort100_26084_26536), .in3(out_extract_bit_expr_FU_44_i0_fu_bsort100_26084_26540), .in4(out_extract_bit_expr_FU_45_i0_fu_bsort100_26084_26544), .in5(out_reg_15_reg_15), .in6(out_lut_expr_FU_42_i0_fu_bsort100_26084_26531), .in7(1'b0), .in8(1'b0), .in9(1'b0));
  extract_bit_expr_FU #(.BITSIZE_in1(2), .BITSIZE_in2(1)) fu_bsort100_26084_26505 (.out1(out_extract_bit_expr_FU_27_i0_fu_bsort100_26084_26505), .in1(out_reg_0_reg_0), .in2(out_const_0));
  extract_bit_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(1)) fu_bsort100_26084_26512 (.out1(out_extract_bit_expr_FU_36_i0_fu_bsort100_26084_26512), .in1(out_reg_20_reg_20), .in2(out_const_0));
  extract_bit_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(1)) fu_bsort100_26084_26515 (.out1(out_extract_bit_expr_FU_37_i0_fu_bsort100_26084_26515), .in1(out_reg_20_reg_20), .in2(out_const_4));
  extract_bit_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(2)) fu_bsort100_26084_26518 (.out1(out_extract_bit_expr_FU_38_i0_fu_bsort100_26084_26518), .in1(out_reg_20_reg_20), .in2(out_const_5));
  extract_bit_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(2)) fu_bsort100_26084_26521 (.out1(out_extract_bit_expr_FU_39_i0_fu_bsort100_26084_26521), .in1(out_reg_20_reg_20), .in2(out_const_10));
  extract_bit_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(3)) fu_bsort100_26084_26524 (.out1(out_extract_bit_expr_FU_40_i0_fu_bsort100_26084_26524), .in1(out_reg_20_reg_20), .in2(out_const_6));
  extract_bit_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(3)) fu_bsort100_26084_26528 (.out1(out_extract_bit_expr_FU_41_i0_fu_bsort100_26084_26528), .in1(out_reg_20_reg_20), .in2(out_const_9));
  lut_expr_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) fu_bsort100_26084_26531 (.out1(out_lut_expr_FU_42_i0_fu_bsort100_26084_26531), .in1(out_const_4), .in2(out_extract_bit_expr_FU_36_i0_fu_bsort100_26084_26512), .in3(out_extract_bit_expr_FU_37_i0_fu_bsort100_26084_26515), .in4(out_extract_bit_expr_FU_38_i0_fu_bsort100_26084_26518), .in5(out_extract_bit_expr_FU_39_i0_fu_bsort100_26084_26521), .in6(out_extract_bit_expr_FU_40_i0_fu_bsort100_26084_26524), .in7(out_extract_bit_expr_FU_41_i0_fu_bsort100_26084_26528), .in8(1'b0), .in9(1'b0));
  extract_bit_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(3)) fu_bsort100_26084_26536 (.out1(out_extract_bit_expr_FU_43_i0_fu_bsort100_26084_26536), .in1(out_reg_20_reg_20), .in2(out_const_11));
  extract_bit_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(3)) fu_bsort100_26084_26540 (.out1(out_extract_bit_expr_FU_44_i0_fu_bsort100_26084_26540), .in1(out_reg_20_reg_20), .in2(out_const_12));
  extract_bit_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(4)) fu_bsort100_26084_26544 (.out1(out_extract_bit_expr_FU_45_i0_fu_bsort100_26084_26544), .in1(out_reg_20_reg_20), .in2(out_const_7));
  extract_bit_expr_FU #(.BITSIZE_in1(4), .BITSIZE_in2(1)) fu_bsort100_26084_26550 (.out1(out_extract_bit_expr_FU_22_i0_fu_bsort100_26084_26550), .in1(out_reg_2_reg_2), .in2(out_const_0));
  extract_bit_expr_FU #(.BITSIZE_in1(4), .BITSIZE_in2(1)) fu_bsort100_26084_26587 (.out1(out_extract_bit_expr_FU_23_i0_fu_bsort100_26084_26587), .in1(out_reg_2_reg_2), .in2(out_const_4));
  extract_bit_expr_FU #(.BITSIZE_in1(4), .BITSIZE_in2(2)) fu_bsort100_26084_26651 (.out1(out_extract_bit_expr_FU_24_i0_fu_bsort100_26084_26651), .in1(out_reg_2_reg_2), .in2(out_const_5));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerSout_DataRdy0_0 (.out1(sig_in_bus_mergerSout_DataRdy0_0), .in1(sig_in_vector_bus_mergerSout_DataRdy0_0));
  join_signal #(.BITSIZE_in1(64), .PORTSIZE_in1(2), .BITSIZE_out1(128)) join_signalbus_mergerSout_Rdata_ram1_0 (.out1(sig_in_bus_mergerSout_Rdata_ram1_0), .in1(sig_in_vector_bus_mergerSout_Rdata_ram1_0));
  register_SE #(.BITSIZE_in1(2), .BITSIZE_out1(2)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_MUX_93_reg_0_0_0_0), .wenable(wrenable_reg_0));
  register_SE #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_1 (.out1(out_reg_1_reg_1), .clock(clock), .reset(reset), .in1(out_MUX_94_reg_1_0_0_1), .wenable(wrenable_reg_1));
  register_SE #(.BITSIZE_in1(6), .BITSIZE_out1(6)) reg_10 (.out1(out_reg_10_reg_10), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_55_i0_fu_bsort100_26084_26310), .wenable(wrenable_reg_10));
  register_STD #(.BITSIZE_in1(6), .BITSIZE_out1(6)) reg_11 (.out1(out_reg_11_reg_11), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_55_i1_fu_bsort100_26084_26324), .wenable(wrenable_reg_11));
  register_SE #(.BITSIZE_in1(6), .BITSIZE_out1(6)) reg_12 (.out1(out_reg_12_reg_12), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_55_i2_fu_bsort100_26084_26350), .wenable(wrenable_reg_12));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_13 (.out1(out_reg_13_reg_13), .clock(clock), .reset(reset), .in1(out_lt_expr_FU_16_16_16_49_i0_fu_bsort100_26084_26398), .wenable(wrenable_reg_13));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_14 (.out1(out_reg_14_reg_14), .clock(clock), .reset(reset), .in1(out_lt_expr_FU_16_16_16_49_i1_fu_bsort100_26084_26400), .wenable(wrenable_reg_14));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_15 (.out1(out_reg_15_reg_15), .clock(clock), .reset(reset), .in1(out_lut_expr_FU_25_i0_fu_bsort100_26084_26404), .wenable(wrenable_reg_15));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_16 (.out1(out_reg_16_reg_16), .clock(clock), .reset(reset), .in1(out_extract_bit_expr_FU_27_i0_fu_bsort100_26084_26505), .wenable(wrenable_reg_16));
  register_STD #(.BITSIZE_in1(64), .BITSIZE_out1(64)) reg_17 (.out1(out_reg_17_reg_17), .clock(clock), .reset(reset), .in1(out_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_array_26078_0), .wenable(wrenable_reg_17));
  register_SE #(.BITSIZE_in1(64), .BITSIZE_out1(64)) reg_18 (.out1(out_reg_18_reg_18), .clock(clock), .reset(reset), .in1(out_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_array_26078_0), .wenable(wrenable_reg_18));
  register_STD #(.BITSIZE_in1(64), .BITSIZE_out1(64)) reg_19 (.out1(out_reg_19_reg_19), .clock(clock), .reset(reset), .in1(out_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_array_26078_0), .wenable(wrenable_reg_19));
  register_SE #(.BITSIZE_in1(4), .BITSIZE_out1(4)) reg_2 (.out1(out_reg_2_reg_2), .clock(clock), .reset(reset), .in1(out_MUX_105_reg_2_0_0_0), .wenable(wrenable_reg_2));
  register_SE #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_20 (.out1(out_reg_20_reg_20), .clock(clock), .reset(reset), .in1(out_MUX_106_reg_20_0_0_0), .wenable(wrenable_reg_20));
  register_SE #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_3 (.out1(out_reg_3_reg_3), .clock(clock), .reset(reset), .in1(out_MUX_107_reg_3_0_0_0), .wenable(wrenable_reg_3));
  register_SE #(.BITSIZE_in1(6), .BITSIZE_out1(6)) reg_4 (.out1(out_reg_4_reg_4), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_4_i0_fu_bsort100_26084_26300), .wenable(wrenable_reg_4));
  register_SE #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_5 (.out1(out_reg_5_reg_5), .clock(clock), .reset(reset), .in1(out_UIdata_converter_FU_21_i0_fu_bsort100_26084_26175), .wenable(wrenable_reg_5));
  register_SE #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_6 (.out1(out_reg_6_reg_6), .clock(clock), .reset(reset), .in1(out_UIdata_converter_FU_20_i0_fu_bsort100_26084_26188), .wenable(wrenable_reg_6));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_7 (.out1(out_reg_7_reg_7), .clock(clock), .reset(reset), .in1(out_MUX_111_reg_7_0_0_1), .wenable(wrenable_reg_7));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_8 (.out1(out_reg_8_reg_8), .clock(clock), .reset(reset), .in1(out_IUdata_converter_FU_17_i0_fu_bsort100_26084_26191), .wenable(wrenable_reg_8));
  register_SE #(.BITSIZE_in1(4), .BITSIZE_out1(4)) reg_9 (.out1(out_reg_9_reg_9), .clock(clock), .reset(reset), .in1(out_plus_expr_FU_8_0_8_52_i0_fu_bsort100_26084_26227), .wenable(wrenable_reg_9));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerSout_DataRdy0_ (.out1(Sout_DataRdy), .in1(sig_out_bus_mergerSout_DataRdy0_));
  split_signal #(.BITSIZE_in1(128), .BITSIZE_out1(64), .PORTSIZE_out1(2)) split_signalbus_mergerSout_Rdata_ram1_ (.out1(Sout_Rdata_ram), .in1(sig_out_bus_mergerSout_Rdata_ram1_));
  // io-signal post fix
  assign OUT_CONDITION_bsort100_26084_26275 = out_read_cond_FU_33_i0_fu_bsort100_26084_26275;
  assign OUT_MULTIIF_bsort100_26084_26452 = out_multi_read_cond_FU_29_i0_fu_bsort100_26084_26452;
  assign OUT_MULTIIF_bsort100_26084_26462 = out_multi_read_cond_FU_47_i0_fu_bsort100_26084_26462;

endmodule

// FSM based controller description for bsort100
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_bsort100(done_port, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_LOAD, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_STORE, selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_0, selector_MUX_105_reg_2_0_0_0, selector_MUX_106_reg_20_0_0_0, selector_MUX_107_reg_3_0_0_0, selector_MUX_111_reg_7_0_0_0, selector_MUX_111_reg_7_0_0_1, selector_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_0, selector_MUX_93_reg_0_0_0_0, selector_MUX_94_reg_1_0_0_0, selector_MUX_94_reg_1_0_0_1, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_17, wrenable_reg_18, wrenable_reg_19, wrenable_reg_2, wrenable_reg_20, wrenable_reg_3, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_CONDITION_bsort100_26084_26275, OUT_MULTIIF_bsort100_26084_26452, OUT_MULTIIF_bsort100_26084_26462, clock, reset, start_port);
  // IN
  input OUT_CONDITION_bsort100_26084_26275;
  input [2:0] OUT_MULTIIF_bsort100_26084_26452;
  input OUT_MULTIIF_bsort100_26084_26462;
  input clock;
  input reset;
  input start_port;
  // OUT
  output done_port;
  output fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD;
  output fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE;
  output fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_LOAD;
  output fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_STORE;
  output selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_0;
  output selector_MUX_105_reg_2_0_0_0;
  output selector_MUX_106_reg_20_0_0_0;
  output selector_MUX_107_reg_3_0_0_0;
  output selector_MUX_111_reg_7_0_0_0;
  output selector_MUX_111_reg_7_0_0_1;
  output selector_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_0;
  output selector_MUX_93_reg_0_0_0_0;
  output selector_MUX_94_reg_1_0_0_0;
  output selector_MUX_94_reg_1_0_0_1;
  output wrenable_reg_0;
  output wrenable_reg_1;
  output wrenable_reg_10;
  output wrenable_reg_11;
  output wrenable_reg_12;
  output wrenable_reg_13;
  output wrenable_reg_14;
  output wrenable_reg_15;
  output wrenable_reg_16;
  output wrenable_reg_17;
  output wrenable_reg_18;
  output wrenable_reg_19;
  output wrenable_reg_2;
  output wrenable_reg_20;
  output wrenable_reg_3;
  output wrenable_reg_4;
  output wrenable_reg_5;
  output wrenable_reg_6;
  output wrenable_reg_7;
  output wrenable_reg_8;
  output wrenable_reg_9;
  parameter [9:0] S_0 = 10'b0000000001,
    S_1 = 10'b0000000010,
    S_2 = 10'b0000000100,
    S_3 = 10'b0000001000,
    S_9 = 10'b1000000000,
    S_4 = 10'b0000010000,
    S_5 = 10'b0000100000,
    S_6 = 10'b0001000000,
    S_7 = 10'b0010000000,
    S_8 = 10'b0100000000;
  reg [9:0] _present_state, _next_state;
  reg done_port;
  reg fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD;
  reg fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE;
  reg fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_LOAD;
  reg fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_STORE;
  reg selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_0;
  reg selector_MUX_105_reg_2_0_0_0;
  reg selector_MUX_106_reg_20_0_0_0;
  reg selector_MUX_107_reg_3_0_0_0;
  reg selector_MUX_111_reg_7_0_0_0;
  reg selector_MUX_111_reg_7_0_0_1;
  reg selector_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_0;
  reg selector_MUX_93_reg_0_0_0_0;
  reg selector_MUX_94_reg_1_0_0_0;
  reg selector_MUX_94_reg_1_0_0_1;
  reg wrenable_reg_0;
  reg wrenable_reg_1;
  reg wrenable_reg_10;
  reg wrenable_reg_11;
  reg wrenable_reg_12;
  reg wrenable_reg_13;
  reg wrenable_reg_14;
  reg wrenable_reg_15;
  reg wrenable_reg_16;
  reg wrenable_reg_17;
  reg wrenable_reg_18;
  reg wrenable_reg_19;
  reg wrenable_reg_2;
  reg wrenable_reg_20;
  reg wrenable_reg_3;
  reg wrenable_reg_4;
  reg wrenable_reg_5;
  reg wrenable_reg_6;
  reg wrenable_reg_7;
  reg wrenable_reg_8;
  reg wrenable_reg_9;
  
  always @(posedge clock)
    if (reset == 1'b0) _present_state <= S_0;
    else _present_state <= _next_state;
  
  always @(*)
  begin
    done_port = 1'b0;
    fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD = 1'b0;
    fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE = 1'b0;
    fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_LOAD = 1'b0;
    fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_STORE = 1'b0;
    selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_0 = 1'b0;
    selector_MUX_105_reg_2_0_0_0 = 1'b0;
    selector_MUX_106_reg_20_0_0_0 = 1'b0;
    selector_MUX_107_reg_3_0_0_0 = 1'b0;
    selector_MUX_111_reg_7_0_0_0 = 1'b0;
    selector_MUX_111_reg_7_0_0_1 = 1'b0;
    selector_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_0 = 1'b0;
    selector_MUX_93_reg_0_0_0_0 = 1'b0;
    selector_MUX_94_reg_1_0_0_0 = 1'b0;
    selector_MUX_94_reg_1_0_0_1 = 1'b0;
    wrenable_reg_0 = 1'b0;
    wrenable_reg_1 = 1'b0;
    wrenable_reg_10 = 1'b0;
    wrenable_reg_11 = 1'b0;
    wrenable_reg_12 = 1'b0;
    wrenable_reg_13 = 1'b0;
    wrenable_reg_14 = 1'b0;
    wrenable_reg_15 = 1'b0;
    wrenable_reg_16 = 1'b0;
    wrenable_reg_17 = 1'b0;
    wrenable_reg_18 = 1'b0;
    wrenable_reg_19 = 1'b0;
    wrenable_reg_2 = 1'b0;
    wrenable_reg_20 = 1'b0;
    wrenable_reg_3 = 1'b0;
    wrenable_reg_4 = 1'b0;
    wrenable_reg_5 = 1'b0;
    wrenable_reg_6 = 1'b0;
    wrenable_reg_7 = 1'b0;
    wrenable_reg_8 = 1'b0;
    wrenable_reg_9 = 1'b0;
    case (_present_state)
      S_0 :
        if(start_port == 1'b1)
        begin
          selector_MUX_93_reg_0_0_0_0 = 1'b1;
          selector_MUX_94_reg_1_0_0_1 = 1'b1;
          wrenable_reg_0 = 1'b1;
          wrenable_reg_1 = 1'b1;
          wrenable_reg_2 = 1'b1;
          wrenable_reg_20 = 1'b1;
          wrenable_reg_3 = 1'b1;
          wrenable_reg_4 = 1'b1;
          wrenable_reg_7 = 1'b1;
          _next_state = S_1;
        end
        else
        begin
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          _next_state = S_0;
        end
      S_1 :
        begin
          selector_MUX_111_reg_7_0_0_1 = 1'b1;
          wrenable_reg_10 = 1'b1;
          wrenable_reg_11 = 1'b1;
          wrenable_reg_12 = 1'b1;
          wrenable_reg_13 = 1'b1;
          wrenable_reg_14 = 1'b1;
          wrenable_reg_15 = 1'b1;
          wrenable_reg_16 = 1'b1;
          wrenable_reg_5 = 1'b1;
          wrenable_reg_6 = 1'b1;
          wrenable_reg_7 = 1'b1;
          wrenable_reg_8 = 1'b1;
          wrenable_reg_9 = 1'b1;
          _next_state = S_2;
        end
      S_2 :
        begin
          fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD = 1'b1;
          fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_LOAD = 1'b1;
          wrenable_reg_17 = 1'b1;
          wrenable_reg_18 = 1'b1;
          _next_state = S_3;
        end
      S_3 :
        begin
          wrenable_reg_1 = 1'b1;
          casez (OUT_MULTIIF_bsort100_26084_26452)
            3'b??1 :
              begin
                _next_state = S_4;
                wrenable_reg_1 = 1'b0;
              end
            3'b?10 :
              begin
                _next_state = S_1;
              end
            3'b100 :
              begin
                _next_state = S_9;
                done_port = 1'b1;
                wrenable_reg_1 = 1'b0;
              end
            default
              begin
                _next_state = S_7;
                wrenable_reg_1 = 1'b0;
              end
          endcase
        end
      S_9 :
        begin
          _next_state = S_0;
        end
      S_4 :
        begin
          fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD = 1'b1;
          selector_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_0 = 1'b1;
          wrenable_reg_19 = 1'b1;
          _next_state = S_5;
        end
      S_5 :
        begin
          fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE = 1'b1;
          selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_0 = 1'b1;
          _next_state = S_6;
        end
      S_6 :
        begin
          fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE = 1'b1;
          selector_MUX_106_reg_20_0_0_0 = 1'b1;
          selector_MUX_111_reg_7_0_0_0 = 1'b1;
          selector_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_0 = 1'b1;
          selector_MUX_94_reg_1_0_0_0 = 1'b1;
          wrenable_reg_0 = 1'b1;
          wrenable_reg_1 = 1'b1;
          wrenable_reg_20 = 1'b1;
          wrenable_reg_7 = 1'b1;
          if (OUT_CONDITION_bsort100_26084_26275 == 1'b1)
            begin
              _next_state = S_1;
            end
          else
            begin
              _next_state = S_7;
              selector_MUX_111_reg_7_0_0_0 = 1'b0;
              selector_MUX_94_reg_1_0_0_0 = 1'b0;
              wrenable_reg_0 = 1'b0;
              wrenable_reg_1 = 1'b0;
              wrenable_reg_7 = 1'b0;
            end
        end
      S_7 :
        begin
          selector_MUX_105_reg_2_0_0_0 = 1'b1;
          selector_MUX_107_reg_3_0_0_0 = 1'b1;
          selector_MUX_93_reg_0_0_0_0 = 1'b1;
          selector_MUX_94_reg_1_0_0_1 = 1'b1;
          wrenable_reg_0 = 1'b1;
          wrenable_reg_1 = 1'b1;
          wrenable_reg_2 = 1'b1;
          wrenable_reg_20 = 1'b1;
          wrenable_reg_3 = 1'b1;
          wrenable_reg_7 = 1'b1;
          casez (OUT_MULTIIF_bsort100_26084_26462)
            1'b1 :
              begin
                _next_state = S_1;
              end
            default
              begin
                _next_state = S_8;
                done_port = 1'b1;
                selector_MUX_105_reg_2_0_0_0 = 1'b0;
                selector_MUX_107_reg_3_0_0_0 = 1'b0;
                selector_MUX_93_reg_0_0_0_0 = 1'b0;
                selector_MUX_94_reg_1_0_0_1 = 1'b0;
                wrenable_reg_0 = 1'b0;
                wrenable_reg_1 = 1'b0;
                wrenable_reg_2 = 1'b0;
                wrenable_reg_20 = 1'b0;
                wrenable_reg_3 = 1'b0;
                wrenable_reg_7 = 1'b0;
              end
          endcase
        end
      S_8 :
        begin
          _next_state = S_0;
        end
      default :
        begin
          _next_state = S_0;
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
        end
    endcase
  end
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Marco Lattuada <marco.lattuada@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module flipflop_AR(clock, reset, in1, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1;
  // IN
  input clock;
  input reset;
  input in1;
  // OUT
  output out1;
  
  reg reg_out1 =0;
  assign out1 = reg_out1;
  always @(posedge clock )
    if (reset == 1'b0)
      reg_out1 <= {BITSIZE_out1{1'b0}};
    else
      reg_out1 <= in1;
endmodule

// Top component for bsort100
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module bsort100(clock, reset, start_port, done_port, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, S_data_ram_size, Sin_Rdata_ram, Sin_DataRdy, Sout_Rdata_ram, Sout_DataRdy);
  parameter MEM_var_26078_26084=32;
  // IN
  input clock;
  input reset;
  input start_port;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [13:0] S_addr_ram;
  input [127:0] S_Wdata_ram;
  input [13:0] S_data_ram_size;
  input [127:0] Sin_Rdata_ram;
  input [1:0] Sin_DataRdy;
  // OUT
  output done_port;
  output [127:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  // Component and signal declarations
  wire OUT_CONDITION_bsort100_26084_26275;
  wire [2:0] OUT_MULTIIF_bsort100_26084_26452;
  wire OUT_MULTIIF_bsort100_26084_26462;
  wire done_delayed_REG_signal_in;
  wire done_delayed_REG_signal_out;
  wire fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD;
  wire fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE;
  wire fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_LOAD;
  wire fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_STORE;
  wire selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_0;
  wire selector_MUX_105_reg_2_0_0_0;
  wire selector_MUX_106_reg_20_0_0_0;
  wire selector_MUX_107_reg_3_0_0_0;
  wire selector_MUX_111_reg_7_0_0_0;
  wire selector_MUX_111_reg_7_0_0_1;
  wire selector_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_0;
  wire selector_MUX_93_reg_0_0_0_0;
  wire selector_MUX_94_reg_1_0_0_0;
  wire selector_MUX_94_reg_1_0_0_1;
  wire wrenable_reg_0;
  wire wrenable_reg_1;
  wire wrenable_reg_10;
  wire wrenable_reg_11;
  wire wrenable_reg_12;
  wire wrenable_reg_13;
  wire wrenable_reg_14;
  wire wrenable_reg_15;
  wire wrenable_reg_16;
  wire wrenable_reg_17;
  wire wrenable_reg_18;
  wire wrenable_reg_19;
  wire wrenable_reg_2;
  wire wrenable_reg_20;
  wire wrenable_reg_3;
  wire wrenable_reg_4;
  wire wrenable_reg_5;
  wire wrenable_reg_6;
  wire wrenable_reg_7;
  wire wrenable_reg_8;
  wire wrenable_reg_9;
  
  controller_bsort100 Controller_i (.done_port(done_delayed_REG_signal_in), .fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD(fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD), .fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE(fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE), .fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_LOAD(fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_LOAD), .fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_STORE(fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_STORE), .selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_0(selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_0), .selector_MUX_105_reg_2_0_0_0(selector_MUX_105_reg_2_0_0_0), .selector_MUX_106_reg_20_0_0_0(selector_MUX_106_reg_20_0_0_0), .selector_MUX_107_reg_3_0_0_0(selector_MUX_107_reg_3_0_0_0), .selector_MUX_111_reg_7_0_0_0(selector_MUX_111_reg_7_0_0_0), .selector_MUX_111_reg_7_0_0_1(selector_MUX_111_reg_7_0_0_1), .selector_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_0(selector_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_0), .selector_MUX_93_reg_0_0_0_0(selector_MUX_93_reg_0_0_0_0), .selector_MUX_94_reg_1_0_0_0(selector_MUX_94_reg_1_0_0_0), .selector_MUX_94_reg_1_0_0_1(selector_MUX_94_reg_1_0_0_1), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_17(wrenable_reg_17), .wrenable_reg_18(wrenable_reg_18), .wrenable_reg_19(wrenable_reg_19), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_20(wrenable_reg_20), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9), .OUT_CONDITION_bsort100_26084_26275(OUT_CONDITION_bsort100_26084_26275), .OUT_MULTIIF_bsort100_26084_26452(OUT_MULTIIF_bsort100_26084_26452), .OUT_MULTIIF_bsort100_26084_26462(OUT_MULTIIF_bsort100_26084_26462), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_bsort100 #(.MEM_var_26078_26084(MEM_var_26078_26084)) Datapath_i (.Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .OUT_CONDITION_bsort100_26084_26275(OUT_CONDITION_bsort100_26084_26275), .OUT_MULTIIF_bsort100_26084_26452(OUT_MULTIIF_bsort100_26084_26452), .OUT_MULTIIF_bsort100_26084_26462(OUT_MULTIIF_bsort100_26084_26462), .clock(clock), .reset(reset), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_Rdata_ram(Sin_Rdata_ram), .Sin_DataRdy(Sin_DataRdy), .fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD(fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD), .fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE(fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE), .fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_LOAD(fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_LOAD), .fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_STORE(fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_STORE), .selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_0(selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_0), .selector_MUX_105_reg_2_0_0_0(selector_MUX_105_reg_2_0_0_0), .selector_MUX_106_reg_20_0_0_0(selector_MUX_106_reg_20_0_0_0), .selector_MUX_107_reg_3_0_0_0(selector_MUX_107_reg_3_0_0_0), .selector_MUX_111_reg_7_0_0_0(selector_MUX_111_reg_7_0_0_0), .selector_MUX_111_reg_7_0_0_1(selector_MUX_111_reg_7_0_0_1), .selector_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_0(selector_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_0), .selector_MUX_93_reg_0_0_0_0(selector_MUX_93_reg_0_0_0_0), .selector_MUX_94_reg_1_0_0_0(selector_MUX_94_reg_1_0_0_0), .selector_MUX_94_reg_1_0_0_1(selector_MUX_94_reg_1_0_0_1), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_17(wrenable_reg_17), .wrenable_reg_18(wrenable_reg_18), .wrenable_reg_19(wrenable_reg_19), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_20(wrenable_reg_20), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9));
  flipflop_AR #(.BITSIZE_in1(1), .BITSIZE_out1(1)) done_delayed_REG (.out1(done_delayed_REG_signal_out), .clock(clock), .reset(reset), .in1(done_delayed_REG_signal_in));
  // io-signal post fix
  assign done_port = done_delayed_REG_signal_out;

endmodule

// Datapath RTL description for main
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module datapath_main(clock, reset, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, S_data_ram_size, Sin_Rdata_ram, Sin_DataRdy, Sout_Rdata_ram, Sout_DataRdy, selector_IN_UNBOUNDED_main_26085_26289, OUT_UNBOUNDED_main_26085_26289);
  parameter MEM_var_26078_26084=32;
  // IN
  input clock;
  input reset;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [13:0] S_addr_ram;
  input [127:0] S_Wdata_ram;
  input [13:0] S_data_ram_size;
  input [127:0] Sin_Rdata_ram;
  input [1:0] Sin_DataRdy;
  input selector_IN_UNBOUNDED_main_26085_26289;
  // OUT
  output [127:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  output OUT_UNBOUNDED_main_26085_26289;
  // Component and signal declarations
  wire s_done_fu_main_26085_26289;
  wire [1:0] sig_in_bus_mergerSout_DataRdy0_0;
  wire [127:0] sig_in_bus_mergerSout_Rdata_ram1_0;
  wire [1:0] sig_in_vector_bus_mergerSout_DataRdy0_0;
  wire [127:0] sig_in_vector_bus_mergerSout_Rdata_ram1_0;
  wire [1:0] sig_out_bus_mergerSout_DataRdy0_;
  wire [127:0] sig_out_bus_mergerSout_Rdata_ram1_;
  
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerSout_DataRdy0_ (.out1(sig_out_bus_mergerSout_DataRdy0_), .in1({sig_in_bus_mergerSout_DataRdy0_0}));
  bus_merger #(.BITSIZE_in1(128), .PORTSIZE_in1(1), .BITSIZE_out1(128)) bus_mergerSout_Rdata_ram1_ (.out1(sig_out_bus_mergerSout_Rdata_ram1_), .in1({sig_in_bus_mergerSout_Rdata_ram1_0}));
  bsort100 #(.MEM_var_26078_26084(MEM_var_26078_26084)) fu_main_26085_26289 (.done_port(s_done_fu_main_26085_26289), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram1_0), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy0_0), .clock(clock), .reset(reset), .start_port(selector_IN_UNBOUNDED_main_26085_26289), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_Rdata_ram(Sin_Rdata_ram), .Sin_DataRdy(Sin_DataRdy));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerSout_DataRdy0_0 (.out1(sig_in_bus_mergerSout_DataRdy0_0), .in1(sig_in_vector_bus_mergerSout_DataRdy0_0));
  join_signal #(.BITSIZE_in1(64), .PORTSIZE_in1(2), .BITSIZE_out1(128)) join_signalbus_mergerSout_Rdata_ram1_0 (.out1(sig_in_bus_mergerSout_Rdata_ram1_0), .in1(sig_in_vector_bus_mergerSout_Rdata_ram1_0));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerSout_DataRdy0_ (.out1(Sout_DataRdy), .in1(sig_out_bus_mergerSout_DataRdy0_));
  split_signal #(.BITSIZE_in1(128), .BITSIZE_out1(64), .PORTSIZE_out1(2)) split_signalbus_mergerSout_Rdata_ram1_ (.out1(Sout_Rdata_ram), .in1(sig_out_bus_mergerSout_Rdata_ram1_));
  // io-signal post fix
  assign OUT_UNBOUNDED_main_26085_26289 = s_done_fu_main_26085_26289;

endmodule

// FSM based controller description for main
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_main(done_port, selector_IN_UNBOUNDED_main_26085_26289, OUT_UNBOUNDED_main_26085_26289, clock, reset, start_port);
  // IN
  input OUT_UNBOUNDED_main_26085_26289;
  input clock;
  input reset;
  input start_port;
  // OUT
  output done_port;
  output selector_IN_UNBOUNDED_main_26085_26289;
  parameter [2:0] S_0 = 3'b001,
    S_1 = 3'b010,
    S_2 = 3'b100;
  reg [2:0] _present_state, _next_state;
  reg done_port;
  reg selector_IN_UNBOUNDED_main_26085_26289;
  
  always @(posedge clock)
    if (reset == 1'b0) _present_state <= S_0;
    else _present_state <= _next_state;
  
  always @(*)
  begin
    done_port = 1'b0;
    selector_IN_UNBOUNDED_main_26085_26289 = 1'b0;
    case (_present_state)
      S_0 :
        if(start_port == 1'b1)
        begin
          selector_IN_UNBOUNDED_main_26085_26289 = 1'b1;
          if (OUT_UNBOUNDED_main_26085_26289 == 1'b0)
            begin
              _next_state = S_1;
            end
          else
            begin
              _next_state = S_2;
              done_port = 1'b1;
            end
        end
        else
        begin
          _next_state = S_0;
        end
      S_1 :
        begin
          if (OUT_UNBOUNDED_main_26085_26289 == 1'b0)
            begin
              _next_state = S_1;
            end
          else
            begin
              _next_state = S_2;
              done_port = 1'b1;
            end
        end
      S_2 :
        begin
          _next_state = S_0;
        end
      default :
        begin
          _next_state = S_0;
        end
    endcase
  end
endmodule

// Top component for main
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module _main(clock, reset, start_port, done_port, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, S_data_ram_size, Sin_Rdata_ram, Sin_DataRdy, Sout_Rdata_ram, Sout_DataRdy);
  parameter MEM_var_26078_26084=32;
  // IN
  input clock;
  input reset;
  input start_port;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [13:0] S_addr_ram;
  input [127:0] S_Wdata_ram;
  input [13:0] S_data_ram_size;
  input [127:0] Sin_Rdata_ram;
  input [1:0] Sin_DataRdy;
  // OUT
  output done_port;
  output [127:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  // Component and signal declarations
  wire OUT_UNBOUNDED_main_26085_26289;
  wire done_delayed_REG_signal_in;
  wire done_delayed_REG_signal_out;
  wire selector_IN_UNBOUNDED_main_26085_26289;
  
  controller_main Controller_i (.done_port(done_delayed_REG_signal_in), .selector_IN_UNBOUNDED_main_26085_26289(selector_IN_UNBOUNDED_main_26085_26289), .OUT_UNBOUNDED_main_26085_26289(OUT_UNBOUNDED_main_26085_26289), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_main #(.MEM_var_26078_26084(MEM_var_26078_26084)) Datapath_i (.Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .OUT_UNBOUNDED_main_26085_26289(OUT_UNBOUNDED_main_26085_26289), .clock(clock), .reset(reset), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_Rdata_ram(Sin_Rdata_ram), .Sin_DataRdy(Sin_DataRdy), .selector_IN_UNBOUNDED_main_26085_26289(selector_IN_UNBOUNDED_main_26085_26289));
  flipflop_AR #(.BITSIZE_in1(1), .BITSIZE_out1(1)) done_delayed_REG (.out1(done_delayed_REG_signal_out), .clock(clock), .reset(reset), .in1(done_delayed_REG_signal_in));
  // io-signal post fix
  assign done_port = done_delayed_REG_signal_out;

endmodule

// Minimal interface for function: main
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module main(clock, reset, start_port, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, S_data_ram_size, done_port, Sout_Rdata_ram, Sout_DataRdy);
  parameter MEM_var_26078_26084=32;
  // IN
  input clock;
  input reset;
  input start_port;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [13:0] S_addr_ram;
  input [127:0] S_Wdata_ram;
  input [13:0] S_data_ram_size;
  // OUT
  output done_port;
  output [127:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  // Component and signal declarations
  
  _main #(.MEM_var_26078_26084(MEM_var_26078_26084)) _main_i0 (.done_port(done_port), .Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .clock(clock), .reset(reset), .start_port(start_port), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_Rdata_ram({64'b0000000000000000000000000000000000000000000000000000000000000000, 64'b0000000000000000000000000000000000000000000000000000000000000000}), .Sin_DataRdy({1'b0, 1'b0}));

endmodule

