// Essas coisa são necessárias pra dps, apaga não favorzin - BAGOS
name = "";

person = undefined;

request_text = "";
papel = ""; // Isso é oq na teoria estaria escrito no papel q é levantado na cara do player
aprovar = "";
negar = "";

aprov_state = "";

idle_sprite = undefined;
talk_sprite = undefined;
happy_sprite = undefined;
angry_sprite = undefined;

front_idle_sprite = undefined;
front_talk_sprite = undefined;
front_happy_sprite = undefined;
front_angry_sprite = undefined;

front_sprite_index = undefined;

audio = undefined;

state = "";

depth = -8500;

alarm[0] = 30;

instance_create_depth(x, y, depth, obj_NPC_front);

x = RESOLUTION_WIDTH/2;
y = 80;