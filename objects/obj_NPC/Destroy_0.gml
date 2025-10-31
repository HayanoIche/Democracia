/// @description
instance_destroy(obj_NPC_front);
instance_destroy(obj_aproved);
instance_destroy(obj_denided);

if (aprov_state == "denied") {
	audio_play_sound(person.audios_nega[irandom_range(0, 2)], 5, false);
}
	
if (aprov_state == "aproved") {
	audio_play_sound(person.audios_aprov[irandom_range(0, 2)], 5, false);
}

clock_start();



