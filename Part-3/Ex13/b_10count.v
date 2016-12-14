module b_10count(
			count,
			clock,
			enable
			);
			input clock;
			input enable;
			output reg [9:0] count;
			
			initial count = 10'b0;
			
			always @ (posedge clock)
				if (enable == 1'b1)begin
					count <= count + 1'b1;
					end

endmodule