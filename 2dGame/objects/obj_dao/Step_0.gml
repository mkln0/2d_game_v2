/// @description Insert description here
// You can write your code in this editor

x = obj_zhu.x
y = obj_zhu.y

image_angle = point_direction(x, y, mouse_x, mouse_y);

if(mouse_check_button_pressed(mb_left)){
	sprite_index = spr_dao_beat;
	tm = get_timer();
}

if((get_timer() - tm) >= 10000){
	sprite_index = spr_dao;
}
