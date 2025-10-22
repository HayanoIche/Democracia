// Baguio Debug
if (room == rm_menu_presstart) {exit};

clock_update();

global.delta_t = (delta_time/1000000) * game_get_speed(gamespeed_fps);

//show_debug_message(clock_get_time_string())
resource_check();

if (font_add_get_enable_aa())
{
    font_add_enable_aa(false);
}

if (action_index == "PRESSTART")
{
	if (day_background_alpha > 0)
	{
		day_background_alpha -= 0.05;
	}
	else
	{
		action_index = "TUTORIAL";
	}
}

if (started == false) {exit};

if (day_is_over())
&& (action_index != "NIGHT")
{
	action_index = "DAY END";
}

switch(action_index)
{
	case "TUTORIAL": {
			if (instance_exists(obj_menu_button)) {
				instance_destroy(obj_menu_button);
			}
			
			if (!instance_exists(obj_proceed))
			{
				var _p = instance_create_depth(800/2 + 150, 500 - 102, -1000, obj_proceed);
				_p.image_xscale = 9;
				_p.image_yscale = 3;
			}
			
		break; }
	
	case "DAY CHANGING": {
			change_day_cutscene();
		break; }
		
	case "WAITING SOMEONE": {
		// caso já tenha alguém aqui ele coloca a próxima na lista de espera
		if abs(global.clock.time_current - global.persons.first.time) < 1
		|| abs(global.clock.time_current - global.persons.second.time) < 1
		|| abs(global.clock.time_current - global.persons.third.time) < 1
		|| abs(global.clock.time_current - global.persons.fourth.time) < 1
		|| abs(global.clock.time_current - global.persons.fifth.time) < 1
		{
			action_index = "CHARACTER INTERACTION";
			clock_pause();
			
			timer = 60*5;
		}
		
		break; }
		
	case "CHARACTER INTERACTION": {
		if (timer == 60 * 5) {audio_play_sound(snd_door_knock, 8, false)};
		
		if (timer <= 60*4) && (timer > 60*2)
		{
			if (day_background_alpha < 1)
			{
				day_background_alpha += 1/60;
			}
		}
		
		if (timer <= 60*1)
		{
			if (day_background_alpha > 0)
			{
				day_background_alpha -= 1/60;
				
				if (!instance_exists(obj_NPC)) {
					current_npc = bring_new_person();
					npc_count += 1;
				}
			}
		}
		
		if (timer <= 0)
		{
			action_index = "APPOINTMENT";
			clock_start();
			timer = 60*2;
		}
		
		if (timer > 0)
		{
			timer -= 1;
		}
		break; }
		
	case "APPOINTMENT": {
		if (!instance_exists(obj_NPC))
		{
			if (timer <= 60*2) && (timer > 60*1)
			{
				if (day_background_alpha < 1)
				{
					day_background_alpha += 1/60;
				}
			}
			
			if (timer <= 60*1)
			{
				if (day_background_alpha > 0)
				{
					day_background_alpha -= 1/60;
				}
			}
		
			if (timer <= 0) {
				action_index = "WAITING SOMEONE";
			}
		}
		else
		{
			if (!instance_exists(obj_textbox))
			{
				if (!instance_exists(obj_aproved))
				{
					instance_create_depth(RESOLUTION_WIDTH/4 - 40, RESOLUTION_HEIGHT/2, depth, obj_aproved);
					instance_create_depth(RESOLUTION_WIDTH/4 * 3 + 40, RESOLUTION_HEIGHT/2, depth, obj_denided);
				}
			}
		}
		
		if (timer > 0)
		{
			timer -= 1;
		}
		
		break; }
	
	case "NPC EXIT": {
			if (instance_exists(obj_aproved)) {instance_destroy(obj_aproved)};
			if (instance_exists(obj_denided)) {instance_destroy(obj_denided)};
			
			if (instance_exists(obj_NPC))
			{
				if (day_background_alpha < 1)
				{
					day_background_alpha += 1/60;
				}
				else
				{
					instance_destroy(obj_NPC);
				}
				
			}
			else
			{
				if (day_background_alpha > 0)
				{
					day_background_alpha -= 1/60;
				}
				else
				{
					action_index = "WAITING SOMEONE";
				}
			}
		break; }
	
	case "DAY END": {
		if (day_background_alpha < 1)
		{
			day_background_alpha += 0.005;
			timer = 0;
		}
		else
		{
			if (day_end_y_buff < 150)
			{
				if (timer < 120)
				{
					timer += 1;
				}
				else
				{
					day_end_y_buff = smooth_approach(day_end_y_buff, 160, 0.030);
				}
			}
			else
			{
				action_index = "NIGHT";
				timer = 0;
			}
		}
		break; }
			
	case "NIGHT": {
			if (day_stat_buff < 3)
			{
				if (mouse_check_button_pressed(mb_left))
				{
					day_stat_buff += 1;
				}
			}
			else
			{
				if (mouse_check_button_pressed(mb_left))
				{
					clock_reset();
					timer = 0;
					day_stat_buff = 0;
					day_end_y_buff = 0;
					action_index = "DAY CHANGING";
				}
			}
		break; }
}

if (keyboard_check_pressed(vk_delete))
{
	global.clock.time_current += 100;
}