show = false;
fadeInFlag = true;

function Show(index) {
	image_index = index;
	show = true;
	fadeInFlag = true;
	image_alpha = 0;
	var _a = call_later(6, time_source_units_seconds, function(){show=false});
}