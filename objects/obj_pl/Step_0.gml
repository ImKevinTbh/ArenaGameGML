
vspeed = (keyboard_check(ord("S")) - keyboard_check(ord("W"))) * plSpeed;
hspeed = (keyboard_check(ord("D")) - keyboard_check(ord("A"))) * plSpeed;

image_angle = point_direction(x, y, mouse_x, mouse_y) ;



if (mouse_check_button(1) && fcooldown < 1)
{
	instance_create_layer(x, y, layer, obj_pl_bullet);
	fcooldown = 3;
}
fcooldown--


if (keyboard_check(vk_space) && stamina > 0 && spd > 0 && !dash = -1)
{
	dash = 1;
	speed *= 2;
	stamina -= 5;
	immunity = true;
}

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




