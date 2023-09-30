if(isHidden) {
	return;
}

// Box
draw_sprite_ext(sprTextbox, 0, 100 - 32 - 16, -16, 22, 36, 0, c_white, 1);

// Selection indicator
draw_sprite(sprInventoryIndexIndicator, image_index, 100 - 24, display_get_gui_height()/2 + 2);

draw_set_font(fnt0);
draw_set_valign(fa_middle);

// Items
var _space = 12;
var _listSize = ds_list_size(stuffList);

if(_listSize == 0) {
	draw_text(100, display_get_gui_height()/2, "--Empty");
	return;
}

for(var i = 0; i < _listSize; i++) {
	draw_text(100, display_get_gui_height()/2 + i * (font_get_size(fnt0) + _space) - index * (font_get_size(fnt0) + _space), stuffList[| i].name);
}