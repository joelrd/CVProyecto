/**
 * @description Create Generates tileset
 * @author Henry Rojas Douglas
 * @since 1.0.0
 * @copyright MIT
 */
ground_layer = layer_create(100);
ground_tile = layer_tilemap_create(ground_layer, 0, 0, tileset_gloomfall_dungeon, room_width, room_height);

x_temp = 0;
y_temp = 0;

lenght = room_width/16;
height = room_height/16;

for ( g = 0; g < height; g++ )
{
	for ( i = 0; i < lenght; i++ )
	{
		tilemap_set_at_pixel (ground_tile, 84, x_temp, y_temp);	  
		x_temp += 16;
	}
	x_temp = 0;
	y_temp += 16;
}
instance_destroy ();