`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/24/2025 10:00:21 AM
// Design Name: 
// Module Name: adder_subtractor_4bit_tb
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


module adder_subtractor_4bit_tb;

    reg [3:0] I0, I1;
    reg add_sub_controller;
    wire [3:0] S_o;
    wire C_o;
    wire overflow;
   
    adder_subtractor_4bit dut0(
    
        .I0(I0),
        .I1(I1),
        .add_sub_controller(add_sub_controller),
        .S_o(S_o),
        .C_o(C_o),
        .overflow(overflow)
    
    );
    
    initial begin
            I0   = 4'b0000;
            I1   = 4'b0101;
            add_sub_controller  = 1'b0;
            #5;
            I0   = 4'b0000;
            I1   = 4'b1010;
            add_sub_controller  = 1'b0;
            #5;
            I0   = 4'b1111;
            I1   = 4'b1111;
            add_sub_controller  = 1'b0;
            #5;
            I0   = 4'b1111;
            I1   = 4'b1001;
            add_sub_controller  = 1'b1;
            #5;
            I0   = 4'b1001;
            I1   = 4'b1101;
            add_sub_controller  = 1'b1;
            #5;
            I0   = 4'b0110;
            I1   = 4'b1001;
            add_sub_controller  = 1'b1;
            #5;
            I0   = 4'b0101;
            I1   = 4'b0111;
            add_sub_controller =  1'b0;
            #5;
            I0   = 4'b1001;
            I1   = 4'b1010;
            add_sub_controller  = 1'b1;
            #5;
            I0   = 4'b1010;
            I1   = 4'b1110;
            add_sub_controller =  1'b0;
            #5;
            I0   = 4'b1110;
            I1   = 4'b1111;
            add_sub_controller =  1'b1;
            #5;
            $finish;
        
    end
    


endmodule
