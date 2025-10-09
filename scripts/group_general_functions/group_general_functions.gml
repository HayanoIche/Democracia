// Script

/// @param sprite
/// @param subing
/// @param x
/// @param y
/// @param xscale
/// @param yscale
/// @param ang
/// @param colour
/// @param outline_colour
/// @param alp
/// @param out
/// @param alpha
function draw_sprite_outlined(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10, argument11)
{
	var _spr = argument0;
	var _img = argument1;
	var _xx = argument2;
	var _yy = argument3;
	var _xs = argument4;
	var _xxx = argument2-argument4;
	var _xxxx = argument2+argument4;
	var _yyy = argument3-argument5;
	var _yyyy = argument3+argument5;
	var _ys = argument5;
	var _ang = argument6;
	var _col = argument7;
	var _ocol = argument8;
	var _alf = argument9;
	var _size = argument10;
	var _alp = argument11;
	
	gpu_set_fog(true, _ocol, 0, 0);
	
	draw_sprite_ext(_spr, _img, _xxx-_size, _yy, _xs, _ys, _ang, c_white, _alf);
	draw_sprite_ext(_spr, _img, _xxxx+_size, _yy, _xs, _ys, _ang, c_white, _alf);
	draw_sprite_ext(_spr, _img, _xx, _yyy-_size, _xs, _ys, _ang, c_white, _alf);
	draw_sprite_ext(_spr, _img, _xx, _yyyy+_size, _xs, _ys, _ang, c_white, _alf);
	
	gpu_set_fog(false, c_white, 0, 0);
	
	draw_sprite_ext(_spr, _img, _xx, _yy, _xs, _ys, _ang, _col, _alp);
}

//Smooth Approach
function smooth_approach(argument0, argument1, argument2)
{
	var _diff = argument1 - argument0;
	if abs(_diff) < 0.05
	{
		return argument1;
	}
	else
	{
		return argument0 + sign(_diff) * abs(_diff) * argument2
	}
}

//Wave
/// @param Min
/// @param Max
/// @param Wave Time
/// @param Offset
function wave(argument0, argument1, argument2, argument3)
{
	var _a4 = (argument1 - argument0) * 0.5;
	return argument0 + _a4 + sin((((current_time * 0.001) + argument2 * argument3) / argument2) * (pi*2)) * _a4;
}

//ScreenShake
function shakescreen(_shake)
{
	global.surface_shake = _shake
}

//Chapter change
function chapter_change(_chapter_num, _next_room)
{
	with(instance_create_depth(0, 0, -9999, obj_chapter_control))
	{
		chapter = _chapter_num;
		nextroom = _next_room;
	}
}

//Destroy in frames
function self_destroy_in_frames(_frames)
{
	var _d = function() {instance_destroy(self)};
	var _t = time_source_create(time_source_game, _frames, time_source_units_frames, _d);
	time_source_start(_t);
}

