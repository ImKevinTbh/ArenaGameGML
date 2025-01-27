/// @desc Update table

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

global.currentScore = 0;