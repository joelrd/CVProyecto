/// @description Insert description here
// You can write your code in this editor
if collision_circle(x, y, 0, obj_box, true, true ) 
{
	audio_play_sound(snd_notification, 10, false);
	instance_create_layer(room_width/2, room_height/2, layer_get_id("hero_enemies_box"), obj_portal);
}