/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_player)
{
	if distance_to_object(obj_player) < aggro_range
	{
		//if place_meeting(x, y, all)
		path_end()
		direction  = point_direction(x,y,obj_player.x,obj_player.y);
		hspeed = hsp;
	}	
}