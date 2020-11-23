/// @description Insert description here
// You can write your code in this editor

if(tm >= 100){
	obj_zhu.hp = obj_zhu.hp - force;
	
	var inst = instance_create_depth(x, y, -1, obj_hurt_panel);
	inst.dmg = force;
	tm = 0;
}

tm = tm + 1;

if(keep_time <= 0)
	instance_destroy();

keep_time = keep_time - 1;
