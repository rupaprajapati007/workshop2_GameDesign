/// @description Insert description here
// You can write your code in this editor

score +=10;
instance_create_layer(x,y,"Instances",obj_monster_dead);
audio_play_sound(snd_kill_monster,10,false);