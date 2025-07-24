`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/23/2025 01:21:55 PM
// Design Name: 
// Module Name: full_adder
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


module full_adder(

    input A, B, C_in,
    output Sum_o, C_o
    );
    
    wire Sum_1, C_1, C_2;
    
    
    half_adder dut0(
    
        .I0_i(A),
        .I1_i(B),     
        .C_o(C_1),
        .Sum_o(Sum_1)
    
    );
    
    half_adder dut1(
    
        .I0_i(Sum_1),
        .I1_i(C_in),     
        .C_o(C_2),
        .Sum_o(Sum_o)
    
    );
    
    assign C_o = C_1 | C_2;


endmodule
