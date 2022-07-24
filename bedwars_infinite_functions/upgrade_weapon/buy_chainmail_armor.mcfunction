# 升级到锁链护甲
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_armor,scores={"防具等级"=1}] ~~~ replaceitem entity @s slot.armor.legs 0 chainmail_leggings 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"},"minecraft:keep_on_death":{}}
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_armor,scores={"防具等级"=1}] ~~~ replaceitem entity @s slot.armor.feet 0 chainmail_boots 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"},"minecraft:keep_on_death":{}}
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_armor,scores={"防具等级"=1}] ~~~ scoreboard players set @s "防具等级" 2
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_armor,scores={"防具等级"=2}] ~~~ tellraw @s { "rawtext" : [ { "text" : "§f§l商店 >> §7§l您当前 防具 等级为 2 §f(锁链防具)" } ] }
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_armor,scores={"防具等级"=2}] ~~~ tag @s remove up_armor
