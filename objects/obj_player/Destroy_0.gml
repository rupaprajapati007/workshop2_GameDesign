/// @description Insert description here
// You can write your code in this editor

lives-=1;
audio_play_sound(snd_kill_character,1,false);

if lives > 0
	room_restart();
else
	global.game_over = true;