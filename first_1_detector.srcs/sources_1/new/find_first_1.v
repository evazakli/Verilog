`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/30/2025 10:59:07 AM
// Design Name: 
// Module Name: find_first_1
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


module find_first_1(
        
        input [3:0] I,
        output [2:0] O
     
    );
    
    wire not_I0;
    wire not_I1;
    wire not_I2;
    wire not_I3;
    
    not(not_I0, I[0]);
    not(not_I1, I[1]);
    not(not_I2, I[2]);
    not(not_I3, I[3]);
    
    // O[2]
    and(O[2], not_I2, not_I1, not_I0);
    
    // O[1]
    wire O11, O12;
    and(O11, not_I3, not_I1, not_I0);
    and(O12, I[2], not_I1, not_I0);
    or(O[1], O11, O12);
    
    // O[0]
    wire O01, O02;
    and(O01, not_I3, not_I2, not_I0);
    and(O02, I[1], not_I0);
    or(O[0], O01, O02);
    
    

endmodule



