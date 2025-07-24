`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/22/2025 04:01:36 PM
// Design Name: 
// Module Name: mux_2x1
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


module mux_2x1(
    input A_i,
    input B_i,
    input S_i,
    output OUT_o
    );
    
    
    reg OUT_reg;
    
    always @(*) begin
    
        if(S_i == 1'b1) begin
            OUT_reg = B_i;
        end
        else begin
            OUT_reg = A_i;
        end
    end
    
assign OUT_o = OUT_reg;
  

endmodule
