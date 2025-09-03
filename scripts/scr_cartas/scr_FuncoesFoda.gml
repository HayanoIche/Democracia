function bring_new_person() {
    var requests = [
        "Bati mt punheta agora meu pau está molhadinho",
        "DEAD I AM THE ONE, EXTERMINATING SON, SLIPPING THROUGH THE TREES STRANGLING THE BREEZE",
        "O exército solicita mais fundos",
        "Um diplomata estrangeiro busca NOS MATAR!!!!!!!!!!!!!"
    ];
	
	//Na teoria essas requests vão ser trocadas por escolhas reais, então toda essa lógica aqui vai ser
	// refeita, então na teoria é meio fodase tudo isso aqui, mas como já tem as funções de spawnar coisa
	// e aprovar e negar, já deve ajudar em algo -- BAGOS
    
    var random_request = requests[irandom(array_length(requests) - 1)];
    
    // Cria um novo NPC pra poder né sabe né
    var new_npc = instance_create_depth(750, 300, 0, obj_NPCBase);
    
    // muda a variavel interna do pedido a ser feito
    new_npc.request_text = random_request;
    
    show_debug_message("Novo pedido: " + random_request);
    
    return new_npc;
}

function approve_request(npc_id) {
    show_debug_message("Pedido aprovado: " + npc_id.request_text);
    // Na teoria, é aqui q a gnt pega a informação do excel e faz um parse 
	// pra adicionar ou remover. Seria tão simples quanto simplesmente (escrevendo em pseudopintoaqui)
	// if valordoexcel < 0 (positivo) - Adicionar 
	// if valordoexcel > 0 (negativo) - Remover 
	// if valordoexcel == 0 or valordoexcel == null (ou seja, não tem nada, não mudar)
	// dá pra criar um ifzinho básico e gg
	// global.resources.valordoexcel = global.resources.valordoexcel - valoraserremovido 
	
	
    instance_destroy(npc_id);
}

function deny_request(npc_id) {
    show_debug_message("Pedido negado: " + npc_id.request_text);
    //mema coisa eu acho, sla
    instance_destroy(npc_id);
}
	
global.cards = {
	
	medico_1 : {
		nome : "aaa",
		idade : 2
	},
	
	medico_2 : {
		nome : "aaa",
	},
}

