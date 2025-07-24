`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/24/2025 02:24:03 PM
// Design Name: 
// Module Name: adder_subtractor_nbit
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


module adder_subtractor_nbit
    #(parameter N=8)
    (

    input [N-1:0] I0, I1,
    input add_sub_controller,
    output [N-1:0] S_o,
    output C_o,
    output overflow
   
    );
    
    wire [N-1:0] I0_Controlled;
    
    assign I0_Controlled = I0 ^ {N{add_sub_controller}};
    
    n_bit_ripple_carry_adder #(.N(N)) dut0(
    
        .I0(I0_Controlled),
        .I1(I1),
        .S_o(S_o),
        .C_o(C_o),
        .C_i(add_sub_controller)
        
    );
    
    assign overflow = (I1[N-1] & I0_Controlled[N-1] & ~S_o[N-1]) | (~I1[N-1] & ~I0_Controlled[N-1] & S_o[N-1]); 
    
    
    
endmodule
