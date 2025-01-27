if (ehealth <= 0)
{
	if (lives > 0)
	{
		lives--
		ehealth = maxhp;
	}
	else
	{
		image_blend = c_aqua
		room_goto(rm_menu_lose)
				
	for (var i = 0; i < 5; i++) // starting from the top, run through all the items in the array
		{
			if (global.currentScore > global.highScore[i]) // check to see if the current score is grewater than the current array item
			{
				for (var j = 4; j>i; j--)
				{
					global.highScore[j] = global.highScore[j-1]; // replacing the score for j with the one above
				}
			
				global.highScore[i] = global.currentScore;
				break; // kick us out the main for loop
			}
		}
		
		ini_open("scores.ini")
		for (var i = 0; i<5; i++)
		{
			ini_write_real(string(i), "Score", global.highScore[i]);
		}
		ini_close();
		
	}
}


vspeed = (keyboard_check(ord("S")) - keyboard_check(ord("W"))) * plSpeed;
hspeed = (keyboard_check(ord("D")) - keyboard_check(ord("A"))) * plSpeed;

	if (place_meeting(x + lengthdir_x(speed, direction), y + lengthdir_y(speed, direction), obj_collider)) // Stop player if hit wall
	{
	speed = -speed;
	direction = round(direction / 90) * 90 + 45;// turn player around idk
	}
	
speed = clamp(speed, 0, 14); // make player not too fast
x = clamp(x, 0 + 10, room_width - 10);
y = clamp(y, 0 + 10, room_height - 10); // stop player leaving room bounds
lives = clamp(lives, 0, 9) // clamp lives to stop gaining too many

if (mouse_x < x) {image_xscale = -1}
if (mouse_x >= x) {image_xscale = 1}


if (mouse_check_button(1) && fcooldown < 1)
{
	if (selected_weapon == 0) {weapon_0()}
	if (selected_weapon == 1) {weapon_1()}

}
fcooldown--

if (keyboard_check(vk_space) && stamina > 0 && spd > 0 && dash != -1)
{
	dash = 1;
	speed = clamp(speed, 0, 555);
	speed *= 2;
	stamina -= 10;
	image_alpha = 0.1;
	immunity = true;
}

if (stamina < 1)
{
	dash = -1;
	image_alpha = 1;
	immunity = false;
	if (alarm[0] < 0)
	{
		alarm[0] = 340;
	}
}
else if (!keyboard_check(vk_space) or !dash == -1)
{
		image_alpha = 1;
	dash = 0;
	if (alarm[0] < 0)
	{
		alarm[0] = 340;
	}
	immunity = false;
}

if (alarm[0] % 2 && alarm[0] < 200 && stamina < 100)
{
	dash = 0;
	stamina += 5;
}


if (keyboard_check(ord("R")))
{
	x = room_width / 2;
	y = room_height / 2;
}


if (keyboard_check(ord("E")) && alarm[9] <= 0)
{
	show_debug_message("Pressed ChangeWeapon")
	if (!hassecondwep)
	{ show_debug_message("Player does not have weapon to switch to"); return; }
	else
	{
		if (selected_weapon == 0)
		{
			selected_weapon = 1
			
		}
		else if (selected_weapon == 1)
		{
			selected_weapon = 0
		}
		show_debug_message($"ChangeWeapon to {selected_weapon}")
		alarm[9] = 60
	}
}
else
{
	return;
}



