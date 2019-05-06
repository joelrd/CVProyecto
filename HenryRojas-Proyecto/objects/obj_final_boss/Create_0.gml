/// @description Insert description here
// You can write your code in this editor
health = 100;
speed = 3;
alarm[0] = 1;
path = path_add ();
global.grid = mp_grid_create (0,0,room_width/64, room_height/64, 64,64);
mp_grid_add_instances (global.grid, obj_wall, false);