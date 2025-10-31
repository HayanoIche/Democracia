/// @description
image_alpha = 1;

if (selected == true) {
	
	image_alpha = 0.8;
	
	
	
	var _w = string_width(obj_NPC.card_data.negar) + 40;
	
	draw_sprite_ext(spr_bar, 0, RESOLUTION_WIDTH/2 - string_width(obj_NPC.card_data.negar)/2 - 20, 400 - 10, _w/sprite_get_width(spr_bar), 1, 0, c_white, 1);
	draw_text_color(RESOLUTION_WIDTH/2 - string_width(obj_NPC.card_data.negar)/2 + 1, 400 + 1, obj_NPC.card_data.negar, c_black, c_black, c_black, c_black, 1);
	draw_set_color(c_white);
	draw_text_transformed(RESOLUTION_WIDTH/2 - string_width(obj_NPC.card_data.negar)/2, 400, obj_NPC.card_data.negar, 1, 1, 0);
};

draw_self();