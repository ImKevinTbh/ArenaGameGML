
function weapon_0(){
	for (i = 0; i < 10; i++) // For loop, runs 10 times
	{
	inst = instance_create_layer(obj_pl.x, obj_pl.y, "Instances", obj_pl_bullet); // Make new bullet instance and give it an identifier "inst" so we can address it later
	show_debug_message("AAAAAa") // Make sure the script actually fires (remove later)
		fcooldown = 5;
		inst.pl_bl_overpen_time = 0;
		inst.pl_bl_damage = 51;
		inst.speed = inst.speed * 0.5
		inst.alarm[1] = 15
		inst.image_blend = make_color_rgb(random(255), random(255), random(255))
		inst.direction = inst.direction + random_range(-45, 45)
		Shake(0.1, 1, 1); // This doesn't work, will fix if I have time
	}
}