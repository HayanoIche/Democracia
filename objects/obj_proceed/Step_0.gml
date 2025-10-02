/// @description
if (mouse_check_button_pressed(mb_left))
&& (selected == true)
{
	if (instance_exists(obj_game_manager))
	{
		obj_game_manager.action_index = "DAY CHANGING";
	}
}