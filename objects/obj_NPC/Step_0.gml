/// @description
image_xscale = 2;
image_yscale = wave(1.99, 2.01, 1, .5);

if (!instance_exists(obj_textbox))
{
	if (audio_is_playing(audio))
	{
		audio_stop_sound(audio);
	}
}
else
{
	if (mouse_check_button_pressed(mb_left))
	{
		if (audio_is_playing(audio))
		{
			audio_stop_sound(audio);
		}
	}
}
