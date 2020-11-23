# 2d_game_v2

## 第二版2d_game游戏介绍
### 添加了2个技能，分别使用数字键“3”和数字键“4”使用。  
技能“3”：在受到伤害后会在原地留下一个吐血分身，过一段时间吐血分身恢复，在恢复后与主角发生碰撞会恢复主角生命值，若一直都没有被碰撞，则过一段时间消失。  
节能“4”：释放后，主角进行锁血，血量在这段时间内既不能上升，也不能下降。
### 对于状态技能添加了技能特效
技能“3”：释放后，在持续时间内，主角都会有一双红色的翅膀。  
技能“4”：释放后，在持续时间内，主角都会有一个护盾。  
### 添加了技能栏
每一个技能在角色面板的右方都会存在一个技能表示，技能标识下方有对应的技能数字。技能标识灰色表示技能处于冷却时间，金色表示技能可以释放。  
### 最重要的：完善了被碰撞
我们组在讨论后，认为每个人只要完成自己做的东西在与其他东西发生碰撞后该怎样做就可以了，我们称之为“被碰撞”。  
#### 持续伤害碰撞
主角与蓝色方块发生碰撞后，将会持续掉血。
#### 击退攻击碰撞
主角在于红色方块发生碰撞后，竟会后退一小段距离，并且会扣除血量
#### 墙体碰撞
主角无法穿过房间中的金色方块，也就是墙。
