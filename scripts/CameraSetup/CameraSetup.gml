global.res_width = 480;
global.res_height = 270;

window_set_size(global.res_width, global.res_height);
surface_resize(application_surface, global.res_width*6, global.res_height*6);
display_set_gui_maximize(2, 2, 0, 0);

randomize();