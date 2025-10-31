/// @description
if (obj_game_manager.started == true) {exit};

if (mouse_check_button_pressed(mb_left))
&& (selected == true)
{
	switch(index)
	{
		case 0:
			room_goto(rm_menu)
			instance_destroy(self);
			break;
	}
}
