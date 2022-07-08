/// @description Insert description here
// You can write your code in this editor


visible = false;

alarm[0]=120;

var cam = view_get_camera(0);

x = camera_get_view_x(cam)+camera_get_view_width(cam)/2;
y = camera_get_view_y(cam)+camera_get_view_height(cam)/2;


show_debug_message("Setting x to " + string(x) + " y to " + string(y));


