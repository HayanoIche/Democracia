var _trans = 1;
var _hspace = 1;
var _yspace = 20;
var _add = 0;
var _line = 0;
var _goon = [];
draw_set_color(c_white);
draw_self();
for (var _i = 0; _i < array_length(amigos_3pjd); _i ++){
	if(current_line = ""){
		_add = 10;
		_goon = [];
		current_line += amigos_3pjd[_i] + "    ";
		_add += string_width(amigos_3pjd[_i] + "    ") *_trans;
		array_push(_goon, amigos_3pjd[_i] + "    ");
	}else{
		if (_add + string_width(amigos_3pjd[_i] + "    ")*_trans + 10 < room_width && _i+1 < array_length(amigos_3pjd)){
			current_line += amigos_3pjd[_i] + "    ";
			_add += string_width(amigos_3pjd[_i] + "    ")*_trans;
			array_push(_goon, amigos_3pjd[_i] + "    ");
			
		} else{
			
			draw_text_ext_transformed(0, _line*_yspace, current_line, 0, 99999999999999, _trans, _trans, 0)
			
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
