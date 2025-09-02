/// @description
if (action_index == "DAY CHANGING")
{
draw_set_color(c_black);
draw_set_alpha(day_background_alpha);
draw_rectangle(0, 0, room_width, room_height, false);

draw_set_color(c_white);
draw_set_alpha(day_text_alpha);
draw_set_font(fnt_main);

var _size = 2;
var _txt = "DIA 69";
draw_text_transformed((room_width/2 - string_width(_txt)/2 * (_size)), (room_height/2 - string_height(_txt)/2 * (_size)), _txt, _size, _size, 0);

draw_set_alpha(1);
}

//// Desenhar UI fodidinha
//if (instance_exists(obj_GameManager.current_npc)) {
//	draw_set_colour(c_white)
//    draw_text(100, 100, obj_GameManager.current_npc.request_text);
//	draw_set_colour(c_white)
//    draw_text(250, 150, "Aprovado ou negado? A de aprovado, D de negado.");
//}