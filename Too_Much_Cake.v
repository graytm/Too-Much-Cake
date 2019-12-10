module Too_Much_Cake(FPGA_clk, rst, up, down, left, right, VGA_R, VGA_G, VGA_B, hsync, vsync, clk, blank_n, difficulty, o1,o2,o3,o4,o5,o6,o7);

//inputs + outputs of game
input FPGA_clk, rst;
input difficulty;
input up, down, left, right;
output hsync, vsync, clk, blank_n;
output o1,o2,o3,o4,o5,o6,o7;

//clk_convert module
clk_convert clk_convert1(FPGA_clk, update, clk);
wire clk;
wire update;

//module controls players movements
Guy Guy1(clk, rst, up, down, left, right, update, xLength, yLength, Guy);
wire Guy;

//sets apples on screen
Apple app(clk,update,rst,xLength,yLength,apple);
wire [4:0] apple;

//sets trucks on screen
Truck tru(clk,update,rst,xLength,yLength,truck);
wire [14:0] truck;

//Establishes Cake positions for Easy or Hard lvl
Easy Cake1(clk,update,rst,xLength,yLength,cake1);
Hard Cake2(clk,update,rst,xLength,yLength,cake2);
wire [100:0]cake1;
wire [100:0]cake2;

reg [100:0]cake;

