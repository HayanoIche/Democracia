// Baguio Debug
clock_update();
//show_debug_message(clock_get_time_string())
resource_check()

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
	// "Cutscen e de trocar de dia
	case "DAY CHANGING": {
			change_day_cutscene();
		break; }
		
	case "WAITING SOMEONE": {
			 
		break; }
		
	case "CHARACTER INTERACTION": {
		instance_create_depth(0, 0, depth - 1, obj_resources_ui);
		
		if (!instance_exists(obj_NPCBase)) {
			if (npc_count < npc_total_per_day || is_day_over()) 
			{
				current_npc = bring_new_person();
				npc_count += 1;
			}
			else
			{
				finalizar_dia()
			}
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