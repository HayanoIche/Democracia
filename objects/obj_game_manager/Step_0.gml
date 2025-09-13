// Baguio Debug
if (font_add_get_enable_aa())
{
    font_add_enable_aa(false);
}

if (started == false) {exit};

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
			if (npc_count < npc_total_per_day)
			{
				current_npc = bring_new_person();
				npc_count += 1;
			}
			else
			{
				show_message("O DIA ACABOU");
			}
		}
		break; }
}