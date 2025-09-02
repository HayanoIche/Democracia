// Desenhar os recursos
draw_set_colour(c_lime);

var _xx = 10;
var _yy = 20;

var _sep = 50;

draw_text(_xx, _yy, "Dinheiro: " + string(global.resources.dinheiro));
draw_text(_xx, _yy + _sep, "Comida: " + string(global.resources.comida));
draw_text(_xx, _yy + _sep * 2, "Aprovacao: " + string(global.resources.aprovacao));
draw_text(_xx, _yy + _sep * 3, "Infraestrutura: " + string(global.resources.infraestrutura));
