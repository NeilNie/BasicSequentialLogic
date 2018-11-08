//
// Part 5, Basic Seqential Logic Lab
// Neil Nie, (c) Nov 7th, 2018
//
//

module seven_segment_display(

	in,			// accepts a four bit input
	out			// returns a six bit output
);

input [3:0] in; 	// A B C D
output [6:0] out; // F E D C B A

assign out[6] = (~in[3] & ~in[2] & ~in[1]) + (~in[3] & in[2] & in[1] & in[0]); 
assign out[5] = (in[3] & in[2] & ~in[1]) + (~in[3] & in[1] & in[0]) + (~in[3] & ~in[2] & in[0]) + (~in[3] & ~in[2] & in[1]); 
assign out[4] = (~in[1] & in[2]) | (in[0]);
assign out[3] = (in[2] & in[1] & in[0]) + (~in[3] & in[2] & ~in[1] & ~in[0]) + (in[3] & ~in[2] & in[1] & ~in[0]) + (~in[2] & ~in[1] & in[0]);
assign out[2] = (in[3] & in[2] & ~in[0]) + (~in[3] & ~in[2] & in[1] & ~in[0]) + (in[3] & in[2] & in[1]);
assign out[1] = (in[2] & in[1] & ~in[0]) + (in[3] & in[1] & in[0]) + (~in[3] & in[2] & ~in[1] & in[0]) + (in[3] & in[2] & ~in[0]);
assign out[0] = (in[2] & ~in[1] & ~in[0]) + (in[3] & in[2] & ~in[1]) + (~in[3] & ~in[2] & ~in[1] & in[0]) + (in[3] & ~in[2] & in[1] & in[0]);

endmodule

module gated_d_latch(
	clk,
	D,
	Q
);

input clk, D;
output reg Q;

always @ (D, clk)
	if (clk)
		Q = D;

endmodule

module ped_flip_flop(
	clk,
	D,
	Q
);

input D, clk;
output Q;

wire Qm, Qs;

gated_d_latch latch_1(~clk, D, Qm);
gated_d_latch latch_2(clk, Qm, Qs);

assign Q = Qs;

endmodule

module Part5(
	SW, KEY,
	HEX0, HEX1, HEX2, HEX3,
	HEX4, HEX5, HEX6, HEX7
);

input [15:0] SW;
input [1:0] KEY;	// key[0] is clock, key[1] is reset
output [6:0] HEX0, HEX1, HEX2, HEX3;
output [6:0] HEX4, HEX5, HEX6, HEX7;

wire [15:0] out1;
reg [15:0] out2;
reg key_state;

ped_flip_flop bit0(KEY[0], SW[0], out1[0]);
ped_flip_flop bit1(KEY[0], SW[1], out1[1]);
ped_flip_flop bit2(KEY[0], SW[2], out1[2]);
ped_flip_flop bit3(KEY[0], SW[3], out1[3]);
ped_flip_flop bit4(KEY[0], SW[4], out1[4]);
ped_flip_flop bit5(KEY[0], SW[5], out1[5]);
ped_flip_flop bit6(KEY[0], SW[6], out1[6]);
ped_flip_flop bit7(KEY[0], SW[7], out1[7]);
ped_flip_flop bit8(KEY[0], SW[8], out1[8]);
ped_flip_flop bit9(KEY[0], SW[9], out1[9]);
ped_flip_flop bit10(KEY[0], SW[10], out1[10]);
ped_flip_flop bit11(KEY[0], SW[11], out1[11]);
ped_flip_flop bit12(KEY[0], SW[12], out1[12]);
ped_flip_flop bit13(KEY[0], SW[13], out1[13]);
ped_flip_flop bit14(KEY[0], SW[14], out1[14]);
ped_flip_flop bit15(KEY[0], SW[15], out1[15]);

seven_segment_display disp0(out1[3:0], HEX0);
seven_segment_display disp1(out1[7:4], HEX1);
seven_segment_display disp2(out1[11:8], HEX2);
seven_segment_display disp3(out1[15:12], HEX3);

always @ (KEY[0] or SW) begin

	key_state = KEY[0];
	if(key_state == 1)
		out2 = SW;
end

seven_segment_display disp4(out2[3:0], HEX4);
seven_segment_display disp5(out2[7:4], HEX5);
seven_segment_display disp6(out2[11:8], HEX6);
seven_segment_display disp7(out2[15:12], HEX7);
	
endmodule
