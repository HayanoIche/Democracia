/// @description
if (index == 0)
{
	draw_sprite(spr_title, 0, room_width/2, room_height/2 - y/2);
}

draw_self();

if (selected == true) {image_blend = c_yellow} else {image_blend = c_white};

var _txt = options[index];
draw_set_color(c_black);

var _text_size = 1

draw_text_transformed(x + sprite_width/2 - string_width(_txt), y + sprite_height/2 - string_height(_txt), _txt, 2, 2, 0);