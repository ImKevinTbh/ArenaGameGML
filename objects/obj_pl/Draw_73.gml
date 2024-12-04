/// @description Insert description here
// You can write your code in this editor
draw_healthbar((x - 30), (bbox_top + 1), (x + 30), (bbox_top + 12), ((stamina / maxstamina) * 100), c_dkgray, c_maroon, c_aqua, 0, true, true)


draw_text(x, y + 200, $"[{x}, {y}")
	
if (immunity == false)
{
	draw_healthbar((x - 30), (bbox_top - 1), (x + 30), (bbox_top + -13), ((ehealth / maxhp) * 100), c_dkgray, c_maroon, c_lime, 0, true, true)

	
}
else
{
	draw_healthbar((x - 30), (bbox_top - 1), (x + 30), (bbox_top + -13), ((ehealth / maxhp) * 100), c_yellow, c_yellow, c_yellow, 0, true, true)
}