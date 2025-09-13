//Resolution
global.view_x = 0;
global.view_y = 0;

global.camera_target = noone;

cam_x = 0;
cam_y = 0;

surface_actual_x = 0;
surface_actual_y = 0;

//Surface Setup
window_set_size(RESOLUTION_WIDTH * WINDOW_DEFAULT_RESOLUTION, RESOLUTION_HEIGHT * WINDOW_DEFAULT_RESOLUTION);
display_set_gui_size(RESOLUTION_WIDTH * 2, RESOLUTION_HEIGHT * 2);
surface_resize(application_surface, global.surface_width, global.surface_height);

application_surface_draw_enable(false);

surface_correct();
