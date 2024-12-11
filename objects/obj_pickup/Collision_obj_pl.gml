
if (pickup == 0)
{
	if (other.ehealth < other.maxhp - 10)
	{
		other.ehealth += 10;
	}
	else if (other.ehealth < other.maxhp)
	{
		other.ehealth += other.maxhp - other.ehealth;
	}
}
else if (pickup == 1)
{
	other.hassecondwep = true;
}
else if (pickup == 2)
{
	lives += 1
}
show_debug_message($"Player picked up pickup index {pickup}")
instance_destroy();