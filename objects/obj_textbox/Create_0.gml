//Textbox parameters
textbox_x = 0;
textbox_y = 0;
textbox_width = 300;
textbox_height = 110;
textbox_spr = spr_textbox;

textbox_x_offset = 0;
portrait_x_offset = 0;
text_x_offset = 0;

txtb_spr_w = 0;
txtb_spr_h = 0;

//Text Settings
border = 19;
line_sep = string_height("T") + 3;
line_width = textbox_width - (border+4)*2;

can_skip = true;

//Text
page = 0;
page_number = 0;
text[0] = "";
text_lenght[0] = string_length(text[0]);

text_position = 0;

char[0, 0] = "";
char_x[0, 0] = 0;
char_y[0, 0] = 0;

draw_char = 0;
text_spd = 0.35;

//Options
option[0] = "";
option_link_id[0] = -1;
option_pos = 0;
option_number = 0;

//Sound
snd_delay = 4;
snd_count = snd_delay;

//Effects
scr_set_defaults_for_text();
last_free_space = 0;
text_pause_timer = 0;
text_pause_time = 8;

setup = false;

time = 120;
text_timer = 0;

surface = surface_create(textbox_width, textbox_height);

depth = -9050;
