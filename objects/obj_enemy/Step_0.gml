if (object_exists(obj_pl)) // Make sure the player exists and is not null
{
	
    
    mp_potential_step(obj_pl.x, obj_pl.y, spd, false); // Go to nearest player, will avoid solid tagged objects
}
image_angle = point_direction(obj_pl.x, 0, obj_pl.x, 0); // angle enemy toward player
if (hspeed < 0) {image_xscale = -1} // flip sprite if going left
if (hspeed >= 0) {image_xscale = 1} // unflip sprite if going right
if ((ehealth) <= 0) // if enemy no have health
{

	global.currentScore += 5;	// add score
	instance_destroy(); // destroy enemy
}


