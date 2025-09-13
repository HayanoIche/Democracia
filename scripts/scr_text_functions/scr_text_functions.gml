//Defalts for text
function scr_set_defaults_for_text()
{
	line_break_pos[0, page_number] = 999;
	line_break_num[page_number] = 0;
	line_break_offset[page_number] = 0;
	
	//varibles for every letter/character
	for(var _c = 0; _c < 500; _c++)
	{
		col_1[_c, page_number] = c_white;
		col_2[_c, page_number] = c_white;
		col_3[_c, page_number] = c_white;
		col_4[_c, page_number] = c_white;
		
		float_text[_c, page_number] = false;
		float_dir[_c, page_number] = _c*20;
		
		shake_text[_c, page_number] = 0;
		shake_dir[_c, page_number] = irandom(360);
		shake_time[_c, page_number] = irandom(4);
	}
	
	txtb_spr[page_number] = spr_menu_button;
	speaker_sprite[page_number] = noone;
	speaker_name[page_number] = "";
	snd_menu_move[page_number] = snd_text_generic;
}

//Text
function scr_text(_text)
{
	scr_set_defaults_for_text();
	
	text[page_number] = _text;
	
	page_number++;
}

//Options
function scr_option(_option, _link_id)
{
	option[option_number] = _option;
	option_link_id[option_number] = _link_id;
	
	option_number += 1;
}

//Text id
function create_textbox(_text_id, _text_s = "down", _can_skip = true)
{
	with(instance_create_depth(0, 0, -9998, obj_textbox))
	{
		scr_game_text(_text_id);
		text_s = _text_s;
		can_skip = _can_skip;
	}
}


function surface_safer(surface, size_x, size_y)
{
	if (surface_exists(surface)) {
		return surface;
	}
	else {
		return surface_create(size_x, size_y);
	}
}