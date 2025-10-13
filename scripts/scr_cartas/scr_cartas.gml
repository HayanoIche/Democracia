global.people = {
	ativista : {
		name : "Ativista",
		sprite_idle: noone,
		sprite_idle_front: spr_ativista_parada,
		
		sprite_talk: noone,
		sprite_talk_front: spr_ativista_fala,
		
		sprite_angry: noone,
		sprite_angry_front: spr_ativista_brava,
		
		sprite_happy: noone,
		sprite_happy_front: spr_ativista_feliz
	},
	
	banqueiro : {
		name : "Banqueiro",
		sprite_idle: noone,
		sprite_idle_front: spr_banqueiro_parado,
		
		sprite_talk: noone,
		sprite_talk_front: spr_banqueiro_fala,
		
		sprite_angry: spr_banqueiro_bravo,
		sprite_angry_front: spr_banqueiro_bravo_braco,
		
		sprite_happy: spr_banqueiro_feliz,
		sprite_happy_front: spr_banqueiro_feliz_braco
	},
	
	bispo : {
		name : "Bispo",
		sprite_idle: spr_bispo_parado,
		sprite_idle_front: noone,
		
		sprite_talk: spr_bispo_fala,
		sprite_talk_front: noone,
		
		sprite_angry: spr_bispo_bravo,
		sprite_angry_front: noone,
		
		sprite_happy: spr_bispo_feliz,
		sprite_happy_front: noone
	},
	
	ministro : {
		name : "Ministro",
		sprite_idle: noone,
		sprite_idle_front: spr_ministro_parado,
		
		sprite_talk: noone,
		sprite_talk_front: spr_ministro_fala,
		
		sprite_angry: noone,
		sprite_angry_front: spr_ministro_bravo,
		
		sprite_happy: noone,
		sprite_happy_front: spr_ministro_feliz
	},
	
	reporter : {
		name : "Reporter",
		
		sprite_idle: noone,
		sprite_idle_front: spr_reporter_parada,
		
		sprite_talk: noone,
		sprite_talk_front: spr_reporter_fala,
		
		sprite_angry: noone,
		sprite_angry_front: spr_reporter_brava,
		
		sprite_happy: spr_reporter_feliz,
		sprite_happy_front: noone
	},
	
	policial : {
		name : "Policial",
		
		sprite_idle: noone,
		sprite_idle_front: spr_policial_parado,
		
		sprite_talk: noone,
		sprite_talk_front: spr_policial_fala,
		
		sprite_angry: spr_policial_bravo,
		sprite_angry_front: spr_policial_bravo_braco,
		
		sprite_happy: spr_policial_feliz,
		sprite_happy_front: spr_policial_feliz_braco
	},
	
	politico : {
		name : "Político",
		
		sprite_idle: spr_politico_parado,
		sprite_idle_front: spr_politico_parado_braco,
		
		sprite_talk: spr_politico_fala,
		sprite_talk_front: spr_politico_fala_braco,
		
		sprite_angry: spr_politico_bravo,
		sprite_angry_front: spr_politico_bravo_braco,
		
		sprite_happy: spr_politico_feliz,
		sprite_happy_front: spr_politico_feliz_braco
	},
	
	traficante : {
		name : "Líder de Facção",
		sprite_idle: spr_traficante_parado,
		sprite_idle_front: spr_traficante_parado_frente,
		
		sprite_talk: spr_traficante_fala,
		sprite_talk_front: spr_traficante_fala_braco,
		
		sprite_angry: noone,
		sprite_angry_front: spr_traficante_bravo,
		
		sprite_happy: spr_traficante_feliz,
		sprite_happy_front: noone
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
		papel: "Mudar as rotas de patrulha da polícia?",
		audio: snd_traficante_1
	},
	
	faccao_2 : {
		owner : global.people.traficante,
		aprovar: "O morador não merece passar por isso.",
		aceito: "-10 Din ; +10 inf",
		negar: "Não negocio com terroristas.",
		negado: "+10 Din ; -10 Inf",
		fala: "Tamo organizando um ataque as empresas de ônibus... Me paga um arrego que eu falo pros moleque recuar.",
		papel: "Pagar a propina?",
		audio: snd_traficante_2
	},
	
	faccao_3 : {
		owner : global.people.traficante,
		aprovar: "Vou garantir que o caminho esteja limpo.",
		aceito: "+10 Din ; -5 inf; -5 aprov",
		negar: "Vaculhem os contêineres.",
		negado: "-5 Din ; +5 Inf; +5 aprov",
		fala: "Meus aliado nos estates tão enviando as peça pelo porto, finge que você não viu nada e vai sobrar um pouco pra você também.",
		papel: "Aprovar a entrada de contrabando?",
		audio: snd_traficante_3
	},
	
	faccao_4 : {
		owner : global.people.traficante,
		aprovar: "Para mais um termo na presidência!",
		aceito: "+10 aprov; -5 inf; -5 din",
		negar: "O Fortunato é um corrupto, investiguem ele!",
		negado: "-10 Din ; +15 Inf",
		fala: "O deputado Fortunato tá no nosso bolso. Desenrola pra nois ai que eu garanto que você vai se reeleger ano que vem.",
		papel: "Investigar o deputado Fortunato?",
		audio: snd_traficante_4
	},
	
	faccao_5 : {
		owner : global.people.traficante,
		aprovar: "Eles não vão te incomodar.",
		aceito: "+10 com ; -5 inf; -15 aprov",
		negar: "Nem pensar.",
		negado: "+10 Inf; -10 com ; -5 aprov",
		fala: "Doutô os homem tão apertando, alivia ai que nois investe na comunidade e deixa os caminhão de comida passar.",
		papel: "Aliviar policiamento no tráfico?",
		audio: snd_traficante_5
	},
	
	faccao_6 : {
		owner : global.people.traficante,
		aprovar: "Aqui estão as rotas.",
		aceito: "+15 Din ; -5 inf; -5 aprov",
		negar: "Mais policiamento nas rodovias.",
		negado: "-15 Din ; +10 Inf ; +5 aprov",
		fala: "Tamo organizando um roubo a uma carga na Bahia, mas a gente precisa saber a rota dos caminhão. Aceita um arrego em troca das rota?",
		papel: "Revelar a rota dos caminhões?",
		audio: snd_traficante_6
	},
	
	faccao_7 : {
		owner : global.people.traficante,
		aprovar: "Eles já foram despensados.",
		aceito: "-10 aprov ; +10 inf;",
		negar: "Polícia é para proteger o povo.",
		negado: "-10 din ; +10 aprov ; +5 inf",
		fala: "Tira os ganso da rota e coloca minha rapaziada na contenção. A cidade fica segura do meu jeito...",
		papel: "Fazer a polícia recuar?",
		audio: snd_traficante_7
	},
	
	faccao_8 : {
		owner : global.people.traficante,
		aprovar: "Eles vão entender com o tempo.",
		aceito: "+10 Din ; -5 inf ; -10 aprov",
		negar: "Acalme eles.",
		negado: "-10 Din ; +15 aprov",
		fala: "A operação no Tanque deu errado, e os moleque quer vingança. Me paga um arrego que eu acalmo eles.",
		papel: "Acalmar os criminosos?",
		audio: snd_traficante_8
	},
	
	faccao_9 : {
		owner : global.people.traficante,
		aprovar: "Eu irei investir nas estradas.",
		aceito: "-5 din ; +5 inf ; +10 comida",
		negar: "Existem coisas mais importantes no momento.",
		negado: "+10 Din ; -5 Inf ;  -10 com",
		fala: "Doutô, os morador tem que comer, o caminhão não consegue subir o morro.",
		papel: "Liberar o caminho?",
		audio: snd_traficante_9
	},
	
	faccao_10 : {
		owner : global.people.traficante,
		aprovar: "Irei ver o que posso fazer.",
		aceito: "-10 Din ; -5 inf ; + 15 aprov",
		negar: "Se vira.",
		negado: "+10 din ; -5 inf ; -5 aprov",
		fala: "A milícia do Rocha tá querendo tomar nosso território. Me apoia que eu garanto uns votos pra você.",
		papel: "Realocar fundos para impedir a guerra entre facções?",
		audio: snd_traficante_10
	},
	
	bispo_1: {
		owner : global.people.bispo,
		aprovar: "Tomaremos providencias.",
		aceito: "-5 inf ; +15 aprov",
		negar: "É um investimento futuro.",
		negado: "+15 inf ; -5 din ; -5 aprov",
		fala: "Essa inteligência artificial é bruxaria moderna! Estamos indo contra a vontade de Deus!",
		papel: "Aprovar restrições em IA?",
		audio: snd_bispo_1
	},
	
	bispo_2: {
		owner : global.people.bispo,
		aprovar: "Deixe o povo descansar.",
		aceito: "-5 Din ; +5 aprov",
		negar: "Já existem feriados demais.",
		negado: "+5 Din ; -5 aprov",
		fala: "Gostaria de criar novos feriados em nome de Deus, me de sua aprovação!",
		papel: "Criar novos feriados?",
		audio: snd_bispo_2
	},
	
	bispo_3: {
		owner : global.people.bispo,
		aprovar: "Investirei em mais espaços.",
		aceito: "-10 Din ; +5 inf ; +5 aprov",
		negar: "Temos outras prioridades.",
		negado: "+10 din ; -5 inf ; -5 aprov",
		fala: "Precisamos de mais locais para o fiéis!",
		papel: "Construir mais igrejas?",
		audio: snd_bispo_3
	},
	
	bispo_4: {
		owner : global.people.bispo,
		aprovar: "Ordenarei que parem as pesquisas.",
		aceito: "-15 com ; +5 din ; +10 aprov",
		negar: "São benéficos para aumentar a produção.",
		negado: "+15 com ; -10 din ; -5 aprov",
		fala: "Os experimentos nas platações são profanos, apenas Deus modifica suas criações!",
		papel: "Impedir a modificação genética das plantas?",
		audio: snd_bispo_4
	},
	
	bispo_5: {
		owner : global.people.bispo,
		aprovar: "Serviremos a Deus.",
		aceito: "-10 com ; -5 inf ; +10 aprov",
		negar: "A escolha não é dele.",
		negado: "+10 com ; -5 inf ; -5 aprov",
		fala: "Mesmo que a natalidade esteja alta, o aborto é contra a vontade de Deus, proíba e puna os praticantes!",
		papel: "Enforçar leis mais rigorosas sobre o Aborto?",
		audio: snd_bispo_5
	},
	
	politico_1: {
		owner : global.people.politico,
		aprovar: "Aumente os impostos",
		aceito: "-5 com; -10 aprov; +10 din",
		negar: "Teremos que reajustar a verba.",
		negado: "+10 aprov; -10 din",
		fala: "Os gastos estão muito altos, deveriamos aumentar as taxas e os impostos.",
		papel: "Aumentar impostos?",
		audio: snd_politico_1
	},
	
	politico_2: {
		owner : global.people.politico,
		aprovar: "Vamos avançar na tecnologia agrária.",
		aceito: "+15 com; +5 aprov; -15 din; +5 inf",
		negar: "Eles podem improvisar com o que tem.",
		negado: "-10 com; +10 din; -5 aprov",
		fala: "Nossos agricultores precisam de equipamentos modernos. Se diminuirmos as taxas de importações, teremos colheitas maiores.",
		papel: "Diminuir o custo das máquinas agrárias?",
		audio: snd_politico_2
	},
	
	politico_3: {
		owner : global.people.politico,
		aprovar: "Iremos aceita-los de braços abertos.",
		aceito: "-10 com; +15 aprov; +5 inf",
		negar: "Mal conseguimos cuidar do nosso próprio povo.",
		negado: "+10 com; -10 aprov",
		fala: "Presidente, o país vizinho propõe abrir as fronteiras para livre passagem. Devemos aceitar?",
		papel: "Abrir as fronteiras?",
		audio: snd_politico_3
	},
	
	politico_4: {
		owner : global.people.politico,
		aprovar: "Aumente o auxílio á familia.",
		aceito: "+15 aprov; -10 din",
		negar: "Serão tempos dificeis.",
		negado: "-5 aprov; +20 din; -10 com",
		fala: "Uma crise mundial ameaça aumentar o preço das carnes. O que devemos fazer?",
		papel: "Auxiliar as familias afetadas?",
		audio: snd_politico_4
	},
	
	politico_5: {
		owner : global.people.politico,
		aprovar: "Vamos financiar as obras.",
		aceito: "+10 inf; -15 din",
		negar: "Infelizmente não podemos ajudar.",
		negado: "-10 aprov; -5 inf; +10 din",
		fala: "Senhor presidente, os estados estão pedindo dinheiro para obras públicas. Deveriamos ajudar?",
		papel: "Financiar as obras públicas?",
		audio: snd_politico_5
	},
	
	politico_6: {
		owner : global.people.politico,
		aprovar: "É pelo bem da indústria.",
		aceito: "+5 din;  +10 inf; -10 aprov; -5 com",
		negar: "Protegeremos nossas florestas.",
		negado: "+10 aprov; +5 com; -15 inf",
		fala: "Uma mineradora pretende explorar terras ao norte, e precisa de permissão para desmatar florestas, ela promete um bom pagamento.",
		papel: "Autorizar o desmatamento?",
		audio: snd_politico_6
	},
	
	politico_7: {
		owner : global.people.politico,
		aprovar: "Precisamos de mais dinheiro nos cofres públicos.",
		aceito: "-10 aprov; +10 din",
		negar: "Esse dinheiro é do povo.",
		negado: "+5 aprov; +10 inf; -10 din",
		fala: "Os governadores estão pedindo aumento de verba para seus salários, mas esse dinheiro poderia ser gasto na infraestrutura.",
		papel: "Autorizar o aumento de verba?",
		audio: snd_politico_7
	},
	
	politico_8: {
		owner : global.people.politico,
		aprovar: "Leve água para quem precisa.",
		aceito: "+20 com ; +5 inf; -20 din",
		negar: "Não temos dinheiro para isso.",
		negado: "-10 com; -5 inf; -5 aprov; +20 din",
		fala: "Uma grande obra de irrigação poderia aumentar a produção agrícola.",
		papel: "Aprovar a obra de irrigação?",
		audio: snd_politico_8
	},
	
	politico_9: {
		owner : global.people.politico,
		aprovar: "Vamos focar na indústria interna.",
		aceito: "-5 din; +10 inf",
		negar: "A exportação é necessária para a economia.",
		negado: "-5 inf; +10 din",
		fala: "Estamos exportanto muito petróleo, se focarmos na produção nacional podemos abaixar o preço da gasolina.",
		papel: "Restringir a exportação do petróleo?",
		audio: snd_politico_9
	},
	
	politico_10: {
		owner : global.people.politico,
		aprovar: "Escola é lugar de estudar.",
		aceito: "-5 aprov",
		negar: "Isso não vai ajudar em nada.",
		negado: "+5 aprov",
		fala: "O uso de celular nas salas de aula dificulta o aprendizado. Deveriamos banir o uso.",
		papel: "Proibir o uso de celulares no ambiente escolar?",
		audio: snd_politico_10
	},
	
	politico_11: {
		owner : global.people.politico,
		aprovar: "Ajude os fazendeiros.",
		aceito: "+5 com; +5 inf; +5 aprov; -15 din",
		negar: "Temos outras coisas mais importantes no momento.",
		negado: "-10 com; -5 aprov; +15 din",
		fala: "Uma seca ameaça a produção de alimentos no próximo ano, deveriamos passar esse ano se preparando.",
		papel: "Ajudar a população a se preparar?",
		audio: snd_politico_11
	},
	
	politico_12: {
		owner : global.people.politico,
		aprovar: "Vamos investir ns estradas.",
		aceito: "+5 com; +10 inf; -10 din",
		negar: "Isso é problema dos governadores.",
		negado: "-5 aprov; +10 din; -10 com",
		fala: "Caminhoneiros não conseguem levar comida pelo país devido a condição das rodovias, e pedem ajuda do governo.",
		papel: "Investir na construção de novas rodovias?",
		audio: snd_politico_12
	},
	
	politico_13: {
		owner : global.people.politico,
		aprovar: "Vamos investir na indústria.",
		aceito: "+5 com ; +10 inf; -10 din",
		negar: "Não podemos ajudar.",
		negado: "-10 com; +15 din",
		fala: "Senhor presidente, uma empresa nacional de alimentos precisa de incentivo para modernizar suas fábricas.",
		papel: "Ajudar a empresa?",
		audio: snd_politico_13
	},
	
	politico_14: {
		owner : global.people.politico,
		aprovar: "Sejam bem vindos!",
		aceito: "-10 inf; +15 din; -5 aprov",
		negar: "Não podemos deixar outras países nos controlar.",
		negado: "+10 inf; +5 aprov; -15 din",
		fala: "Um país estrangeiro deseja implementar indústrias em nosso solo, deveriamos permitir?",
		papel: "Permitir indústrias estrangeiras?",
		audio: snd_politico_14
	},
	
	politico_15: {
		owner : global.people.politico,
		aprovar: "Pátria amada!",
		aceito: "+10 inf; -10 din",
		negar: "Não somos um país de guerra.",
		negado: "-10 inf; +10 din",
		fala: "Senhor presidente, O exército está pedindo investimento para modernizar seus equipamentos.",
		papel: "Modeernizar o exército?",
		audio: snd_politico_15
	},
	
	ativista_1: {
		owner : global.people.ativista,
		aprovar: "Continue fazendo um bom trabalho.",
		aceito: "+5 com; +5 aprov; -10 din",
		negar: "Não consigo ajudar.",
		negado: "-10 aprov; +10 din",
		fala: "Somos uma ong que abriga moradores de rua. Gostaríamos de uma pequena doação para continuarmos com nosso serviço.",
		papel: "Financiar a ONG?",
		audio: snd_ativista_1
	},
	ativista_2: {
		owner : global.people.ativista,
		aprovar: "Nossos inimigos.",
		aceito: "+10 din; - 5 inf; -10 aprov",
		negar: "A internet é livre.",
		negado: "+5 aprov",
		fala: "A internet não é um lugar seguro para crianças. Por isso derrubamos websites que podem ser prejudiciais para crianças. E se você quiser podemos derrubar os dos seus inimigos políticos também...",
		papel: "Censurar websites?",
		audio: snd_ativista_2
	},
	ativista_3: {
		owner : global.people.ativista,
		aprovar: "Irei investir recursos nisso.",
		aceito: "+10 aprov; -5 din",
		negar: "A mesma história que a lâmpada.",
		negado: "-10 aprov; +10 inf",
		fala: "A inteligência artificial precisa ser regulamentada antes que surjam ainda mais deep fakes e antes que ainda mais arte seja roubadas.",
		papel: "Regulamentar IAs?",
		audio: snd_ativista_3
	},
	ativista_4: {
		owner : global.people.ativista,
		aprovar: "Faremos as devidas reformas.",
		aceito: "+5 inf; +5 aprov; -10 din",
		negar: "Não precisamos disso.",
		negado: "-5 aprov; -5 inf; +10 din",
		fala: "A educação do país está em crise. As escolas precisam de mais verba.",
		papel: "Investir nas escolas?",
		audio: snd_ativista_4
	},
	ativista_5: {
		owner : global.people.ativista,
		aprovar: "Me conte mais.",
		aceito: "+5 com; +5 aprov; +5 inf; -10 din",
		negar: "Não precisamos deles.",
		negado: "-10 inf ; +15 din",
		fala: "Nós propomos uma política de acolhimento dos imigrantes no mercado de trabalho para suprir as demandas no mercado e queríamos saber que o senhor acha disso.",
		papel: "Tratar dos assuntos de imigração?",
		audio: snd_ativista_5
	},
	ativista_6: {
		owner : global.people.ativista,
		aprovar: "Vamos mudar para a escala 5x2.",
		aceito: "+5 aprov; +10 din; -5 com",
		negar: "Manteremos 6x1.",
		negado: "-5 aprov; +5 din",
		fala: " A escala 6x1 é desumana. Pela saúde dos trabalhadores você precisa fazer algo.",
		papel: "Mudar a carga horária?",
		audio: snd_ativista_6
	},
	ativista_7: {
		owner : global.people.ativista,
		aprovar: "As bets serão regulamentadas.",
		aceito: "+5 aprov; -10 din; +5 inf",
		negar: "Fui patrocinado.",
		negado: "+20 din; -15 aprov",
		fala: "Essas Bets estão endividando as famílias brasileiras, você precisa bani-las.",
		papel: "Banir plataformas de casino?",
		audio: snd_ativista_7
	},
	ativista_8: {
		owner : global.people.ativista,
		aprovar: "Preservaremos a arte.",
		aceito: "+5 din; +5 aprov;  -10 inf",
		negar: "Pichar não é arte.",
		negado: "-5 din; -5 aprov; +10 inf",
		fala: "A pichação é como a arte da cidade, você não pode só passar tinta cinza por cima.",
		papel: "Preservar as pichações?",
		audio: snd_ativista_8
	},
	ativista_9: {
		owner : global.people.ativista,
		aprovar: "Precisamos puni-los.",
		aceito: "-10 din; +15 aprov",
		negar: "Chame a polícia.",
		negado: "-10 aprov; +15 din",
		fala: "As nossas manifestações não irão parar até que leis que realmente punam racistas sejam criadas.",
		papel: "Aprovar leis mais rigorosas sobre o racismo?",
		audio: snd_ativista_9
	},
	ativista_10: {
		owner : global.people.ativista,
		aprovar: "Continue fazendo um bom trabalho.",
		aceito: "+5 aprov; +5 inf; -15 din",
		negar: "É um mal necessário.",
		negado: "+5 inf; -10 aprov",
		fala: "Com a finalidade de acabar com a violência policial, viemos hoje com um abaixo assinado para que os culpados sejam punidos.",
		papel: "Aprovar leis sobre violência policial?",
		audio: snd_ativista_10
	},
	midia_1 : {
		owner : global.people.reporter,
		aprovar: "Nada a esconder, abriremos as contas para todos verem.",
		aceito: "+15 aprov; -15 din",
		negar: "Isso é perseguição política, não gastaremos energia com isso.",
		negado: "-15 aprov; +10 din",
		fala: "Um telejornal investiga supostos gastos excessivos no seu gabinete.",
		papel: "Abrir as contas para todos verem?",
		audio: snd_reporter_1
	},

	midia_2 : {
		owner : global.people.reporter,
		aprovar: "O povo precisa saber o que estamos fazendo, e essa é a chance.",
		aceito: "+10 aprov; -10 din",
		negar: "Meus resultados falarão por si, não preciso de palco.",
		negado: "-10 aprov; +10 din",
		fala: "Um canal de notícias oferece espaço para uma entrevista exclusiva sobre seu governo.",
		papel: "Aceitar a entrevista exclusiva?",
		audio: snd_reporter_2
	},

	midia_3 : {
		owner : global.people.reporter,
		aprovar: "Precisamos proteger nossa imagem e filtrar informações prejudiciais ao progresso.",
		aceito: "-15 aprov; +15 din; +10 inf",
		negar: "Liberdade de imprensa é inegociável, mesmo que doa.",
		negado: "+15 aprov; -10 din",
		fala: "Manchetes internacionais acusam o país de censura à imprensa.",
		papel: "Proteger a imagem do país filtrando informações?",
		audio: snd_reporter_3
	},

	midia_4 : {
		owner : global.people.reporter,
		aprovar: "Se isso vai esclarecer a população, permitam.",
		aceito: "+15 aprov; -15 din",
		negar: "Há coisas que só podem ser reveladas no momento certo.",
		negado: "-10 aprov; +10 din",
		fala: "Um jornalista famoso quer acesso antecipado a documentos sigilosos para uma reportagem.",
		papel: "Permitir acesso antecipado aos documentos?",
		audio: snd_reporter_4
	},

	midia_5 : {
		owner : global.people.reporter,
		aprovar: "Não gastarei recursos rebatendo mentiras.",
		aceito: "+15 din; -15 aprov",
		negar: "Vamos processar e exigir retratação imediata.",
		negado: "-15 din; +15 aprov",
		fala: "Uma reportagem sensacionalista distorce dados do seu governo.",
		papel: "Processar a mídia por distorção de dados?",
		audio: snd_reporter_5
	},

	midia_6 : {
		owner : global.people.reporter,
		aprovar: "Mostrem ao país que estamos trabalhando.",
		aceito: "+10 aprov; -15 din",
		negar: "Prefiro que as ações falem mais alto que as imagens.",
		negado: "-10 aprov; +10 din",
		fala: "Uma rede de TV quer transmitir ao vivo a inauguração de uma obra pública.",
		papel: "Permitir a transmissão ao vivo da inauguração?",
		audio: snd_reporter_6
	},

	midia_7 : {
		owner : global.people.reporter,
		aprovar: "Não responderemos a ataques pessoais.",
		aceito: "-15 aprov; +15 din",
		negar: "Portas abertas para diálogo.",
		negado: "+15 aprov; -10 din",
		fala: "Um influencer popular faz críticas pesadas à sua gestão nas redes sociais.",
		papel: "Responder às críticas do influencer?",
		audio: snd_reporter_7
	},

	midia_8 : {
		owner : global.people.reporter,
		aprovar: "Se isso ajudar o país, vamos considerar.",
		aceito: "+10 aprov; -20 din",
		negar: "Não aceito barganhas que comprometam nossa integridade.",
		negado: "+15 aprov; -5 din",
		fala: "Um jornal famoso oferece apoio político em troca de benefícios.",
		papel: "Aceitar a barganha do jornal?",
		audio: snd_reporter_8
	},

	midia_9 : {
		owner : global.people.reporter,
		aprovar: "Investir na nossa cultura vale cada centavo.",
		aceito: "+10 aprov; -15 din",
		negar: "Não é o momento para esse gasto.",
		negado: "-10 aprov; +10 din",
		fala: "Uma emissora quer patrocínio do governo para um documentário sobre a história do país.",
		papel: "Patrocinar o documentário?",
		audio: snd_reporter_9
	},

	midia_10 : {
		owner : global.people.reporter,
		aprovar: "Essas informações são falsas e não representam a realidade.",
		aceito: "+5 aprov; +5 inf; -10 din",
		negar: "Ignorar é melhor do que dar palco para mentiras.",
		negado: "-5 aprov; -5 inf; +10 din",
		fala: "Boatos falsos se espalham rapidamente pelas redes sociais sobre uma crise inexistente.",
		papel: "Desmentir publicamente os boatos?",
		audio: snd_reporter_10
	},
	
	policial_1 : {
		owner : global.people.policial,
		aprovar: "Solte a informação",
		aceito: "-15 aprov; +15 inf",
		negar: "Não são eles que escolhem",
		negado: "-10 inf; +10 aprov",
		fala: "Senhor, Infelizmente um dos nossos policiais assasinaram um jovem durante uma operação, nós conseguimos parar a informação de chegar no publico, porem a comunidade local esta ameaçando entrar em greve.",
		papel: "Divulgar a informação sobre o assassinato?",
		audio: snd_policial_1
	},

	policial_2 : {
		owner : global.people.policial,
		aprovar: "Aumente o incentivo para eles sairem",
		aceito: "-15 din; +15 aprov",
		negar: "Desmonte o protesto com força",
		negado: "-15 aprov; +15 inf",
		fala: "Senhor, membros de uma comunidade estão protestando no meio da marginal tiete contra uma reitegração de posse, o que devemos fazer sobre?",
		papel: "Como lidar com o protesto?",
		audio: snd_policial_2
	},

	policial_3 : {
		owner : global.people.policial,
		aprovar: "Por você",
		aceito: "-15 com; +10 aprov; +10 inf",
		negar: "Não posso tomar decisões de estado com base em sentimentos",
		negado: "+15 com; -10 inf; -10 din",
		fala: "Senhor, a minha cidade natal esta sofrendo uma seca devastadora, por favor nós podemos poupar um pouco de comida para garantir a segurança da minha cidade?",
		papel: "Enviar comida para a cidade natal do policial?",
		audio: snd_policial_3
	},

	policial_4 : {
		owner : global.people.policial,
		aprovar: "Faça o que é certo",
		aceito: "-20 din; +15 aprov; +10 com",
		negar: "As minhas mãos estão amarradas",
		negado: "+20 din; -10 inf; -5 aprov",
		fala: "Hoje é um grande dia senhor, nós conseguimos capturar um lider de uma operação enorme de trafico de drogas e pessoas, porem esta sendo estranhamente complicado colocar esse cara na prisão, porem com a sua palavra sera feito em um instante.",
		papel: "Prender o líder do tráfico?",
		audio: snd_policial_4
	},

	policial_5 : {
		owner : global.people.policial,
		aprovar: "Aumente sua verba",
		aceito: "-10 din; +15 inf",
		negar: "Eles tem que voltar eventualmente",
		negado: "-10 inf; +10 din",
		fala: "Senhor, uma empresa de transporte publico esta pedindo um aumento de verba e eles disseram que irão ficar de greve se nós não cumprimos suas demandas",
		papel: "Aumentar a verba do transporte público?",
		audio: snd_policial_5
	},

	policial_6 : {
		owner : global.people.policial,
		aprovar: "Isso não pode passar batido",
		aceito: "+15 din; -10 aprov; -10 inf",
		negar: "Arrume substitutos o mais rapido o possivel, mas deixe eles continuarem enquanto isso",
		negado: "-15 din; +15 inf",
		fala: "Senhor, nós descobrimos que um dos seus ministros estava desviando recursos, porem prender todos que estavam envolvidos no esquema vai nos forçar a achar substitutos em um periodo muito curto, você acha q devemos prender eles?",
		papel: "Prender os ministros corruptos?",
		audio: snd_policial_6
	},

	policial_7 : {
		owner : global.people.policial,
		aprovar: "Prossiga com a obra",
		aceito: "+15 com; -10 din; -5 inf",
		negar: "Não vale a pena",
		negado: "-10 com; +15 din",
		fala: "Senhor, Depois de revisar o nosso metodo de produção foi avistado um erro que esta disperdiçando comida o suficiente pra alimentar cidades, porem consertar ele requer um investimento grande de dinheiro e mão de obra",
		papel: "Consertar o sistema de produção de comida?",
		audio: snd_policial_7
	},

	policial_8 : {
		owner : global.people.policial,
		aprovar: "Você tem a minha permissão",
		aceito: "-10 inf; +15 aprov",
		negar: "Nós temos coisas mais urgentes que demandam nossa atenção",
		negado: "+10 inf; +5 din; -15 aprov",
		fala: "Senhor nós identificamos a base de um grupo responsavel por muitos ataques contra populações indigenas, nós podemos dedicar alguns dos nossos recursos a parar essa organização?",
		papel: "Combater grupo que ataca populações indígenas?",
		audio: snd_policial_8
	},

	policial_9 : {
		owner : global.people.policial,
		aprovar: "Simplismente retire eles do lugar",
		aceito: "-10 aprov; +15 din",
		negar: "Ofereça moradia temporaria as pessoas",
		negado: "-15 din; +10 aprov; +5 inf",
		fala: "Senhor, um grupo de moradores de rua invadiram um predio nosso que não estava sendo usado, protocolo demanda que nós expulsamos eles de lá, como que você quer que a gente faça isso?",
		papel: "Como lidar com a invasão do prédio?",
		audio: snd_policial_9
	},

	policial_10 : {
		owner : global.people.policial,
		aprovar: "Obviamente",
		aceito: "-15 din; +5 inf; +10 aprov",
		negar: "Fale para ele que eu quero recusar ele pessoalmente",
		negado: "+20 din; -5 inf; -15 aprov",
		fala: "Senhor, eu preciso da sua palavra final em um assunto, um ministro seu esta te oferecendo propina para autorizar um desvio de verba para a manuntenção da infrestrutura publica, você vai recusar certo?",
		papel: "Recusar a propina do ministro?",
		audio: snd_policial_10
	},
	
	saude_1 : {
		owner : global.people.ministro,
		aprovar: "Não vamos perder vidas por falhas de rede.",
		aceito: "+15 aprov; +5 inf; -15 din",
		negar: "Não quero pânico nacional, o problema vai se resolver.",
		negado: "+10 din; -15 aprov; -10 inf",
		fala: "Senhor, vários dispositivos conectados a rede hospitalar estão experienciando falhas, como devemos tratar este assunto?",
		papel: "Investir em cibersegurança médica?",
		audio: snd_ministro_1
	},

	saude_2 : {
		owner : global.people.ministro,
		aprovar: "Isso é um simbolo do nosso compromisso com a saúde.",
		aceito: "+15 inf; -15 din;  +10 com",
		negar: "Não podemos arcar com os custos.",
		negado: "+15 din; -10 inf",
		fala: "O projeto de embarcações hospitalares para áreas de mata e rio foi um sucesso, pedimos permissão para expandir o escopo.",
		papel: "Expandir os hospitais flutuantes?",
		audio: snd_ministro_2
	},

	saude_3 : {
		owner : global.people.ministro,
		aprovar: "As bebidas serão seguras para beber de novo.",
		aceito: "+10 aprov; -15 din",
		negar: "É tudo alcool da mesma forma.",
		negado: "-10 aprov; +15 din",
		fala: "Recebemos relatos de metanol nas bebidas, precisamos impedir o contrabando antes que mais pessoas morram.",
		papel: "Investir em parar a fabricação de falsas garrafas?",
		audio: snd_ministro_3
	},

	saude_4 : {
		owner : global.people.ministro,
		aprovar: "Comece o protocolo de devolução.",
		aceito: "+10 aprov; +5 inf; -15 din",
		negar: "Eles sabiam as consequências.",
		negado: "-10 aprov; -5 inf; +10 din",
		fala: "Um novo remédio foi aprovado com efeitos secundários muito extremos, e a população demanda uma investigação",
		papel: "Pesquisar os efeitos do remédio?",
		audio: snd_ministro_4
	},

	saude_5 : {
		owner : global.people.ministro,
		aprovar: "Ampliem o programa.",
		aceito: "-10 din; +5 inf",
		negar: "Isso não é interação humana de verdade.",
		negado: "+5 aprov; -10 din",
		fala: "O uso de IA é considerado polêmico pelos nossos pacientes, especialmente em um ambiente hospitalar. Deveriamos permitir o uso de I.A para recursos de terapia?",
		papel: "Manter as IAs como psicólogos?",
		audio: snd_ministro_5
	},

	saude_6 : {
		owner : global.people.ministro,
		aprovar: "Isolem as áreas e priorizem pesquisa científica.",
		aceito: "+10 aprov; +5 inf;	 -10 din",
		negar: "Enterrem o assunto até termos uma explicação.",
		negado: "+5 aprov; -5 inf; +10 din",
		fala: "Senhor Presidente, estamos registrando casos de mudanças genéticas súbitas em recém-nascidos.",
		papel: "Investigar as mudanças genéticas em recém-nascidos?",
		audio: snd_ministro_6
	},

	saude_7 : {
		owner : global.people.ministro,
		aprovar: "Bloqueie o app e processe os criadores.",
		aceito: "+10 inf; -5 aprov;",
		negar: "Comprem a tecnologia e regule seu uso oficial.",
		negado: "-5 din; +5 inf; +5 aprov",
		fala: "Um aplicativo que promete diagnosticar doenças por selfie viraliza e causa confusão, milhões de pessoas acreditam estar doentes.",
		papel: "Como lidar com o aplicativo de diagnóstico?",
		audio: snd_ministro_7
	},

	saude_8 : {
		owner : global.people.ministro,
		aprovar: "Mobilizem equipes internacionais, precisamos entender o ressurgimento.",
		aceito: "+5 aprov; -5 din; -5 inf",
		negar: "Isso não pode causar alarde.",
		negado: "-5 din; +5 inf;",
		fala: "Casos de peste bubônica estão surgindo em cidades modernas sem qualquer vetor conhecido. O que devemos fazer?",
		papel: "Combater o ressurgimento da peste bubônica?",
		audio: snd_ministro_8
	},

	saude_9 : {
		owner : global.people.ministro,
		aprovar: "A sáude pública é uma prioridade.",
		aceito: "+15 aprov; -5 din",
		negar: "Outros assuntos requerem nossa atenção.",
		negado: "-10 aprov; +5 inf; -5 din",
		fala: "A condição dos hospitais da rede pública é deplorável, precisamos de mais investimento na infraestrutura.",
		papel: "Investir na construção dos hospitais?",
		audio: snd_ministro_9
	},

	saude_10 : {
		owner : global.people.ministro,
		aprovar: "Precisamos focar nisso.",
		aceito: "+5 aprov; +5 inf; -10 din",
		negar: "Não podemos fazer isso no momento.",
		negado: "+10 din; -5 inf; -5 aprov",
		fala: "Uma campanha online de fake news está mudando a percepção do público sobre vacinas, precisamos combater isso.",
		papel: "Continuar com a terapia de remoção de memórias?",
		audio: snd_ministro_10
	},
	
	banqueiro_1 : {
		owner : global.people.banqueiro,
		aprovar: "Irei abaixar os impostos bancários.",
		aceito: "+20 din; -15 aprov",
		negar: "Os impostos são necessários para o país",
		negado: "+10 aprov; -10 din",
		fala: "Por favor me dê uma ajudinha e corte um pouco dos impostos do banco, prometo que irá valer a pena",
		papel: "Cortar impostos bancários?",
		audio: snd_banqueiro_1
	},

	banqueiro_2 : {
		owner : global.people.banqueiro,
		aprovar: "Precisamos manter a econômia girando.",
		aceito: "+20 din; -10 inf; -10 aprov",
		negar: "Preservaremos o quarteirão histórico",
		negado: "+10 inf; +15 aprov; -15 din",
		fala: "Estou querendo abrir mais bancos pela cidade, você bem que poderia me dar uma ajudinha e quebrar aquelas casas velhas do quarteirão e dar o terreno para mim",
		papel: "Demolir casas para construir bancos?",
		audio: snd_banqueiro_2
	},

	banqueiro_3 : {
		owner : global.people.banqueiro,
		aprovar: "O banco terá ajuda do governo.",
		aceito: "+30 din; -20 aprov; -10 inf",
		negar: "Manteremos a concorrência no setor bancário",
		negado: "+15 aprov; -20 din",
		fala: "A gente pode fazer uma parceria banco estado, pode ser uma bela oferta para você meu parceiro, a única coisa necessária é que eu seja o único banco da cidade. Fechado?",
		papel: "Criar monopólio bancário?",
		audio: snd_banqueiro_3
	},

	banqueiro_4 : {
		owner : global.people.banqueiro,
		aprovar: "Os hospitais particulares são de melhor qualidade.",
		aceito: "+25 din; -10 inf; -15 aprov",
		negar: "Os hospitais públicos devem permanecer públicos",
		negado: "+15 aprov; -15 din",
		fala: "Ora ora, quero mais investimentos na área de medicina, virar um dos grandes nomes não só pelo meu banco mas pela minha caridade, você pode privatizar alguns dos hospitais públicos para mim?",
		papel: "Privatizar hospitais públicos?",
		audio: snd_banqueiro_4
	},

	banqueiro_5 : {
		owner : global.people.banqueiro,
		aprovar: "A sua fortuna está protegida.",
		aceito: "+10 din; -10 inf; -10 aprov",
		negar: "O direito ao protesto é fundamental",
		negado: "+15 aprov; -10 din",
		fala: "Tem várias pessoas protestando contra a minha grande fortuna, você pode usar da força policial ir lá e pará-los?",
		papel: "Reprimir protestos contra o banqueiro?",
		audio: snd_banqueiro_5
	},

	banqueiro_6 : {
		owner : global.people.banqueiro,
		aprovar: "Quanto mais, melhor.",
		aceito: "+15 com; -15 din",
		negar: "Mercados devem seguir as regras de zoneamento",
		negado: "+15 din; -10 com",
		fala: "Olá grande amigo, vos mercê poderia dar permissão a eu abrir uns mercados filiais ao banco, claro que também precisaria da sua ajuda para a construção",
		papel: "Permitir mercados filiais do banco?",
		audio: snd_banqueiro_6
	},

	banqueiro_7 : {
		owner : global.people.banqueiro,
		aprovar: "O País agradece sua contribuição financeira.",
		aceito: "+25 din; +15 aprov; -20 inf",
		negar: "Todas as leis serão transparentes",
		negado: "+10 aprov; +15 inf; -10 din",
		fala: "Nesse dia você pretende anunciar uma nova lei certo? Vos morcê poderia ao mesmo tempo deixar eu fazer umas 'coisinhas' prometo que vale a pena e o povo nem vai perceber",
		papel: "Permitir manobras financeiras obscuras?",
		audio: snd_banqueiro_7
	},

	banqueiro_8 : {
		owner : global.people.banqueiro,
		aprovar: "É um mal necessário.",
		aceito: "+15 din; -10 aprov",
		negar: "Os juros devem ser justos para a população",
		negado: "-10 din; +5 aprov",
		fala: "Estou pensando em aumentar os juros, se vos mercê quiser posso aumentar mais e te darei essa parte a mais.",
		papel: "Aumentar os juros bancários?",
		audio: snd_banqueiro_8
	},

	banqueiro_9 : {
		owner : global.people.banqueiro,
		aprovar: "Estou com sorte!",
		aceito: "+35 din; -15 aprov",
		negar: "Loteria não é prioridade do governo",
		negado: "-25 din; +10 aprov",
		fala: "Podemos fazer uma aliança, iremos fazer uma loteria agora, você sairá como campeão mas preciso de umas insenções de impostos.",
		papel: "Criar loteria com isenções fiscais?",
		audio: snd_banqueiro_9
	},

	banqueiro_10 : {
		owner : global.people.banqueiro,
		aprovar: "Pode mandar para minha conta.",
		aceito: "+50 din; -20 aprov; -20 com; -20 inf",
		negar: "Prefiro manter minha integridade",
		negado: "+20 aprov; +15 com; +15 inf; -35 din",
		fala: "Posso te fazer mais rico do que tudo, porém vos mercê terá que fazer algumas coisinhas que o público provavelmente não gostaria... temos um acordo?",
		papel: "Aceitar a oferta obscura do banqueiro?",
		audio: snd_banqueiro_10
	}
}