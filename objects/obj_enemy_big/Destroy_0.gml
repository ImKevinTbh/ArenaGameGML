/// @description Insert description here
// You can write your code in this editor
if (!ev_outside)
{
	if (random_range(0, 101) < 75)
	{ instance_create_layer(x, y, layer, obj_pickup); }
	else
	{ instance_create_layer(x, y, layer, obj_enemy); }
}
global.totalenemies--;