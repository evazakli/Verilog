`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/23/2025 01:08:57 PM
// Design Name: 
// Module Name: ripple_carry_adder_4bit
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


module ripple_carry_adder_4bit(

    input[3:0] A,
    input[3:0] B, 
    input C_i,
    output[3:0] S,
    output C_o
    );
    
    wire C1, C2, C3;
    
    full_adder dut0(
        .A(A[0]),
        .B(B[0]),
        .C_in(C_i),
        .Sum_o(S[0]), 
        .C_o(C1)
    );
    
        full_adder dut1(
        .A(A[1]),
        .B(B[1]),
        .C_in(C1),
        .Sum_o(S[1]), 
        .C_o(C2)
    );
    
        full_adder dut2(
        .A(A[2]),
        .B(B[2]),
        .C_in(C2),
        .Sum_o(S[2]), 
        .C_o(C3)
    );
    
        full_adder dut3(
        .A(A[3]),
        .B(B[3]),
        .C_in(C3),
        .Sum_o(S[3]), 
        .C_o(C_o)
    );
    

endmodule
