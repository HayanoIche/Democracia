if (room == rm_principal){
	var _bckgrnd = layer_background_get_id("Background");
				var _index = 0
				if(global.resources.infraestrutura <= 25){ _index = 0;}
				if(global.resources.infraestrutura > 25 &&global.resources.infraestrutura < 79){_index = 1};
				if(global.resources.infraestrutura >= 80){ _index = 2;}
				layer_background_index(_bckgrnd, _index)
} 
