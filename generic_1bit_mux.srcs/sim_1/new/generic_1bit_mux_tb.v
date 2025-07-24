`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/24/2025 05:17:56 PM
// Design Name: 
// Module Name: generic_1bit_mux_tb
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


module generic_1bit_mux_tb;

    parameter N = 4;
    reg [N-1:0] I_i;
    reg [$clog2(N)-1:0] S_i;
    wire O_o;
    
    generic_1bit_mux #(.N(N)) uut(
    
        .I_i(I_i),
        .S_i(S_i),
        .O_o(O_o)
    
    );
    
    initial begin 
    
        I_i = 4'b1010;
        S_i = 2'b00;
        #5;
        I_i = 4'b0101;
        S_i = 2'b01;
        #5;
        I_i = 4'b0011;
        S_i = 2'b10;
        #5;
        I_i = 4'b1111;
        S_i = 2'b11;
        #5;
        I_i = 4'b1110;
        S_i = 2'b00;
        #5;
        I_i = 4'b1000;
        S_i = 2'b11;
        #5;
        I_i = 4'b0100;
        S_i = 2'b10;
        #5;
        $finish;

    end 
    

 
endmodule
