global.people = {
	ativista : {
		nome : "Ativista",
		sprite_idle: spr_ativista_parada,
		sprite_talk: spr_ativista_fala,
		sprite_angry: spr_ativista_brava,
		sprite_happy: spr_ativista_feliz
	},
	
	banqueiro : {
		nome : "Banqueiro",
		sprite_idle: spr_banqueiro_parado,
		sprite_talk: spr_banqueiro_parado,
		sprite_angry: spr_banqueiro_bravo,
		sprite_happy: spr_banqueiro_feliz
	},
	
	bispo : {
		nome : "Bispo",
		sprite_idle: spr_bispo_parado,
		sprite_talk: spr_bispo_parado,
		sprite_angry: spr_bispo_bravo,
		sprite_happy: spr_bispo_feliz
	},
	
	ministro : {
		nome : "Ministro",
		sprite_idle: spr_ministro_parado,
		sprite_talk: spr_ministro_parado,
		sprite_angry: spr_ministro_bravo,
		sprite_happy: spr_ministro_feliz
	},
	
	reporter : {
		nome : "Reporter",
		sprite_idle: spr_reporter_parada,
		sprite_talk: spr_reporter_fala,
		sprite_angry: spr_reporter_brava,
		sprite_happy: spr_reporter_feliz
	},
	
	politico : {
		nome : "Político",
		sprite_idle: spr_politico_parado,
		sprite_talk: spr_politico_fala,
		sprite_angry: spr_politico_bravo,
		sprite_happy: spr_politico_feliz
	},
	
	traficante : {
		nome : "Líder de Facção",
		sprite_idle: spr_traficante_parado,
		sprite_talk: spr_traficante_fala,
		sprite_angry: spr_traficante_bravo,
		sprite_happy: spr_traficante_feliz
	}
}

