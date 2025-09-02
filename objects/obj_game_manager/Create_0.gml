// Recursos do game. Dá pra adicionar recursos escondidos pra eventos especiais
global.font = font_add("font.ttf", 31, false, false, 0, 256);
#macro fnt_main global.font

action_index = "DAY CHANGING";

day_text_timer = 0;
day_text_alpha = 0;
day_changed = false;
day_background_alpha = 0;
timer = 0;

// tipo o fun number do undertale
global.resources = {
    comida: 100,
    aprovacao: 100,
    dinheiro: 100,
    infraestrutura: 100
};

// Inicializar o fodidinho

current_npc = noone;
npc_count = 0;
npc_total_per_day = 5;

// Nota: Bizarro como na gamemaker vc pode só chamar "bring_new_person()" e FODASE
// funciona perfeitamente. Na Godot tem como fazer isso tbm, só é mais opcional -- BAGOS
current_npc = noone;

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
			if (day_text_timer < 60)
			{
				day_text_alpha += 1/60;
				day_text_timer += 1;
			}
			else
			{
				day_changed = true;
				day_text_timer = 0;
				timer = 0;
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
				action_index = "CHARACTER INTERACTION";
			}
		}
	}
}