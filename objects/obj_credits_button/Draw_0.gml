/// @description
if (index == 0)
{
	draw_sprite_ext(spr_background_menu, 0, 0, 0, 2, 2, 0, c_white, 1);
	draw_sprite_ext(spr_game_title, 0, room_width/2, room_height/2 - 126, 2.5, 2.5, 0, c_white, 1);
	
	draw_text(room_width/2, room_height/2, "");
	
	//draw_text()
}
draw_self();

if (selected == true) {image_blend = c_yellow} else {image_blend = c_white};

var _txt = "voltar";
draw_set_color(c_black);

var _text_size = 1

var _col = c_black;

draw_set_alpha(1);
draw_text_transformed_color(x + sprite_width/2 - string_width(_txt) + 2, y + sprite_height/2 - string_height(_txt) + 2, _txt, 2, 2, 0, _col, _col, _col, _col, 1);
draw_set_color(c_white);
draw_text_transformed(x + sprite_width/2 - string_width(_txt), y + sprite_height/2 - string_height(_txt), _txt, 2, 2, 0);




draw_set_colour(c_green)


var _trans = 0.9;
var _hspace = 1;
var _yspace = 25;
var _add = 0;
var _line = 0;
var _goon = [];

draw_set_colour(c_gray)
draw_set_alpha(0.6)
	draw_rectangle(50 - 3 -6, 165 - 3-6, 761 + 3 + 6, 363 + 3 + 6, false)
	
	draw_set_colour(c_black)
	
draw_rectangle(50 - 3, 165 - 3, 761 + 3, 363 + 3, false)

draw_set_colour(c_white)
draw_set_alpha(1)

draw_self();
for (var _i = 0; _i < array_length(amigos_3pjd); _i ++){
	if(current_line = ""){
		_add = 50;
		_goon = [];
		current_line += amigos_3pjd[_i] + "    ";
		_add += string_width(amigos_3pjd[_i] + "    ") *_trans;
		array_push(_goon, amigos_3pjd[_i] + "    ");
	}else{
		if (_add + string_width(amigos_3pjd[_i])*_trans  < room_width - 90&& _i+1 < array_length(amigos_3pjd)){
			current_line += amigos_3pjd[_i] + "    ";
			_add += string_width(amigos_3pjd[_i] + "    ")*_trans;
			array_push(_goon, amigos_3pjd[_i] + "    ");
			
		} else{
			if(_i == array_length(amigos_3pjd) - 1){
				current_line += amigos_3pjd[_i] + "    ";
			_add += string_width(amigos_3pjd[_i] + "    ")*_trans;
			array_push(_goon, amigos_3pjd[_i] + "    ");
			}
			draw_text_ext_transformed(50, _line*_yspace + 165, current_line, 0, 99999999999999, _trans, _trans, 0)
			
			/*for (var _a = 0; _a < array_length(_goon); _a++){
				var _pog = 0; 
				for(var _b = 0; _b < array_length(_goon); _b++){
					if(_a == _b){continue};
					if (_b < _a){
						_pog += string_width(_goon[_a]) * _trans;
					}
					if (_b > _a){
						_pog += string_width(_goon[_a]) * _trans;
					}
				}var _affers
				if (_a < array_length(_goon)/2){_affers = string_width(_goon[_a])} else {_affers = string_width(_goon[_a])}
				draw_text_ext_transformed(_affers/2 + _pog, _line * _yspace, _goon[_a], 0, 9999999, _trans, _trans, 0)
				
			}*/
			_line += 1
			current_line = amigos_3pjd[_i] + "    ";
			_add = 10;
			_goon = [amigos_3pjd[_i] + "    "] 
			_add += string_width(amigos_3pjd[_i] + "    ") *_trans;
			
		}
		
	}
	
	
}


current_line = "";


with(obj_mouse){draw_self()}