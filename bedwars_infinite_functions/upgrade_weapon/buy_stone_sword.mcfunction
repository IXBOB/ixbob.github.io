# 升级到石剑
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_sword,scores={"剑等级"=1}] ~~~ clear @s wooden_sword
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_sword,scores={"剑等级"=1}] ~~~ give @s stone_sword 1 0 {"minecraft:item_lock":{"mode":"lock_in_inventory"},"minecraft:keep_on_death":{}}
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_sword,scores={"剑等级"=1}] ~~~ scoreboard players set @s "剑等级" 2
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_sword,scores={"剑等级"=2}] ~~~ tellraw @s { "rawtext" : [ { "text" : "§f§l商店 >> §7§l您当前 剑 等级为 2 §f(石剑)" } ] }
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_sword,scores={"剑等级"=2}] ~~~ tag @s remove up_sword
