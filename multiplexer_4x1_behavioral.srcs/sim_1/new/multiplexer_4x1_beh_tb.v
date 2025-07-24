`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/24/2025 04:22:29 PM
// Design Name: 
// Module Name: multiplexer_4x1_beh_tb
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


module multiplexer_4x1_beh_tb;

       parameter N=4;
       reg [N-1:0] I0,I1,I2,I3;
       reg S0,S1;
       wire [N-1:0] S_o;
       
       
       multiplexer_4x1_beh #(.N(N)) uut(
        
            .I0(I0),
            .I1(I1),
            .I2(I2),
            .I3(I3),
            .S0(S0),
            .S1(S1),
            .S_o(S_o)
  
       );
       
       initial begin
       
            I0 = 4'b1101;
            I1 = 4'b1111;
            I2 = 4'b0011;
            I3 = 4'b0101;
            S0 = 0; S1 = 0;
            #5;
            
            I0 = 4'b1101;
            I1 = 4'b1111;
            I2 = 4'b0011;
            I3 = 4'b0101;
            S0 = 0; S1 = 1;
            #5;
            
            I0 = 4'b1101;
            I1 = 4'b1111;
            I2 = 4'b0011;
            I3 = 4'b0101;
            S0 = 1; S1 = 0;
            #5;
            
            I0 = 4'b1101;
            I1 = 4'b1111;
            I2 = 4'b0011;
            I3 = 4'b0101;
            S0 = 1; S1 = 1;
            #5;
            $finish;
         
       end
       

endmodule
