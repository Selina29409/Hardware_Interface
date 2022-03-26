module lab1part2(input [3:0]SW, output[6:0]HEX0);
	reg [6:0] reg_LEDs;
	assign HEX0[6:0] = reg_LEDs[6:0];

	always @ (*)
   begin
      case(SW)
			4'b0000: reg_LEDs[6:0]=7'b1000000; //decimal 0
			4'b0001: reg_LEDs[6:0]=7'b1111001; //decimal 1
			4'b0010: reg_LEDs[6:0]=7'b0100100; //decimal 2
			4'b0011: reg_LEDs[6:0]=7'b0110000; //decimal 3
			4'b0100: reg_LEDs[6:0]=7'b0011001; //decimal 4
			4'b0101: reg_LEDs[6:0]=7'b0010010; //decimal 5
			4'b0110: reg_LEDs[6:0]=7'b0000010; //decimal 6
			4'b0111: reg_LEDs[6:0]=7'b1111000; //decimal 7
			4'b1000: reg_LEDs[6:0]=7'b0000000; //decimal 8
			4'b1001: reg_LEDs[6:0]=7'b0010000; //decimal 9
			4'b1010: reg_LEDs[6:0]=7'b1000110; //decimal C
			4'b1011: reg_LEDs[6:0]=7'b1000001; //decimal U
			4'b1100: reg_LEDs[6:0]=7'b1111001; //decimal I
			4'b1101: reg_LEDs[6:0]=7'b0010001; //decimal Y
			4'b1110: reg_LEDs[6:0]=7'b0001001; //decimal H
			4'b1111: reg_LEDs[6:0]=7'b1111111; //decimal off



endcase
end
endmodule
