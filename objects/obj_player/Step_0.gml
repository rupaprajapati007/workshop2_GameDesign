

#region Ladders


if (instance_place(x,y, obj_ladder))
{
	if keyboard_check(vk_up) or keyboard_check(vk_down)
	{
		is_on_ladder = true;
		climbing = true;
		vspeed = 0;
		gravity = 0;
		sprite_index = spr_climbing;
	}
}
else
{
	is_on_ladder = false; 
	climbing = false;
	sprite_index = spr_player;
}

if  climbing 
{
	if keyboard_check(vk_up) 	
	{
		y += -climb_speed; 
		//vspeed = clamp(vspeed, -(climb_speed * 0.50), (climb_speed * 0.50))
	}
	else if keyboard_check(vk_down) //and !instance_place(x,y+1,obj_block)	
	{
		y += climb_speed;
		//vspeed = clamp(vspeed, -(climb_speed * 0.50), (climb_speed * 0.50))		
	}
	
	if (instance_place(x,y+1,obj_block))
	{
	climbing = false;
	sprite_index = spr_player;
	}
}
else
{

	#region Horizontal Movement

		if (keyboard_check(vk_left)) and !instance_place(floor(x-move_speed),floor(y),obj_block)
		{
	
			image_xscale = -1;
			x += -move_speed;
		}

		//instamce_place and place meeting returns obj, instance -> collision present and false for no collision 
		if (keyboard_check(vk_right))and !instance_place(floor(x+move_speed),floor(y),obj_block)
		{
			image_xscale = 1;//player moves when there is no collision
			x += move_speed;
		}
	#endregion


	#region vertical movement

	//jump
		//if instance_place(x,y+1,obj_block) is_on_ground =  true;
		//if instance_place(x,y+1,obj_ladder) is_on_ladder = true;

		
			
		if keyboard_check_pressed(vk_up)
		{
			if instance_place(x,y+1,obj_block) 
			{
				vspeed = jump_height;
			}
		}
		//show_debug_message(gravity)
		if instance_place(x,y+1,obj_block)
		{
				gravity = 0;
		}	
		else 
			gravity = 0.5;
	
		
		//show_debug_message("vspeed: "+ string(vspeed))
		if vspeed > 12
		{
			//show_debug_message("vspeed1 : "+ string(vspeed))
			vspeed = 12;
		}
	#endregion



	if keyboard_check_pressed(ord("Z"))
	{
		instance_create_layer(x,y,"Instances",obj_sword);
	}
}



#endregion







