/// @description Insert description here
// You can write your code in this editor
x_move = keyboard_check(vk_right)-keyboard_check(vk_left);
y_move = keyboard_check(vk_down)-keyboard_check(vk_up);
/*
if (keyboard_check(vk_right) || keyboard_check(vk_left) || keyboard_check(vk_down) || keyboard_check(vk_up)) 
{
	if (keyboard_check(vk_down)) {
		sprite_index = spr_robot_down
	}
	
	if (keyboard_check(vk_right) || keyboard_check(vk_left) ) {
		sprite_index = spr_robot_walking
	}
	
	if (keyboard_check(vk_up)) {
		sprite_index = spr_robot_up
	}
} else {
	sprite_index = spr_robot_idle;
}

if (keyboard_check(vk_right))
	image_xscale = 1;
	
if (keyboard_check(vk_left))
	image_xscale = -1;
*/	
repeat (x_speed)//Repite la velocidad de desplazamiento en el eje X   
{ 
	if place_free (x+x_move,y) //verifica colision pixel por pixel en eje X  
	x += x_move; //Suma o resta un pixel en el eje X
}

repeat (y_speed)//Repite la velocidad de desplazamiento en el eje X   
{ 
	if place_free (x,y+y_move) //verifica colision pixel por pixel en eje X  
	y += y_move; //Suma o resta un pixel en el eje X
}
// moving the box. 
if place_meeting(x + 1, y, obj_box)
{
    var box = instance_place(x + 1, y, obj_box);
	with (box) {
		x += 5;
	}
}  

if place_meeting(x - 1, y, obj_box)
{
    var box = instance_place(x - 1, y, obj_box);
	with (box) {
		x -= 5;
	}
}
if place_meeting(x, y + 1, obj_box)
{
    var box = instance_place(x, y + 1, obj_box);
	with (box) {
		audio_play_sound(snd_moving, 10, false);
		y += 5;
	}
}  

if place_meeting(x, y - 1, obj_box)
{
    var box = instance_place(x, y - 1, obj_box);
	with (box) {
		y -= 5;
	}
}

if place_meeting(x, y, obj_bullet)
{
	audio_play_sound(snd_hit, 10, false);
	health -= 25;
	effect_create_above(ef_spark,x,y,20,c_white)
}
if place_meeting(x, y, obj_final_boss)
{
	audio_play_sound(snd_hit, 10, false);
	health -= 50;
	effect_create_above(ef_spark,x,y,20,c_white)
}
if health == 0
{
	audio_stop_all();
	audio_play_sound(snd_die, 10, false);
	room_restart();
}
if (keyboard_check(vk_right) || keyboard_check(vk_left) || keyboard_check(vk_down) || keyboard_check(vk_up)) 
{
	if (keyboard_check(vk_down)) {
		sprite_index = spr_heroe_down;
	}
	
	if (keyboard_check(vk_right)) {
		sprite_index = spr_hero_right
	}
	
	if (keyboard_check(vk_up)) {
		sprite_index = spr_heroe_up;
	}
	
	if (keyboard_check(vk_left)) {
		sprite_index = spr_hero_left;
	}
} else {
	sprite_index = spr_heroe;
}