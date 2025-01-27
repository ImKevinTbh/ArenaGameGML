draw_self(); 



if room == rm_lvl1 or rm_lvl2 && instance_exists(obj_pl)
{
	var cx = camera_get_view_x(view_camera[0]);
	var cy = camera_get_view_y(view_camera[0]);
	 cw = camera_get_view_width(view_camera[0]);
	draw_set_colour(c_white);
	draw_text(cx + (cw / 2), cy + 25, string($"Score: {global.currentScore}"));
	draw_text(cx + (cw / 2), cy + 45, string($"Lives: {lives}"));


	draw_text(cx, cy + 45, string($"Shoot: Mb1"));
	draw_text(cx, cy + 65, string($"Shift: Space (Hold)"));
	draw_text(cx, cy + 85, string($"Change Item: E"));
	draw_text(cx, cy + 105, string($"Enemies: {global.totalenemies} / {global.enemycap}"));
	draw_text(cx, cy + 125, string($"Reach {global.scoretarget1} score to move to the next level!"));
	// Previous code is self explanatory, "cx, cy" are pixel values for camera size

	if (obj_pl.selected_weapon = 0)
	{
		draw_sprite(sp_default_weapon, -1, cx + 50, cy + 490); 
	}
	else if (obj_pl.selected_weapon = 1)
	{
		draw_sprite(sp_weapon_1, -1, cx + 50, cy + 490);
	}
// ^ Draw the sprite as a HUD to show which weapon is currently selected ^
}


if room = rm_mmenu
{
	draw_set_color(c_white); //change the colour

	draw_text(room_width / 2, room_height / 2, "Press Mouse 1 to see scores")
		if mouse_check_button_released(mb_left)
		{
			room_goto(rm_score)
		}
	show_debug_message("Showing score hint on mmenu")
}

if room = rm_menu_lose
{
	draw_set_color(c_white); //change the colour

	draw_text(room_width / 2, room_height / 2 - 105, "Press Mouse 1 to return to main menu")
		if mouse_check_button_released(mb_left)
		{
			ini_open("scores.ini")
			for (var i = 0; i<5; i++)
			{
				ini_write_real(string(i), "Score", global.highScore[i]);
			}
			ini_close();
			room_goto(rm_mmenu)
		}
	show_debug_message("Showing score hint on mmenu")
}


if room = rm_score
{
	draw_set_color(c_white); //change the colour

	draw_text(room_width / 2, room_height / 2, "Press Mouse 1 to return to the main menu")
		if mouse_check_button_released(mb_left)
		{
			room_goto(rm_mmenu)
		}
	show_debug_message("Showing score hint on score")
}


if room = rm_score
{
	draw_set_color(c_white); //change the colour
	 //draw the text out both ways from the centre point of the base numbers


	// loop round all the array spaces and draw out the highscores
	for (var i = 0; i < 5; i++)
	{
		draw_text(32, 32 + (i *scoreDrawOffset), "Score " + string(i+1) + ": " + string(global.highScore[i]));
	}	
}