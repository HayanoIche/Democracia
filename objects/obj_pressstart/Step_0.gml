/// @description
if (initial_delay > 0)
{
	initial_delay -= 1;
}
else
{
	if (started == false)
	{
		if (timer < 120 && timer >= 60)
		{
			text_visible = false;
			timer += 1;
		}
	
		if (timer < 60)
		{
			text_visible = true;
			timer += 1;
		}
	
		if (timer >= 120) {timer = 0};
	
		if (mouse_check_button_pressed(mb_any))
		{
			started = true;
		}
	}
	else
	{
		if (fade_alpha < 1)
		{
			fade_alpha += 0.05;
		}
		else
		{
			room_goto(rm_menu);
		}
	}
}
