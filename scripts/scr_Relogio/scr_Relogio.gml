function clock_init() {
    // Variaveis do RELÓGIO
    global.clock = {
        time_current: 9 * 60,  // Começa as 9 (em minutos)
        day_start: 9 * 60,     // 9:00 em minutos
        day_end: 18 * 60,      // 18:00 em minutos
        time_scale: 30,         // Default: 2 minutos pra cada segundo real
        is_running: false,
        day_length_seconds: 540, // Default: 540 segundos reais pra um dia completo
		day_over: false
    };
	
	global.day = 1;
}

// Função que faz override no day_leght pra mudar horário mais facil
function clock_set_day_length(seconds) {
    if (!variable_global_exists("clock")) clock_init();
    
    global.clock.day_length_seconds = seconds;
   // Calculo do timescale
    var day_duration_minutes = global.clock.day_end - global.clock.day_start;
    global.clock.time_scale = day_duration_minutes / seconds;
}

function clock_start() {
    if (!variable_global_exists("clock")) clock_init();
    
    global.clock.is_running = true;
    day_started();
}


function clock_stop() {
    if (!variable_global_exists("clock")) return;
    
    global.clock.is_running = false;
    day_ended(); 
}

// Função de update do relógio
function clock_update() {
    if (!variable_global_exists("clock")) return;
    if (!global.clock.is_running) return;
    
    // Calcular o tempo passado
    // delta_time é tempo em microsegundos (????) ent convertemos pra segundos
    var seconds_passed = delta_time / 1000000;
    
    // Calculo de quantos segundos reais se passam pra passar 1 minuto fake
    // time_scale que define isso, o default é 2 
    var minutes_passed = seconds_passed * global.clock.time_scale;
    global.clock.time_current += minutes_passed;
    
    // Checar se o dia acabo
    if (global.clock.time_current >= global.clock.day_end) {
        global.clock.time_current = global.clock.day_end;
        clock_stop();
    }
}

// Getter do tempo atual como uma string formatada em HH:MM
function clock_get_time_string() {
    if (!variable_global_exists("clock")) return "09:00";
    
    var total_minutes = round(global.clock.time_current);
    var hours = floor(total_minutes / 60);
    var minutes = total_minutes mod 60;
    
    // Horas sempre estarão entre 0 até 24 
    hours = hours mod 24;
    
    // Formatação com 0 na frente
    var hour_str = string(hours);
    var minute_str = string(floor(minutes/10));
    
	if (floor(minutes/10) > 0) {
		minute_str = minute_str + "0";
	}
	
	if (hours < 10) {
		hour_str = "0" + hour_str;
	}
	
	if (minutes < 10) {
		minute_str = "0" + minute_str;
	}
	
    return hour_str + ":" + minute_str;
}

// Pega o tempo atual em minutos
function clock_get_time_minutes() {
    if (!variable_global_exists("clock")) return 9 * 60;
    
    return global.clock.time_current;
}

// Pega a hora do relógio
function clock_get_progress() {
    if (!variable_global_exists("clock")) return 0;
    
    var total_time = global.clock.day_end - global.clock.day_start;
    var elapsed_time = global.clock.time_current - global.clock.day_start;
    
    return elapsed_time / total_time;
}

// Reseta o relógio pro começo do dia
function clock_reset() {
    if (!variable_global_exists("clock")) clock_init();
    
    global.clock.time_current = global.clock.day_start;
    global.clock.is_running = false;
}

// Reseta o relógio zero (00:00)
function clock_reset_to_zero() {
    if (!variable_global_exists("clock")) clock_init();
    
    global.clock.time_current = 0;
    global.clock.is_running = false;
    show_debug_message("Relógio resetado para 00:00");
}

function person_choose()
{
	// chamar a pessoa baseado no dia, se  ela já veio, se ela já veio no dia e afins
}

function person_time_choose(_time_index)
{
	// escolher o tempo pra essa pessoa vir, atrasando e tals
}

function day_started() {
	day_over = false;
	
	global.day_bluds =
	{
		first :
		{
			person : person_choose(),
			time : person_time_choose(1)
		},
		
		second :
		{
			
		},
		
		
	}
	
    show_debug_message("Dia começou as " + clock_get_time_string());
}

// Caso a gnt queira mudar oq cada função faz
function day_ended() {
	day_over = true;
	global.day += 1;
    show_debug_message("Dia acabou as " + clock_get_time_string());
}

// Retorna true se o dia acabou, false se não
function is_day_over() {
    if (!variable_global_exists("clock")) return false;
    
    if (global.clock.time_current >= global.clock.day_end) {
        return true;
    } else {
        return false;
    }
}