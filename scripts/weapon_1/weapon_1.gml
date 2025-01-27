// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function weapon_1(){
	inst = instance_create_layer(obj_pl.x, obj_pl.y, "Instances", obj_pl_bullet); // Make object instance, assign it identifier "inst" so we can address it later
	show_debug_message("AAAAAa")
		fcooldown = 25;
		inst.image_xscale = 3
		inst.image_yscale = 3
		inst.image_blend = c_red
		inst.pl_bl_damage = 50
		inst.speed = inst.speed * 1.7
		inst.pl_bl_overpen_time = 5
		inst.pl_bl_knockback = true;
		Shake(1, 5, 0.5); // This doesn't work, will fix later
}