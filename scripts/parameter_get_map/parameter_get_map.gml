function parameter_get_map(){
	var _param_count = parameter_count();
	var _params_map = ds_map_create();
	var _undef = 0; //if we can't figure out a key for our value, we're going to create 'undefined+N' keys.

	for (var i = 0; i <= _param_count; i++){
		var equalPos = string_pos("=", parameter_string(i)); //get position of the = sign.
	
		if (equalPos <= 1) { //if nothing exists before an = sign, store as undefined+n key.
			var _key = "undefined"+string(_undef);
			var _value = parameter_string(i);
			_undef++;
		}
		else{ //found a paramater with key=value formatting
			var _key = string_delete(parameter_string(i), equalPos, string_length(parameter_string(i)) - equalPos + 1);
			var _value = string_delete(parameter_string(i), 1, equalPos);
		}
		_params_map[? _key] = _value;
	}
	return _params_map;
}