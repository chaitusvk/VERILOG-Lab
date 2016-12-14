module ex12_top(
			CLOCK_50,
			SW,
			HEX0,
			HEX1,
			HEX2,
			HEX3
			);
			
			input 	CLOCK_50;
			input		[9:0] SW;
			output	[6:0] HEX0, HEX1, HEX2, HEX3;
			wire		[9:0] DATA;
			wire		[3:0] D_0, D_1, D_2, D_3;
			
			ROM(
				.address (SW[9:0]),
				.clock (CLOCK_50),
				.q(DATA[9:0])
				);
				
			bin2bcd_16(
				.B (DATA[9:0]),
				.BCD_0 (D_0),
				.BCD_1 (D_1),
				.BCD_2 (D_2),
				.BCD_3 (D_3),
				.BCD_4 ()
				);
				
			hex_to_7seg SEG0 (HEX0, D_0);
			hex_to_7seg SEG1 (HEX1, D_1);
			hex_to_7seg SEG2 (HEX2, D_2);
			hex_to_7seg SEG3 (HEX3, D_3);
			
endmodule