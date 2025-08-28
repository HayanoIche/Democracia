// Baguio Debug
if (keyboard_check_pressed(ord("A"))) {
    if (instance_exists(current_npc)) {
        approve_request(current_npc);
        alarm[0] = 30;
    }
}

if (keyboard_check_pressed(ord("D"))) {
    if (instance_exists(current_npc)) {
        deny_request(current_npc); 
        alarm[0] = 30;
    }
}