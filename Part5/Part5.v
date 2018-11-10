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

// Gated D Latch

module gated_d_latch(clk, D, Q);

input clk, D;
output reg Q;

always @ (D, clk)
	if (clk)
		Q = D;

endmodule

// Positive Edge Gated Data Flip-Flop

module ped_flip_flop(clk, D, Q);

input D, clk;
output Q;

wire Qm, Qs;

gated_d_latch latch_1(~clk, D, Qm);
gated_d_latch latch_2(clk, Qm, Qs);

assign Q = Qs;

endmodule

// Part 5 

module Part5(
	SW, KEY, clk, key_state, input1, input2,
	HEX0, HEX1, HEX2, HEX3,
	HEX4, HEX5, HEX6, HEX7
);

input [15:0] SW;
input [1:0] KEY;	// key[0] is clock, key[1] is reset
output [6:0] HEX0, HEX1, HEX2, HEX3;
output [6:0] HEX4, HEX5, HEX6, HEX7;

output reg [15:0] input1, input2;
output reg clk, key_state;
wire [15:0] latch_out;
initial key_state <= 0;
initial clk <= 0;
initial input2 <= 16'b0;

always @ (posedge KEY[0]) begin
	key_state <= 1;
end
	
always @ (SW or KEY[1]) begin

	if (KEY[1] == 0) begin
		input1 <= 16'b0;
	end else begin
		input1 <= SW;
	end
	
	if (key_state == 1)
		input2 <= SW;
end


// simply storing a 16 bit number
ped_flip_flop bit0(KEY[0], input1[0], latch_out[0]);
ped_flip_flop bit1(KEY[0], input1[1], latch_out[1]);
ped_flip_flop bit2(KEY[0], input1[2], latch_out[2]);
ped_flip_flop bit3(KEY[0], input1[3], latch_out[3]);
ped_flip_flop bit4(KEY[0], input1[4], latch_out[4]);
ped_flip_flop bit5(KEY[0], input1[5], latch_out[5]);
ped_flip_flop bit6(KEY[0], input1[6], latch_out[6]);
ped_flip_flop bit7(KEY[0], input1[7], latch_out[7]);
ped_flip_flop bit8(KEY[0], input1[8], latch_out[8]);
ped_flip_flop bit9(KEY[0], input1[9], latch_out[9]);
ped_flip_flop bit10(KEY[0], input1[10], latch_out[10]);
ped_flip_flop bit11(KEY[0], input1[11], latch_out[11]);
ped_flip_flop bit12(KEY[0], input1[12], latch_out[12]);
ped_flip_flop bit13(KEY[0], input1[13], latch_out[13]);
ped_flip_flop bit14(KEY[0], input1[14], latch_out[14]);
ped_flip_flop bit15(KEY[0], input1[15], latch_out[15]);
// =============================

// first four displays
seven_segment_display disp0(latch_out[3:0], HEX0);
seven_segment_display disp1(latch_out[7:4], HEX1);
seven_segment_display disp2(latch_out[11:8], HEX2);
seven_segment_display disp3(latch_out[15:12], HEX3);

// second four displays
seven_segment_display disp4(input2[3:0], HEX4);
seven_segment_display disp5(input2[7:4], HEX5);
seven_segment_display disp6(input2[11:8], HEX6);
seven_segment_display disp7(input2[15:12], HEX7);
	
endmodule
