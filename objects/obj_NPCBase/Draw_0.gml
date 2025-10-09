/// @description
if (keyboard_check_pressed(ord("A")))
{
	approve_request(self);
}

if (keyboard_check_pressed(ord("D")))
{
	deny_request(self);
}

var _sprite = idle_sprite;

if (keyboard_check(vk_shift)) {
	_sprite = happy_sprite;
}

_sprite = idle_sprite;

if (instance_exists(obj_textbox)) {
	if (obj_textbox.draw_char < obj_textbox.text_lenght[obj_textbox.page]) {
		_sprite = talk_sprite;
	}
}
else
{
	if (instance_exists(obj_aproved)) {
		if (obj_aproved.selected) {
			_sprite = happy_sprite;
			
			x = smooth_approach(x, RESOLUTION_WIDTH/2 - 40, 0.5);
		}
	}
}

if (_sprite == idle_sprite) {
	x = smooth_approach(x, RESOLUTION_WIDTH/2, 0.1);
}

sprite_index = _sprite;

draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

if (_sprite == happy_sprite) {
	draw_sprite_ext(spr_shine, 0, x - 60, y + 40, 2, 2, 0, c_white, 1);
	draw_sprite_ext(spr_shine, 0, x + 60, y + 80, 2, 2, 0, c_white, 1);
}

/*
// Desenhar UI fodidinha
if (instance_exists(obj_game_manager.current_npc)) {
	draw_set_colour(c_white)
    draw_text(100, 100, obj_game_manager.current_npc.request_text);
	draw_set_colour(c_white)
    draw_text(250, 150, "Aprovado ou negado? A de aprovado, D de negado.");
}
*/