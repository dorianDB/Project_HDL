module BCD7Seg(BinIn, SegOut);

input[3:0] BinIn;				// Binary input value


output[0:6] SegOut;		

reg[0:6] iSegOut;			// internal seg value (positive logic / CC)

assign SegOut[0:6] = ~iSegOut[0:6];	// Adapt to CA display


always @(BinIn)
begin
	case (BinIn)
						// abcdefg   	
		0 : iSegOut <= 	7'b1111110;
		1 : iSegOut <= 	7'b0110000;
		2 : iSegOut <= 	7'b1101101;
		3 : iSegOut <= 	7'b1111001;
		4 : iSegOut <= 	7'b0110011;
		5 : iSegOut <= 	7'b1011011;
		6 : iSegOut <= 	7'b1011111;
		7 : iSegOut <= 	7'b1110000;
		8 : iSegOut <= 	7'b1111111;
		9 : iSegOut <= 	7'b1111011;
	endcase
end



endmodule
