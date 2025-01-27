	dir = point_direction(other.x, other.y, x, y); // Get direction of bullet
	
	instance_destroy() // Destroy bullet
    other.ehealth = other.ehealth - pl_bl_damage; // Take away health from the enemy hit
alarm[0] = pl_bl_overpen_time; // Run timer for the time specified by the variable "pl_bl_overpen_time"