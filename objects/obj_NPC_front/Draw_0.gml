/// @description

if (sprite_exists(obj_NPC.front_sprite_index))
{
	draw_sprite_ext(obj_NPC.front_sprite_index,
		obj_NPC.image_index,
		obj_NPC.x,
		obj_NPC.y,
		obj_NPC.image_xscale,
		obj_NPC.image_yscale,
		obj_NPC.image_angle,
		obj_NPC.image_blend,
		obj_NPC.image_alpha
	)
}
