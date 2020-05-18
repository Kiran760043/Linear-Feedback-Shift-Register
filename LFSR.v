///////////////////////////////////////////////////////////////////////////////////////////
// Design Name: Simple Linear Feedback Shift Register
// Engineer: kiran
///////////////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps


module LFSR(clk,rst,out);

    input  wire clk;
    input  wire rst;
    output reg [3:0]out;
    
    always@(posedge clk)
        begin
            if(rst) begin
                out <= 4'h1;
            end else begin
                  out[0]<=out[3];
                  out[1]<=out[3] ^ out[0];
                  out[2]<=out[1];
                  out[3]<=out[2];
            end
        end
  
endmodule
