/// @description Insert description here
// You can write your code in this editor


if(other.hit_type == 1){
	keep_hurt_time = 10;
	hp = hp - other.force;
	var inst = instance_create_depth(x, y, -1, obj_hurt_panel);
	inst.dmg = other.force;
}
else{
	if(instance_exists(obj_constant_hurt_controler)){
		obj_constant_hurt_controler.keep_time = 500;
	}
	else{
		var inst = instance_create_layer(x, y, 1, obj_constant_hurt_controler);
		inst.force = other.force;
	}
}