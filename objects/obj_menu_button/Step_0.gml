/// @description
if (mouse_check_button_pressed(mb_left))
&& (selected == true)
{
	switch(index)
	{
		case 0: room_goto(rm_principal) break;
		case 1: create_textbox("TESTE") break;
		case 2: game_end() break;
	}
}