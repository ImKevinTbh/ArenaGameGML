/// @desc Save scores to file

ini_open("scores.ini")
for (var i = 0; i<5; i++)
{
	ini_write_real(string(i), "Score", global.highScore[i]);
}
ini_close();