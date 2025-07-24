`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/23/2025 11:47:23 AM
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb;

    reg A, B, C_in;
    wire Sum_o, C_o;
    
    
    full_adder dut(
    
        .A(A),
        .B(B),
        .C_in(C_in),
        .Sum_o(Sum_o),
        .C_o(C_o)
 
    );
    
    initial begin
    
        A = 0; B = 0; C_in = 0;
        #5; 
        A = 0; B = 0; C_in = 1;
        #5; 
        A = 0; B = 1; C_in = 0;
        #5; 
        A = 0; B = 1; C_in = 1;
        #5; 
        A = 1; B = 0; C_in = 0;
        #5; 
        A = 1; B = 0; C_in = 1;
        #5; 
        A = 1; B = 1; C_in = 0;
        #5; 
        A = 1; B = 1; C_in = 1;
        #5; 
        $finish;
 
    end
    

    
endmodule
