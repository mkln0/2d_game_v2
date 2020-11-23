/// @description Insert description here
// You can write your code in this editor

if(keep_time < 0){
	instance_destroy(inst);
	instance_destroy();
}


if(obj_zhu.hp < pre_hp){
	instance_create_depth(obj_zhu.x, obj_zhu.y, 1, obj_jinneg_c);
	pre_hp = obj_zhu.hp;
}
else{
	pre_hp = obj_zhu.hp;
}

keep_time = keep_time - 1;