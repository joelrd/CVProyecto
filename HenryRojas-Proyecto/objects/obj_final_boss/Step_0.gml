/// @description Insert description here
// You can write your code in this editor
if mp_grid_path (global.grid, path, x,y,obj_heroe.x, obj_heroe.y, 1)
	path_start (path, 1, 0, 0);	
if place_meeting(x, y, obj_box)
{
	audio_play_sound(snd_hit, 10, false);
	health -= 25;
	effect_create_above(ef_spark,x,y,20,c_white)
}

if ( obj_final_boss.speed > 0 ) {
	if direction > 81 and direction <= 109
    sprite_index = spr_final_boss_up;
	else if direction > 111 and direction <= 260
	    sprite_index = spr_final_boss_left;
	else if direction > 261 and direction <= 279
	    sprite_index = spr_final_boss_down;
	else if (direction > 1 and direction <= 79) or (direction > 281 and direction <= 359)
	    sprite_index = spr_final_boss_right;
	else if sprite_index != spr_final_boss
		sprite_index = spr_final_boss;
} else {
	sprite_index = spr_final_boss;
}
if health == 0
{
	audio_play_sound(snd_die, 10, false);
	room_goto(room_first);
}