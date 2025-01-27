image_xscale = min(image_xscale + 0.02, 1);
image_yscale = image_xscale; // Scale enemies up from 0



var enemytopick = irandom(2) // Random number (can either be 0 or 1)
var enemy;

switch (enemytopick)
	{
		case 0:
			enemy = obj_enemy; // If random number is 0, normal enemy spawns
			break;
		case 1:
			enemy = obj_enemy_big // if random number is 1, big enemy spawns
			break;
			
			default:
				enemy = obj_enemy; // Default if the statement *somehow* fails
			break;
	}

if image_xscale == 1 instance_change(enemy, true);

