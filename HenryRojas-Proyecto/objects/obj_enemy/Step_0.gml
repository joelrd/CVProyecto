/// @description Insert description here
// You can write your code in this editor

if mp_grid_path (global.grid, path, x,y,obj_heroe.x, obj_heroe.y, 1)
	path_start (path, 1, 0, 0);	
if place_meeting(x, y, obj_heroe)
{
	audio_stop_all();
	audio_play_sound(snd_die, 10, false);
	room_restart();
}
if ( obj_enemy.speed > 0 ) {
	if direction > 81 and direction <= 109
    sprite_index = spr_enemy_up;
	else if direction > 111 and direction <= 260
	    sprite_index = spr_enemy_left;
	else if direction > 261 and direction <= 279
	    sprite_index = spr_enemy_down;
	else if (direction > 1 and direction <= 79) or (direction > 281 and direction <= 359)
	    sprite_index = spr_enemy_right;
	else if sprite_index != spr_enemy
		sprite_index = spr_enemy;
} else {
	sprite_index = spr_enemy;
}
