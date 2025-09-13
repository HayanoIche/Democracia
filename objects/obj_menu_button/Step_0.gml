/// @description
if (obj_game_manager.started == true) {exit};

if (mouse_check_button_pressed(mb_left))
&& (selected == true)
{
	switch(index)
	{
		case 0: obj_game_manager.started = true; break;
		case 1: create_textbox("TESTE") break;
		case 2: game_end() break;
	}
}