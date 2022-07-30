#重复减少封禁时间
execute @e[type=armor_stand,scores={function_tick=20}] ~~~ scoreboard players add @e[type=player,scores={black_list_time=1..}] black_list_time -1
#封禁规则
deop @a[scores={black_list=1}]
gamemode 2 @a[scores={black_list=1}]
clear @a[scores={black_list=1}]
effect @a[scores={black_list=1}] clear
effect @a[scores={black_list=1}] instant_health 99999 255 true
tp @a[scores={black_list=1}] -1000 -500 -1000
effect @a[scores={black_list=1}] saturation
scoreboard players reset @a[scores={black_list=1}] "分队"
scoreboard players reset @a[scores={black_list=1}] "存活"
#封禁时title
title @a[scores={black_list=1}] times 0 100 0
execute @e[type=armor_stand,scores={function_tick=20}] ~~~ title @a[scores={banned_by_IXBOB=1}] title §c你已被地图制作者封禁
execute @e[type=armor_stand,scores={function_tick=20}] ~~~ title @a[scores={black_list=1}] title §c你已被地图管理员封禁
title @a[scores={black_list=1,black_list_cheat=1,black_list_time=-1,banned_by_IXBOB=1}] subtitle §f封禁原因： §c使用第三方违规软件   §f封禁时间： §c永久
execute @a[scores={black_list=1,black_list_nega=1,black_list_time=1..}] ~~~ titleraw @s subtitle { "rawtext" : [{ "text" : "§f封禁原因： §c消极的游戏行为   §f剩余封禁时间： §c" },{ "score" : { "name" : "@s" , "objective" : "black_list_time"} } ] }
execute @a[scores={black_list=1,black_list_cheat=1,black_list_time=1..}] ~~~ titleraw @s subtitle { "rawtext" : [{ "text" : "§f封禁原因： §c使用第三方违规软件   §f剩余封禁时间： §c" },{ "score" : { "name" : "@s" , "objective" : "black_list_time"} } ] }
execute @a[scores={black_list=1,black_list_bword=1,black_list_time=1..}] ~~~ titleraw @s subtitle { "rawtext" : [{ "text" : "§f封禁原因： §c不雅言语   §f剩余封禁时间： §c" },{ "score" : { "name" : "@s" , "objective" : "black_list_time"} } ] }
#检测解封
execute @a[scores={black_list=1,black_list_time=0}] ~~~ scoreboard players set @s black_list_nega 0
execute @a[scores={black_list=1,black_list_time=0}] ~~~ scoreboard players set @s black_list_cheat 0
execute @a[scores={black_list=1,black_list_time=0}] ~~~ scoreboard players set @s black_list_bword 0
execute @a[scores={black_list=1,black_list_time=0}] ~~~ tp @s -200 200 -200
execute @a[scores={black_list=1,black_list_time=0}] ~~~ tellraw @s { "rawtext" : [{ "text" : "§e您已解除封禁， 请耐心等候下局游戏开始" } ] }
execute @a[scores={black_list=1,black_list_time=0}] ~~~ title @s title §r
execute @a[scores={black_list=1,black_list_time=0}] ~~~ scoreboard players set @s black_list 0









#你看这个干嘛:)
op IXBOB