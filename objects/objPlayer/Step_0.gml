//Player Inputs
if (hascontrol)
{
	key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
	key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
	key_jump = keyboard_check(vk_space) or keyboard_check(vk_up) or keyboard_check(ord("W"));
	key_down = keyboard_check(vk_down) or keyboard_check(ord("S"));

	// Movement calculation
	var move = key_right - key_left;

	hsp = move * walksp;

	vsp = vsp + grv;

	if (place_meeting(x,y+1,objWall)) && (key_jump)
	{
		vsp = -7;
	}
}
else
{
	key_left = 0;
	key_right = 0;
	key_jump = 0;
	key_down = 0;
}

// Collision Horizontal
if (place_meeting(x+hsp,y,objWall))
{
	while (!place_meeting(x+sign(hsp),y,objWall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
if (vsp < 0) && (key_down)
{
	vsp = 0;
}

x = x + hsp;

// Collision Vertical
if (place_meeting(x,y+vsp,objWall))
{
	while (!place_meeting(x,y+sign(vsp),objWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

//Animation
if (!place_meeting(x,y+1,objWall))
{
	sprite_index = sPlayerA
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;	
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = sPlayer;
	}
	else
	{
		sprite_index = sPlayerR;
	}
}

if (hsp != 0) image_xscale = sign(hsp);

//DmgInvinc
damagedelay = damagedelay - 1;

//Death
if global.hp <= 0
{
	SlideTransition(TRANS_MODE.RESTART);	
}

