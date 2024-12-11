// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function weapon_0(){
	for (i = 0; i < 10; i++)
	{
	inst = instance_create_layer(obj_pl.x, obj_pl.y, "Instances", obj_pl_bullet);
	show_debug_message("AAAAAa")
		fcooldown = 5;
		inst.pl_bl_overpen_time = 0;
		inst.pl_bl_damage = 51;
		inst.speed = inst.speed * 0.5
		inst.alarm[1] = 15
		inst.image_blend = make_color_rgb(random(255), random(255), random(255))
		inst.direction = inst.direction + random_range(-45, 45)
		Shake(0.1, 1, 1);
	}
}