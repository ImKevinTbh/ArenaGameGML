// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function weapon_0(){
	inst = instance_create_layer(obj_pl.x, obj_pl.y, "Instances", obj_pl_bullet);
	show_debug_message("AAAAAa")
		fcooldown = 3;
		inst.pl_bl_overpen_time = 0;
}