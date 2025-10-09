/// @description
surface = surface_safer(surface, textbox_width, textbox_height);

surface_set_target(surface);
draw_clear_alpha(c_white, 0);

// Setup
if (setup == false)
{
	// Returning setup
	setup = true;
	
	draw_set_font(global.font);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	line_sep = string_height("T") + 3;
	
	for(var _p = 0; _p < page_number; _p += 1)
	{
		// Portrait setup
		text_lenght[_p] = string_length(text[_p]);
		
		// No character on screen
		if (speaker_sprite[_p] == noone)
		{
			textbox_width = textbox_width;
			textbox_x_offset[_p] = 0;
			text_x_offset[_p] = textbox_x_offset[_p] + border;
		}
		
		//Setting individual characters and fiding where the lines of text should break
		for(var _c = 0; _c < text_lenght[_p]; _c++)
		{
			var _char_pos = _c + 1;
			
			//store individual characters in the "char" array
			char[_c, _p] = string_char_at(text[_p], _char_pos);
			
			//get current width of the line
			var _txt_up_to_char = string_copy(text[_p], 1, _char_pos);
			var _current_txt_w = string_width(_txt_up_to_char) - string_width(char[_c, _p]);
			
			//get the last free space
			if (char[_c, _p] == " ") {last_free_space = _char_pos + 1 };
			
			//get the line breaks
			if (_current_txt_w - line_break_offset[_p] > line_width)
			{
				line_break_pos[line_break_num[_p], _p] = last_free_space;
				line_break_num[_p] ++;
				var _txt_up_to_last_space = string_copy(text[_p], 1, last_free_space);
				var _last_freed_space_string = string_char_at(text[_p], last_free_space);
				line_break_offset[_p] = string_width(_txt_up_to_last_space) - string_width(_last_freed_space_string);
			}
			
			if (char[_c, _p] == "|")
			{
				last_free_space = _char_pos+1;
				char[_c, _p] = "";
				line_break_pos[line_break_num[_p], _p] = last_free_space;
				line_break_num[_p] ++;
				var _txt_up_to_last_space = string_copy(text[_p], 1, last_free_space);
				var _last_freed_space_string = string_char_at(text[_p], last_free_space);
				line_break_offset[_p] = string_width(_txt_up_to_last_space) - string_width(_last_freed_space_string);
			}
		}
		
		for(var _c = 0; _c < text_lenght[_p]; _c++)
		{
			var _char_pos = _c + 1;
			var _txt_x = textbox_x + text_x_offset[_p];
			var _txt_y = textbox_y + border;
			
			//get current width of the line
			var _txt_up_to_char = string_copy(text[_p], 1, _char_pos);
			var _current_txt_w = string_width(_txt_up_to_char) - string_width(char[_c, _p]);
			var _txt_line = 0;
			
			//compensate for string breaks
			for(var _lb = 0; _lb < line_break_num[_p]; _lb++)
			{
				//if the current looping character is after a line break
				if _char_pos >= line_break_pos[_lb, _p]
				{
					var _str_copy = string_copy(text[_p], line_break_pos[_lb, _p], _char_pos-line_break_pos[_lb, _p]);
					_current_txt_w = string_width(_str_copy);
					
					//record the line this character should be on
					_txt_line = _lb+1;
				}
			}
			//add to the x and y coordinates base on the new info
			char_x[_c, _p] = _txt_x + _current_txt_w;
			char_y[_c, _p] = _txt_y + _txt_line*line_sep;
		}
	}
}

//typing the text
if (text_pause_timer <= 0)
{
	if (draw_char < text_lenght[page])
	{
		draw_char += text_spd * delta;
		draw_char = clamp(draw_char, 0, text_lenght[page]);
		var _check_char = string_char_at(text[page], draw_char);
		
		if (_check_char == "." || _check_char == "?" || _check_char == "!" || _check_char == ",")
		{
			text_pause_timer = text_pause_time;
			image_index = 0;
			image_speed = 0;
		}
		else
		{
			if (snd_count < snd_delay)
			{
				snd_count++;
			}
			else
			{
				snd_count = 0;
				
				if (_check_char != "(" && _check_char != ")" && _check_char != "[" && _check_char != "]")
				{
					audio_play_sound(snd_menu_move[page], 8, false);
					//audio_sound_gain(snd_menu_move[page], global.sfx_volume * global.master_volume, 0);
				}
			}
			
			image_speed = 1;
		}
	}
}
else
{
	text_pause_timer--;
}

if (mouse_check_button_pressed(mb_left))
{
	//if the typing is done
	if (draw_char == text_lenght[page])
	{
		//next page
		if (page < page_number - 1)
		{
			page++;
			draw_char = 0;
		}
		else
		{
			//link text for options
			if (option_number > 0)
			{
				create_textbox(option_link_id[option_pos]);
			}
				
			surface_reset_target();
			instance_destroy();
			exit;
		}
	}
}
	
if (mouse_check_button_released(mb_left))
{
	draw_char = text_lenght[page];
}

//Draw the textbox
var _txtb_x = textbox_x + textbox_x_offset[page];
var _txtb_y = textbox_y;
txtb_spr_w = sprite_get_width(txtb_spr[page]);
txtb_spr_h = sprite_get_height(txtb_spr[page]);

//back of the textbox
draw_sprite_ext(textbox_spr, 0, _txtb_x, _txtb_y, textbox_width/txtb_spr_w, textbox_height/txtb_spr_h, 0, c_gray, 1);

//draw the speaker
if (speaker_sprite[page] != noone)
{ 
	sprite_index = speaker_sprite[page];
	if draw_char == text_lenght[page] {image_index = 0;}
	var _speaker_x = textbox_x + portrait_x_offset[page];
	
	draw_sprite_ext(sprite_index, image_index, _speaker_x + 4, textbox_y + 4, 0.5, 0.5, 0, c_white, 1);
	
	if (speaker_name[page] != noone)
	{
		draw_text(_speaker_x + 3, textbox_y - (string_height(speaker_name[page]) + 2), speaker_name[page])
	}
}
else
{
	if (speaker_name[page] != noone)
	{
		var _name_x = textbox_x + textbox_x_offset[page];
		draw_text(_name_x + 3, textbox_y - (string_height(speaker_name[page]) + 2), speaker_name[page])
	}
}

//draw the text
for(var _c = 0; _c < draw_char; _c++)
{
	//special stuff
	//floating text
	var _float_y = 0;
	
	if (float_text[_c, page] == true)
	{
		float_dir[_c, page] += -6;
		_float_y = dsin(float_dir[_c, page]) * 1;
		
	}
	
	//shake text
	var _shake_x = 0;
	var _shake_y = 0;
	
	if (shake_text[_c, page] == true)
	{
		shake_time[_c, page]--;
		
		if (shake_time[_c, page] <= 0)
		{
			shake_time[_c, page] = irandom_range(4, 8)
			shake_dir[_c, page] = irandom(360);
		}
		
		if (shake_time[_c, page] <= 2)
		{
			_shake_x = lengthdir_x(1, shake_dir[_c, page]);
			_shake_y = lengthdir_y(1, shake_dir[_c, page]);
		}
	}
	
	//the text
	draw_set_font(global.font);
	draw_text_color(char_x[_c, page] + _shake_x, char_y[_c, page] + _float_y + _shake_y, char[_c, page], col_1[_c, page], col_2[_c, page], col_3[_c, page], col_4[_c, page], 1);
}

surface_reset_target();

draw_surface_ext(surface, 480, 150, 1, 1, 0, c_white, 1);
