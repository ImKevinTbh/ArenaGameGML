/// @description Insert description here
// You can write your code in this editor


draw_text(x, y + 30, $"{hassecondwep}, {selected_weapon}")



if (alarm[9] > 0)
{
	if (obj_pl.selected_weapon = 0)
	{
		draw_sprite(sp_default_weapon, -1, x, y - 75);
	}
	else if (obj_pl.selected_weapon = 1)
	{
		draw_sprite(sp_weapon_1, -1, x, y - 75);
	}
}
	
	
	draw_healthbar((x - 30), (y + -50), (x + 30), (y + -60), ((stamina / maxstamina) * 100), c_dkgray, c_maroon, c_aqua, 0, true, true)

	
if (immunity == false)
{
	draw_healthbar((x - 30), (y + -40), (x + 30), (y + -50), ((ehealth / maxhp) * 100), c_dkgray, c_maroon, c_lime, 0, true, true)

	
}
else
{
	draw_healthbar((x - 30), (y + -40), (x + 30), (y + -50), ((ehealth / maxhp) * 100), c_yellow, c_yellow, c_yellow, 0, true, true)
}