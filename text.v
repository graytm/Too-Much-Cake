module text(clk,rst,xLength,yLength,game_over_text,win_text,level_num1_text,level_num2_text, apple1_text, apple2_text, apple3_text, apple4_text, apple5_text); 
input clk,rst;
input [9:0]xLength;
input [9:0] yLength;
wire [9:0] xLength;
wire [9:0] yLength;

output game_over_text;
output win_text;
output level_num1_text;
output level_num2_text;


////text if you lose
wire game_over_text;
assign game_over_text = (go1 || go2 || go3 || go4 || go5 || go6 || go7 || go8 || go9 || go10);
reg [9:0] game_overX[0:31];
reg [8:0] game_overY[0:31];


//used to display "TOO MUCH" when game over is triggered
reg go1, go2, go3, go4, go5;


//used to display "CAKE" when game over is triggered
reg go6, go7, go8, go9, go10;


//TOO MUCH is displayed above CAKE and poistioned via the following code
always@(posedge clk) 
	begin	
			if (rst == 1'b1)
				begin
					game_overX[0] = 10'd100;
					game_overY[0] = 9'd200;
					
				end
			else
				begin
					//"TOO MUCH"
					go1 = ((yLength >= (game_overY[0] + 9'd0))  && (yLength < (game_overY[0] + 9'd10)))  &&  ( ( (xLength >= (game_overX[0] + 10'd0)) && (xLength < (game_overX[0] + 10'd50)) ) || ( (xLength >= (game_overX[0] + 10'd70)) && (xLength < (game_overX[0] + 10'd100)) ) || ( (xLength >= (game_overX[0] + 10'd130)) && (xLength < (game_overX[0] + 10'd160)) ) || ( (xLength >= (game_overX[0] + 10'd190)) && (xLength < (game_overX[0] + 10'd200)) ) || ( (xLength >= (game_overX[0] + 10'd230)) && (xLength < (game_overX[0] + 10'd240)) ) || ( (xLength >= (game_overX[0] + 10'd250)) && (xLength < (game_overX[0] + 10'd260)) ) || ( (xLength >= (game_overX[0] + 10'd290)) && (xLength < (game_overX[0] + 10'd300)) ) || ( (xLength >= (game_overX[0] + 10'd320)) && (xLength < (game_overX[0] + 10'd360)) ) || ( (xLength >= (game_overX[0] + 10'd370)) && (xLength < (game_overX[0] + 10'd380)) ) || ( (xLength >= (game_overX[0] + 10'd410)) && (xLength < (game_overX[0] + 10'd420)) ));
					go2 = ((yLength >= (game_overY[0] + 9'd10)) && (yLength < (game_overY[0] + 9'd20)))  &&  ( ( (xLength >= (game_overX[0] + 10'd20)) && (xLength < (game_overX[0] + 10'd30)) ) || ( (xLength >= (game_overX[0] + 10'd60)) && (xLength < (game_overX[0] + 10'd70)) ) || ( (xLength >= (game_overX[0] + 10'd100)) && (xLength < (game_overX[0] + 10'd110)) ) || ( (xLength >= (game_overX[0] + 10'd120)) && (xLength < (game_overX[0] + 10'd130)) ) || ( (xLength >= (game_overX[0] + 10'd160)) && (xLength < (game_overX[0] + 10'd170)) ) || ( (xLength >= (game_overX[0] + 10'd190)) && (xLength < (game_overX[0] + 10'd210)) ) || ( (xLength >= (game_overX[0] + 10'd220)) && (xLength < (game_overX[0] + 10'd240)) ) || ( (xLength >= (game_overX[0] + 10'd250)) && (xLength < (game_overX[0] + 10'd260)) ) || ( (xLength >= (game_overX[0] + 10'd290)) && (xLength < (game_overX[0] + 10'd300)) ) || ( (xLength >= (game_overX[0] + 10'd310)) && (xLength < (game_overX[0] + 10'd320)) ) || ( (xLength >= (game_overX[0] + 10'd370)) && (xLength < (game_overX[0] + 10'd380)) ) || ( (xLength >= (game_overX[0] + 10'd410)) && (xLength < (game_overX[0] + 10'd420)) ));
					go3 = ((yLength >= (game_overY[0] + 9'd20)) && (yLength < (game_overY[0] + 9'd30)))  &&  ( ( (xLength >= (game_overX[0] + 10'd20)) && (xLength < (game_overX[0] + 10'd30)) ) || ( (xLength >= (game_overX[0] + 10'd60)) && (xLength < (game_overX[0] + 10'd70)) ) || ( (xLength >= (game_overX[0] + 10'd100)) && (xLength < (game_overX[0] + 10'd110)) ) || ( (xLength >= (game_overX[0] + 10'd120)) && (xLength < (game_overX[0] + 10'd130)) ) || ( (xLength >= (game_overX[0] + 10'd160)) && (xLength < (game_overX[0] + 10'd170)) ) || ( (xLength >= (game_overX[0] + 10'd190)) && (xLength < (game_overX[0] + 10'd200)) ) || ( (xLength >= (game_overX[0] + 10'd210)) && (xLength < (game_overX[0] + 10'd220)) ) || ( (xLength >= (game_overX[0] + 10'd230)) && (xLength < (game_overX[0] + 10'd240)) ) || ( (xLength >= (game_overX[0] + 10'd250)) && (xLength < (game_overX[0] + 10'd260)) ) || ( (xLength >= (game_overX[0] + 10'd290)) && (xLength < (game_overX[0] + 10'd300)) ) || ( (xLength >= (game_overX[0] + 10'd310)) && (xLength < (game_overX[0] + 10'd320)) ) || ( (xLength >= (game_overX[0] + 10'd370)) && (xLength < (game_overX[0] + 10'd420)) ));
					go4 = ((yLength >= (game_overY[0] + 9'd30)) && (yLength < (game_overY[0] + 9'd40)))  &&  ( ( (xLength >= (game_overX[0] + 10'd20)) && (xLength < (game_overX[0] + 10'd30)) ) || ( (xLength >= (game_overX[0] + 10'd60)) && (xLength < (game_overX[0] + 10'd70)) ) || ( (xLength >= (game_overX[0] + 10'd100)) && (xLength < (game_overX[0] + 10'd110)) ) || ( (xLength >= (game_overX[0] + 10'd120)) && (xLength < (game_overX[0] + 10'd130)) ) || ( (xLength >= (game_overX[0] + 10'd160)) && (xLength < (game_overX[0] + 10'd170)) ) || ( (xLength >= (game_overX[0] + 10'd190)) && (xLength < (game_overX[0] + 10'd200)) ) || ( (xLength >= (game_overX[0] + 10'd230)) && (xLength < (game_overX[0] + 10'd240)) ) || ( (xLength >= (game_overX[0] + 10'd250)) && (xLength < (game_overX[0] + 10'd260)) ) || ( (xLength >= (game_overX[0] + 10'd290)) && (xLength < (game_overX[0] + 10'd300)) ) || ( (xLength >= (game_overX[0] + 10'd310)) && (xLength < (game_overX[0] + 10'd320)) ) || ( (xLength >= (game_overX[0] + 10'd370)) && (xLength < (game_overX[0] + 10'd380)) ) || ( (xLength >= (game_overX[0] + 10'd410)) && (xLength < (game_overX[0] + 10'd420)) ));
					go5 = ((yLength >= (game_overY[0] + 9'd40)) && (yLength < (game_overY[0] + 9'd50)))  &&  ( ( (xLength >= (game_overX[0] + 10'd20)) && (xLength < (game_overX[0] + 10'd30)) ) || ( (xLength >= (game_overX[0] + 10'd70)) && (xLength < (game_overX[0] + 10'd100)) ) || ( (xLength >= (game_overX[0] + 10'd130)) && (xLength < (game_overX[0] + 10'd160)) ) || ( (xLength >= (game_overX[0] + 10'd190)) && (xLength < (game_overX[0] + 10'd200)) ) || ( (xLength >= (game_overX[0] + 10'd230)) && (xLength < (game_overX[0] + 10'd240)) ) || ( (xLength >= (game_overX[0] + 10'd260)) && (xLength < (game_overX[0] + 10'd290)) ) || ( (xLength >= (game_overX[0] + 10'd320)) && (xLength < (game_overX[0] + 10'd360)) ) || ( (xLength >= (game_overX[0] + 10'd370)) && (xLength < (game_overX[0] + 10'd380)) ) || ( (xLength >= (game_overX[0] + 10'd410)) && (xLength < (game_overX[0] + 10'd420)) ));
					
					//"CAKE"
					go6 =  ((yLength >= (game_overY[0] + 9'd60))  && (yLength < (game_overY[0] + 9'd70)))  &&  ( ( (xLength >= (game_overX[0] + 10'd105)) && (xLength < (game_overX[0] + 10'd145)) ) || ( (xLength >= (game_overX[0] + 10'd175)) && (xLength < (game_overX[0] + 10'd185)) ) || ( (xLength >= (game_overX[0] + 10'd215)) && (xLength < (game_overX[0] + 10'd225)) ) || ( (xLength >= (game_overX[0] + 10'd255)) && (xLength < (game_overX[0] + 10'd265)) ) || ( (xLength >= (game_overX[0] + 10'd275)) && (xLength < (game_overX[0] + 10'd325)) ) );
					go7 =  ((yLength >= (game_overY[0] + 9'd70))  && (yLength < (game_overY[0] + 9'd80)))  &&  ( ( (xLength >= (game_overX[0] + 10'd95)) && (xLength < (game_overX[0] + 10'd105)) ) || ( (xLength >= (game_overX[0] + 10'd165)) && (xLength < (game_overX[0] + 10'd175)) ) || ( (xLength >= (game_overX[0] + 10'd185)) && (xLength < (game_overX[0] + 10'd195)) ) || ( (xLength >= (game_overX[0] + 10'd215)) && (xLength < (game_overX[0] + 10'd225)) ) || ( (xLength >= (game_overX[0] + 10'd245)) && (xLength < (game_overX[0] + 10'd255)) ) || ( (xLength >= (game_overX[0] + 10'd275)) && (xLength < (game_overX[0] + 10'd285)) ));
					go8 =  ((yLength >= (game_overY[0] + 9'd80))  && (yLength < (game_overY[0] + 9'd90)))  &&  ( ( (xLength >= (game_overX[0] + 10'd95)) && (xLength < (game_overX[0] + 10'd105)) ) || ( (xLength >= (game_overX[0] + 10'd155)) && (xLength < (game_overX[0] + 10'd205)) ) || ( (xLength >= (game_overX[0] + 10'd215)) && (xLength < (game_overX[0] + 10'd245)) ) || ( (xLength >= (game_overX[0] + 10'd275)) && (xLength < (game_overX[0] + 10'd305)) ));
					go9 =  ((yLength >= (game_overY[0] + 9'd90))  && (yLength < (game_overY[0] + 9'd100))) &&  ( ( (xLength >= (game_overX[0] + 10'd95)) && (xLength < (game_overX[0] + 10'd105)) ) || ( (xLength >= (game_overX[0] + 10'd155)) && (xLength < (game_overX[0] + 10'd165)) ) || ( (xLength >= (game_overX[0] + 10'd195)) && (xLength < (game_overX[0] + 10'd205)) ) || ( (xLength >= (game_overX[0] + 10'd215)) && (xLength < (game_overX[0] + 10'd225)) ) || ( (xLength >= (game_overX[0] + 10'd245)) && (xLength < (game_overX[0] + 10'd255)) ) || ( (xLength >= (game_overX[0] + 10'd275)) && (xLength < (game_overX[0] + 10'd285)) ));
					go10 = ((yLength >= (game_overY[0] + 9'd100)) && (yLength < (game_overY[0] + 9'd110))) &&  ( ( (xLength >= (game_overX[0] + 10'd105)) && (xLength < (game_overX[0] + 10'd145)) ) || ( (xLength >= (game_overX[0] + 10'd155)) && (xLength < (game_overX[0] + 10'd165)) ) || ( (xLength >= (game_overX[0] + 10'd195)) && (xLength < (game_overX[0] + 10'd205)) ) || ( (xLength >= (game_overX[0] + 10'd215)) && (xLength < (game_overX[0] + 10'd225)) ) || ( (xLength >= (game_overX[0] + 10'd255)) && (xLength < (game_overX[0] + 10'd265)) ) || ( (xLength >= (game_overX[0] + 10'd275)) && (xLength < (game_overX[0] + 10'd325)) ));
				end
	end

////win screen 
wire win_text;
assign win_text = (win1 || win2 || win3 || win4 || win5);
reg [9:0] wt_X[0:31];
reg [8:0] wt_Y[0:31];

//After eating all apples, "NICE" is displayed on screen to congratulate the player
reg win1, win2, win3, win4, win5;

always @(posedge clk)
	begin
		if (rst == 1'b1)
			begin
				wt_X[0] = 10'd230;
				wt_Y[0] = 9'd230;
			end
		else
			begin
			//"NICE"
			win1 = ((yLength >= (wt_Y[0] + 9'd0))  && (yLength < (wt_Y[0] + 9'd10)))  && ( ( (xLength >= (wt_X[0] + 10'd0)) && (xLength < (wt_X[0] + 10'd10)) ) || ( (xLength >= (wt_X[0] + 10'd40)) && (xLength < (wt_X[0] + 10'd50)) ) || ( (xLength >= (wt_X[0] + 10'd60)) && (xLength < (wt_X[0] + 10'd90)) ) || ( (xLength >= (wt_X[0] + 10'd110)) && (xLength < (wt_X[0] + 10'd150)) ) || ((xLength >= (wt_X[0] + 10'd160)) && (xLength < (wt_X[0] + 10'd210)) ) );
			win2 = ((yLength >= (wt_Y[0] + 9'd10)) && (yLength < (wt_Y[0] + 9'd20)))  && ( ( (xLength >= (wt_X[0] + 10'd0)) && (xLength < (wt_X[0] + 10'd20)) ) || ( (xLength >= (wt_X[0] + 10'd40)) && (xLength < (wt_X[0] + 10'd50)) ) || ( (xLength >= (wt_X[0] + 10'd70)) && (xLength < (wt_X[0] + 10'd80)) ) || ( (xLength >= (wt_X[0] + 10'd100)) && (xLength < (wt_X[0] + 10'd110)) ) || ((xLength >= (wt_X[0] + 10'd160)) && (xLength < (wt_X[0] + 10'd170)) ) );
			win3 = ((yLength >= (wt_Y[0] + 9'd20)) && (yLength < (wt_Y[0] + 9'd30)))  && ( ( (xLength >= (wt_X[0] + 10'd0)) && (xLength < (wt_X[0] + 10'd10)) ) || ( (xLength >= (wt_X[0] + 10'd20)) && (xLength < (wt_X[0] + 10'd30)) ) || ( (xLength >= (wt_X[0] + 10'd40)) && (xLength < (wt_X[0] + 10'd50)) ) || ( (xLength >= (wt_X[0] + 10'd70)) && (xLength < (wt_X[0] + 10'd80)) ) || ( (xLength >= (wt_X[0] + 10'd100)) && (xLength < (wt_X[0] + 10'd110)) ) || ((xLength >= (wt_X[0] + 10'd160)) && (xLength < (wt_X[0] + 10'd190)) ));
			win4 = ((yLength >= (wt_Y[0] + 9'd30)) && (yLength < (wt_Y[0] + 9'd40)))  && ( ( (xLength >= (wt_X[0] + 10'd0)) && (xLength < (wt_X[0] + 10'd10)) ) || ( (xLength >= (wt_X[0] + 10'd30)) && (xLength < (wt_X[0] + 10'd50)) ) || ( (xLength >= (wt_X[0] + 10'd70)) && (xLength < (wt_X[0] + 10'd80)) ) || ( (xLength >= (wt_X[0] + 10'd100)) && (xLength < (wt_X[0] + 10'd110)) ) || ((xLength >= (wt_X[0] + 10'd160)) && (xLength < (wt_X[0] + 10'd170)) ) );
			win5 = ((yLength >= (wt_Y[0] + 9'd40)) && (yLength < (wt_Y[0] + 9'd50)))  && ( ( (xLength >= (wt_X[0] + 10'd0)) && (xLength < (wt_X[0] + 10'd10)) ) || ( (xLength >= (wt_X[0] + 10'd40)) && (xLength < (wt_X[0] + 10'd50)) ) || ( (xLength >= (wt_X[0] + 10'd60)) && (xLength < (wt_X[0] + 10'd90)) ) || ( (xLength >= (wt_X[0] + 10'd110)) && (xLength < (wt_X[0] + 10'd150)) ) || ((xLength >= (wt_X[0] + 10'd160)) && (xLength < (wt_X[0] + 10'd210)) ) );
			end
	end




//level difficulty////
//displays either "EASY" or "HARD" based on players choice of lvl
//for code lvlone is easy amd lvltwo is hard
wire level_num1_text;
wire level_num2_text;
reg [9:0] level_X[0:31];
reg [8:0] level_Y[0:31];

assign level_num1_text = (lvone1 || lvone2 || lvone3 || lvone4 || lvone5);
assign level_num2_text = (lvtwo1 || lvtwo2 || lvtwo3 || lvtwo4 || lvtwo5);

reg lvone1, lvone2, lvone3, lvone4, lvone5;
reg lvtwo1, lvtwo2, lvtwo3, lvtwo4, lvtwo5;

always @(posedge clk)
	begin
		level_X[0] = 10'd15;
		level_Y[0] = 9'd3;
		//"EASY"
		lvone1 = ((yLength >= (level_Y[0] + 9'd0))  && (yLength < (level_Y[0] + 9'd2)))  && ( ( (xLength >= (level_X[0] + 10'd0)) && (xLength < (level_X[0] + 10'd10)) )  || ( (xLength >= (level_X[0] + 10'd16)) && (xLength < (level_X[0] + 10'd18)) ) || ( (xLength >= (level_X[0] + 10'd24)) && (xLength < (level_X[0] + 10'd34)) ) || ( (xLength >= (level_X[0] + 10'd36)) && (xLength < (level_X[0] + 10'd38)) ) || ( (xLength >= (level_X[0] + 10'd44)) && (xLength < (level_X[0] + 10'd46)) ));
		lvone2 = ((yLength >= (level_Y[0] + 9'd2))  && (yLength < (level_Y[0] + 9'd4)))  && ( ( (xLength >= (level_X[0] + 10'd0)) && (xLength < (level_X[0] + 10'd2)) )  || ( (xLength >= (level_X[0] + 10'd14)) && (xLength < (level_X[0] + 10'd16)) ) || ( (xLength >= (level_X[0] + 10'd18)) && (xLength < (level_X[0] + 10'd20)) ) || ( (xLength >= (level_X[0] + 10'd24)) && (xLength < (level_X[0] + 10'd26)) ) || ( (xLength >= (level_X[0] + 10'd36)) && (xLength < (level_X[0] + 10'd38)) ) || ( (xLength >= (level_X[0] + 10'd44)) && (xLength < (level_X[0] + 10'd46)) ) );
		lvone3 = ((yLength >= (level_Y[0] + 9'd4))  && (yLength < (level_Y[0] + 9'd6)))  && ( ( (xLength >= (level_X[0] + 10'd0)) && (xLength < (level_X[0] + 10'd6)) )  || ( (xLength >= (level_X[0] + 10'd12)) && (xLength < (level_X[0] + 10'd22)) ) || ( (xLength >= (level_X[0] + 10'd24)) && (xLength < (level_X[0] + 10'd34)) ) || ( (xLength >= (level_X[0] + 10'd38)) && (xLength < (level_X[0] + 10'd40)) ) || ( (xLength >= (level_X[0] + 10'd42)) && (xLength < (level_X[0] + 10'd44)) ));
		lvone4 = ((yLength >= (level_Y[0] + 9'd6))  && (yLength < (level_Y[0] + 9'd8)))  && ( ( (xLength >= (level_X[0] + 10'd0)) && (xLength < (level_X[0] + 10'd2)) )  || ( (xLength >= (level_X[0] + 10'd12)) && (xLength < (level_X[0] + 10'd14)) ) || ( (xLength >= (level_X[0] + 10'd20)) && (xLength < (level_X[0] + 10'd22)) ) || ( (xLength >= (level_X[0] + 10'd32)) && (xLength < (level_X[0] + 10'd34)) ) || ( (xLength >= (level_X[0] + 10'd40)) && (xLength < (level_X[0] + 10'd42)) ));
		lvone5 = ((yLength >= (level_Y[0] + 9'd8))  && (yLength < (level_Y[0] + 9'd10))) && ( ( (xLength >= (level_X[0] + 10'd0)) && (xLength < (level_X[0] + 10'd10)) ) || ( (xLength >= (level_X[0] + 10'd12)) && (xLength < (level_X[0] + 10'd14)) ) || ( (xLength >= (level_X[0] + 10'd20)) && (xLength < (level_X[0] + 10'd22)) ) || ( (xLength >= (level_X[0] + 10'd24)) && (xLength < (level_X[0] + 10'd34)) ) || ( (xLength >= (level_X[0] + 10'd40)) && (xLength < (level_X[0] + 10'd42)) )  );
		
		//"HARD"
		lvtwo1 = ((yLength >= (level_Y[0] + 9'd0))  && (yLength < (level_Y[0] + 9'd2)))  && ( ( (xLength >= (level_X[0] + 10'd0)) && (xLength < (level_X[0] + 10'd2)) )  || ( (xLength >= (level_X[0] + 10'd8)) && (xLength < (level_X[0] + 10'd10)) ) || ( (xLength >= (level_X[0] + 10'd16)) && (xLength < (level_X[0] + 10'd18)) ) || ( (xLength >= (level_X[0] + 10'd26)) && (xLength < (level_X[0] + 10'd32)) ) || ( (xLength >= (level_X[0] + 10'd36)) && (xLength < (level_X[0] + 10'd44)) ));
		lvtwo2 = ((yLength >= (level_Y[0] + 9'd2))  && (yLength < (level_Y[0] + 9'd4)))  && ( ( (xLength >= (level_X[0] + 10'd0)) && (xLength < (level_X[0] + 10'd2)) )  || ( (xLength >= (level_X[0] + 10'd8)) && (xLength < (level_X[0] + 10'd10)) ) || ( (xLength >= (level_X[0] + 10'd14)) && (xLength < (level_X[0] + 10'd16)) ) || ( (xLength >= (level_X[0] + 10'd18)) && (xLength < (level_X[0] + 10'd20)) ) || ( (xLength >= (level_X[0] + 10'd24)) && (xLength < (level_X[0] + 10'd26)) ) || ( (xLength >= (level_X[0] + 10'd32)) && (xLength < (level_X[0] + 10'd34)) ) || ( (xLength >= (level_X[0] + 10'd36)) && (xLength < (level_X[0] + 10'd38)) ) || ( (xLength >= (level_X[0] + 10'd44)) && (xLength < (level_X[0] + 10'd46)) ));
		lvtwo3 = ((yLength >= (level_Y[0] + 9'd4))  && (yLength < (level_Y[0] + 9'd6)))  && ( ( (xLength >= (level_X[0] + 10'd0)) && (xLength < (level_X[0] + 10'd10)) )  || ( (xLength >= (level_X[0] + 10'd12)) && (xLength < (level_X[0] + 10'd22)) ) || ( (xLength >= (level_X[0] + 10'd24)) && (xLength < (level_X[0] + 10'd34)) ) || ( (xLength >= (level_X[0] + 10'd36)) && (xLength < (level_X[0] + 10'd38)) ) || ( (xLength >= (level_X[0] + 10'd44)) && (xLength < (level_X[0] + 10'd46)) ));
		lvtwo4 = ((yLength >= (level_Y[0] + 9'd6))  && (yLength < (level_Y[0] + 9'd8)))  && ( ( (xLength >= (level_X[0] + 10'd0)) && (xLength < (level_X[0] + 10'd2)) )  || ( (xLength >= (level_X[0] + 10'd8)) && (xLength < (level_X[0] + 10'd10)) ) || ( (xLength >= (level_X[0] + 10'd12)) && (xLength < (level_X[0] + 10'd14)) ) || ( (xLength >= (level_X[0] + 10'd20)) && (xLength < (level_X[0] + 10'd22)) ) || ( (xLength >= (level_X[0] + 10'd24)) && (xLength < (level_X[0] + 10'd26)) ) || ( (xLength >= (level_X[0] + 10'd30)) && (xLength < (level_X[0] + 10'd32)) ) || ( (xLength >= (level_X[0] + 10'd36)) && (xLength < (level_X[0] + 10'd38)) ) || ( (xLength >= (level_X[0] + 10'd44)) && (xLength < (level_X[0] + 10'd46)) ));
		lvtwo5 = ((yLength >= (level_Y[0] + 9'd8))  && (yLength < (level_Y[0] + 9'd10))) && ( ( (xLength >= (level_X[0] + 10'd0)) && (xLength < (level_X[0] + 10'd2)) ) || ( (xLength >= (level_X[0] + 10'd8)) && (xLength < (level_X[0] + 10'd10)) ) || ( (xLength >= (level_X[0] + 10'd12)) && (xLength < (level_X[0] + 10'd14)) ) || ( (xLength >= (level_X[0] + 10'd20)) && (xLength < (level_X[0] + 10'd22)) ) || ( (xLength >= (level_X[0] + 10'd24)) && (xLength < (level_X[0] + 10'd26)) )  || ( (xLength >= (level_X[0] + 10'd32)) && (xLength < (level_X[0] + 10'd34)) ) || ( (xLength >= (level_X[0] + 10'd36)) && (xLength < (level_X[0] + 10'd44)) ));
		end

//displays numbers on apples
output apple1_text;
output apple2_text;
output apple3_text;
output apple4_text;
output apple5_text;

wire apple1_text;
wire apple2_text;
wire apple3_text;
wire apple4_text;
wire apple5_text;


reg [9:0] apple1_X[0:31];
reg [8:0] apple1_Y[0:31];
reg [9:0] apple2_X[0:31];
reg [8:0] apple2_Y[0:31];
reg [9:0] apple3_X[0:31];
reg [8:0] apple3_Y[0:31];
reg [9:0] apple4_X[0:31];
reg [8:0] apple4_Y[0:31];
reg [9:0] apple5_X[0:31];
reg [8:0] apple5_Y[0:31];

assign apple1_text = (app11 || app12 || app13 || app14 || app15);
assign apple2_text = (app21 || app22 || app23 || app24 || app25);
assign apple3_text = (app31 || app32 || app33 || app34 || app35);
assign apple4_text = (app41 || app42 || app43 || app44 || app45);
assign apple5_text = (app51 || app52 || app53 || app54 || app55);

reg app11, app12, app13, app14, app15;
reg app21, app22, app23, app24, app25;
reg app31, app32, app33, app34, app35;
reg app41, app42, app43, app44, app45;
reg app51, app52, app53, app54, app55;

//Each apple assigned a number based on order collected and positioned below
always @(posedge clk)
	begin
		apple1_X[0] = 10'd205;
		apple1_Y[0] = 9'd400;
		//"1"
		app11 = ((yLength >= (apple1_Y[0] + 9'd2))  && (yLength < (apple1_Y[0] + 9'd4)))  && ( ( (xLength >= (apple1_X[0] + 10'd4)) && (xLength < (apple1_X[0] + 10'd8)) )  );
		app12 = ((yLength >= (apple1_Y[0] + 9'd4))  && (yLength < (apple1_Y[0] + 9'd6)))  && ( ( (xLength >= (apple1_X[0] + 10'd6)) && (xLength < (apple1_X[0] + 10'd8)) ) );
		app13 = ((yLength >= (apple1_Y[0] + 9'd6))  && (yLength < (apple1_Y[0] + 9'd8)))  && ( ( (xLength >= (apple1_X[0] + 10'd6)) && (xLength < (apple1_X[0] + 10'd8)) ) );
		app14 = ((yLength >= (apple1_Y[0] + 9'd8))  && (yLength < (apple1_Y[0] + 9'd10)))  && ( ( (xLength >= (apple1_X[0] + 10'd6)) && (xLength < (apple1_X[0] + 10'd8)) ) );
		app15 = ((yLength >= (apple1_Y[0] + 9'd10))  && (yLength < (apple1_Y[0] + 9'd12))) && ( ( (xLength >= (apple1_X[0] + 10'd4)) && (xLength < (apple1_X[0] + 10'd10)) ));
	
		apple2_X[0] = 10'd135;
		apple2_Y[0] = 9'd300;
		//"2"
		app21 = ((yLength >= (apple2_Y[0] + 9'd2))  && (yLength < (apple2_Y[0] + 9'd4)))  && ( ( (xLength >= (apple2_X[0] + 10'd2)) && (xLength < (apple2_X[0] + 10'd10)) )  );
		app22 = ((yLength >= (apple2_Y[0] + 9'd4))  && (yLength < (apple2_Y[0] + 9'd6)))  && ( ( (xLength >= (apple2_X[0] + 10'd10)) && (xLength < (apple2_X[0] + 10'd12)) ) );
		app23 = ((yLength >= (apple2_Y[0] + 9'd6))  && (yLength < (apple2_Y[0] + 9'd8)))  && ( ( (xLength >= (apple2_X[0] + 10'd4)) && (xLength < (apple2_X[0] + 10'd10)) ) );
		app24 = ((yLength >= (apple2_Y[0] + 9'd8))  && (yLength < (apple2_Y[0] + 9'd10)))  && ( ( (xLength >= (apple2_X[0] + 10'd2)) && (xLength < (apple2_X[0] + 10'd4)) ) );
		app25 = ((yLength >= (apple2_Y[0] + 9'd10))  && (yLength < (apple2_Y[0] + 9'd12))) && ( ( (xLength >= (apple2_X[0] + 10'd2)) && (xLength < (apple2_X[0] + 10'd12)) ));
	
		apple3_X[0] = 10'd35;
		apple3_Y[0] = 9'd80;
		//"3"
		app31 = ((yLength >= (apple3_Y[0] + 9'd2))  && (yLength < (apple3_Y[0] + 9'd4)))  && ( ( (xLength >= (apple3_X[0] + 10'd2)) && (xLength < (apple3_X[0] + 10'd10)) )  );
		app32 = ((yLength >= (apple3_Y[0] + 9'd4))  && (yLength < (apple3_Y[0] + 9'd6)))  && ( ( (xLength >= (apple3_X[0] + 10'd10)) && (xLength < (apple3_X[0] + 10'd12)) ) );
		app33 = ((yLength >= (apple3_Y[0] + 9'd6))  && (yLength < (apple3_Y[0] + 9'd8)))  && ( ( (xLength >= (apple3_X[0] + 10'd6)) && (xLength < (apple3_X[0] + 10'd10)) ) );
		app34 = ((yLength >= (apple3_Y[0] + 9'd8))  && (yLength < (apple3_Y[0] + 9'd10)))  && ( ( (xLength >= (apple3_X[0] + 10'd10)) && (xLength < (apple3_X[0] + 10'd12)) ) );
		app35 = ((yLength >= (apple3_Y[0] + 9'd10))  && (yLength < (apple3_Y[0] + 9'd12))) && ( ( (xLength >= (apple3_X[0] + 10'd2)) && (xLength < (apple3_X[0] + 10'd10)) ));
	
		apple4_X[0] = 10'd440;
		apple4_Y[0] = 9'd290;
		//"4"
		app41 = ((yLength >= (apple4_Y[0] + 9'd2))  && (yLength < (apple4_Y[0] + 9'd4)))  && ( ( (xLength >= (apple4_X[0] + 10'd2)) && (xLength < (apple4_X[0] + 10'd4)) )  || ( (xLength >= (apple4_X[0] + 10'd10)) && (xLength < (apple4_X[0] + 10'd12)) ) );
		app42 = ((yLength >= (apple4_Y[0] + 9'd4))  && (yLength < (apple4_Y[0] + 9'd6)))  && ( ( (xLength >= (apple4_X[0] + 10'd2)) && (xLength < (apple4_X[0] + 10'd4)) ) || ( (xLength >= (apple4_X[0] + 10'd10)) && (xLength < (apple4_X[0] + 10'd12)) ) );
		app43 = ((yLength >= (apple4_Y[0] + 9'd6))  && (yLength < (apple4_Y[0] + 9'd8)))  && ( ( (xLength >= (apple4_X[0] + 10'd4)) && (xLength < (apple4_X[0] + 10'd12)) ) );
		app44 = ((yLength >= (apple4_Y[0] + 9'd8))  && (yLength < (apple4_Y[0] + 9'd10)))  && ( ( (xLength >= (apple4_X[0] + 10'd10)) && (xLength < (apple4_X[0] + 10'd12)) ) );
		app45 = ((yLength >= (apple4_Y[0] + 9'd10))  && (yLength < (apple4_Y[0] + 9'd12))) && ( ( (xLength >= (apple4_X[0] + 10'd10)) && (xLength < (apple4_X[0] + 10'd12)) ));
	
		apple5_X[0] = 10'd600;
		apple5_Y[0] = 9'd50;
		//"5"
		app51 = ((yLength >= (apple5_Y[0] + 9'd2))  && (yLength < (apple5_Y[0] + 9'd4)))  && ( ( (xLength >= (apple5_X[0] + 10'd2)) && (xLength < (apple5_X[0] + 10'd12)) )  );
		app52 = ((yLength >= (apple5_Y[0] + 9'd4))  && (yLength < (apple5_Y[0] + 9'd6)))  && ( ( (xLength >= (apple5_X[0] + 10'd2)) && (xLength < (apple5_X[0] + 10'd4)) ) );
		app53 = ((yLength >= (apple5_Y[0] + 9'd6))  && (yLength < (apple5_Y[0] + 9'd8)))  && ( ( (xLength >= (apple5_X[0] + 10'd2)) && (xLength < (apple5_X[0] + 10'd10)) ) );
		app54 = ((yLength >= (apple5_Y[0] + 9'd8))  && (yLength < (apple5_Y[0] + 9'd10)))  && ( ( (xLength >= (apple5_X[0] + 10'd10)) && (xLength < (apple5_X[0] + 10'd12)) ) );
		app55 = ((yLength >= (apple5_Y[0] + 9'd10))  && (yLength < (apple5_Y[0] + 9'd12))) && ( ( (xLength >= (apple5_X[0] + 10'd2)) && (xLength < (apple5_X[0] + 10'd10)) ));
	
	end

endmodule
