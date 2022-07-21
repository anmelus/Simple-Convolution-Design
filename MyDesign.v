// module MyDesign(input [15:0] in, input [15:0] weight, input clk, reset_b, go, output [15:0] out, output busy);

module MyDesign (input dut_run, reset_b, clk, output dut_busy,									// CONTROL SIGNALS
		input [11:0] dut_sram_read_address, input [15:0] sram_dut_read_data,						// INPUT SRAM
		input [11:0] dut_wmem_read_address, input [15:0] wmem_dut_read_data, 						// WEIGHT SRAM
		output [11:0] dut_sram_write_address, output [15:0] dut_sram_write_data, output dut_sram_write_enable);		// OUTPUT SRAM

	// State Machine Control
	parameter S0 = 3'b000;
	parameter S1 = 3'b010;
	parameter S2 = 3'b100;
	parameter S3 = 3'b110;
	reg [2:0] state, next_state;

	// Intermediate Values for final outputs
	reg next_busy, buzz;
	reg [3:0] feature_map, next_feature_map;

	reg signed [3:0] plh1, plh2, plh3, plh4, next_plh1, next_plh2, next_plh3, next_plh4;		// Intermediate value for feature output
	reg [8:0] in1, in2, in3, in4, next_in1, next_in2, next_in3, next_in4;;				// Truncated matrices to perform hadamard products in	
		
	reg [15:0] weight, next_weight, in, next_in;

	reg write, next_write;

	reg [11:0] w_addr, i_addr;	// Not actually needed for 464 project but included them anyways
	
	function signed [3:0] feature;
	// Iterate over all bits in 2 matrices to perform convolution. If the bit is 0, think of it as -1. If 1, leave it as +1. Then perform element wise product and constantly store result
	// O(1)
	// We are going to want to pass in the two matrices we want to perform the element wise product on. Since dimensions of both inputs are known, we can assume dimensions.
	// Not scalable
		input [8:0] A, B;
		integer N;

		for (N=0; N<=8; N=N+1) begin
			if (N == 0) feature = 0;			// used to initialize to 0, verilog has a problem with intialization in functions
			
			if ( ((A[N] == 0) && (B[N] == 0)) || ((A[N] == 1) && (B[N] == 1)) )			// Both are -1 or +1
				feature = feature + 1;
			else											// One is -1, another is +1
				feature = feature - 1;
		end
	endfunction

	always@(posedge clk) begin
		if (!reset_b) begin 
			state <= S0; 
			buzz <= 0; 
			i_addr <= 0;
			w_addr <= 0;
			weight <= 0;
			write <= 0;
			in <= 0;
			in1 <= 0;
			in2 <= 0;
			in3 <= 0;
			in4 <= 0;
			plh1 <= 0;
			plh2 <= 0;
			plh3 <= 0;
			plh4 <= 0;
			feature_map <= 0;
			end
		else begin 
			state <= next_state; 
			weight <= next_weight;
			in <= next_in;
			in1 <= next_in1;
			in2 <= next_in2;
			in3 <= next_in3;
			in4 <= next_in4;
			plh1 <= next_plh1;
			plh2 <= next_plh2;
			plh3 <= next_plh3;
			plh4 <= next_plh4;
			feature_map <= next_feature_map;
			write <= next_write;
			buzz <= next_busy;

			i_addr <= 0;
			w_addr <= 0;
			end
	end

	always@(*) begin
		case(state)
		S0: if (dut_run) 
				begin
				next_in = sram_dut_read_data; 
				next_weight = wmem_dut_read_data; 
				next_state = S1;

				// NO CHANGE
				next_in1 = in1;
				next_in2 = in2;
				next_in3 = in3;
				next_in4 = in4;
				next_busy = buzz;
				next_plh1 = plh1;
				next_plh2 = plh2;
				next_plh3 = plh3;
				next_plh4 = plh4;
				next_feature_map = feature_map;
				next_write = write;
				end
			else begin 
				next_state = S0;

				// NO CHANGE
				next_in = in; 
				next_weight = weight; 
				next_in1 = in1;
				next_in2 = in2;
				next_in3 = in3;
				next_in4 = in4;
				next_busy = buzz;
				next_plh1 = plh1;
				next_plh2 = plh2;
				next_plh3 = plh3;
				next_plh4 = plh4;
				next_feature_map = feature_map;
				next_write = write;
				end
		S1: 	begin 
				// GET 4 INPUT SLIDING WINDOW CONVOLUTIONS FOR FEATURE CALCULATION
				
				next_in1 = {in[10], in[9], in[8], in[6], in[5], in[4], in[2], in[1], in[0]};
				next_in2 = {in[14], in[13], in[12], in[10], in[9], in[8], in[6], in[5], in[4]};
				next_in3 = {in[11], in[10], in[9], in[7], in[6], in[5], in[3], in[2], in[1]};
				next_in4 = {in[15], in[14], in[13], in[11], in[10], in[9], in[7], in[6], in[5]};
				next_state = S2; 
				next_busy = 1;

				// No CHANGE
				next_in = in;
				next_weight = weight;
				next_plh1 = plh1;
				next_plh2 = plh2;
				next_plh3 = plh3;
				next_plh4 = plh4;
				next_feature_map = feature_map;
				next_write = write;
				end
		S2: 	begin
			// PERFORM CONVOLUTION
			// FIRST FEATURE
			next_plh1 = feature(in1, weight);
			// SECOND FEATURE
			next_plh3 = feature(in2, weight);			// note i had it in opposite order
			// THIRD FEATURE
			next_plh2 = feature(in3, weight);
			// FOURTH FEATURE
			next_plh4 = feature(in4, weight);
			next_state = S3;

			// NO CHANGE
			next_in = in;
			next_weight = weight;
			next_in1 = in1;
			next_in2 = in2;
			next_in3 = in3;
			next_in4 = in4;
			next_feature_map = feature_map;
			next_busy = dut_busy;
			next_write = write;
			end
		S3: 	begin
			// Final Mapping to Feature Map output
			if (plh4 < 0)		// if negative
				next_feature_map[3] = 0;
			else 
				next_feature_map[3] = 1;
			
			// NOTE: I switched plh3 with plh2 because the way I calculate convolution is from left to right first instead of top to bottom. 
			if (plh3 < 0)		// if negative
				next_feature_map[2] = 0;
			else 
				next_feature_map[2] = 1;

			if (plh2 < 0)		// if negative
				next_feature_map[1] = 0;
			else 
				next_feature_map[1] = 1;

			if (plh1 < 0)		// if negative
				next_feature_map[0] = 0;
			else 
				next_feature_map[0] = 1;

			next_write = 1;
			next_state = S0; 
			next_busy = 0;

			// NO CHANGE
			next_in = in;
			next_weight = weight;
			next_in1 = in1;
			next_in2 = in2;
			next_in3 = in3;
			next_in4 = in4;
			next_plh1 = plh1;
			next_plh2 = plh2;
			next_plh3 = plh3;
			next_plh4 = plh4;
			end
		endcase
	end
	
	assign dut_wmem_read_address = w_addr;
	assign dut_sram_read_address = i_addr;
	assign dut_sram_write_address = 0;
	assign dut_sram_write_enable = write;

	assign dut_sram_write_data = {12'b0, feature_map};	// pad zeros to output		add flip flop? and change variable name
	assign dut_busy = buzz;

endmodule
