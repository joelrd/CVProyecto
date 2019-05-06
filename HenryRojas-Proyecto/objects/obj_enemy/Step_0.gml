/// @description Insert description here
// You can write your code in this editor
if collision_circle(x, y, 128, obj_heroe, true, true ) 
{
	if mp_grid_path (global.grid, path, x,y,obj_heroe.x, obj_heroe.y, 1)
		path_start (path, 3, 0, 0);	
}
if place_meeting(x, y, obj_heroe)
	room_restart();