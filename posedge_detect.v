`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/24/2021 12:24:51 AM
// Design Name: 
// Module Name: posedge_detect
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


module posedge_detect(
    input clk,
    input rst_n,
    input data_in,
    output detected
    );
    reg data_in_d0;
    reg data_in_d1;
    assign detected = data_in_d0 & ~data_in_d1;
    always @(posedge clk) begin
        if(rst_n==1'b0) begin
            data_in_d0<=0;
            data_in_d1<=0;
        end else begin
            data_in_d0<=data_in;
            data_in_d1<=data_in_d0;
        end
    end
endmodule
