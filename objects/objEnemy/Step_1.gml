if (hp <= 0)
{
	with(instance_create_layer(x,y,layer,objDead))
	{
		direction = other.hitdirection;
		hsp = lengthdir_x(4,direction);
		vsp = lengthdir_y(4,direction)-2;
		image_xscale = sign(hsp);
		if (sign(hsp) != 0) image_xscale = sign(hsp);
	}
	global.xp = global.xp + 3;
	instance_destroy();	
}