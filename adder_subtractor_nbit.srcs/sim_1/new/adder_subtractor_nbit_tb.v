`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/24/2025 02:28:15 PM
// Design Name: 
// Module Name: adder_subtractor_nbit_tb
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


module adder_subtractor_nbit_tb;
    localparam N = 8;
    reg [N-1:0] I0, I1;
    reg add_sub_controller;
    wire [N-1:0] S_o;
    wire C_o;
    wire overflow;
   
    adder_subtractor_nbit #(.N(N)) dut0(
    
        .I0(I0),
        .I1(I1),
        .add_sub_controller(add_sub_controller),
        .S_o(S_o),
        .C_o(C_o),
        .overflow(overflow)
    
    );
    
    initial begin
            I0   = 8'b00001101;
            I1   = 8'b01011101;
            add_sub_controller  = 1'b0;
            #5;
            I0   = 8'b00001110;
            I1   = 8'b10100100;
            add_sub_controller  = 1'b0;
            #5;
            I0   = 8'b11110011;
            I1   = 8'b11110100;
            add_sub_controller  = 1'b0;
            #5;
            I0   = 8'b11110100;
            I1   = 8'b10010100;
            add_sub_controller  = 1'b1;
            #5;
            I0   = 8'b10010100;
            I1   = 8'b11010100;
            add_sub_controller  = 1'b1;
            #5;
            I0   = 8'b01100100;
            I1   = 8'b10010100;
            add_sub_controller  = 1'b1;
            #5;
            I0   = 8'b01010011;
            I1   = 8'b01110100;
            add_sub_controller =  1'b0;
            #5;
            I0   = 8'b10010100;
            I1   = 8'b10100100;
            add_sub_controller  = 1'b1;
            #5;
            I0   = 8'b10100011;
            I1   = 8'b11101001;
            add_sub_controller =  1'b0;
            #5;
            I0   = 8'b11101001;
            I1   = 8'b11110011;
            add_sub_controller =  1'b1;
            #5;
            $finish;
        
    end
    


endmodule
