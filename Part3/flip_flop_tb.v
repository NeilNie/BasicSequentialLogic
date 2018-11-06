//
//

`timescale 1ns / 100ps

module flip_flop_tb();

reg clk_50;	// the inputs have to be regs
reg data;

wire out;	// the output has to be wire

// -----------------------------------
// initialize DUT
d_flip_flop ff1 (
	.clk(clk_50),
	.D(data),
	.Q(out)
);

// -----------------------------------
// create a 50 mhz clock

always
	#10 clk_50 = ~clk_50; // every ten nanoseconds invert
	
	
initial
begin 
	$display($time, "<< Starting Simulation <<");
	
	clk_50 = 1'b0;	// clock is low
	data = 1'b1;
	
	
	#300;
	$display($time, "<< Simulation Complete >>");
	$stop;
	
end

endmodule
