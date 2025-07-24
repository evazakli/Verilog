`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/23/2025 09:38:39 AM
// Design Name: 
// Module Name: multiplexer4x1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module multiplexer4x1(
    input I0_i, I1_i, IA_i, IB_i, S0_i, S1_i,
    output Out_o
    );
    
    wire mux0_o, mux1_o;
    
    multiplexer2x1 dut0 ( 
    .A_i(I0_i),
    .B_i(I1_i),
    .S_i(S0_i),
    .O_o(muxO_o)
    );
    
    multiplexer2x1 dut1 ( 
    .A_i(IA_i),
    .B_i(IB_i),
    .S_i(S0_i),
    .O_o(mux1_o)
    );
    
    multiplexer2x1 dut3 ( 
    .A_i(muxO_o),
    .B_i(mux1_o),
    .S_i(S1_i),
    .O_o(Out_o)
    );
    
  
endmodule
