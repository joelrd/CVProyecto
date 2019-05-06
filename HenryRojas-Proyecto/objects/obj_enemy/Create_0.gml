/// @description Insert description here
// You can write your code in this editor
speed = 3;
alarm[0] = 1;
path = path_add ();
global.grid = mp_grid_create (0,0,room_width/64, room_height/64, 64,64);
mp_grid_add_instances (global.grid, obj_wall, true);
if !object_get_solid(obj_enemy)
{
	object_set_solid(obj_enemy, true);
}

x_speed =  5;  // velocidad de movimiento horizontal
y_speed =  5; //  velocidad de movimiento vertical