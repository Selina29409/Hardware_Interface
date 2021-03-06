module dff(d, clk, reset, enable, q);
	input d, clk, reset, enable;
	output q;
	reg q;

	always@(posedge clk or negedge reset)begin
	 if(~reset)begin
	  q <= 1'b0;
	 end else if (~enable)begin
	  q<=d;
	 end else begin
	  q <= 1'b0;
	 end
	end

endmodule