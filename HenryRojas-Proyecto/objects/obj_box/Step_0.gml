/// @description Insert description here
// You can write your code in this editor
if place_meeting(x + 64, y, obj_wall)
	x_speed = 0;

if place_meeting(x, y + 64, obj_wall)
	y_speed = 0;

if place_meeting(x, y, obj_enemy)
	instance_destroy(obj_enemy.id);
	