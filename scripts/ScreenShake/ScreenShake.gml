/// @desc ScreenShake(magnitude, shake)
/// @arg Magnitude sets the strength of the shade (in pixels)
/// @arg Frames sets the length of the shake in frames (60 fps)

 function ScreenShake(_magnitude,_frames)
{
	with(objCamera)
	{
			if (_magnitude > shake_remain)
			{
				shake_magnitude = _magnitude;
				shake_remain = _magnitude;
				shake_length = _frames;
			}
	}
}