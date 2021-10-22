/// @description Insert description here
// You can write your code in this editor

// when tile below me and ahead me is empty or tile behind or below me is empty then take a turn
if !(instance_place(x+1,y+1,obj_block)) or !(instance_place(x-1,y+1,obj_block))
{
	hspeed *= -1 ;
	image_xscale *=-1; 
}
