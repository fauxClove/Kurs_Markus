x = objPlayer.x;
y = objPlayer.y;

image_angle = point_direction(x,y,mouse_x,mouse_y);

reloadspeed = reloadspeed - 1;
firingdelay = firingdelay - 1;
recoil = max(0,recoil - 1);


if (mouse_check_button(mb_left)) && (firingdelay < 0) && (magazine > 0)
{
	recoil = 3;
	firingdelay = 5;
	magazine--;
	ScreenShake(2.5,8);
	audio_play_sound(AKshot,1,0);
	instance_create_layer(x,y-9,"Bullets",objBulletC);
	with (instance_create_layer(x,y-5,"Bullets",objBullet))
	{
		speed = 50;	
		direction = other.image_angle + random_range(-2,2);
		image_angle = direction;
	}
	
}

if mouse_check_button_pressed(mb_left) && (magazine <= 0)
{
	audio_play_sound(AKempty,1,0);
}


x = x - lengthdir_x(recoil,image_angle);
y = y - lengthdir_y(recoil,image_angle);

if (image_angle > 90) && (image_angle < 270)
{
	image_yscale = -1;	
}
else
{
	image_yscale = 1;	
}

//Reload weapon
if keyboard_check_pressed(ord("Y"))
{
	if magazine >= 1
	{
		magazine = 1;
		reloadspeed = 100;
		alarm[0] = 100;
	}
	else
	{
		magazine = 0;
		reloadspeed = 100;
		alarm[0] = 100;
	}
}


if reloadspeed <= 0
{
		instance_create_layer(x,y,layer,objAK47Mag);
}
