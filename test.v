module ud_cnt(i_clk, i_rstn, o_cnt, i_ud);

	input i_clk, i_rstn, i_ud;
	output reg[15:0] o_cnt;

	always @ (posedge i_clk or negedge i_rstn) begin
		if (!i_rstn) begin
			o_cnt	<= 0;
		end
		else begin
			if (i_ud == 1'b1)
				o_cnt	<= o_cnt + 16'b1;
			else
				o_cnt	<= o_cnt - 16'b1;
		end
	end
endmodule

