// Recursos do game. Dá pra adicionar recursos escondidos pra eventos especiais
global.font = font_add("unifont.otf", 12, false, false, 0, 256);
#macro fnt_main global.font

global.delta_t = delta_time / 1000000;
#macro delta global.delta_t;

action_index = "PRESSTART";

started = false;

day_text_timer = 0;
day_text_alpha = 0;
day_changed = false;
day_background_alpha = 1;
timer = 0;

// tipo o fun number do undertale
global.resources = {
    comida: 50,
    aprovacao: 50,
    dinheiro: 50,
    infraestrutura: 50
};

// Inicializar o fodidinho

current_npc = noone;
npc_count = 0;
npc_total_per_day = 20;

ended = false;
end_text = ""; //basicamente pra setar qual é o texto da perda
end_title = "";

// Nota: Bizarro como na gamemaker vc pode só chamar "bring_new_person()" e FODASE
// funciona perfeitamente. Na Godot tem como fazer isso tbm, só é mais opcional -- BAGOS
current_npc = noone;

instance_create_depth(0, 0, depth - 4, obj_clock);

start_dinheiro = 0;
start_aprovacao = 0;
start_infraestrutura = 0;
start_comida = 0;

change_day_cutscene = function()
{
	// Começando a animação de trocar de dia
	if (day_changed == false)
	{
		// Dando fade preto
		if (timer < 120)
		{
			timer += 1;
			day_background_alpha += 1/120;
		}
		else {
			// Dando Fade no Texto
			if (day_text_timer < 120)
			{
				day_text_alpha += 1/60;
				day_text_timer += 1;
			}
			else
			{
				room_goto(rm_principal);
				day_text_alpha = 1;
				day_changed = true;
				day_text_timer = 0;
				timer = 0;
				
				instance_create_depth(0, 0, depth, obj_background);
				instance_create_depth(0, 0, depth, obj_table);
			}
		}
	}
	else {
		// Fade Out no texto
		if (day_text_timer < 60)
		{
			day_text_alpha -= 1/60;
			day_text_timer += 1;
		}
		else
		{
			// Fade Out no Background
			if (timer < 60)
			{
				timer += 1;
				day_background_alpha -= 1/60;
			}
			else
			{
				action_index = "WAITING SOMEONE";
				day_text_timer = 0;
				day_background_alpha = 0;
				day_changed = false;
				
				start_dinheiro = global.resources.dinheiro;
				start_aprovacao = global.resources.aprovacao;
				start_infraestrutura = global.resources.infraestrutura;
				start_comida = global.resources.comida;
				
				clock_start();
			}
		}
	}
}

function resource_check() {
    var resources = global.resources;
    var keys = variable_struct_get_names(resources);
    
    for (var i = 0; i < array_length(keys); i++) {
        var resource_name = keys[i];
        var resource_value = variable_struct_get(resources, resource_name);
        
        // Checa falha (<= 0)
        if (resource_value <= 0) {
			ended = true;
            resource_failure(resource_name);
        }
		
        // Checa vitoria entre aspsas (>= 100)
        else if (resource_value >= 100) {
			ended = true;
            resource_overachieve(resource_name);
        }
    }
}

function resource_failure(resource_name) {
	if (room != rm_endgame)
	{
		if (day_background_alpha < 1) {
			day_background_alpha += 0.01;
		} else {
			room_goto(rm_endgame);
		}
	}
	else
	{
		if (day_background_alpha > 0) {
			day_background_alpha -= 0.01;
		} else {
			
		}
	}
	
    switch (resource_name) {
        case "comida":
			end_title = "POUCA COMIDA";
			end_text = "Prateleiras vazias e filas intermináveis para um punhado de comida se tornaram a nova e triste realidade nos centros urbanos.Uma crise de escassez de alimentos básicos levou a protestos violentos, e ao seu impeachment." 
			
            break;
			
        case "aprovacao":
			end_title = "POUCA APROVACAO";
			end_text = "Manifestações massivas tomam as ruas diariamente, pedindo a sua renúncia. O país está ingovernável. O exército se virou contra o senhor, impondo uma transferência de poder."
            break;
			
        case "dinheiro":
			end_title = "POUCA DINHEIRO";
			end_text = "Os cofres públicos estão vazios. Servidores públicos entram em greve e serviços essenciais estão à beira do colapso por falta de pagamento. A dívida nacional atinge niveis históricos, levando a uma forte crise econômica." 
            break;
			
        case "infraestrutura":
			end_title = "POUCA INFRAESTRUTURA";
            end_text = "As estradas estão intrafegáveis, pontes caíram e o sistema de saneamento básico entrou em colapso, espalhando doenças. A internet e as comunicações são um luxo raro, isolando cidades inteiras e paralisando a economia digital."
            break;
			
        default:
				
            break;
    }
}

function resource_overachieve(resource_name) {
	if (room != rm_endgame)
	{
		if (day_background_alpha < 1) {
			day_background_alpha += 0.01;
		} else {
			room_goto(rm_endgame);
		}
	}
	else
	{
		if (day_background_alpha > 0) {
			day_background_alpha -= 0.01;
		} else {
			
		}
	}
    switch (resource_name) {
        case "comida":
			end_title = "COMIDA DEMAIS";
            end_text = "A produção desenfreada de alimentos monocultura esgotou o solo e contaminou os lençóis freáticos com agrotóxicos. Os agricultores quebraram após o governo comprar estoques exorbitantes a preços inflados, destruindo o mercado interno."
            break;
        case "aprovacao":
			end_title = "APROVACAO DEMAIS";
           end_text = "Aclamação total permitiu que você concentrasse poder, alterando a constituição. Seu regime é 'estável', mas a comunidade internacional impõe sanções e o rotula de ditador."
            break;
        case "dinheiro":
			end_title = "DINHEIRO DEMAIS";
            end_text = "A riqueza descontrolada inflou nossa moeda. Os preços dispararam, enquanto o valor da moeda continua caindo, levando a uma forte crise econômica. Agora, o valor da nossa moeda é menor que o papel em que é impressa."
            break;
        case "infraestrutura":
			end_title = "INFRAESTRUTURA DEMAIS";
            end_text = "O superfaturamento em megaprojetos faraônicos drenou outros setores e deixou a manutenção da infraestrutura existente de lado, causando mais problemas do que soluções."
            break;
        default:
            show_message("Não era pra isso aparecer || ERRO NO SISTEMA DE MOSTRAR OVERACHIEVE sla");
            break;
    }
}

day_end_y_buff = 0;
day_stat_buff = 0;

depth = -9500;