/// @description Insert description here
// You can write your code in this editor
if (!immunity && alarm[11] <= 0)
{
	dir = point_direction(other.x, other.y, x, y);
	if (!place_meeting(lengthdir_x(100, dir), lengthdir_y(100, dir), obj_collider))
                x += lengthdir_x(100, -dir);
                y += lengthdir_y(100, dir);
				
				//other.x -= lengthdir_x(100, dir);
                //other.y -= lengthdir_y(100, dir);
	ehealth -= 12;
	alarm[11] = 60;
	
}