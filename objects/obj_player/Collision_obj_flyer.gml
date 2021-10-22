/// @description Insert description here
// You can write your code in this editor

if( vspeed > 0 ) //this will keep player above the enemy
{
	var height = y - other.y; //it has to be negative so that player moves down after killing the enemy

	if (height < 0)
	{
		vspeed = jump_height; // to give the bouncy effect 
		with (other)
		{
			instance_destroy()

		}
	}
	
}
else 
		instance_destroy(self)
