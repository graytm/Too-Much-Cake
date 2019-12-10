module collision (clk,rst,Guy,cake,border,apple,xLength,yLength,win,game_over, score); 

input clk, rst, Guy, border; //"Guy" is the player, Guy can not eat anymore cake or he will die
input [4:0] apple;
input [100:0]cake;
input [9:0]xLength;
input [9:0]yLength;
output win, game_over; //possible results of game: Guy hit by cake (lose) or Guy reaches all apples (win)
output [3:0] score; // tells player what apple they need to collect next
	
wire Guy;
wire [4:0] apple;
wire border;
wire [100:0]cake;

wire [9:0] xLength;
wire [9:0] yLength;

reg game_over; 
reg win;
reg [3:0] score;
	

wire [4:0]eat;//Guy eats an apple
wire hit; //Guy hit by cake

//assigns eat to scenarios
assign eat[0] = (Guy && apple[0]);
assign eat[1] = (Guy && apple[1]);
assign eat[2] = (Guy && apple[2]);
assign eat[3] = (Guy && apple[3]);
assign eat[4] = (Guy && apple[4]);

assign hit = (Guy && border) || (Guy && (cake[0] || cake[1] || cake[2] || cake[3] || cake[4] || cake[5] || cake[6] || cake[7] || cake[8] || cake[9] || cake[10] || cake [11] || cake[12] || cake[13] || cake[14] || cake[15] || cake[16] || cake[17] || cake[18] || cake[19] || cake[20] || cake[21] || cake[22] || cake[23] || cake[24] || cake[25] || cake[26] || cake[27] || cake[28] || cake[29] || cake[30] || cake[31] || cake[32] || cake[33] || cake[34] || cake[35] || cake[36] || cake[37] || cake[38] || cake[39] || cake[40] || cake[41] || cake[42] || cake[43] || cake[44] || cake[45] || cake[46] || cake[47] || cake[48] || cake[49] || cake[50] || cake[51] || cake[52] || cake[53] || cake[54] || cake[55] || cake [56] || cake[57] || cake[58] || cake[59] || cake[60] || cake[61] || cake[62] || cake[63] || cake[64] || cake[65] || cake[66] || cake[67] || cake[68] || cake[69] || cake[70] || cake[71] || cake[72] || cake[73] || cake[74] || cake[75] || cake[76] || cake[77] || cake[78] || cake[79] || cake[80] || cake[81] || cake[82] || cake[83] || cake[84] || cake[85] || cake[86] || cake[87] || cake[88] || cake[89] || cake[90] || cake[91] || cake[92] || cake[93] || cake[94] || cake[95] || cake[96] || cake[97] || cake[98] || cake[99] || cake[100] ));

//sets our states for game
localparam alive1 = 3'd0,
				alive2 = 3'd1,
				alive3 = 3'd2,
				alive4 = 3'd3,
				alive5 = 3'd4,
				winner = 3'd5,
				loser = 3'd6;
reg [2:0]S;
reg [2:0]NS;

always @(posedge clk)
	begin
		if (rst == 1'b1)
			begin
			S <= alive1;
			end
		else
			begin
			S <= NS;
			end
	end

always @(*) 
	case (S)
		alive1: 
			begin
				if (hit == 1'b1)
					NS = loser;
				else if(eat[2] == 1'b1)
					NS = alive2;
				else
					NS = alive1;
			end

			alive2: 
			begin
				if (hit == 1'b1)
					NS = loser;
				else if(eat[1] == 1'b1)
					NS = alive3;
				else
					NS = alive2;
			end
			
			alive3: 
			begin
				if (hit == 1'b1)
					NS = loser;
				else if(eat[0] == 1'b1)
					NS = alive4;
				else
					NS = alive3;
			end
			
			alive4: 
			begin
				if (hit == 1'b1)
					NS = loser;
				else if(eat[3] == 1'b1)
					NS = alive5;
				else
					NS = alive4;
			end
			
			alive5: 
			begin
				if (hit == 1'b1)
					NS = loser;
				else if(eat[4] == 1'b1)
					NS = winner;
				else
					NS = alive5;
			end
			
		winner:	//winner state
			NS = winner;
		loser:  //loser state
			NS = loser;
	endcase

always @(posedge clk) 
	begin
		if (rst == 1'b1)
			begin
				win <= 1'b0;
				game_over <= 1'b0;
				score <= 4'b0001;
			end
		else
			begin
				case (S)
					alive1:
						begin
							win <= 1'b0;
							game_over <= 1'b0;
							score <= 4'b0001;
						end
					alive2:
						begin
							win <= 1'b0;
							game_over <= 1'b0;
							score <= 4'b0010;
						end
					alive3:
						begin
							win <= 1'b0;
							game_over <= 1'b0;
							score <= 4'b0011;
						end
					alive4:
						begin
							win <= 1'b0;
							game_over <= 1'b0;
							score <= 4'b0100;
						end
					alive5:
						begin
							win <= 1'b0;
							game_over <= 1'b0;
							score <= 4'b0101;
						end
					winner:
						begin
						win <= 1'b1;
						score <= 4'b0000;
						end
					loser:
						begin
						game_over <= 1'b1;
						score <= 4'b0000;
						end
				endcase
			end
		
	end
		
endmodule
