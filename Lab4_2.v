module final(LED, INPUT, MOTOR_A, MOTOR_B);
	input [2:0] INPUT;
	output [3:0] LED;
	output reg [1:0] MOTOR_A;
	output reg [1:0] MOTOR_B;
	
	assign LED[1:0] = MOTOR_A;
	assign LED[3:2] = MOTOR_B;

	always@(INPUT) begin
		case (INPUT)
			3'd1: begin
				MOTOR_A = 2'b10;
				MOTOR_B = 2'b10;
			end
			3'd2: begin
				MOTOR_A = 2'b01;
				MOTOR_B = 2'b01;
			end
			
			3'd3: begin
				MOTOR_A = 2'b01;
				MOTOR_B = 2'b10;
			end
			
			3'd4: begin
				MOTOR_A = 2'b10;
				MOTOR_B = 2'b01;
			end
			
			default: begin
				MOTOR_A = 2'b00;
				MOTOR_B = 2'b00;
			end
				
		endcase
		
	end

	
endmodule
