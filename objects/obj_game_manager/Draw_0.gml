/// @description
if (started == false) {exit};

if (action_index == "DAY CHANGING")
{
	if (day_changed == true) {
		draw_sprite_ext(spr_background, 0, 0, 0, 2, 2, 0, c_white, 1);
	}
	
	draw_set_color(c_black);
	draw_set_alpha(day_background_alpha);
	draw_rectangle(0, 0, room_width, room_height, false);
	
	draw_set_color(c_white);
	draw_set_alpha(day_text_alpha);
	draw_set_font(fnt_main);
	
	var _size = 3;
	var _txt = "DIA 69";
	draw_text_transformed((room_width/2 - string_width(_txt)/2 * (_size)), (room_height/2 - string_height(_txt)/2 * (_size)), _txt, _size, _size, 0);
	
	draw_set_alpha(1);
}
else
{
	draw_sprite_ext(spr_background, 0, 0, 0, 2, 2, 0, c_white, 1);
}
