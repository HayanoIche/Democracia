/// @description
if (index == 0)
{
	draw_sprite(spr_title, 0, room_width/2, room_height/2 - y/2);
}

draw_self();

if (selected == true) {image_blend = c_yellow} else {image_blend = c_white};

var _txt = options[index];
draw_set_color(c_black);

draw_text(x + sprite_width/2 - string_width(_txt)/2, y + sprite_height/2 - string_height(_txt)/2, _txt);