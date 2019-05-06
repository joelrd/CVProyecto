/// @description Insert description here
// You can write your code in this editor
if place_meeting(x, y, obj_box)
{
	health -= 25;
	effect_create_above(ef_spark,x,y,20,c_white)
}
if health == 0
{
	instance_destroy(obj_final_boss);
	room_goto(room_first);
}	