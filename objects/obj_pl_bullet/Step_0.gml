if (place_meeting(x + lengthdir_x(speed, direction), y + lengthdir_y(speed, direction), obj_collider)) // Check for collider object infront of bullet
{
speed = -speed;
direction = round(direction / 90) * 90 + 45; // bounce the bullet, this math is terrible but it kinda works
}
image_angle = direction;