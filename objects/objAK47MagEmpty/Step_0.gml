vsp = vsp + grv;

// Collision Horizontal
if (place_meeting(x+hsp,y,objWall))
{
	while (!place_meeting(x+sign(hsp),y,objWall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}

// Collision Vertical
if (place_meeting(x,y+vsp,objWall))
{
	if (vsp > 0) 
	{
		done = 1;
		image_index = 1;
	}
	while (!place_meeting(x,y+sign(vsp),objWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}

y = y + vsp;



