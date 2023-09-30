draw_set_font(fnt0);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_aqua);

// Textbox
var _xscale = (display_get_gui_width() / 16) - 2;
var _yscale = 7.25;
draw_sprite_ext(sprite_index, image_index, 16, display_get_gui_height() - 132, _xscale, _yscale, 0, c_white, 1);

// Content
draw_text_ext(16 + 64, display_get_gui_height() - 132         , displayContentList[0], font_get_size(fnt0) * 2, _xscale * sprite_width);
draw_text_ext(16 + 64, display_get_gui_height() - 132 + 26 * 1, displayContentList[1], font_get_size(fnt0) * 2, _xscale * sprite_width);
draw_text_ext(16 + 64, display_get_gui_height() - 132 + 26 * 2, displayContentList[2], font_get_size(fnt0) * 2, _xscale * sprite_width);
draw_text_ext(16 + 64, display_get_gui_height() - 132 + 26 * 3, displayContentList[3], font_get_size(fnt0) * 2, _xscale * sprite_width);

// Arrow
draw_sprite(sprSword, 0, 16 + 32, display_get_gui_height() - 132 + (26 * index) + 16);