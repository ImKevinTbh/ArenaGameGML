if (object_exists(obj_pl))
{
	move_towards_point(obj_pl.x, obj_pl.y, spd);
}
image_angle = direction;

if ((ehealth) <= 0)
{

	global.pscore += 5;	
	instance_destroy();
}