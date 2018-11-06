//

module d_flip_flop(

	clk,
	D,
	Q
);

input D, clk;
output Q;

wire Qm, Qs;

d_latch(~clk, D, Qm);
d_latch(clk, Qm, Qs);

assign Q = Qs;

endmodule

// A gated d latch
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

module Part3(
	SW,
	LEDR
);

input [1:0] SW;
output [1:0] LEDR;

d_flip_flop(SW[0], SW[1], LEDR[0]);

endmodule

