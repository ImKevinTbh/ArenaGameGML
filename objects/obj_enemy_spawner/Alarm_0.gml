
if (global.totalenemies < global.enemycap) // if the existing number of enemies is below the total cap
{
	s_x = random(room_width)
	s_y = random(room_height)
	if collision_point(s_x, s_y, obj_collider, false, true) // Should stop enemies spawning in walls, I know there's a better way to do this probably but this works
	{
		s_x = random(room_width)
		s_y = random(room_height)
	}	
	else
	{
		instance_create_layer(s_x, s_y, "EnemyLayer", obj_enemy_spawn);  // Create new instance of enemy "spawn" object
	}

}
alarm[0] = spawnrate;