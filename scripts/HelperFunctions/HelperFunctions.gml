function normalize(_x, _y) {
	if(_x != 0 || _y != 0) {
		var _factor = 1/sqrt(sqr(_x) + sqr(_y));
		return {
			x : _factor * _x,
			y : _factor * _y,
		}
	}
}