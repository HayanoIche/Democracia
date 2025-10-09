// Recursos do game. Dá pra adicionar recursos escondidos pra eventos especiais
global.font = font_add("unifont.otf", 12, false, false, 0, 256);
#macro fnt_main global.font

global.delta_t = delta_time / 1000000;
#macro delta global.delta_t;

action_index = "TUTORIAL";

started = false;

day_text_timer = 0;
day_text_alpha = 0;
day_changed = false;
day_background_alpha = 0;
timer = 0;

// tipo o fun number do undertale
global.resources = {
    comida: 50,
    aprovacao: 50,
    dinheiro: 50,
    infraestrutura: 50
};

// Inicializar o fodidinho

current_npc = noone;
npc_count = 0;
npc_total_per_day = 20;

// Nota: Bizarro como na gamemaker vc pode só chamar "bring_new_person()" e FODASE
// funciona perfeitamente. Na Godot tem como fazer isso tbm, só é mais opcional -- BAGOS
current_npc = noone;

instance_create_depth(0, 0, depth - 4, obj_clock);

change_day_cutscene = function()
{
	// Começando a animação de trocar de dia
	if (day_changed == false)
	{
		// Dando fade preto
		if (timer < 120)
		{
			timer += 1;
			day_background_alpha += 1/120;
		}
		else {
			// Dando Fade no Texto
			if (day_text_timer < 120)
			{
				day_text_alpha += 1/60;
				day_text_timer += 1;
			}
			else
			{
				room_goto(rm_principal);
				day_text_alpha = 1;
				day_changed = true;
				day_text_timer = 0;
				timer = 0;
				
				instance_create_depth(0, 0, depth, obj_background);
				instance_create_depth(0, 0, depth, obj_table);
			}
		}
	}
	else {
		// Fade Out no texto
		if (day_text_timer < 60)
		{
			day_text_alpha -= 1/60;
			day_text_timer += 1;
		}
		else
		{
			// Fade Out no Background
			if (timer < 60)
			{
				timer += 1;
				day_background_alpha -= 1/60;
			}
			else
			{
				action_index = "WAITING SOMEONE";
				day_text_timer = 0;
				day_background_alpha = 0;
				day_changed = false;
				clock_start();
			}
		}
	}
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

day_end_y_buff = 0;
day_stat_buff = 0;

depth = -9500;