`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/23/2025 11:05:35 AM
// Design Name: 
// Module Name: half_adder_tb
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


module half_adder_tb;

    reg  I0_i, I1_i;
    wire Sum_o, C_o;
    
    
    half_adder dut(
        
        .I0_i(I0_i),
        .I1_i(I1_i),
        .Sum_o(Sum_o),
        .C_o(C_o)

    );
    
    
    initial begin
        I0_i = 0; I1_i = 0;
        #5;
        I0_i = 0; I1_i = 1;
        #5;
        I0_i = 1; I1_i = 0;
        #5;
        I0_i = 1; I1_i = 1;
        #5
        $finish;
    end

   
endmodule
