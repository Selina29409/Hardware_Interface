//One bit data width D flip-flop
//module lab1part1(d,clk,q);
//
//	input d,clk; 
//	output q; 
//	reg q;
//	
//	always @(posedge clk) begin
//		if (d) begin
//			q <= d; 
//		end 
//		else if (~d) begin
//			q <= 0;
//		end
//	end
//endmodule 



//4-to-1 multiplexer
//module lab1part1(a, b, c, d, s, out);
//
//	input [3:0] a, b, c, d;
//	input [1:0] s;
//	output reg [3:0]out;
//	
//	always @(s|a|b|c|d) begin
//		case(s)
//			 2'b00: out <= a;
//			 2'b01: out <= b;
//			 2'b10: out <= c;
//			 2'b11: out <= d;
//		endcase
//	end
//
//endmodule

//4-bit counter with reset and enable controls
//module lab1part1(reset, out, enable);
// input reset, enable;
// output reg [3:0] out;
// 
// always @(posedge enable or posedge reset) begin
//  if (reset)
//   out <= 0;
//  else
//   if (enable)
//    out <= out+1;
//  end
//endmodule

//D latch with synchronous enable control
module lab1part1(d,enable, out);
 input d,enable;
 output reg out;
 
	 always @(posedge enable) begin
	  if (enable) begin
		out <= d;
	  end
	end
  
endmodule

