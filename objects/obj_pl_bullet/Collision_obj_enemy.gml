	dir = point_direction(other.x, other.y, x, y);
	
	if (pl_bl_knockback)
	{
		if (!place_meeting(lengthdir_x(100, dir), lengthdir_y(100, dir), obj_collider))
                other.x -= lengthdir_x(150, -dir);
                other.y -= lengthdir_y(150, dir);
	}
	instance_destroy()
    other.ehealth = other.ehealth - pl_bl_damage;
alarm[0] = pl_bl_overpen_time;