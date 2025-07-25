`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/25/2025 04:59:04 PM
// Design Name: 
// Module Name: decoder2x4_wEn
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


module decoder2x4_wEn(

    input [1:0] I_i,
    output [3:0] O_o,
    input En

    );
    
    reg [3:0] O_reg;
    
    localparam En0 = 1'b0;
    localparam En1 = 1'b1;
    
    localparam I0 = 2'b00;
    localparam I1 = 2'b01;
    localparam I2 = 2'b10;
    localparam I3 = 2'b11;
    
    
    always @(*) begin
    
        case(En)
        
            En1: begin
                case(I_i)
                    I0: begin
                        O_reg = 4'b0001;               
                    end
                    I1: begin
                        O_reg = 4'b0010;               
                    end
                    I2: begin
                        O_reg = 4'b0100;               
                    end
                    I3: begin
                        O_reg = 4'b1000;               
                    end
                    default: begin
                        O_reg = 4'b0000;               
                    end
                endcase 
            end    
                 
            En0: begin
                O_reg = 4'b0000;
            end
            default : begin
                O_reg = 4'b0000;
            end
        endcase
    end
    
    
    assign O_o = O_reg;
endmodule
