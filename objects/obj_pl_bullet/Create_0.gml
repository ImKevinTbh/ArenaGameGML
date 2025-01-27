pl_bl_damage = 20;
pl_bl_overpen_time = 30;
speed = 20
direction = point_direction(x, y, mouse_x, mouse_y) // Point the object towards the mouse
image_angle = direction // Image angle matches direction of object
pl_bl_lifetime = 20;

pl_bl_knockback = false;
alarm[1] = pl_bl_lifetime; // Set a timer running for the duration of variable "pl_bl_lifetime"