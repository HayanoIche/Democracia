/// @description
var _sprite = idle_sprite;
var _front_sprite = front_idle_sprite;

_sprite = idle_sprite;
_front_sprite = front_idle_sprite

if (aprov_state == "")
{
	if (instance_exists(obj_textbox)) {
		if (obj_textbox.draw_char < obj_textbox.text_lenght[obj_textbox.page]) {
			_sprite = talk_sprite;
			_front_sprite = front_talk_sprite
		}
	}
	else
	{
		if (instance_exists(obj_denided)) {
			if (obj_denided.selected) {
				_sprite = angry_sprite;
				_front_sprite = front_angry_sprite;
			
				x = smooth_approach(x, RESOLUTION_WIDTH/2 + 40, 0.5);
			}
		}
	
		if (instance_exists(obj_aproved)) {
			if (obj_aproved.selected) {
				_sprite = happy_sprite;
				_front_sprite = front_happy_sprite;
			
				x = smooth_approach(x, RESOLUTION_WIDTH/2 - 40, 0.5);
			}
		}
	}

	if (_sprite == idle_sprite) {
		x = smooth_approach(x, RESOLUTION_WIDTH/2, 0.1);
	}
}
else
{
	if (aprov_state == "denied") {
		_sprite = angry_sprite;
		_front_sprite = front_angry_sprite;
	}
	
	if (aprov_state == "aproved") {
		_sprite = happy_sprite;
		_front_sprite = front_happy_sprite;
	}
}

sprite_index = _sprite;
front_sprite_index = _front_sprite;

obj_NPC_front.sprite_index = front_sprite_index;
obj_NPC_front.x = x;
obj_NPC_front.x = y;
obj_NPC_front.image_xscale = image_xscale;
obj_NPC_front.image_yscale = image_yscale;
obj_NPC_front.image_angle = image_angle;
obj_NPC_front.image_blend = image_blend;
obj_NPC_front.image_alpha = image_alpha;

if (!sprite_exists(_sprite)) {exit};

draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

