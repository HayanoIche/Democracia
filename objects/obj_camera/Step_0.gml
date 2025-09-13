//Fullscreen changing
if (instance_exists(global.camera_target))
{
	cam_x = global.camera_target.x;
	cam_y = global.camera_target.y;
}

//Moving camera / Target
var _x = cam_x - (RESOLUTION_WIDTH / 2);
var _y = cam_y - (RESOLUTION_HEIGHT / 2);

global.view_x = clamp(_x, 0, room_width - RESOLUTION_WIDTH);
global.view_y = clamp(_y, 0, room_height - RESOLUTION_HEIGHT);

global.surface_x = surface_actual_x + random_range(-global.surface_shake, global.surface_shake);
global.surface_y = surface_actual_y + random_range(-global.surface_shake, global.surface_shake);

if (global.surface_shake > 0.05) {global.surface_shake *= 0.9} else {global.surface_shake = 0};

camera_set_view_pos(view_camera[0], global.view_x, global.view_y);
camera_set_view_size(view_camera[0], RESOLUTION_WIDTH, RESOLUTION_HEIGHT);
