/// @description
draw_sprite_ext(spr_bandeira, 0, -20, 0, 1.5, 1.5, 0, c_white, 1);

draw_set_font(global.font);

var _col = c_black;

var _txt = "Clique no mouse para iniciar";

var _y = 340;

if (text_visible == true)
{
	draw_text_transformed_color(RESOLUTION_WIDTH/2 - string_width(_txt) + 2, _y + 2, _txt, 2, 2, 0, _col, _col, _col, _col, 1);
	draw_text_transformed(RESOLUTION_WIDTH/2 - string_width(_txt), _y, _txt, 2, 2, 0);
}

draw_set_color(c_black);
draw_set_alpha(fade_alpha);
draw_rectangle(0, 0, room_width, room_height, false);
draw_set_color(c_white);

draw_set_alpha(1);