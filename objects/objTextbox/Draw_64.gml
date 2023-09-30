draw_set_font(fnt0);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_aqua);

// Textbox
var _xscale = (display_get_gui_width() / 16) - 2;
var _yscale = 7.25;
draw_sprite_ext(sprite_index, image_index, 16, display_get_gui_height() - 132, _xscale, _yscale, 0, c_white, 1);

// Corner Arrow
draw_sprite(sprTextboxArrow, arrowImageIndex, (_xscale + 1) * sprite_width, (display_get_gui_height() - 132) + (_yscale * sprite_height));

// Name
var _x = 32;
var _y = display_get_gui_height() - 116;
var _nameLength = string_width(currentName) + font_get_size(fnt0)*2;
var _displayName = currentName == "" ? "" : "["+currentName+"]"
draw_text(_x, _y, _displayName);

// Content
draw_text_ext(_x + 120,
	_y,
	currentContent,
	font_get_size(fnt0) * 2,
	(_xscale * sprite_width) - (_x + _nameLength));