
//if room == rm_lvl1 or room == rm_lvl2
//{
//	if (global.levelHasZone == false) // Check if the level already has a zone or not
//	{
//		instance_create_layer(irandom(room_width), irandom(room_height), "Instances", obj_zonecapture); // make zone to capture
//		global.levelHasCapturedZone = false;
//		global.percentageOfZoneCaptured = 0;
//		global.levelHasZone = true;
//	}
//	else
//	{
//	return; // Do nothing, return no value
//	}
//}

if room == rm_score
{
	ini_open("scores.ini") // open the .ini file

//reading through the array in the ini file and storing it in our local array
for(var i = 0; i<5; i++)
{
	global.highScore[i] = ini_read_real(string(i), "Score", 0);	
}
ini_close(); // close the file again so that we can use it elsewhere
	
}

