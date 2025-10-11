/// @description
image_alpha = 1;

if (selected == true) {
	image_alpha = 0.8
	var _denided_string = "";
	var effects = string_split(obj_NPC.card_data.negado, ";")
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
                _denided_string += "dinheiro ";
				if (amount >=0){_denided_string += "+ "} else{_denided_string += "- "}
				_denided_string += string(abs(amount));
                break;
            case "aprov":
                _denided_string += "aprovacao ";
				if (amount >=0){_denided_string += "+ "} else{_denided_string += "- "}
				_denided_string += string(abs(amount));
                break;
            case "inf":
               _denided_string += "infraestrutura ";
			   if (amount >=0){_denided_string += "+ "} else{_denided_string += "- "}
				_denided_string += string(abs(amount));
                break;
            case "com":
                _denided_string += "comida ";
				if (amount >=0){_denided_string += "+ "} else{_denided_string += "- "}
				_denided_string += string(abs(amount));
                break;
            default:
                show_debug_message("Que porra de recurso é esse aqui: " + resource);
                break;
        }
		if (i + 1 < array_length(effects)){_denided_string += "| " }
    }
	draw_text(x - 300, y + 50, _denided_string)
	draw_text(x - 300, y + 100, obj_NPC.card_data.negar)
	
	};

draw_self();