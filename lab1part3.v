module lab1part3(input[9:0]SW, input[3:0]KEY, input CLOCK_50, output[6:0]HEX0);


wire[3:0]intermediate1;// HEX0 off when SW9 and SW8 are on
wire[3:0]intermediate2;// HEX0 seven segement decoder when SW9 and SW8 are off
wire[3:0]intermediate3;// HEX0 counter when SW9 is off and SW8 is on
wire[3:0]intermediate4;// HEX0 off when SW9 is on and SW8 is off
wire[3:0]out;          // final 4 bit 

mode_11(
	.hex(intermediate1)
	);

mode_00(
	.SW(SW[3:0]),
	.hex(intermediate2)
	);
	
mode_01(
	.KEY3(KEY[3:3]),
	.KEY0(KEY[0:0]),
	.hex(intermediate3)
	);
	
mode_10(
	.clk(CLOCK_50),
	.KEY0(KEY[0:0]),
	.hex(intermediate4)
	);
	
mux(
	.intermediate1(intermediate1),
	.intermediate2(intermediate2),
	.intermediate3(intermediate3),
	.intermediate4(intermediate4),
	.switches(SW[9:8]),
	.out(out)
	);

decoder(
	.SW(out),
	.HEX0(HEX0)
	);
endmodule

