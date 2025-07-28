`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/28/2025 04:48:32 PM
// Design Name: 
// Module Name: bir_bit_sayici
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


module bir_bit_sayici(

    input [3:0] I_i,
    output [2:0] O_o 
    );
    
    wire carry10;
    wire sum10;
    wire carry11;
    wire sum11;
    wire carry_in = 1'b0;
    wire carry_F;
    
    half_adder ha1(
    
        .I_i(I_i[3:2]),
        .sum_o(sum10),  
        .carry_o(carry10) 
    
    );
    
    half_adder ha2(
    
        .I_i(I_i[1:0]),
        .sum_o(sum11),  
        .carry_o(carry11) 
    
    );
    
    full_adder fa1(
    
        .I_i({sum10,sum11}),
        .sum_o(O_o[0]),  
        .carry_i(carry_in),
        .carry_o(carry_F)
    
    );
    
        full_adder fa2(
    
        .I_i({carry10,carry11}),
        .sum_o(O_o[1]),  
        .carry_i(carry_F),
        .carry_o(O_o[2])
    
    );
    
    
endmodule
