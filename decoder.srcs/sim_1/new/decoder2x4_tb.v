`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/25/2025 04:33:41 PM
// Design Name: 
// Module Name: decoder2x4_tb
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


module decoder2x4_tb;

    reg [1:0] I_i;
    wire [3:0] O_o;
    
    
    decoder2x4 uut(
        .I_i(I_i),
        .O_o(O_o)
    );
    
    initial begin
    
        I_i = 00;
        #5;
        I_i = 01;
        #5;
        I_i = 10;
        #5;
        I_i = 11;
        #5;
        $finish;
        
    end
    
     
endmodule
