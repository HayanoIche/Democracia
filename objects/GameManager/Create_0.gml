// Recursos do game. Dá pra adicionar recursos escondidos pra eventos especiais
// tipo o fun number do undertale
global.resources = {
    comida: 100,
    aprovacao: 100,
    dinheiro: 100,
    infraestrutura: 100
};

// Inicializar o fodidinho

current_npc = noone;

// Nota: Bizarro como na gamemaker vc pode só chamar "bring_new_person()" e FODASE
// funciona perfeitamente. Na Godot tem como fazer isso tbm, só é mais opcional -- BAGOS
current_npc = bring_new_person();