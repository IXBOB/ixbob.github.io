# 升级到铁剑
execute @e[type=armor_stand,scores={gameSTART=1,"红锋利等级"=0},name=main] ~~~ execute @e[type=player,tag=up_sword,scores={"剑等级"=2,"分队"=1}] ~~~ clear @s stone_sword
execute @e[type=armor_stand,scores={gameSTART=1,"红锋利等级"=0},name=main] ~~~ execute @e[type=player,tag=up_sword,scores={"剑等级"=2,"分队"=1}] ~~~ give @s iron_sword 1 0 {"minecraft:item_lock":{"mode":"lock_in_inventory"},"minecraft:keep_on_death":{}}
execute @e[type=armor_stand,scores={gameSTART=1,"红锋利等级"=1},name=main] ~~~ execute @e[type=player,tag=up_sword,scores={"剑等级"=2,"分队"=1}] ~~~ clear @s bedwars:stone_sword_sharpnessI
execute @e[type=armor_stand,scores={gameSTART=1,"红锋利等级"=1},name=main] ~~~ execute @e[type=player,tag=up_sword,scores={"剑等级"=2,"分队"=1}] ~~~ give @s bedwars:iron_sword_sharpnessI 1 0 {"minecraft:item_lock":{"mode":"lock_in_inventory"},"minecraft:keep_on_death":{}}
execute @e[type=armor_stand,scores={gameSTART=1,"红锋利等级"=2},name=main] ~~~ execute @e[type=player,tag=up_sword,scores={"剑等级"=2,"分队"=1}] ~~~ clear @s bedwars:stone_sword_sharpnessII
execute @e[type=armor_stand,scores={gameSTART=1,"红锋利等级"=2},name=main] ~~~ execute @e[type=player,tag=up_sword,scores={"剑等级"=2,"分队"=1}] ~~~ give @s bedwars:iron_sword_sharpnessII 1 0 {"minecraft:item_lock":{"mode":"lock_in_inventory"},"minecraft:keep_on_death":{}}
execute @e[type=armor_stand,scores={gameSTART=1,"红锋利等级"=3},name=main] ~~~ execute @e[type=player,tag=up_sword,scores={"剑等级"=2,"分队"=1}] ~~~ clear @s bedwars:stone_sword_sharpnessIII
execute @e[type=armor_stand,scores={gameSTART=1,"红锋利等级"=3},name=main] ~~~ execute @e[type=player,tag=up_sword,scores={"剑等级"=2,"分队"=1}] ~~~ give @s bedwars:iron_sword_sharpnessIII 1 0 {"minecraft:item_lock":{"mode":"lock_in_inventory"},"minecraft:keep_on_death":{}}
execute @e[type=armor_stand,scores={gameSTART=1,"蓝锋利等级"=0},name=main] ~~~ execute @e[type=player,tag=up_sword,scores={"剑等级"=2,"分队"=2}] ~~~ clear @s stone_sword
execute @e[type=armor_stand,scores={gameSTART=1,"蓝锋利等级"=0},name=main] ~~~ execute @e[type=player,tag=up_sword,scores={"剑等级"=2,"分队"=2}] ~~~ give @s iron_sword 1 0 {"minecraft:item_lock":{"mode":"lock_in_inventory"},"minecraft:keep_on_death":{}}
execute @e[type=armor_stand,scores={gameSTART=1,"蓝锋利等级"=1},name=main] ~~~ execute @e[type=player,tag=up_sword,scores={"剑等级"=2,"分队"=2}] ~~~ clear @s bedwars:stone_sword_sharpnessI
execute @e[type=armor_stand,scores={gameSTART=1,"蓝锋利等级"=1},name=main] ~~~ execute @e[type=player,tag=up_sword,scores={"剑等级"=2,"分队"=2}] ~~~ give @s bedwars:iron_sword_sharpnessI 1 0 {"minecraft:item_lock":{"mode":"lock_in_inventory"},"minecraft:keep_on_death":{}}
execute @e[type=armor_stand,scores={gameSTART=1,"蓝锋利等级"=2},name=main] ~~~ execute @e[type=player,tag=up_sword,scores={"剑等级"=2,"分队"=2}] ~~~ clear @s bedwars:stone_sword_sharpnessII
execute @e[type=armor_stand,scores={gameSTART=1,"蓝锋利等级"=2},name=main] ~~~ execute @e[type=player,tag=up_sword,scores={"剑等级"=2,"分队"=2}] ~~~ give @s bedwars:iron_sword_sharpnessII 1 0 {"minecraft:item_lock":{"mode":"lock_in_inventory"},"minecraft:keep_on_death":{}}
execute @e[type=armor_stand,scores={gameSTART=1,"蓝锋利等级"=3},name=main] ~~~ execute @e[type=player,tag=up_sword,scores={"剑等级"=2,"分队"=2}] ~~~ clear @s bedwars:stone_sword_sharpnessIII
execute @e[type=armor_stand,scores={gameSTART=1,"蓝锋利等级"=3},name=main] ~~~ execute @e[type=player,tag=up_sword,scores={"剑等级"=2,"分队"=2}] ~~~ give @s bedwars:iron_sword_sharpnessIII 1 0 {"minecraft:item_lock":{"mode":"lock_in_inventory"},"minecraft:keep_on_death":{}}
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_sword,scores={"剑等级"=2}] ~~~ scoreboard players set @s "剑等级" 3
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_sword,scores={"剑等级"=3}] ~~~ tellraw @s { "rawtext" : [ { "text" : "§f§l商店 >> §7您当前 剑 等级为 3 §f(铁剑)" } ] }
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_sword,scores={"剑等级"=3}] ~~~ tag @s remove up_sword
