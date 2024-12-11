/// @description Insert description here
// You can write your code in this editor
pickup = random_range(0, 100)
if (pickup > 50)
{
	sprite_index = sp_pickup_health;
	pickup = 0
}
else if (pickup <= 50 && !obj_pl.hassecondwep)
{
	sprite_index = sp_weapon_1;
	pickup = 1
}
else if (pickup <= 75)
{
	sprite_index = sp_pickup_life;
	pickup = 2;
}