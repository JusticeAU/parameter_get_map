/// @description 

var _map_size = ds_map_size(launch_paramaters);
var _key = ds_map_find_first(launch_paramaters)
var _y = 50
for (var i = 0; i < _map_size; i++){
	var _value = launch_paramaters[? _key];
	draw_text(50,_y,_key);
	draw_text(200,_y,_value)
	_key = ds_map_find_next(launch_paramaters,_key);
	_y += 50;
}