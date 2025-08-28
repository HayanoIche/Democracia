// Desenhar UI fodidinha
if (instance_exists(GameManager.current_npc)) {
	draw_set_colour(c_white)
    draw_text(100, 100, GameManager.current_npc.request_text);
	draw_set_colour(c_white)
    draw_text(250, 150, "Aprovado ou negado? A de aprovado, D de negado.");
}

// Desenhar os recursos
draw_set_colour(c_lime)
draw_text(800, 100, "Dinheiro: " + string(global.resources.dinheiro));
draw_text(800, 120, "Comida: " + string(global.resources.comida));
draw_text(800, 140, "Aprovacao: " + string(global.resources.aprovacao));
draw_text(800, 160, "Infraestrutura: " + string(global.resources.infraestrutura));