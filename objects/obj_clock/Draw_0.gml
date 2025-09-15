draw_set_colour(c_white);

draw_text(10, 10, "Time: " + clock_get_time_string());
draw_text(10, 30, "Progress: " + string(clock_get_progress() * 100) + "%");