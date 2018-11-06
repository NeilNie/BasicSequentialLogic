//
//
// a gated d latch
module d_latch (
	Clk, 
	D,
	Q
);

input Clk, D;
output Q;

wire S, R, R_g, S_g, Qa, Qb /* synthesis keep */ ;

assign S = D;
assign R = ~D;

assign R_g = R & Clk;
assign S_g = S & Clk;
assign Qb = ~(~R_g & Qa);
assign Qa = ~(~S_g & Qb);

assign Q = Qa;

endmodule


module Part2(
	SW,
	LEDR
);

input [1:0] SW;
output [1:0] LEDR;

d_latch(SW[0], SW[1], LEDR[0]);

endmodule
