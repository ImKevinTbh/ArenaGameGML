/// @desc 
ini_open("scores.ini") // open the .ini file

//reading through the array in the ini file and storing it in our local array
for(var i = 0; i<5; i++)
{
	global.highScore[i] = ini_read_real(string(i), "Score", 0);	
}
ini_close(); // close the file again so that we can use it elsewhere