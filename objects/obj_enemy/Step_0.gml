if (object_exists(obj_pl))
{
	move_towards_point(obj_pl.x, obj_pl.y, spd);
}
image_angle = point_direction(obj_pl.x, 0, obj_pl.x, 0);
if (hspeed < 0) {image_xscale = -1}
if (hspeed >= 0) {image_xscale = 1}
if ((ehealth) <= 0)
{

	global.pscore += 5;	
	instance_destroy();
}

if (place_meeting(x + lengthdir_x(speed, direction), y + lengthdir_y(speed, direction), obj_enemy)) 
{
speed = -speed;
direction = round(direction / 90) * 90 + 45;
alarm[0] = 120;
}

if (place_meeting(x + lengthdir_x(speed, direction), y + lengthdir_y(speed, direction), obj_enemy_big)) 
{
speed = -speed;
direction = round(direction / 90) * 90 + 45;
alarm[0] = 120;
}

if (place_meeting(x + lengthdir_x(speed, direction), y + lengthdir_y(speed, direction), obj_collider)) 
{
speed = -speed;
direction = round(direction / 90) * 90 + 45;
alarm[0] = 120;
}
if (alarm[0] < 0)
{
	image_angle = point_direction(obj_pl.x, 0, obj_pl.x, 0);
}
