global.used_cards = []; // Cuida de quais cards foram utilizados
global.allow_card_repetition = false; // Deixe em true pra repetir cards

function bring_new_person() {
    // Pegar todos os cards
    var all_cards = variable_struct_get_names(global.cards);
    
    // Inicializar available_cards corretamente
    var available_cards = [];
    
    // Filtrar cards baseado na configuração de repetição
    if (global.allow_card_repetition) {
        // Se repetição permitida, usar todos os cards
        available_cards = all_cards;
    } else {
        // Se repetição não permitida, filtrar cards não usados
        for (var i = 0; i < array_length(all_cards); i++) {
            var card_id = all_cards[i];
            var is_used = false;
            
            // Verificar se o card já foi usado
            for (var j = 0; j < array_length(global.used_cards); j++) {
                if (global.used_cards[j] == card_id) {
                    is_used = true;
                    break;
                }
            }
            
            // Adicionar à lista de cards disponíveis se não foi usado
            if (!is_used) {
                array_push(available_cards, card_id);
            }
        }
        
        // Caso todos os cards tenham sido usados, resetar a lista
        if (array_length(available_cards) == 0) {
            global.used_cards = [];
            available_cards = all_cards;
            show_debug_message("Não sei como, mas vc usou TODOS OS 100 CARDS. estamos resetando essa porra");
        }
    }
    
    // Selecionar card aleatório
    var random_index = irandom(array_length(available_cards) - 1);
    var random_key = available_cards[random_index];
    var selected_card = variable_struct_get(global.cards, random_key);
    
    // Adicionar à lista de cards usados se a repetição tiver desativada 
    if (!global.allow_card_repetition) {
        array_push(global.used_cards, random_key);
    }
    
    // Criar novo NPC
    var new_npc = instance_create_depth(750, 350, 0, obj_NPCBase);
    
    // coloca as infos dos cards no OBJ_Newnpc
    new_npc.sprite_index = asset_get_index(selected_card.sprite);
    new_npc.request_text = selected_card.fala;
    new_npc.papel = selected_card.papel;
    new_npc.aprovar = selected_card.aprovar;
    new_npc.negar = selected_card.negar;
    new_npc.card_data = selected_card;
    new_npc.card_id = random_key;
    
    show_debug_message("Novo pedido: " + selected_card.fala + " (Card: " + random_key + ")");
    
    return new_npc;
}

// As outras funções permanecem inalteradas
function approve_request(npc_id) {
    var effects = npc_id.card_data.aceito;  
    apply_effects(effects);                 
    instance_destroy(npc_id);
}

function deny_request(npc_id) {
    var effects = npc_id.card_data.negado;  
    apply_effects(effects);                 
    instance_destroy(npc_id);	
}

function apply_effects(effect_string) {
    var effects = string_split(effect_string, ";");
    for (var i = 0; i < array_length(effects); i++) {
        var effect = string_trim(effects[i]);
        if (effect == "") continue;
        
        var space_pos = string_pos(" ", effect);
        if (space_pos == 0) continue; // Pular
        
        // Quantidade a ser extraida
        var amount_str = string_copy(effect, 1, space_pos-1);
        var amount = real(amount_str);
        
        // Recurso em questão
        var resource = string_trim(string_copy(effect, space_pos+1, string_length(effect)));
        resource = string_lower(resource); // converte pra lowercase só pra garantir 
        
        // aplicar
        switch (resource) {
            case "din":
                global.resources.dinheiro += amount;
                break;
            case "aprov":
                global.resources.aprovacao += amount;
                break;
            case "inf":
                global.resources.infraestrutura += amount;
                break;
            case "com":
                global.resources.comida += amount;
                break;
            default:
                show_debug_message("Que porra de recurso é esse aqui: " + resource);
                break;
        }
    }
}