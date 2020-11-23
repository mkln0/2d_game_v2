/// @description Insert description here
// You can write your code in this editor

var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);

draw_text(cx+20, cy+5, "hp:");

draw_rectangle_colour(cx+50, cy+10, cx+150, cy+20,
                      c_red, c_red, c_red, c_red,
					  true);

draw_rectangle_colour(cx+50, cy+10, cx+50+hp, cy+20,
                      c_red, c_red, c_red, c_red,
					  false);
draw_text(cx+150+10, cy+5, string(hp));

if(obj_zhu.z_cooldown < 50)
	draw_sprite(spr_jineng_z_icon_no, 0, cx+150+20, cy+5);
else
	draw_sprite(spr_jineng_z_icon_yes, 0, cx+150+20, cy+5);

if(obj_zhu.x_cooldown < 50)
	draw_sprite(spr_jineng_x_icon_no, 0, cx+150+20+50, cy+5);
else
	draw_sprite(spr_jineng_x_icon_yes, 0, cx+150+20+50, cy+5);

if(obj_zhu.c_cooldown < 50)
	draw_sprite(spr_jineng_c_icon_no, 0, cx+150+20+100, cy+5);
else
	draw_sprite(spr_jineng_c_icon_yes, 0, cx+150+20+100, cy+5);

if(obj_zhu.v_cooldown < 50)
	draw_sprite(spr_jineng_v_icon_no, 0, cx+150+20+150, cy+5);
else
	draw_sprite(spr_jineng_v_icon_yes, 0, cx+150+20+150, cy+5);

draw_rectangle_colour(cx+20, cy+30, cx+150, cy+130,
                      c_white, c_white, c_white, c_white,
					  true);

draw_text(cx+25, cy+35, "force:" + string(force));
draw_text(cx+25, cy+55, "speed:" + string(walk_speed));

