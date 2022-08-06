# 红铁
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ scoreboard players add @s "红铁time" -1
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红铁time"=..0}] ~~~ scoreboard players add @e[type=armor_stand,name=spawn.red_iron_1,scores={R_iron_count_1=..99}] R_iron_count_1 1
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红铁time"=..0}] ~~~ scoreboard players add @e[type=armor_stand,name=spawn.red_iron_2,scores={R_iron_count_2=..99}] R_iron_count_2 1
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红铁time"=..0}] ~~~ scoreboard players add @e[type=armor_stand,name=spawn.red_iron_3,scores={R_iron_count_3=..99}] R_iron_count_3 1
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红铁time"=..0}] ~~~ execute @e[type=armor_stand,name=spawn.red_iron_1,scores={R_iron_count_1=2..,R_spawned_iron_1=..63}] ~~~ structure load iron_ingot ~ 184 ~
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红铁time"=..0}] ~~~ execute @e[type=armor_stand,name=spawn.red_iron_1,scores={R_iron_count_1=2..,R_spawned_iron_1=..63}] ~~~ scoreboard players add @s R_spawned_iron_1 1
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红铁time"=..0}] ~~~ execute @e[type=armor_stand,name=spawn.red_iron_2,scores={R_iron_count_2=2..,R_spawned_iron_2=..63}] ~~~ structure load iron_ingot ~ 184 ~
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红铁time"=..0}] ~~~ execute @e[type=armor_stand,name=spawn.red_iron_2,scores={R_iron_count_2=2..,R_spawned_iron_2=..63}] ~~~ scoreboard players add @s R_spawned_iron_2 1
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红铁time"=..0}] ~~~ execute @e[type=armor_stand,name=spawn.red_iron_3,scores={R_iron_count_3=2..,R_spawned_iron_3=..63}] ~~~ structure load iron_ingot ~ 184 ~
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红铁time"=..0}] ~~~ execute @e[type=armor_stand,name=spawn.red_iron_3,scores={R_iron_count_3=2..,R_spawned_iron_3=..63}] ~~~ scoreboard players add @s R_spawned_iron_3 1
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红铁time"=..0,"游戏模式"=1}] ~~~ scoreboard players set @s "红铁time" 15
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红铁time"=..0,"游戏模式"=2}] ~~~ scoreboard players set @s "红铁time" 10
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=armor_stand,name=spawn.red_iron_1,scores={R_iron_count_1=1..}] ~~~ execute @e[type=player,x=0,y=184,z=56,r=1.8,c=1,scores={"分队"=1..2}] ~~~ scoreboard players operation @s will_get_XP += @e[type=armor_stand,name=spawn.red_iron_1,scores={R_iron_count_1=1..}] R_iron_count_1
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=armor_stand,name=spawn.red_iron_2,scores={R_iron_count_2=1..}] ~~~ execute @e[type=player,x=0,y=184,z=56,r=1.8,c=1,scores={"分队"=1..2}] ~~~ scoreboard players operation @s will_get_XP += @e[type=armor_stand,name=spawn.red_iron_2,scores={R_iron_count_2=1..}] R_iron_count_2
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=armor_stand,name=spawn.red_iron_3,scores={R_iron_count_3=1..}] ~~~ execute @e[type=player,x=0,y=184,z=56,r=1.8,c=1,scores={"分队"=1..2}] ~~~ scoreboard players operation @s will_get_XP += @e[type=armor_stand,name=spawn.red_iron_3,scores={R_iron_count_3=1..}] R_iron_count_3
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,x=0,y=184,z=56,r=1.8,c=1,scores={"分队"=1..2}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.red_iron_1] R_iron_count_1 0
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,x=0,y=184,z=56,r=1.8,c=1,scores={"分队"=1..2}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.red_iron_2] R_iron_count_2 0
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,x=0,y=184,z=56,r=1.8,c=1,scores={"分队"=1..2}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.red_iron_3] R_iron_count_3 0
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,x=0,y=184,z=56,r=1.8,c=1,scores={"分队"=1..2}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.red_iron_1] R_spawned_iron_1 0
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,x=0,y=184,z=56,r=1.8,c=1,scores={"分队"=1..2}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.red_iron_2] R_spawned_iron_2 0
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,x=0,y=184,z=56,r=1.8,c=1,scores={"分队"=1..2}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.red_iron_3] R_spawned_iron_3 0
# 蓝铁
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ scoreboard players add @s "蓝铁time" -1
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝铁time"=..0}] ~~~ scoreboard players add @e[type=armor_stand,name=spawn.blue_iron_1,scores={B_iron_count_1=..99}] B_iron_count_1 1
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝铁time"=..0}] ~~~ scoreboard players add @e[type=armor_stand,name=spawn.blue_iron_2,scores={B_iron_count_2=..99}] B_iron_count_2 1
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝铁time"=..0}] ~~~ scoreboard players add @e[type=armor_stand,name=spawn.blue_iron_3,scores={B_iron_count_3=..99}] B_iron_count_3 1
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝铁time"=..0}] ~~~ execute @e[type=armor_stand,name=spawn.blue_iron_1,scores={B_iron_count_1=2..,B_spawned_iron_1=..63}] ~~~ structure load iron_ingot ~ 184 ~
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝铁time"=..0}] ~~~ execute @e[type=armor_stand,name=spawn.blue_iron_1,scores={B_iron_count_1=2..,B_spawned_iron_1=..63}] ~~~ scoreboard players add @s B_spawned_iron_1 1
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝铁time"=..0}] ~~~ execute @e[type=armor_stand,name=spawn.blue_iron_2,scores={B_iron_count_2=2..,B_spawned_iron_2=..63}] ~~~ structure load iron_ingot ~ 184 ~
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝铁time"=..0}] ~~~ execute @e[type=armor_stand,name=spawn.blue_iron_2,scores={B_iron_count_2=2..,B_spawned_iron_2=..63}] ~~~ scoreboard players add @s B_spawned_iron_2 1
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝铁time"=..0}] ~~~ execute @e[type=armor_stand,name=spawn.blue_iron_3,scores={B_iron_count_3=2..,B_spawned_iron_3=..63}] ~~~ structure load iron_ingot ~ 184 ~
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝铁time"=..0}] ~~~ execute @e[type=armor_stand,name=spawn.blue_iron_3,scores={B_iron_count_3=2..,B_spawned_iron_3=..63}] ~~~ scoreboard players add @s B_spawned_iron_3 1
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝铁time"=..0,"游戏模式"=1}] ~~~ scoreboard players set @s "蓝铁time" 15
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝铁time"=..0,"游戏模式"=2}] ~~~ scoreboard players set @s "蓝铁time" 10
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=armor_stand,name=spawn.blue_iron_1,scores={B_iron_count_1=1..}] ~~~ execute @e[type=player,x=0,y=184,z=-56,r=1.8,c=1,scores={"分队"=1..2}] ~~~ scoreboard players operation @s will_get_XP += @e[type=armor_stand,name=spawn.blue_iron_1,scores={B_iron_count_1=1..}] B_iron_count_1
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=armor_stand,name=spawn.blue_iron_2,scores={B_iron_count_2=1..}] ~~~ execute @e[type=player,x=0,y=184,z=-56,r=1.8,c=1,scores={"分队"=1..2}] ~~~ scoreboard players operation @s will_get_XP += @e[type=armor_stand,name=spawn.blue_iron_2,scores={B_iron_count_2=1..}] B_iron_count_2
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=armor_stand,name=spawn.blue_iron_3,scores={B_iron_count_3=1..}] ~~~ execute @e[type=player,x=0,y=184,z=-56,r=1.8,c=1,scores={"分队"=1..2}] ~~~ scoreboard players operation @s will_get_XP += @e[type=armor_stand,name=spawn.blue_iron_3,scores={B_iron_count_3=1..}] B_iron_count_3
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,x=0,y=184,z=-56,r=1.8,c=1,scores={"分队"=1..2}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.blue_iron_1] B_iron_count_1 0
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,x=0,y=184,z=-56,r=1.8,c=1,scores={"分队"=1..2}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.blue_iron_2] B_iron_count_2 0
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,x=0,y=184,z=-56,r=1.8,c=1,scores={"分队"=1..2}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.blue_iron_3] B_iron_count_3 0
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,x=0,y=184,z=-56,r=1.8,c=1,scores={"分队"=1..2}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.blue_iron_1] B_spawned_iron_1 0
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,x=0,y=184,z=-56,r=1.8,c=1,scores={"分队"=1..2}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.blue_iron_2] B_spawned_iron_2 0
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,x=0,y=184,z=-56,r=1.8,c=1,scores={"分队"=1..2}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.blue_iron_3] B_spawned_iron_3 0
# 红家金
execute @e[type=armor_stand,name=main,scores={gameSTART=1,function_tick=20}] ~~~ scoreboard players add @s "红家金time" -1
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红家金time"=..0}] ~~~ scoreboard players add @e[type=armor_stand,name=spawn.red_gold,scores={R_gold_count=..99}] R_gold_count 8
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红家金time"=..0}] ~~~ execute @e[type=armor_stand,name=spawn.red_gold,scores={R_gold_count=9..,R_spawned_gold=..12}] ~~~ structure load gold_ingot ~ 184 ~
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红家金time"=..0}] ~~~ execute @e[type=armor_stand,name=spawn.red_gold,scores={R_gold_count=9..,R_spawned_gold=..12}] ~~~ scoreboard players add @s R_spawned_gold 1
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红家金time"=..0}] ~~~ scoreboard players set @s "红家金time" 6
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=armor_stand,name=spawn.red_gold,scores={R_gold_count=1..}] ~~~ execute @e[type=player,x=0,y=184,z=56,r=1.8,c=1,scores={"分队"=1..2}] ~~~ scoreboard players operation @s will_get_XP += @e[type=armor_stand,name=spawn.red_gold,scores={R_gold_count=1..}] R_gold_count
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,x=0,y=184,z=56,r=1.8,c=1,scores={"分队"=1..2}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.red_gold] R_gold_count 0
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,x=0,y=184,z=56,r=1.8,c=1,scores={"分队"=1..2}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.red_gold] R_spawned_gold 0
# 蓝家金
execute @e[type=armor_stand,name=main,scores={gameSTART=1,function_tick=20}] ~~~ scoreboard players add @s "蓝家金time" -1
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝家金time"=..0}] ~~~ scoreboard players add @e[type=armor_stand,name=spawn.blue_gold,scores={B_gold_count=..99}] B_gold_count 8
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝家金time"=..0}] ~~~ execute @e[type=armor_stand,name=spawn.blue_gold,scores={B_gold_count=9..,B_spawned_gold=..12}] ~~~ structure load gold_ingot ~ 184 ~
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝家金time"=..0}] ~~~ execute @e[type=armor_stand,name=spawn.blue_gold,scores={B_gold_count=9..,B_spawned_gold=..12}] ~~~ scoreboard players add @s B_spawned_gold 1
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝家金time"=..0}] ~~~ scoreboard players set @s "蓝家金time" 6
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=armor_stand,name=spawn.blue_gold,scores={B_gold_count=1..}] ~~~ execute @e[type=player,x=0,y=184,z=-56,r=1.8,c=1,scores={"分队"=1..2}] ~~~ scoreboard players operation @s will_get_XP += @e[type=armor_stand,name=spawn.blue_gold,scores={B_gold_count=1..}] B_gold_count
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,x=0,y=184,z=-56,r=1.8,c=1,scores={"分队"=1..2}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.blue_gold] B_gold_count 0
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,x=0,y=184,z=-56,r=1.8,c=1,scores={"分队"=1..2}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.blue_gold] B_spawned_gold 0
# 钻石
execute @e[type=armor_stand,name=main,scores={gameSTART=1,function_tick=20}] ~~~ scoreboard players add @s "钻石1time" -1
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"钻石1time"=..0}] ~~~ structure load diamond -25 186 -25
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"钻石1time"=..0}] ~~~ structure load diamond -25 186 25
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"钻石1time"=..0}] ~~~ structure load diamond 25 186 25
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"钻石1time"=..0}] ~~~ structure load diamond 25 186 -25
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"钻石1time"=..0,"钻石等级"=1}] ~~~ scoreboard players set @s "钻石1time" 35
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"钻石1time"=..0,"钻石等级"=2}] ~~~ scoreboard players set @s "钻石1time" 20
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"钻石1time"=..0,"钻石等级"=3}] ~~~ scoreboard players set @s "钻石1time" 15
# 绿宝石
execute @e[type=armor_stand,name=main,scores={gameSTART=1,function_tick=20}] ~~~ scoreboard players add @s "绿宝石time" -1
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"绿宝石time"=..0}] ~~~ structure load emerald 0 184 0 0_degrees none true false 
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"绿宝石time"=..0,"绿宝石等级"=1}] ~~~ scoreboard players set @s "绿宝石time" 40
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"绿宝石time"=..0,"绿宝石等级"=2}] ~~~ scoreboard players set @s "绿宝石time" 30
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"绿宝石time"=..0,"绿宝石等级"=3}] ~~~ scoreboard players set @s "绿宝石time" 20




