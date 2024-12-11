if (place_meeting(x + lengthdir_x(speed, direction), y + lengthdir_y(speed, direction), obj_collider)) 
{
speed = -speed;
direction = round(direction / 90) * 90 + 45;
}
image_angle = direction;