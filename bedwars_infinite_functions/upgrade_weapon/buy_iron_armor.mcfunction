# 升级到铁护甲
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_armor,scores={"防具等级"=2}] ~~~ replaceitem entity @s slot.armor.legs 0 iron_leggings 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"},"minecraft:keep_on_death":{}}
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_armor,scores={"防具等级"=2}] ~~~ replaceitem entity @s slot.armor.feet 0 iron_boots 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"},"minecraft:keep_on_death":{}}
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_armor,scores={"防具等级"=2}] ~~~ scoreboard players set @s "防具等级" 3
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_armor,scores={"防具等级"=3}] ~~~ tellraw @s { "rawtext" : [ { "text" : "§f§l商店 >> §7您当前 防具 等级为 3 §f(铁防具)" } ] }
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_armor,scores={"防具等级"=3}] ~~~ tag @s remove up_armor
