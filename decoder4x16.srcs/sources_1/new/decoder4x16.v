`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/26/2025 12:06:02 PM
// Design Name: 
// Module Name: decoder4x16
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


module decoder4x16(

    input [3:0] I_i,
    input En,
    output [15:0] O_o

    );
    
    wire [3:0] En_w;
    
    decoder2x4_wEn dec0(
    
    
        .I_i(I_i[3:2]),
        .O_o(En_w),
        .En(En)
    
    );
    
    decoder2x4_wEn dec1(
    
    
        .I_i(I_i[1:0]),
        .O_o(O_o[3:0]),
        .En(En_w[0])
    
    );
    
    decoder2x4_wEn dec2(
    
    
        .I_i(I_i[1:0]),
        .O_o(O_o[7:4]),
        .En(En_w[1])
    
    );
    
    decoder2x4_wEn dec3(
    
    
        .I_i(I_i[1:0]),
        .O_o(O_o[11:8]),
        .En(En_w[2])
    
    );
    
    decoder2x4_wEn dec4(
    
    
        .I_i(I_i[1:0]),
        .O_o(O_o[15:12]),
        .En(En_w[3])
    
    );
    
   
endmodule
