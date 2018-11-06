//
//

// A gated RS latch
module Part2 (
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
assign Qa = ~(R_g | Qb);
assign Qb = ~(S_g | Qa);

assign Q = Qa;

endmodule
