/// @description Insert description here
// You can write your code in this editor
if (!ev_outside)
{
	if (random_range(0, 101) < 75)
	{ instance_create_layer(x, y, layer, obj_pickup); } // Drop item as pickup
	else
	{ instance_create_layer(x, y, layer, obj_enemy); } // Turn into smaller enemy
}
global.totalenemies--; // Decrement alive enemies for gamehandler