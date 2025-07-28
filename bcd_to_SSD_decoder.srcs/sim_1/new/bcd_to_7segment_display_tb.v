`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/28/2025 10:54:18 AM
// Design Name: 
// Module Name: bcd_to_7segment_display_tb
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


module bcd_to_SSD_decoder_tb;

    reg [3:0] I_i;
    wire [6:0] O_o;
    
    
    
    bcd_to_7segment_display tb(
    
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
        $finish;
    end

endmodule
