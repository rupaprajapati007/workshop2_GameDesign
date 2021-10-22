/// @description Insert description here
// You can write your code in this editor

//Press Alt - R to restart the room
//○ Press Alt - G to restart the game
//○ Press Alt - L to increase lives by 5
//○ Press Alt - N to move to the next room

if keyboard_check_pressed(ord("R")) room_restart()
if keyboard_check_pressed(ord("G")) game_restart()
if keyboard_check_pressed(ord("L")) lives=4;

if keyboard_check_pressed(ord("N")) 
{
	if !room_exists(room_next(room))
		room_goto(rm_end);
	else
		room_goto_next();
}
