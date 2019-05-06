/// @description Insert description here
// You can write your code in this editor
var bullet = instance_create(x, y, obj_bullet); // Create a bullet and store its ID in the variable "bullet". We need its ID b/c we want to do a few more things with it.
with (bullet)
{
   direction = point_direction(x, y, obj_player.x, obj_player.y); // Give the bullet a direction
   speed = 6;
}
direction = random(360);
alarm[0] = 60;