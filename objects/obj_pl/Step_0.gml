
vspeed = (keyboard_check(ord("S")) - keyboard_check(ord("W"))) * plSpeed;
hspeed = (keyboard_check(ord("D")) - keyboard_check(ord("A"))) * plSpeed;
speed = clamp(speed, 0, 14);




if (mouse_check_button(1) && fcooldown < 1)
{
	instance_create_layer(x, y, layer, obj_pl_bullet);
	fcooldown = 3;
}
fcooldown--


if (keyboard_check(vk_space) && stamina > 0 && spd > 0 && dash != -1)
{
	dash = 1;
	speed = clamp(speed, 0, 555);
	speed *= 2;
	stamina -= 2;
	image_alpha = 0.4;
	immunity = true;
}
	image_alpha = 1;
if (stamina < 1)
{
	dash = -1;
	immunity = false;
	if (alarm[0] < 0)
	{
		alarm[0] = 340;
	}
}
else if (!keyboard_check(vk_space) or !dash == -1)
{
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




