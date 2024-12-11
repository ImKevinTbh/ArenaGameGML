draw_self();
var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);
var cw = camera_get_view_width(view_camera[0]);


//draw_set_font(fnt_score);
draw_set_colour(c_white);
draw_text(cx + (cw / 2), cy + 25, string($"Score: {global.pscore}"));
draw_text(cx + (cw / 2), cy + 45, string($"Lives: {lives}"));


draw_text(cx, cy + 45, string($"Shoot: Mb1"));
draw_text(cx, cy + 65, string($"Shift: Space (Hold)"));
draw_text(cx, cy + 85, string($"Change Item: E"));
draw_text(cx, cy + 105, string($"Enemies: {global.totalenemies}"));

if (obj_pl.selected_weapon = 0)
{
	draw_sprite(sp_default_weapon, -1, cx + 50, cy + 490);
}
else if (obj_pl.selected_weapon = 1)
{
	draw_sprite(sp_weapon_1, -1, cx + 50, cy + 490);
}

if (obj_pl.selected_weapon == 1)
{
			draw_line_width_color(obj_pl.x, obj_pl.y, mouse_x, mouse_y, 2, c_red, c_aqua)
}