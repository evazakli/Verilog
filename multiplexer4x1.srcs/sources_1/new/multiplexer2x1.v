`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/23/2025 09:33:49 AM
// Design Name: 
// Module Name: multiplexer2x1
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


module multiplexer2x1(
    input A_i, B_i, S_i,
    output O_o
    );
    reg O_reg;
    
    
    always @(*) begin
        
        if(S_i == 1'b1) begin  
            O_reg =  B_i;
        end
        else begin 
            O_reg =  A_i;
        end
   
    end
    
assign O_o = O_reg;

endmodule
