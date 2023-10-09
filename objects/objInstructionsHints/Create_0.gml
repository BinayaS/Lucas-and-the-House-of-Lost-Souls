show = false;

function Show(index) {
	image_index = index;
	show = true;
	var _a = call_later(3, time_source_units_seconds, function(){show=false});
}