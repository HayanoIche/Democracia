/// @description
if (obj_mouse.x < x + x/2)
{
	selected = true;
	
	if (mouse_check_button_pressed(mb_left))
	{
		approve_request(obj_NPC);
	}
}
else
{
	selected = false;
}
