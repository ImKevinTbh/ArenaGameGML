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
		game_end(0)
	}
}


vspeed = (keyboard_check(ord("S")) - keyboard_check(ord("W"))) * plSpeed;
hspeed = (keyboard_check(ord("D")) - keyboard_check(ord("A"))) * plSpeed;
speed = clamp(speed, 0, 14);


if (place_meeting(x - hspeed, y, obj_collider)) {hspeed = 0}
if (place_meeting(x + hspeed, y, obj_collider)) {hspeed = 0}
if (place_meeting(x, y - vspeed, obj_collider)) {vspeed = 0}
if (place_meeting(x, y + vspeed, obj_collider)) {vspeed = 0}

if (mouse_check_button(1) && fcooldown < 1)
{
	if (selected_weapon == 0) {weapon_1()}
	if (selected_weapon == 1) {weapon_1()}

}
fcooldown--


if (keyboard_check(vk_space) && stamina > 0 && spd > 0 && dash != -1)
{
	dash = 1;
	speed = clamp(speed, 0, 555);
	speed *= 2;
	stamina -= 2;
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
	dash = 0
	stamina++;
}




