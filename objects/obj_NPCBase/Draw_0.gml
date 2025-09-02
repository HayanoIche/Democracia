/// @description
draw_self();

// Desenhar UI fodidinha
if (instance_exists(obj_game_manager.current_npc)) {
	draw_set_colour(c_white)
    draw_text(100, 100, obj_game_manager.current_npc.request_text);
	draw_set_colour(c_white)
    draw_text(250, 150, "Aprovado ou negado? A de aprovado, D de negado.");
}