if(isHidden) {
	return;
}

draw_sprite(sprInventoryIndexIndicator, image_index, 100 - 24, display_get_gui_height()/2 + 2);

draw_set_font(fnt0);
draw_set_valign(fa_middle);

var _space = 12;
for(var i = 0; i < ds_list_size(stuffList); i++) {
	draw_text(100, display_get_gui_height()/2 + i * (font_get_size(fnt0) + _space) - index * (font_get_size(fnt0) + _space), stuffList[| i].name);
}