/// @description Insert description here
// You can write your code in this editor

if(hp < 0)	hp = 0;
if(hp > 100) hp = 100;


if(keep_hurt_time > 0){
	io_clear();
	if(orientation == 0){
		sprite_index = spr_zhu_hurt_right;
		x = x - 20;
	}
	else{
		sprite_index = spr_zhu_hurt_left;
		x = x + 20;
	}
}
else{
	 if(orientation == 0)
	      sprite_index = spr_zhu_right;
	   else
	      sprite_index = spr_zhu_left;
}

keep_hurt_time = keep_hurt_time - 5;


//control to walk

//not walk
if(!keyboard_check(ord("S")) &&
   !keyboard_check(ord("D")) &&
   !keyboard_check(ord("W")) &&
   !keyboard_check(ord("A")) &&
   keep_hurt_time <= 0)
   {
	   if(orientation == 0)
	      sprite_index = spr_zhu_right;
	   else
	      sprite_index = spr_zhu_left;
   }

//walk down
else if(keyboard_check(ord("S")) &&
        !keyboard_check(ord("D")) &&
        !keyboard_check(ord("W")) &&
        !keyboard_check(ord("A")))
		{
			if(orientation == 0)
			{
				sprite_index = spr_zhu_right_go;
				if(!place_meeting(x, y + 5, obj_wall))
					y = y + walk_speed;
			}
			else
			{
				sprite_index = spr_zhu_left_go;
				if(!place_meeting(x, y + 5, obj_wall))
					y = y + walk_speed;
			}
		}

//walk up
else if(!keyboard_check(ord("S")) &&
        !keyboard_check(ord("D")) &&
        keyboard_check(ord("W")) &&
        !keyboard_check(ord("A")))
		{
			if(orientation == 0)
			{
				sprite_index = spr_zhu_right_go;
				if(!place_meeting(x, y - 5, obj_wall))
					y = y - walk_speed;
			}
			else
			{
				sprite_index = spr_zhu_left_go;
				if(!place_meeting(x, y - 5, obj_wall))
					y = y - walk_speed;
			}
		}


//walk right
else if(!keyboard_check(ord("S")) &&
        keyboard_check(ord("D")) &&
        !keyboard_check(ord("W")) &&
        !keyboard_check(ord("A")))
		{
			sprite_index = spr_zhu_right_go;
			if(!place_meeting(x + 5, y, obj_wall))
				x = x + walk_speed;
			orientation = 0;
		}

//walk left

else if(!keyboard_check(ord("S")) &&
        !keyboard_check(ord("D")) &&
        !keyboard_check(ord("W")) &&
        keyboard_check(ord("A")))
		{
			sprite_index = spr_zhu_left_go;
			if(!place_meeting(x - 5, y, obj_wall))
				x = x - walk_speed;
			orientation = 1;
		}

//walk right and up
else if(!keyboard_check(ord("S")) &&
        keyboard_check(ord("D")) &&
        keyboard_check(ord("W")) &&
        !keyboard_check(ord("A")))
		{
			sprite_index = spr_zhu_right_go;
			if(!place_meeting(x + 5, y, obj_wall))
				x = x + walk_speed;
			if(!place_meeting(x, y - 5, obj_wall))
				y = y - walk_speed;
			orientation = 0;
		}

//walk right and down
else if(keyboard_check(ord("S")) &&
        keyboard_check(ord("D")) &&
        !keyboard_check(ord("W")) &&
        !keyboard_check(ord("A")))
		{
			sprite_index = spr_zhu_right_go;
			if(!place_meeting(x + 5, y, obj_wall))
				x = x + walk_speed;
			if(!place_meeting(x, y + 5, obj_wall))
				y = y + walk_speed;
			orientation = 0;
		}

// walk left and up
else if(!keyboard_check(ord("S")) &&
        !keyboard_check(ord("D")) &&
        keyboard_check(ord("W")) &&
        keyboard_check(ord("A")))
		{
			sprite_index = spr_zhu_left_go;
			if(!place_meeting(x - 5, y, obj_wall))
				x = x - walk_speed;
			if(!place_meeting(x, y - 5, obj_wall))
				y = y - walk_speed;
			orientation = 1;
		}

//walk left and down
else if(keyboard_check(ord("S")) &&
        !keyboard_check(ord("D")) &&
        !keyboard_check(ord("W")) &&
        keyboard_check(ord("A")))
		{
			sprite_index = spr_zhu_left_go;
			if(!place_meeting(x - 5, y, obj_wall))
				x = x - walk_speed;
			if(!place_meeting(x, y + 5, obj_wall))
				y = y + walk_speed;
			orientation = 1;
		}

//else

//control to walk end


//draw panel
with(obj_zhu_panel)
{
	hp = obj_zhu.hp;
	force = obj_zhu.force;
	walk_speed = obj_zhu.walk_speed;
}

//draw panel end


//jineng z
if(keyboard_check(ord("1")) && z_cooldown >= 50){
	instance_create_depth(x, y, -1, obj_jineng_z);
	z_cooldown = 0;
}

//step recool z jineng
z_cooldown = z_cooldown + 1;

//jineng z end


//jineng x
if(keyboard_check(ord("2")) && x_cooldown >= 50){
	instance_create_depth(x, y, -1, obj_jineng_x);
	x_cooldown = 0;
}

//技能x累计时间
x_cooldown = x_cooldown +1;

//技能x代码结束

//技能c
if(keyboard_check(ord("3")) && c_cooldown >= 50){
	if(instance_exists(obj_jineng_c_controler)){
		obj_jineng_c_controler.keep_time = 1000;
	}
	else{
		instance_create_depth(x, y, -1, obj_jineng_c_controler);
	}
	c_cooldown = 0;
}
//技能c累计时间
c_cooldown = c_cooldown + 1;

//技能c代码结束

//技能v
if(keyboard_check(ord("4")) && v_cooldown >= 50){
	if(instance_exists(obj_jineng_v_controler)){
		obj_jineng_v_controler.keep_time = 1000;
	}
	else{
		instance_create_depth(x, y, -1, obj_jineng_v_controler);
	}
	v_cooldown = 0;
}
//节能v累计时间
v_cooldown = v_cooldown + 1;
//技能v代码结束






