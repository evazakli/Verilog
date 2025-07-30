`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/30/2025 11:01:11 AM
// Design Name: 
// Module Name: find_first_1_tb
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


module find_first_1_tb;

    reg [3:0] I;
    wire [2:0] O;
    
    find_first_1 tb(
    
        .I(I),
        .O(O)
   
    );
    
    initial begin
        
        I = 4'b0000;
        #5;
        I = 4'b0001;
        #5;
        I = 4'b0010;
        #5;
        I = 4'b0011;
        #5;
        I = 4'b0100;
        #5;
        I = 4'b0101;
        #5;
        I = 4'b0110;
        #5;
        I = 4'b0111;
        #5;
        I = 4'b1000;
        #5;
        I = 4'b1001;
        #5;
        I = 4'b1010;
        #5;
        I = 4'b1011;
        #5;
        I = 4'b1100;
        #5;
        I = 4'b1101;
        #5;
        I = 4'b1110;
        #5;
        I = 4'b1111;
        #5;
        $finish;
    
    end
    
endmodule
