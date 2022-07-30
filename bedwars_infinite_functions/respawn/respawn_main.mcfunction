execute @a[x=-67,y=5,z=-67,r=3] ~~~ function respawn/respawn_degrade
execute @a[x=-77,y=5,z=-67,r=3] ~~~ function respawn/respawn_replaceitem
#重生时间 -1
scoreboard players add @e[type=player,x=-67,y=5,z=-67,r=3] "重生时间" -1
#重生时间titleraw
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,x=-67,y=5,z=-67,r=3,scores={"重生时间"=80}] ~~~ titleraw @s actionbar { "rawtext" : [ { "text" : "§7■§c■■■■您将在 4 秒后重生■■■■§7■" } ] }
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,x=-67,y=5,z=-67,r=3,scores={"重生时间"=60}] ~~~ titleraw @s actionbar { "rawtext" : [ { "text" : "§7■■§c■■■您将在 3 秒后重生■■■§7■■" } ] }
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,x=-67,y=5,z=-67,r=3,scores={"重生时间"=40}] ~~~ titleraw @s actionbar { "rawtext" : [ { "text" : "§7■■■§c■■您将在 2 秒后重生■■§7■■■" } ] }
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,x=-67,y=5,z=-67,r=3,scores={"重生时间"=20}] ~~~ titleraw @s actionbar { "rawtext" : [ { "text" : "§7■■■■§c■您将在 1 秒后重生■§7■■■■" } ] }
#clear
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ clear @e[type=player,x=-67,y=5,z=-67,r=3]
#重生TP下一重生点
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,x=-67,y=5,z=-67,r=3,scores={"重生时间"=..0,"分队"=1..2}] ~~~ tp @s -77 5 -67
#重生时隐身
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,x=-67,y=5,z=-67,r=3,scores={"重生时间"=0..,"分队"=1..2}] ~~~ effect @s invisibility 6 255 true
#重生时虚弱
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,x=-67,y=5,z=-67,r=3,scores={"重生时间"=0..,"分队"=1..2}] ~~~ effect @s weakness 6 255 true
#重生时删除已掉灵魂tag
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,x=-67,y=5,z=-67,r=3,scores={"重生时间"=0..,"分队"=1..2}] ~~~ tag @s remove 已掉灵魂
#游戏结束传送复活中红队到基地
execute @e[type=armor_stand,scores={gameSTART=2}] ~~~ execute @e[type=player,x=-67,y=5,z=-67,r=3,scores={"分队"=1}] ~~~ tp @s 0 186 53 facing 0 182 0
#游戏结束传送复活中蓝队到基地
execute @e[type=armor_stand,scores={gameSTART=2}] ~~~ execute @e[type=player,x=-67,y=5,z=-67,r=3,scores={"分队"=2}] ~~~ tp @s 0 186 -53 facing 0 182 0