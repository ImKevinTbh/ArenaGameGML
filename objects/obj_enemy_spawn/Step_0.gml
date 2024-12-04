image_xscale = min(image_xscale + 0.02, 1);
image_yscale = image_xscale;



var enemytopick = irandom(2)
var enemy;

switch (enemytopick)
	{
		case 0:
			enemy = obj_enemy;
			break;
		case 1:
			enemy = obj_enemy_big
			break;
			
			default:
				enemy = obj_enemy;
			break;
	}

if image_xscale == 1 instance_change(enemy, true);

