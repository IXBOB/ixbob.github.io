# 升级到铁斧
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_axe,scores={"斧等级"=2}] ~~~ clear @s stone_axe
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_axe,scores={"斧等级"=2}] ~~~ give @s iron_axe 1 0 {"minecraft:item_lock":{"mode":"lock_in_inventory"},"minecraft:keep_on_death":{}}
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_axe,scores={"斧等级"=2}] ~~~ scoreboard players set @s "斧等级" 3
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_axe,scores={"斧等级"=3}] ~~~ tellraw @s { "rawtext" : [ { "text" : "§f§l商店 >> §7您当前 斧 等级为 3 §f(铁斧)" } ] }
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_axe,scores={"斧等级"=3}] ~~~ tag @s remove up_axe
