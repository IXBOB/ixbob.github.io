# 升级到钻石剑
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_sword,scores={"剑等级"=3}] ~~~ clear @s iron_sword
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_sword,scores={"剑等级"=3}] ~~~ give @s diamond_sword 1 0 {"minecraft:item_lock":{"mode":"lock_in_inventory"},"minecraft:keep_on_death":{}}
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_sword,scores={"剑等级"=3}] ~~~ scoreboard players set @s "剑等级" 4
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_sword,scores={"剑等级"=4}] ~~~ tellraw @s { "rawtext" : [ { "text" : "§f§l商店 >> §7您当前 剑 等级为 4 §6<满级> §f(钻石剑)" } ] }
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_sword,scores={"剑等级"=4}] ~~~ tag @s remove up_sword
