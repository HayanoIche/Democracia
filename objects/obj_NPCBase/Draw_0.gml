/// @description
var _sprite = idle_sprite;
var _front_sprite = front_idle_sprite;

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
	if (instance_exists(obj_denided)) {
		if (obj_denided.selected) {
			_sprite = angry_sprite;
			
			x = smooth_approach(x, RESOLUTION_WIDTH/2 + 40, 0.5);
		}
	}
	
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


switch(_sprite)
{
	case idle_sprite: _front_sprite = front_idle_sprite; break;
	case talk_sprite: _front_sprite = front_talk_sprite; break;
	case happy_sprite: _front_sprite = front_happy_sprite; break;
	case angry_sprite: _front_sprite = front_angry_sprite; break;
}

sprite_index = _sprite;
front_sprite_index = _front_sprite;

draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);


/*
// Desenhar UI fodidinha
if (instance_exists(obj_game_manager.current_npc)) {
	draw_set_colour(c_white)
    draw_text(100, 100, obj_game_manager.current_npc.request_text);
	draw_set_colour(c_white)
    draw_text(250, 150, "Aprovado ou negado? A de aprovado, D de negado.");
}
*/