// Script
function surface_correct()
{
	global.surface_size = window_get_height() / RESOLUTION_HEIGHT;
	
	if (global.perfect_fullscreen == true)
	{
		global.surface_size = floor(global.surface_size);
	}
	
	global.surface_width = RESOLUTION_WIDTH * global.surface_size;
	global.surface_height = RESOLUTION_HEIGHT * global.surface_size;
	
	surface_resize(application_surface, global.surface_width, global.surface_height);
	
	obj_camera.surface_actual_x = (window_get_width() - global.surface_size * RESOLUTION_WIDTH)/2;
	obj_camera.surface_actual_y = (window_get_height() - global.surface_size * RESOLUTION_HEIGHT)/2;
	
	if (!window_get_fullscreen())
	{
		window_center();
	}
}

function fullscreen_toggle()
{
	window_enable_borderless_fullscreen(global.borderless_fullscreen);
	window_set_fullscreen(!window_get_fullscreen());
	
	var _t = time_source_create(time_source_game, 10, time_source_units_frames, surface_correct);
	time_source_start(_t);
}
