global.currentScore = 0;
global.enemycap = 3;
global.totalenemies = 1;


global.scoretarget1 = 500;

global.levelHasCapturedZone = false;
global.percentageOfZoneCaptured = 0;
global.levelHasZone = false;


global.highScore = []; // to store the high score table
ini_open("scores.ini") // open the .ini file
for(var i = 0; i<5; i++)
{
	global.highScore[i] = ini_read_real(string(i), "Score", 0);	
}
ini_close();
scoreDrawOffset = 32; // for spacing out the highscores vertically


// set variables to be accessible for every other object in the game, gamehandler should *always* exist






