/// @description Insert description here
// You can write your code in this editor
if collision_circle(room_height/32, room_width/2, 256, obj_heroe, true, true) && !instance_exists(obj_enemy)
	instance_create_layer(600, 300, layer_get_id("hero_enemies_box"), obj_enemy);