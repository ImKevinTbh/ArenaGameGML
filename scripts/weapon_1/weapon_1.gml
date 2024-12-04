// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function weapon_1(){
	inst = instance_create_layer(obj_pl.x, obj_pl.y, "Instances", obj_pl_bullet);
	show_debug_message("AAAAAa")
		fcooldown = 50;
		inst.image_xscale = 5
		inst.image_yscale = 5
		inst.image_blend = c_red
		inst.pl_bl_damage = 1500
		inst.speed = inst.speed / 1.3
		inst.pl_bl_overpen_time = 10

}