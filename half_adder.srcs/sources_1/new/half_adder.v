`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/23/2025 10:58:12 AM
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
    
    input I0_i, I1_i,     
    output C_o, Sum_o

    );
    
    reg Sum, C;
    
    always @(*) begin
    
        Sum = I0_i ^ I1_i;
        C   = I0_i & I1_i;
        
    end
    
    assign Sum_o = Sum;
    assign C_o   = C;

endmodule
