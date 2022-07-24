#红队陷阱被触发
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红陷阱等级"=1..3}] ~~~ execute @e[type=player,scores={"分队"=2},x=-5,y=176,z=32,dx=10,dy=22,dz=26] ~~~ title @a[scores={"分队"=1}] title §c§l队伍陷阱被触发
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红陷阱等级"=1..3}] ~~~ execute @e[type=player,scores={"分队"=2},x=-5,y=176,z=32,dx=10,dy=22,dz=26] ~~~ tellraw @a[scores={"分队"=1}] { "rawtext" : [ { "text" : "§l起床战争 · 无限火力 >> §c§l有敌方玩家闯入了您的基地， 队伍陷阱已被触发" } ] }
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红陷阱等级"=1..3}] ~~~ execute @e[type=player,scores={"分队"=2},x=-5,y=176,z=32,dx=10,dy=22,dz=26] ~~~ playsound mob.endermen.portal @a[scores={"分队"=1}]
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红陷阱等级"=1}] ~~~ execute @e[type=player,scores={"分队"=2},x=-5,y=176,z=32,dx=10,dy=22,dz=26] ~~~ effect @s mining_fatigue 10 0
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红陷阱等级"=2}] ~~~ execute @e[type=player,scores={"分队"=2},x=-5,y=176,z=32,dx=10,dy=22,dz=26] ~~~ effect @s mining_fatigue 10 1
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红陷阱等级"=3}] ~~~ execute @e[type=player,scores={"分队"=2},x=-5,y=176,z=32,dx=10,dy=22,dz=26] ~~~ effect @s mining_fatigue 10 1
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红陷阱等级"=3}] ~~~ execute @e[type=player,scores={"分队"=2},x=-5,y=176,z=32,dx=10,dy=22,dz=26] ~~~ effect @s blindness 10 0
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红陷阱等级"=1..3}] ~~~ execute @e[type=player,scores={"分队"=2},x=-5,y=176,z=32,dx=10,dy=22,dz=26] ~~~ scoreboard players set @e[type=armor_stand,name=main,scores={gameSTART=1}] "红陷阱等级" 0
#蓝队陷阱被触发
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝陷阱等级"=1..3}] ~~~ execute @e[type=player,scores={"分队"=1},x=-5,y=176,z=-58,dx=10,dy=22,dz=26] ~~~ title @a[scores={"分队"=2}] title §c§l队伍陷阱被触发
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝陷阱等级"=1..3}] ~~~ execute @e[type=player,scores={"分队"=1},x=-5,y=176,z=-58,dx=10,dy=22,dz=26] ~~~ tellraw @a[scores={"分队"=2}] { "rawtext" : [ { "text" : "§l起床战争 · 无限火力 >> §c§l有敌方玩家闯入了您的基地， 队伍陷阱已被触发" } ] }
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝陷阱等级"=1..3}] ~~~ execute @e[type=player,scores={"分队"=1},x=-5,y=176,z=-58,dx=10,dy=22,dz=26] ~~~ playsound mob.endermen.portal @a[scores={"分队"=2}]
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝陷阱等级"=1}] ~~~ execute @e[type=player,scores={"分队"=1},x=-5,y=176,z=-58,dx=10,dy=22,dz=26] ~~~ effect @s mining_fatigue 10 0
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝陷阱等级"=2}] ~~~ execute @e[type=player,scores={"分队"=1},x=-5,y=176,z=-58,dx=10,dy=22,dz=26] ~~~ effect @s mining_fatigue 10 1
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝陷阱等级"=3}] ~~~ execute @e[type=player,scores={"分队"=1},x=-5,y=176,z=-58,dx=10,dy=22,dz=26] ~~~ effect @s mining_fatigue 10 1
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝陷阱等级"=3}] ~~~ execute @e[type=player,scores={"分队"=1},x=-5,y=176,z=-58,dx=10,dy=22,dz=26] ~~~ effect @s blindness 10 0
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝陷阱等级"=1..3}] ~~~ execute @e[type=player,scores={"分队"=1},x=-5,y=176,z=-58,dx=10,dy=22,dz=26] ~~~ scoreboard players set @e[type=armor_stand,name=main,scores={gameSTART=1}] "蓝陷阱等级" 0
#红保护
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红保护等级"=1}] ~~~ effect @a[scores={"分队"=1}] resistance 2 0 true
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红保护等级"=2}] ~~~ effect @a[scores={"分队"=1}] resistance 2 1 true
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红保护等级"=3}] ~~~ effect @a[scores={"分队"=1}] resistance 2 2 true
#蓝保护
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝保护等级"=1}] ~~~ effect @a[scores={"分队"=2}] resistance 2 0 true
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝保护等级"=2}] ~~~ effect @a[scores={"分队"=2}] resistance 2 1 true
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝保护等级"=3}] ~~~ effect @a[scores={"分队"=2}] resistance 2 2 true
#红力量
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红锋利等级"=1}] ~~~ effect @a[scores={"分队"=1}] strength 2 0 true
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红锋利等级"=2}] ~~~ effect @a[scores={"分队"=1}] strength 2 1 true
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红锋利等级"=3}] ~~~ effect @a[scores={"分队"=1}] strength 2 2 true
#蓝力量
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝锋利等级"=1}] ~~~ effect @a[scores={"分队"=2}] strength 2 0 true
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝锋利等级"=2}] ~~~ effect @a[scores={"分队"=2}] strength 2 1 true
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝锋利等级"=3}] ~~~ effect @a[scores={"分队"=2}] strength 2 2 true













