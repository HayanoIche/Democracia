/// @description

if (sprite_exists(obj_NPCBase.front_sprite_index))
{
	draw_sprite_ext(obj_NPCBase.front_sprite_index,
		obj_NPCBase.image_index,
		obj_NPCBase.x,
		obj_NPCBase.y,
		obj_NPCBase.image_xscale,
		obj_NPCBase.image_yscale,
		obj_NPCBase.image_angle,
		obj_NPCBase.image_blend,
		obj_NPCBase.image_alpha
	)
}
