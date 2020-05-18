///////////////////////////////////////////////////////////////////////////////////////////
// Design Name: Simple Linear Feedback Shift Register
// Engineer: kiran
///////////////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps


module test_bench_LFSR();

    //inputs to DUT
        reg clk;
        reg rst;
    //outputs from DUT
        wire [3:0]out;
        
        LFSR DUT (.clk(clk),.rst(rst),.out(out));
        
        initial 
            begin
                $display($time," << Simulation Results >>");
                $monitor($time,"clk=%b, rst=%b, out=%b", clk,rst,out);
            end
            
        always #5 clk = ~clk;
        
        initial
            begin
                clk = 1;
                rst = 1;
                #10;
                rst = 0;
                #160;
                $finish;
            end
        
endmodule
