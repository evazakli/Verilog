`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/28/2025 04:56:53 PM
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
    input[1:0] I_i,
    input carry_i,
    output sum_o,
    output carry_o
    );
    
    wire hf1_sum;
    wire hf1_carry;
    wire hf2_carry;
    
    
    half_adder hf1(
        .I_i(I_i),
        .sum_o(hf1_sum),
        .carry_o(hf1_carry)
    );
    
    half_adder hf2(
        .I_i({hf1_sum,carry_i}),
        .sum_o(sum_o),
        .carry_o(hf2_carry)
    );
    
    or (carry_o, hf1_carry, hf2_carry  );
    
  
endmodule
