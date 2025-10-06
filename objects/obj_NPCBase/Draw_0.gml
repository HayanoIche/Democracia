/// @description
if (keyboard_check_pressed(ord("A")))
{
	approve_request(self);
}

if (keyboard_check_pressed(ord("D")))
{
	deny_request(self);
}

if (keyboard_check(vk_shift)) {
	sprite_index = happy_sprite;
}

if (instance_exists(obj_textbox)) {
	if (obj_textbox.draw_char < obj_textbox.text_lenght[obj_textbox.page]) {
		sprite_index = talk_sprite;
	}
	else
	{
		sprite_index = idle_sprite;
	}
}
else
{
	sprite_index = idle_sprite;
}

draw_sprite_ext(sprite_index, image_index, RESOLUTION_WIDTH/2, 80, 2, 2, 0, c_white, 1);

/*
// Desenhar UI fodidinha
if (instance_exists(obj_game_manager.current_npc)) {
	draw_set_colour(c_white)
    draw_text(100, 100, obj_game_manager.current_npc.request_text);
	draw_set_colour(c_white)
    draw_text(250, 150, "Aprovado ou negado? A de aprovado, D de negado.");
}
*/