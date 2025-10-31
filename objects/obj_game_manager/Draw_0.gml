/// @description
if (room == rm_menu_presstart) {exit};
if(room == rm_creditos){exit}

if (room != rm_endgame)
{
	if (action_index == "PRESSTART")
	{
		draw_set_color(c_black);
		draw_set_alpha(day_background_alpha);
		draw_rectangle(0, 0, room_width, room_height, false);
		draw_set_color(c_white);
		draw_set_alpha(1);
	}

	if (started == false) {exit};

	if (action_index == "DAY CHANGING")
	|| (action_index == "TUTORIAL")
	{
		if (day_background_alpha < 1)
		&& (room == rm_menu)
		{
			draw_sprite_ext(spr_background_menu, 0, 0, 0, 2, 2, 0, c_white, 1);
			if (instance_exists(obj_proceed))
			{
				draw_sprite_ext(spr_tutorial, obj_proceed.txt_ind, 0, 0, 2, 2, 0, c_white, 1);
			}
		}
	
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
		var _clock_x = 680;
		var _clock_y = 15;
	
		draw_sprite(spr_clock, 0, _clock_x - 18, _clock_y - 2)
	
		draw_set_colour(c_black);
		draw_text_transformed(_clock_x + 2, _clock_y + 2, clock_get_time_string(), 2, 2, 0);
		draw_set_colour(c_white);
		draw_text_transformed(_clock_x, _clock_y, clock_get_time_string(), 2, 2, 0);
	
	
		var _xx = 50;
		var _yy = 20;
	
		var _sep = 40;
	
		draw_set_colour(c_white);
		draw_set_font(global.font);
	
		var _col = c_black;
	
	
		// Dinheiro
		draw_sprite(spr_bar, 0, _xx - 45, _yy - 6);
	
		draw_sprite_ext(spr_icons, 0, _xx - 35 + 1, _yy - 3 + 1, 1, 1, 0, _col, 1);
		draw_sprite(spr_icons, 0, _xx - 35, _yy - 3);
	
		draw_text_color(_xx + 6, _yy + 4, "Dinheiro: " + string(global.resources.dinheiro), _col, _col, _col, _col, 1);
		draw_text(_xx + 5, _yy + 3, "Dinheiro: " + string(global.resources.dinheiro));
	
		// Comida
		draw_sprite(spr_bar, 0, _xx - 45, _yy - 6 + _sep);
	
		draw_sprite_ext(spr_icons, 1, _xx - 35 + 1, _yy - 3 + _sep + 1, 1, 1, 0, _col, 1);
		draw_sprite(spr_icons, 1, _xx - 35, _yy - 3 + _sep);
	
		draw_text_color(_xx + 6, _yy + 4 + _sep, "Comida: " + string(global.resources.comida), _col, _col, _col, _col, 1);
		draw_text(_xx + 5, _yy + 3 + _sep, "Comida: " + string(global.resources.comida));
	
		// Aprovação
		draw_sprite(spr_bar, 0, _xx - 45, _yy - 6 + _sep + _sep);
	
		draw_sprite_ext(spr_icons, 2, _xx - 35 + 1, _yy - 3 + _sep + _sep + 1, 1, 1, 0, _col, 1);
		draw_sprite(spr_icons, 2, _xx - 35, _yy - 3 + _sep + _sep);
	
		draw_text_color(_xx + 6, _yy + 4 + _sep * 2, "Aprovação: " + string(global.resources.aprovacao), _col, _col, _col, _col, 1);
		draw_text(_xx + 5, _yy + 3 + _sep * 2, "Aprovação: " + string(global.resources.aprovacao));
	
		// Infraestrutura
		draw_sprite(spr_bar, 0, _xx - 45, _yy - 6 + _sep + _sep + _sep);
	
		draw_sprite_ext(spr_icons, 3, _xx - 35 + 1, _yy - 3 + _sep + _sep + _sep + 1, 1, 1, 0, _col, 1);
		draw_sprite(spr_icons, 3, _xx - 35, _yy - 3 + _sep + _sep + _sep);
	
		draw_text_color(_xx + 6, _yy + 4 + _sep * 3, "Infraestrutura: " + string(global.resources.infraestrutura), _col, _col, _col, _col, 1);
		draw_text(_xx + 5, _yy + 3 + _sep * 3, "Infraestrutura: " + string(global.resources.infraestrutura));
	
		draw_set_color(c_black);
		draw_set_alpha(day_background_alpha);
		draw_rectangle(0, 0, room_width, room_height, false);
		draw_set_alpha(c_white);
	}

	if (action_index == "DAY END")
	|| (action_index == "NIGHT")
	{
		draw_set_color(c_white);
		if (day_background_alpha >= 1)
		{
			var _de_txt = "O DIA ACABOU!";
			draw_text_transformed(RESOLUTION_WIDTH/2 - string_width(_de_txt), RESOLUTION_HEIGHT/2 - string_height(_de_txt) - day_end_y_buff, _de_txt, 2, 2, 0);
		}
	
		if (day_end_y_buff > 150)
		{
			var _stat_txt = "DINHEIRO: ";
			if (start_dinheiro - global.resources.dinheiro < 0) { _stat_txt += "+ " } else { _stat_txt += "- " };
			_stat_txt += string(abs(start_dinheiro - global.resources.dinheiro));
		
			draw_text_transformed(RESOLUTION_WIDTH/2 - 100, 180, _stat_txt, 2, 2, 0);
		
			if (day_stat_buff > 0) {
				_stat_txt = "COMIDA: ";
				if (start_comida - global.resources.comida < 0) { _stat_txt += "+ " } else { _stat_txt += "- " };
				_stat_txt += string(abs(start_comida - global.resources.comida));
		
				draw_text_transformed(RESOLUTION_WIDTH/2 - 100, 220, _stat_txt, 2, 2, 0);
			}
		
			if (day_stat_buff > 1) {
				_stat_txt = "APROVAÇÃO: ";
				if (start_aprovacao - global.resources.aprovacao < 0) { _stat_txt += "+ " } else { _stat_txt += "- " };
				_stat_txt += string(abs(start_aprovacao - global.resources.aprovacao));
			
				draw_text_transformed(RESOLUTION_WIDTH/2 - 100, 260, _stat_txt, 2, 2, 0);
			}
		
			if (day_stat_buff > 2) {
				_stat_txt = "INFRAESTRUTURA: ";
				if (start_infraestrutura - global.resources.infraestrutura < 0) { _stat_txt += "+ " } else { _stat_txt += "- " };
				_stat_txt += string(abs(start_infraestrutura - global.resources.infraestrutura));
			
				draw_text_transformed(RESOLUTION_WIDTH/2 - 100, 300, _stat_txt, 2, 2, 0);
			}
		
			var _txt = "[clique pra avançar]";
			draw_text_transformed(RESOLUTION_WIDTH/2 - string_width(_txt), 390, _txt, 2, 2, 0);
		}
	}
}
else
{
	draw_sprite_ext(spr_background_menu, 0, 0, 0, 2, 2, 0, c_white, 1);
	draw_set_color(c_black);
	draw_set_alpha(day_background_alpha);
	draw_rectangle(0, 0, room_width, room_height, false);
	draw_set_color(c_white);
	draw_set_alpha(1);
	if(day_background_alpha <= 0){should_draw_the_end_text = true};
	if(should_draw_the_end_text){
		draw_set_colour(c_red)
		draw_text_transformed(RESOLUTION_WIDTH/2 - string_width(end_title)/2 * 4.5, 10, end_title, 4.5, 4.5, 0)
		draw_set_colour(c_gray)
		draw_set_alpha(0.6)
		draw_rectangle(50- 10, 100 - 10, RESOLUTION_WIDTH - 30 + 10, RESOLUTION_HEIGHT - 30 + 10, false);
		draw_set_colour(c_black)
		draw_rectangle(50, 100, RESOLUTION_WIDTH - 30, RESOLUTION_HEIGHT - 30, false)
		
		draw_set_colour(c_white);
		draw_set_alpha(1);
		draw_text_ext_transformed(50 + 6, 100, end_text, string_height(end_text), (RESOLUTION_WIDTH)/2.5 - 30 - 6, 2.5, 2.5, 0)
	}
}