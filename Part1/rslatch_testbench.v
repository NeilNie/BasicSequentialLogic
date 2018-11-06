// 
// RS Latch test bench
// Neil Nie, Nov, 2018.
// (c) All Rights Reserved

`timescale 1ns / 100ps

module rslatch_testbench();

reg clk_50;	// the inputs have to be regs
reg set;
reg reset;

wire out;	// the output has to be wire

// -----------------------------------
// initialize DUT
RSLatch L1 (
	.Clk(clk_50),
	.S(set),
	.R(reset),
	.Q(out)
);

// -----------------------------------
// create a 50 mhz clock

always
	#10 clk_50 = ~clk_50; // every ten nanoseconds invert

	
initial
begin 
	$display($time, "<< Starting Simulation <<");
	
end


endmodule