global.cards =
{
	faccao_1 : {
		owner : global.people.traficante,
		aprovar: "Vou mudar as rotas de patrulha hoje.",
		aceito: "+10 Din ; -5 inf; -5 aprov",
		negar: "Crime não tem lugar no país.",
		negado: "-10 Din ; +5 Inf",
		fala: "Precisamo ensina uma lição pra um X9 mas com os homem andando no morro não tem como. Ajuda aí que sobra um arrego pra você.",
		papel: "Mudar as rotas de patrulha da polícia?"
	},
	
	faccao_2 : {
		owner : global.people.traficante,
		aprovar: "O morador não merece passar por isso.",
		aceito: "-10 Din ; +10 inf",
		negar: "Não negocio com terroristas.",
		negado: "+10 Din ; -10 Inf",
		fala: "Tamo organizando um ataque as empresas de ônibus... Me paga um arrego que eu falo pros moleque recuar.",
		papel: "Pagar a propina?"
	},
	
	faccao_3 : {
		owner : global.people.traficante,
		aprovar: "Vou garantir que o caminho esteja limpo.",
		aceito: "+10 Din ; -5 inf; -5 aprov",
		negar: "Vaculhem os contêineres.",
		negado: "-5 Din ; +5 Inf; +5 aprov",
		fala: "Meus aliado nos estates tão enviando as peça pelo porto, finge que você não viu nada e vai sobrar um pouco pra você também.",
		papel: "Aprovar a entrada de contrabando?"
	},
	
	faccao_4 : {
		owner : global.people.traficante,
		aprovar: "Para mais um termo na presidência!",
		aceito: "+15 aprov ; -10 inf",
		negar: "O Fortunato é um corrupto, investiguem ele!",
		negado: "-10 Din ; +15 Inf",
		fala: "O deputado Fortunato tá no nosso bolso. Desenrola pra nois ai que eu garanto que você vai se reeleger ano que vem.",
		papel: "Investigar o deputado Fortunato?"
	},
	
	faccao_5 : {
		owner : global.people.traficante,
		aprovar: "Eles não vão te incomodar.",
		aceito: "+10 com ; -5 inf; -15 aprov",
		negar: "Nem pensar.",
		negado: "+10 Inf; -10 com ; -5 aprov",
		fala: "Doutô os homem tão apertando, alivia ai que nois investe na comunidade e deixa os caminhão de comida passar.",
		papel: "Aliviar policiamento no tráfico?"
	},
	
	faccao_6 : {
		owner : global.people.traficante,
		aprovar: "Aqui estão as rotas.",
		aceito: "+15 Din ; -5 inf; -5 aprov",
		negar: "Mais policiamento nas rodovias.",
		negado: "-15 Din ; +10 Inf ; +5 aprov",
		fala: "Tamo organizando um roubo a uma carga na Bahia, mas a gente precisa saber a rota dos caminhão. Aceita um arrego em troca das rota?",
		papel: "Revelar a rota dos caminhões?"
	},
	
	faccao_7 : {
		owner : global.people.traficante,
		aprovar: "Eles já foram despensados.",
		aceito: "-10 aprov ; +10 inf;",
		negar: "Polícia é para proteger o povo.",
		negado: "-10 din ; +10 aprov ; +5 inf",
		fala: "Tira os ganso da rota e coloca minha rapaziada na contenção. A cidade fica segura do meu jeito...",
		papel: "Fazer a polícia recuar?"
	},
	
	faccao_8 : {
		owner : global.people.traficante,
		aprovar: "Eles vão entender com o tempo.",
		aceito: "+10 Din ; -5 inf ; -10 aprov",
		negar: "Acalme eles.",
		negado: "-10 Din ; +15 aprov",
		fala: "A operação no Tanque deu errado, e os moleque quer vingança. Me paga um arrego que eu acalmo eles.",
		papel: "Acalmar os criminosos?"
	},
	
	faccao_9 : {
		owner : global.people.traficante,
		aprovar: "Eu irei investir nas estradas.",
		aceito: "-5 din ; +5 inf ; +10 comida",
		negar: "Existem coisas mais importantes no momento.",
		negado: "+10 Din ; -5 Inf ;  -10 com",
		fala: "Doutô, os morador tem que comer, o caminhão não consegue subir o morro.",
		papel: "Liberar o caminho?"
	},
	
	faccao_10 : {
		owner : global.people.traficante,
		aprovar: "Irei ver o que posso fazer.",
		aceito: "-10 Din ; -5 inf ; + 15 aprov",
		negar: "Se vira.",
		negado: "+10 din ; -5 inf ; -5 aprov",
		fala: "A milícia do Rocha tá querendo tomar nosso território. Me apoia que eu garanto uns votos pra você.",
		papel: "Realocar fundos para impedir a guerra entre facções?"
	},
	
	bispo_1: {
		owner : global.people.bispo,
		aprovar: "Tomaremos providencias.",
		aceito: "-5 inf ; +15 aprov",
		negar: "É um investimento futuro.",
		negado: "+15 inf ; -5 din ; -5 aprov",
		fala: "Essa inteligência artificial é bruxaria moderna! Estamos indo contra a vontade de Deus!",
		papel: "Aprovar restrições em IA?"
	},
	
	bispo_2: {
		owner : global.people.bispo,
		aprovar: "Deixe o povo descansar.",
		aceito: "-5 Din ; +5 aprov",
		negar: "Já existem feriados demais.",
		negado: "+5 Din ; -5 aprov",
		fala: "Gostaria de criar novos feriados em nome de Deus, me de sua aprovação!",
		papel: "Criar novos feriados?"
	},
	
	bispo_3: {
		owner : global.people.bispo,
		aprovar: "Investirei em mais espaços.",
		aceito: "-10 Din ; +5 inf ; +5 aprov",
		negar: "Temos outras prioridades.",
		negado: "+10 din ; -5 inf ; -5 aprov",
		fala: "Precisamos de mais locais para o fiéis!",
		papel: "Construir mais igrejas?"
	},
	
	bispo_4: {
		nome : "Bispo",
		sprite : "spr_bispo",
		aprovar: "Ordenarei que parem as pesquisas.",
		aceito: "-15 com ; +5 din ; +10 aprov",
		negar: "São benéficos para aumentar a produção.",
		negado: "+15 com ; -10 din ; -5 aprov",
		fala: "Os experimentos nas platações são profanos, apenas Deus modifica suas criações!",
		papel: "Impedir a modificação genética das plantas?"
	},
	
	bispo_5: {
		nome : "Bispo",
		sprite : "spr_bispo",
		aprovar: "Serviremos a Deus.",
		aceito: "-10 com ; -5 inf ; +10 aprov",
		negar: "A escolha não é dele.",
		negado: "+10 com ; -5 inf ; -5 aprov",
		fala: "Mesmo que a natalidade esteja alta, o aborto é contra a vontade de Deus, proíba e puna os praticantes!",
		papel: "Enforçar leis mais rigorosas sobre o Aborto?"
	},
	
	politico_1: {
		nome : "Senador",
		sprite : "spr_senador",
		aprovar: "Serviremos a Deus.",
		aceito: "-10 com ; -5 inf ; +10 aprov",
		negar: "A escolha não é dele.",
		negado: "+10 com ; -5 inf ; -5 aprov",
		fala: "Mesmo que a natalidade esteja alta, o aborto é contra a vontade de Deus, proíba e puna os praticantes!",
		papel: "Enforçar leis mais rigorosas sobre o Aborto?"
	},
	
	politico_1: {
		nome : "Senador",
		sprite : "spr_senador",
		aprovar: "Serviremos a Deus.",
		aceito: "-10 com ; -5 inf ; +10 aprov",
		negar: "A escolha não é dele.",
		negado: "+10 com ; -5 inf ; -5 aprov",
		fala: "Mesmo que a natalidade esteja alta, o aborto é contra a vontade de Deus, proíba e puna os praticantes!",
		papel: "Enforçar leis mais rigorosas sobre o Aborto?"
	},
	
	politico_1: {
		nome : "Deputado",
		sprite : "spr_senador",
		aprovar: "Serviremos a Deus.",
		aceito: "-10 com ; -5 inf ; +10 aprov",
		negar: "A escolha não é dele.",
		negado: "+10 com ; -5 inf ; -5 aprov",
		fala: "Mesmo que a natalidade esteja alta, o aborto é contra a vontade de Deus, proíba e puna os praticantes!",
		papel: "Enforçar leis mais rigorosas sobre o Aborto?"
	},
	
	politico_2: {
		nome : "Deputado",
		sprite : "spr_senador",
		aprovar: "Serviremos a Deus.",
		aceito: "-10 com ; -5 inf ; +10 aprov",
		negar: "A escolha não é dele.",
		negado: "+10 com ; -5 inf ; -5 aprov",
		fala: "Mesmo que a natalidade esteja alta, o aborto é contra a vontade de Deus, proíba e puna os praticantes!",
		papel: "Enforçar leis mais rigorosas sobre o Aborto?"
	},
	
	politico_3: {
		nome : "Deputado",
		sprite : "spr_senador",
		aprovar: "Serviremos a Deus.",
		aceito: "-10 com ; -5 inf ; +10 aprov",
		negar: "A escolha não é dele.",
		negado: "+10 com ; -5 inf ; -5 aprov",
		fala: "Mesmo que a natalidade esteja alta, o aborto é contra a vontade de Deus, proíba e puna os praticantes!",
		papel: "Enforçar leis mais rigorosas sobre o Aborto?"
	},
	
	politico_4: {
		nome : "Senador",
		sprite : "spr_senador",
		aprovar: "Serviremos a Deus.",
		aceito: "-10 com ; -5 inf ; +10 aprov",
		negar: "A escolha não é dele.",
		negado: "+10 com ; -5 inf ; -5 aprov",
		fala: "Mesmo que a natalidade esteja alta, o aborto é contra a vontade de Deus, proíba e puna os praticantes!",
		papel: "Enforçar leis mais rigorosas sobre o Aborto?"
	},
	
	politico_5: {
		nome : "Senador",
		sprite : "spr_senador",
		aprovar: "Serviremos a Deus.",
		aceito: "-10 com ; -5 inf ; -100 aprov",
		negar: "A escolha não é dele.",
		negado: "+10 com ; -5 inf ; -5 aprov",
		fala: "Mesmo que a natalidade esteja alta, o aborto é contra a vontade de Deus, proíba e puna os praticantes!",
		papel: "Enforçar leis mais rigorosas sobre o Aborto?"
	},
}