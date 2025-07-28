`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/28/2025 08:46:35 AM
// Design Name: 
// Module Name: generic_decoder_tb
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


module generic_decoder_tb;

    parameter N = 4;
    reg [3:0] I_i;
    reg En;
    wire [15:0] O_o;
    
    generic_decoder #(.N(N)) dut0(
    
        .I_i(I_i),
        .En(En),
        .O_o(O_o)
       
    );
    
    initial begin
    
    
    I_i = 4'b0000;
    En = 1'b0;
    #5;
    
    I_i = 4'b0000;
    En = 1'b1;
    #5;
     
    I_i = 4'b0001;
    En = 1'b1;
    #5;
    
    I_i = 4'b0010;
    En = 1'b1;
    #5;
    
    I_i = 4'b0011;
    En = 1'b1;
    #5;
    
    I_i = 4'b0100;
    En = 1'b1;
    #5;
    
    I_i = 4'b0101;
    En = 1'b1;
    #5;
    
    I_i = 4'b0110;
    En = 1'b1;
    #5;
    
    I_i = 4'b0111;
    En = 1'b1;
    #5;
    
    I_i = 4'b1000;
    En = 1'b1;
    #5;
    
    I_i = 4'b1001;
    En = 1'b1;
    #5;
    
    I_i = 4'b1010;
    En = 1'b1;
    #5;
    
    I_i = 4'b1011;
    En = 1'b1;
    #5;
    
    I_i = 4'b1100;
    En = 1'b1;
    #5;
    
    I_i = 4'b1101;
    En = 1'b1;
    #5;
    
    I_i = 4'b1110;
    En = 1'b1;
    #5;
    
    I_i = 4'b1111;
    En = 1'b1;
    #5;
    
    $finish;
    
    end
    
    
endmodule
