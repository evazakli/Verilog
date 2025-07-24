`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/24/2025 03:58:50 PM
// Design Name: 
// Module Name: multiplexer_4x1_beh
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


module multiplexer_4x1_beh
    #(parameter N = 4)
    (
       input [N-1:0] I0,I1,I2,I3,
       input S0,S1,
       output [N-1:0] S_o
    );
    
    reg [N-1:0] S_o_reg;
    
    
    localparam S_0 = 2'b00;
    localparam S_1= 2'b01;
    localparam S_2 = 2'b10;
    localparam S_3 = 2'b11;
    
  
    always @(*) begin
    
    
        case({S1,S0})
        
            S_0: begin
                S_o_reg = I0;
            end
            S_1: begin
                S_o_reg = I1;
            end
            S_2: begin
                S_o_reg = I2;
            end
            S_3: begin
                S_o_reg = I3;
            end
                             
        endcase
     
    end
    assign S_o = S_o_reg;
    
endmodule
