if (global.currentScore % 10 && global.currentScore != 0)
{
	show_debug_message(round(global.currentScore / 10 * 1.3))
	global.enemycap = round(global.currentScore / 10 * 1.3 ) // Enemy cap is set by just doing some random math on the total score, so the more score the player gets the harder the level is
}




if (global.currentScore >= global.scoretarget1) // win condition
{
	if room == rm_lvl1 // if player still in the first level
	{
	room_goto(rm_lvl2) // If player reaches score threshold, go to next room
	global.scoretarget1 += 500; // add 500 more score to the threshold for the next level
	}
	else
	{ 
		room_goto(rm_menu_win); // show winscreen
		global.levelHasCapturedZone = false;
		global.percentageOfZoneCaptured = 0;
		global.levelHasZone = false;
		global.totalenemies = 0;
		
		
	for (var i = 0; i < 5; i++) // starting from the top, run through all the items in the array
		{
			if (global.currentScore > global.highScore[i]) // check to see if the current score is grewater than the current array item
			{
				for (var j = 4; j>i; j--)
				{
					global.highScore[j] = global.highScore[j-1]; // replacing the score for j with the one above
				}
			
				global.highScore[i] = global.currentScore;
				break; // kick us out the main for loop
			}
		}
		
		ini_open("scores.ini")
		for (var i = 0; i<5; i++)
		{
			ini_write_real(string(i), "Score", global.highScore[i]);
		}
		ini_close();
		

		
		
		

		// reset level specific variables and save score
	}
}