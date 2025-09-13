// Baguio Debug
if (room == rm_menu) {exit};

switch(action_index)
{
	// "Cutscen e de trocar de dia
	case "DAY CHANGING": {
			change_day_cutscene();
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