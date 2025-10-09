// Baguio Debug
clock_update();

global.delta_t = (delta_time/1000000) * game_get_speed(gamespeed_fps);

//show_debug_message(clock_get_time_string())
resource_check();

if (font_add_get_enable_aa())
{
    font_add_enable_aa(false);
}

if (started == false) {exit};

if (is_day_over()) {
	finalizar_dia()	
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
	
	// "Cutscen e de trocar de dia
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
			timer = 60*5;
			show_debug_message(clock_get_time_string());
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
				
				if (!instance_exists(obj_NPCBase)) {
					current_npc = bring_new_person();
					npc_count += 1;
				}
			}
		}
		
		if (timer <= 0)
		{
			action_index = "APPOINTMENT";
			timer = 60*2;
		}
		
		if (timer > 0)
		{
			timer -= 1;
		}
		break; }
		
	case "APPOINTMENT": {
		if (!instance_exists(obj_NPCBase))
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
}

function finalizar_dia() {
		show_message("O dia acabou ou pq vc ficou sem tempo, ou pq acabaram as pessoas :)")
}

function resource_check() {
    var resources = global.resources;
    var keys = variable_struct_get_names(resources);
    
    for (var i = 0; i < array_length(keys); i++) {
        var resource_name = keys[i];
        var resource_value = variable_struct_get(resources, resource_name);
        
        // Checa falha (<= 0)
        if (resource_value <= 0) {
            resource_failure(resource_name);
        }
        // Checa vitoria entre aspsas (>= 100)
        else if (resource_value >= 100) {
            resource_overachieve(resource_name);
        }
    }
}

function resource_failure(resource_name) {
    switch (resource_name) {
        case "comida":
            show_message("FAILURE: Você ficou sem comida! Seus cidadões estão passando fome!");
            break;
			
        case "aprovacao":
            show_message("FAILURE: Taxa de aprovação muito baixa! Impeachment!");
            break;
			
        case "dinheiro":
            show_message("FAILURE: Crise finânceira!");
            break;
			
        case "infraestrutura":
            show_message("FAILURE: Infraestrutura colapsou!");
            break;
			
        default:
            show_message("Não era pra isso aparecer || ERRO NO SISTEMA DE MOSTRAR FALHAS");
            break;
    }
}

function resource_overachieve(resource_name) {
    switch (resource_name) {
        case "comida":
            show_message("OVERACHIEVE: Você tem muita comida! A elite se voltou contra você!");
            break;
        case "aprovacao":
            show_message("OVERACHIEVE: Aprovação máxima! Você virou um ditador!");
            break;
        case "dinheiro":
            show_message("OVERACHIEVE: Abundância de dinheiro, a economia colapsou!");
            break;
        case "infraestrutura":
            show_message("OVERACHIEVE: Infraestrutura alta, os militares se viraram contra você!");
            break;
        default:
            show_message("Não era pra isso aparecer || ERRO NO SISTEMA DE MOSTRAR OVERACHIEVE sla");
            break;
    }
}
