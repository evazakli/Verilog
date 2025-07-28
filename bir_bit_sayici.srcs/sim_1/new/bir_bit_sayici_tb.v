`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/28/2025 08:28:54 PM
// Design Name: 
// Module Name: bir_bit_sayici_tb
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


module bir_bit_sayici_tb;

    reg [3:0] I_i;
    wire [2:0] O_o;
    
    bir_bit_sayici tb(
    
        .I_i(I_i),
        .O_o(O_o)
   
    );
    
    initial begin
        
        I_i = 4'b0000;
        #5;
        I_i = 4'b0001;
        #5;
        I_i = 4'b0010;
        #5;
        I_i = 4'b0011;
        #5;
        I_i = 4'b0100;
        #5;
        I_i = 4'b0101;
        #5;
        I_i = 4'b0110;
        #5;
        I_i = 4'b0111;
        #5;
        I_i = 4'b1000;
        #5;
        I_i = 4'b1001;
        #5;
        I_i = 4'b1010;
        #5;
        I_i = 4'b1011;
        #5;
        I_i = 4'b1100;
        #5;
        I_i = 4'b1101;
        #5;
        I_i = 4'b1110;
        #5;
        I_i = 4'b1111;
        #5;
        $finish;
    
    end
    
endmodule
