`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/28/2025 09:58:33 AM
// Design Name: 
// Module Name: generic_encoder_tb
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


module generic_encoder_tb;

    parameter N = 8;
    reg [N-1:0] I_i;
    wire [$clog2(N)-1:0] O_o;
    
    generic_encoder #(.N(N)) enc(
        
        .I_i(I_i),
        .O_o(O_o)
   
    );
    
    
    initial begin
    
        I_i = 8'b00000001;
        #5;
        
        I_i = 8'b00000010;
        #5;
        
        I_i = 8'b00000100;
        #5;
        
        I_i = 8'b00001000;
        #5;
        
        I_i = 8'b00010000;
        #5;
        
        I_i = 8'b00100000;
        #5;
        
        I_i = 8'b01000000;
        #5;
        
        I_i = 8'b10000000;
        #5;
        $finish;
    
 
    end
    
endmodule
