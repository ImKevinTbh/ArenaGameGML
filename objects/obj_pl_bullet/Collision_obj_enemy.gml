with (other)
{
    ehealth = ehealth - 20;
}

for (i = 1; i > 6; i++)
{
	var newinstance = instance_create_layer(x, y, layer, obj_pl_bullet)
	newinstance.direction = i * 90;
}
instance_destroy();