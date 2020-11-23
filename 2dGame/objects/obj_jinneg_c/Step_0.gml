/// @description Insert description here
// You can write your code in this editor

//时间随着游戏帧数减少
keep_time = keep_time - 1;

//如果时间到了，此对象就消失
if(keep_time <= 0){
	instance_destroy()
}

wait_time = wait_time - 1;

if(wait_time <= 0)
	sprite_index = spr_zhu_right;
