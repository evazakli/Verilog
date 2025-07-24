`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/23/2025 04:37:57 PM
// Design Name: 
// Module Name: half_adder
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


module half_adder(

    input I0,I1,
    output S_o, C_o
    );
    reg S, C;
    always @(*) begin
        
        S = I0 ^ I1;
        C = I0 & I1;
   
    end
    
    
    
    assign S_o = S;
    assign C_o = C; 
    
endmodule
