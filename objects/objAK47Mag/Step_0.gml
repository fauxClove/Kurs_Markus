x = objAK47.x;
y = objAK47.y;

image_angle = point_direction(x,y,mouse_x,mouse_y);


if (image_angle > 90) && (image_angle < 270)
{
	image_yscale = -1;	
}
else
{
	image_yscale = 1;	
}


//Reload
///Drops current mag
if keyboard_check_pressed(ord("Y"))
{
	with(instance_create_layer(x,y,layer,objAK47MagEmpty))
	{
		hsp = lengthdir_x(4,direction);
		vsp = lengthdir_y(4,direction)-2;
		image_xscale = sign(hsp);
		if (sign(hsp) != 0) image_xscale = sign(hsp);
	}
	instance_destroy();
}

