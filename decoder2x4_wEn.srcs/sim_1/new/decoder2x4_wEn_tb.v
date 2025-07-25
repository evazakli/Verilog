`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/25/2025 05:07:22 PM
// Design Name: 
// Module Name: decoder2x4_wEn_tb
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


module decoder2x4_wEn_tb;

    reg [1:0] I_i;
    wire [3:0] O_o;
    reg En;

    decoder2x4_wEn uut(
    
        .I_i(I_i),
        .O_o(O_o),
        .En(En)
 
    );
    
    initial begin
    
        I_i = 2'b00;
        En = 1'b0;
        #5;
        I_i = 2'b00;
        En = 1'b1;
        #5;
        I_i = 2'b01;
        En = 1'b0;
        #5;
        I_i = 2'b01;
        En = 1'b1;
        #5;
        I_i = 2'b10;
        En = 1'b0;
        #5;
        I_i = 2'b10;
        En = 1'b1;
        #5;
        I_i = 2'b11;
        En = 1'b0;
        #5;
        I_i = 2'b11;
        En = 1'b1;
        #5;
        $finish;

  
    end
    






endmodule
