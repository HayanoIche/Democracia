/// @description
if (mouse_check_button_pressed(mb_left))
&& (selected == true)
{
	if (instance_exists(obj_game_manager))
	{
		if (txt_ind == 0)
		{
			txt_ind += 1;
		}
		else if (txt_ind == 1)
		{
			obj_game_manager.action_index = "DAY CHANGING";
		}
	}
}

if (instance_exists(obj_game_manager))
{
	alpha = (1 - obj_game_manager.day_background_alpha);
}