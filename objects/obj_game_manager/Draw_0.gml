/// @description
if (started == false) {exit};



if (action_index == "TUTORIAL")
|| (action_index == "DAY CHANGING")
{
	if (day_background_alpha < 1)
	&& (room == rm_menu)
	{
		draw_sprite_ext(spr_tutorial, 0, 0, 0, 2, 2, 0, c_white, 1);
	}
}

if (action_index == "DAY CHANGING")
{
	draw_set_color(c_black);
	draw_set_alpha(day_background_alpha);
	draw_rectangle(0, 0, room_width, room_height, false);
	
	draw_set_color(c_white);
	draw_set_alpha(day_text_alpha);
	draw_set_font(fnt_main);
	
	var _size = 3;
	var _txt = "DIA " + string(global.day);
	draw_text_transformed((room_width/2 - string_width(_txt)/2 * (_size)), (room_height/2 - string_height(_txt)/2 * (_size)), _txt, _size, _size, 0);
	
	draw_set_alpha(1);
}
else
{
	draw_set_color(c_black);
	draw_set_alpha(day_background_alpha);
	draw_rectangle(0, 0, room_width, room_height, false);
	draw_set_alpha(c_white);
	
	var _clock_x = 680;
	var _clock_y = 15;
	
	draw_set_colour(c_black);
	draw_text_transformed(_clock_x + 2, _clock_y + 2, clock_get_time_string(), 2, 2, 0);
	draw_set_colour(c_white);
	draw_text_transformed(_clock_x, _clock_y, clock_get_time_string(), 2, 2, 0);
	
	draw_set_colour(c_lime);

	var _xx = 10;
	var _yy = 20;

	var _sep = 40;

	draw_text(_xx, _yy, "Dinheiro: " + string(global.resources.dinheiro));
	draw_text(_xx, _yy + _sep, "Comida: " + string(global.resources.comida));
	draw_text(_xx, _yy + _sep * 2, "Aprovacao: " + string(global.resources.aprovacao));
	draw_text(_xx, _yy + _sep * 3, "Infraestrutura: " + string(global.resources.infraestrutura));

	draw_set_color(c_white);

}


if (keyboard_check(vk_numpad0))
{
	draw_sprite_ext(global.people.bispo.sprite_idle, 0, RESOLUTION_WIDTH/2, 80, 2, 2, 0, c_white, 1);
}

if (keyboard_check(vk_numpad1))
{
	draw_sprite_ext(global.people.reporter.sprite_idle, 0, RESOLUTION_WIDTH/2, 80, 2, 2, 0, c_white, 1);
}

if (keyboard_check(vk_numpad2))
{
	draw_sprite_ext(global.people.traficante.sprite_idle, 0, RESOLUTION_WIDTH/2, 80, 2, 2, 0, c_white, 1);
}