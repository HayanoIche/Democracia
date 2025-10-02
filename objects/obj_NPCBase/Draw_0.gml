/// @description
if (keyboard_check_pressed(ord("A")))
{
	approve_request(self);
}

if (keyboard_check_pressed(ord("D")))
{
	deny_request(self);
}

draw_sprite_ext(spr_bispo_parado, 0, RESOLUTION_WIDTH/2, 80, 2, 2, 0, c_white, 1);

/*
// Desenhar UI fodidinha
if (instance_exists(obj_game_manager.current_npc)) {
	draw_set_colour(c_white)
    draw_text(100, 100, obj_game_manager.current_npc.request_text);
	draw_set_colour(c_white)
    draw_text(250, 150, "Aprovado ou negado? A de aprovado, D de negado.");
}
*/