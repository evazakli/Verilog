`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/28/2025 10:32:54 AM
// Design Name: 
// Module Name: bcd_to_7segment_display
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


module bcd_to_7segment_display(
    
    input [3:0] I_i,
    output [6:0] O_o
    );
    
    reg [6:0] O_reg; 
    
    always @(*) begin
    
        case(I_i)
            
            4'b0000: begin               
                O_reg = 7'b1111110;            
            end
            4'b0001: begin               
                O_reg = 7'b0110000;            
            end
            4'b0010: begin               
                O_reg = 7'b1101101;            
            end
            4'b0011: begin               
                O_reg = 7'b1111001;            
            end
            4'b0100: begin               
                O_reg = 7'b0110011;            
            end
            4'b0101: begin               
                O_reg = 7'b1011011;            
            end
            4'b0110: begin               
                O_reg = 7'b1011111;            
            end
            4'b0111: begin               
                O_reg = 7'b1110000;            
            end
            4'b1000: begin               
                O_reg = 7'b1111111;            
            end
            4'b1001: begin               
                O_reg = 7'b1111011;            
            end
            
            default: begin
                O_reg = 7'b0;
            end

        endcase
    
    end

    assign O_o = O_reg;
    
endmodule
