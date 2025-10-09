// Essas coisa são necessárias pra dps, apaga não favorzin - BAGOS
request_text = "";
papel = ""; // Isso é oq na teoria estaria escrito no papel q é levantado na cara do player
aprovar = "";
negar = "";

idle_sprite = undefined;
talk_sprite = undefined;
happy_sprite = undefined;

state = "";

depth = -8500;

alarm[0] = 30;

x = RESOLUTION_WIDTH/2;
y = 80;

var _arm = instance_create_depth(x, y, depth, obj_NPCBase_arm);
_arm.sprite_index = spr_traficante_parado_braco;
