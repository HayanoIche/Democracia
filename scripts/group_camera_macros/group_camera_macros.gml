// Script
global.borderless_fullscreen = true;
global.perfect_fullscreen = false;

global.resolution_width = 800;
global.resolution_height = 450;

#macro RESOLUTION_WIDTH global.resolution_width
#macro RESOLUTION_HEIGHT global.resolution_height

#macro HALF_SCREEN_WIDTH global.resolution_width/2
#macro HALF_SCREEN_HEIGHT global.resolution_height/2

#macro WINDOW_DEFAULT_RESOLUTION 2

// Surface
global.surface_size = 1;
global.surface_x = 0;
global.surface_y = 0;
global.surface_width = RESOLUTION_WIDTH * global.surface_size;
global.surface_height = RESOLUTION_HEIGHT * global.surface_size;

global.surface_shake = 0;