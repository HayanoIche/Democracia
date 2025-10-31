/// @description
if (obj_mouse.x > x - (RESOLUTION_WIDTH-x)/2)
{
	selected = true;
	
	if (mouse_check_button_pressed(mb_left))
	{
		deny_request(obj_NPC);
		clicked = true;
	}
}
else
{
	selected = false;
}
