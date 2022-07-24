# 升级到石斧
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_axe,scores={"斧等级"=1}] ~~~ clear @s wooden_axe
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_axe,scores={"斧等级"=1}] ~~~ give @s stone_axe 1 0 {"minecraft:item_lock":{"mode":"lock_in_inventory"},"minecraft:keep_on_death":{}}
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_axe,scores={"斧等级"=1}] ~~~ scoreboard players set @s "斧等级" 2
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_axe,scores={"斧等级"=2}] ~~~ tellraw @s { "rawtext" : [ { "text" : "§f§l商店 >> §7§l您当前 斧 等级为 2 §f(石斧)" } ] }
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_axe,scores={"斧等级"=2}] ~~~ tag @s remove up_axe
