/// @description Insert description here
// You can write your code in this editor
var bullet = instance_create_layer(x, y, layer_get_id("hero_enemies_box"), obj_bullet); // Create a bullet and store its ID in the variable "bullet". We need its ID b/c we want to do a few more things with it.
with (bullet)
{
	audio_play_sound(snd_fire, 10, false);
	direction = point_direction(x, y, obj_heroe.x, obj_heroe.y); // Give the bullet a direction
	speed = 6;
}