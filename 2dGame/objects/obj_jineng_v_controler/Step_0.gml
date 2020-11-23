/// @description Insert description here
// You can write your code in this editor

if(keep_time <= 0){
	instance_destroy(inst);
	instance_destroy();
}

keep_time = keep_time -1;

obj_zhu.hp = content_hp;