//changes cakes displayed based on difficulty choice
always @(posedge clk)
		begin
			if (difficulty == 1'b0)
				cake <= cake1;
			else
				cake <=cake2;
		end
		
//collision module is used to determine loss or win based on "collisons" with cakes, border and apples
collision WL(clk,rst,Guy,cake,border,apple,xLength,yLength,win,game_over, score); 
wire game_over;
wire win;
wire [3:0] score;

//sends score to Hex display on FPGA
Lab_4_1 Lab4(score[3],score[2],score[1],score[0],o1,o2,o3,o4,o5,o6,o7);

reg border;

//sets border positioning
always @(posedge clk)
	begin
		border <= (((xLength >= 0) && (xLength < 15) || (xLength >= 630) && (xLength < 641)) || ((yLength >= 0) && (yLength < 15) || (yLength >= 465) && (yLength < 481)));
	end

wire game_over_text;
wire win_text;
wire level_num1_text;
wire level_num2_text;
wire apple1_text;
wire apple2_text;
wire apple3_text;
wire apple4_text;
wire apple5_text;

//initiates all text in game
text txt(clk,rst,xLength,yLength,game_over_text,win_text,level_num1_text,level_num2_text, apple1_text, apple2_text, apple3_text, apple4_text, apple5_text);

wire [9:0] xLength; 
wire [9:0] yLength;
wire ScreenArea;

//creates area for VGA display
VGA_Controller VGA(clk, xLength, yLength, ScreenArea, hsync, vsync, blank_n);

//decribes colors of all objects in game
output reg [7:0]VGA_R, VGA_G, VGA_B;

reg R;
reg G;
reg B;

always @(posedge clk)
	begin
		if (game_over == 1'b0)
			begin
				if (win == 1'b0)
					begin;
					//if Easy
						if (difficulty == 1'b0)
							begin
								R = (((border && !level_num1_text) || (apple && !apple1_text && !apple2_text && !apple3_text && !apple4_text && !apple5_text)  ||Guy || cake[0] || cake[1] || cake[2] || cake[3] || cake[4] || cake[5] || cake[6] || cake[7] || cake[8] || cake[9] || cake[10] || cake[11] || cake[12] || cake[13] || cake[14] || cake[15] || cake[16] || cake[17] || cake[18] || cake[19] || cake[20] || cake[21] || cake[22] || cake[23] || cake[24] || cake[25] || cake[26] || cake[27] || cake[28] || cake[29] || cake[30] || cake[31] || cake[32] || cake[33] || cake[34] || cake[35] || cake[36] || cake[37] || cake[38] || cake[39] || cake[40] || cake[41] || cake[42] || cake[43] || cake[44] || cake[45] || cake[46] || cake[47] || cake[48] || cake[49] || cake[50] || cake[51] || cake[52] || cake[53] || cake[54] || cake[55] || cake[56] || cake[57] || cake[58] || cake[59] || cake[60] || cake[61] || cake[62] || cake[63] || cake[64] || cake[65] || cake[66] || cake[67] || cake[68] || cake[69] || cake[70] || cake[71] || cake[72] || cake[73] || cake[74] || cake[75] || cake[76] || cake[77] || cake[78] || cake[79] || cake[80] || cake[81] || cake[82] || cake[83] || cake[84] || cake[85] || cake[86] || cake[87] || cake[88] || cake[89] || cake[90] || cake[91] || cake[92] || cake[93] || cake[94] || cake[95] || cake[96] || cake[97] || cake[98] || cake[99] || cake[100]));
								G = (((border && !level_num1_text) || cake[0] || cake[1] || cake[2] || cake[3] || cake[4] || cake[5] || cake[6] || cake[7] || cake[8] || cake[9] || cake[10] || cake[11] || cake[12] || cake[13] || cake[14] || cake[15] || cake[16] || cake[17] || cake[18] || cake[19] || cake[20] || cake[21] || cake[22] || cake[23] || cake[24] || cake[25] || cake[26] || cake[27] || cake[28] || cake[29] || cake[30] || cake[31] || cake[32] || cake[33] || cake[34] || cake[35] || cake[36] || cake[37] || cake[38] || cake[39] || cake[40] || cake[41] || cake[42] || cake[43] || cake[44] || cake[45] || cake[46] || cake[47] || cake[48] || cake[49] || cake[50] || cake[51] || cake[52] || cake[53] || cake[54] || cake[55] || cake[56] || cake[57] || cake[58] || cake[59] || cake[60] || cake[61] || cake[62] || cake[63] || cake[64] || cake[65] || cake[66] || cake[67] || cake[68] || cake[69] || cake[70] || cake[71] || cake[72] || cake[73] || cake[74] || cake[75] || cake[76] || cake[77] || cake[78] || cake[79] || cake[80] || cake[81] || cake[82] || cake[83] || cake[84] || cake[85] || cake[86] || cake[87] || cake[88] || cake[89] || cake[90] || cake[91] || cake[92] || cake[93] || cake[94] || cake[95] || cake[96] || cake[97] || cake[98] || cake[99] || cake[100] || truck[0] || truck[1] || truck[2] || truck[3] || truck[4] || truck[5] || truck[6] || truck[7] || truck[8] || truck[9] || truck[10] || truck[11] || truck[12] || truck[13] || truck[14]));
								B = (((border && !level_num1_text) || Guy));
							end
					//else (if Hard)
						else
							begin
								R = (((border && !level_num2_text) || (apple && !apple1_text && !apple2_text && !apple3_text && !apple4_text && !apple5_text) || Guy || cake[0] || cake[1] || cake[2] || cake[3] || cake[4] || cake[5] || cake[6] || cake[7] || cake[8] || cake[9] || cake[10] || cake[11] || cake[12] || cake[13] || cake[14] || cake[15] || cake[16] || cake[17] || cake[18] || cake[19] || cake[20] || cake[21] || cake[22] || cake[23] || cake[24] || cake[25] || cake[26] || cake[27] || cake[28] || cake[29] || cake[30] || cake[31] || cake[32] || cake[33] || cake[34] || cake[35] || cake[36] || cake[37] || cake[38] || cake[39] || cake[40] || cake[41] || cake[42] || cake[43] || cake[44] || cake[45] || cake[46] || cake[47] || cake[48] || cake[49] || cake[50] || cake[51] || cake[52] || cake[53] || cake[54] || cake[55] || cake[56] || cake[57] || cake[58] || cake[59] || cake[60] || cake[61] || cake[62] || cake[63] || cake[64] || cake[65] || cake[66] || cake[67] || cake[68] || cake[69] || cake[70] || cake[71] || cake[72] || cake[73] || cake[74] || cake[75] || cake[76] || cake[77] || cake[78] || cake[79] || cake[80] || cake[81] || cake[82] || cake[83] || cake[84] || cake[85] || cake[86] || cake[87] || cake[88] || cake[89] || cake[90] || cake[91] || cake[92] || cake[93] || cake[94] || cake[95] || cake[96] || cake[97] || cake[98] || cake[99] || cake[100]));
								G = (((border && !level_num2_text) || cake[0] || cake[1] || cake[2] || cake[3] || cake[4] || cake[5] || cake[6] || cake[7] || cake[8] || cake[9] || cake[10] || cake[11] || cake[12] || cake[13] || cake[14] || cake[15] || cake[16] || cake[17] || cake[18] || cake[19] || cake[20] || cake[21] || cake[22] || cake[23] || cake[24] || cake[25] || cake[26] || cake[27] || cake[28] || cake[29] || cake[30] || cake[31] || cake[32] || cake[33] || cake[34] || cake[35] || cake[36] || cake[37] || cake[38] || cake[39] || cake[40] || cake[41] || cake[42] || cake[43] || cake[44] || cake[45] || cake[46] || cake[47] || cake[48] || cake[49] || cake[50] || cake[51] || cake[52] || cake[53] || cake[54] || cake[55] || cake[56] || cake[57] || cake[58] || cake[59] || cake[60] || cake[61] || cake[62] || cake[63] || cake[64] || cake[65] || cake[66] || cake[67] || cake[68] || cake[69] || cake[70] || cake[71] || cake[72] || cake[73] || cake[74] || cake[75] || cake[76] || cake[77] || cake[78] || cake[79] || cake[80] || cake[81] || cake[82] || cake[83] || cake[84] || cake[85] || cake[86] || cake[87] || cake[88] || cake[89] || cake[90] || cake[91] || cake[92] || cake[93] || cake[94] || cake[95] || cake[96] || cake[97] || cake[98] || cake[99] || cake[100] || truck[0] || truck[1] || truck[2] || truck[3] || truck[4] || truck[5] || truck[6] || truck[7] || truck[8] || truck[9] || truck[10] || truck[11] || truck[12] || truck[13] || truck[14]));
								B = (((border && !level_num2_text) || Guy));
							end
					end
				//gives winner text color
				else
					begin
						R = 1'b0;
						G = win_text;
						B = 1'b0;
					end
			end
		//gives loser text color
		else
			begin
				R = game_over_text;
				G = 1'b0;
				B = 1'b0;
			end
	end


always@(posedge clk)
	begin
		VGA_R = {8{R}};
		VGA_G = {8{G}};
		VGA_B = {8{B}};
	end 


endmodule
