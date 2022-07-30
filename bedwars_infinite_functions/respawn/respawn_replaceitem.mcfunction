#replaceitem剑等级1
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @a[x=-77,y=5,z=-67,r=3,scores={"分队"=1..2,"剑等级"=1}] ~~~ replaceitem entity @s slot.hotbar 0 wooden_sword 1 0 {"minecraft:item_lock":{"mode":"lock_in_inventory"},"minecraft:keep_on_death":{}}
#replaceitem镐等级1
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @a[x=-77,y=5,z=-67,r=3,scores={"分队"=1..2,"镐等级"=1}] ~~~ replaceitem entity @s slot.hotbar 1 wooden_pickaxe 1 0 {"minecraft:item_lock":{"mode":"lock_in_inventory"},"minecraft:keep_on_death":{}}
#replaceitem镐等级2
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @a[x=-77,y=5,z=-67,r=3,scores={"分队"=1..2,"镐等级"=2}] ~~~ replaceitem entity @s slot.hotbar 1 stone_pickaxe 1 0 {"minecraft:item_lock":{"mode":"lock_in_inventory"},"minecraft:keep_on_death":{}}
#replaceitem镐等级3
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @a[x=-77,y=5,z=-67,r=3,scores={"分队"=1..2,"镐等级"=3}] ~~~ replaceitem entity @s slot.hotbar 1 iron_pickaxe 1 0 {"minecraft:item_lock":{"mode":"lock_in_inventory"},"minecraft:keep_on_death":{}}
#replaceitem斧等级1
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @a[x=-77,y=5,z=-67,r=3,scores={"分队"=1..2,"斧等级"=1}] ~~~ replaceitem entity @s slot.hotbar 2 wooden_axe 1 0 {"minecraft:item_lock":{"mode":"lock_in_inventory"},"minecraft:keep_on_death":{}}
#replaceitem斧等级2
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @a[x=-77,y=5,z=-67,r=3,scores={"分队"=1..2,"斧等级"=2}] ~~~ replaceitem entity @s slot.hotbar 2 stone_axe 1 0 {"minecraft:item_lock":{"mode":"lock_in_inventory"},"minecraft:keep_on_death":{}}
#replaceitem斧等级3
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @a[x=-77,y=5,z=-67,r=3,scores={"分队"=1..2,"斧等级"=3}] ~~~ replaceitem entity @s slot.hotbar 2 iron_axe 1 0 {"minecraft:item_lock":{"mode":"lock_in_inventory"},"minecraft:keep_on_death":{}}
#replaceitem防具等1
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @a[x=-77,y=5,z=-67,r=3,scores={"分队"=1,"防具等级"=1..4}] ~~~ replaceitem entity @s slot.armor.head 0 bedwars:red_team_helmet 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"},"minecraft:keep_on_death":{}}
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @a[x=-77,y=5,z=-67,r=3,scores={"分队"=1,"防具等级"=1..4}] ~~~ replaceitem entity @s slot.armor.chest 0 bedwars:red_team_chestplate 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"},"minecraft:keep_on_death":{}}
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @a[x=-77,y=5,z=-67,r=3,scores={"分队"=1,"防具等级"=1}] ~~~ replaceitem entity @s slot.armor.legs 0 bedwars:red_team_leggings 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"},"minecraft:keep_on_death":{}}
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @a[x=-77,y=5,z=-67,r=3,scores={"分队"=1,"防具等级"=1}] ~~~ replaceitem entity @s slot.armor.feet 0 bedwars:red_team_boots 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"},"minecraft:keep_on_death":{}}
#replaceitem防具等1
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @a[x=-77,y=5,z=-67,r=3,scores={"分队"=2,"防具等级"=1..4}] ~~~ replaceitem entity @s slot.armor.head 0 bedwars:blue_team_helmet 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"},"minecraft:keep_on_death":{}}
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @a[x=-77,y=5,z=-67,r=3,scores={"分队"=2,"防具等级"=1..4}] ~~~ replaceitem entity @s slot.armor.chest 0 bedwars:blue_team_chestplate 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"},"minecraft:keep_on_death":{}}
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @a[x=-77,y=5,z=-67,r=3,scores={"分队"=2,"防具等级"=1}] ~~~ replaceitem entity @s slot.armor.legs 0 bedwars:blue_team_leggings 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"},"minecraft:keep_on_death":{}}
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @a[x=-77,y=5,z=-67,r=3,scores={"分队"=2,"防具等级"=1}] ~~~ replaceitem entity @s slot.armor.feet 0 bedwars:blue_team_boots 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"},"minecraft:keep_on_death":{}}
#replaceitem防具等2
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @a[x=-77,y=5,z=-67,r=3,scores={"分队"=1..2,"防具等级"=2}] ~~~ replaceitem entity @s slot.armor.legs 0 chainmail_leggings 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"},"minecraft:keep_on_death":{}}
#replaceitem防具等2
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @a[x=-77,y=5,z=-67,r=3,scores={"分队"=1..2,"防具等级"=2}] ~~~ replaceitem entity @s slot.armor.feet 0 chainmail_boots 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"},"minecraft:keep_on_death":{}}
#replaceitem防具等3
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @a[x=-77,y=5,z=-67,r=3,scores={"分队"=1..2,"防具等级"=3}] ~~~ replaceitem entity @s slot.armor.legs 0 iron_leggings 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"},"minecraft:keep_on_death":{}}
#replaceitem防具等3
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @a[x=-77,y=5,z=-67,r=3,scores={"分队"=1..2,"防具等级"=3}] ~~~ replaceitem entity @s slot.armor.feet 0 iron_boots 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"},"minecraft:keep_on_death":{}}
#effect.clear
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,x=-77,y=5,z=-67,r=3,scores={"重生时间"=..0,"分队"=1..2}] ~~~ effect @s clear
#无敌时间 -> 60
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,x=-77,y=5,z=-67,r=3,scores={"重生时间"=..0,"分队"=1..2}] ~~~ scoreboard players set @s "无敌时间" 60
#tellraw获得无敌时间
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,x=-77,y=5,z=-67,r=3,scores={"重生时间"=..0,"分队"=1..2}] ~~~ tellraw @s { "rawtext" : [ { "text" : "§f§l起床战争 · 无限火力 >> §b§l您获得了 3 秒无敌时间" } ] }
#重生TP红
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,x=-77,y=5,z=-67,r=3,scores={"重生时间"=..0,"分队"=1}] ~~~ tp @s 0 186 53 facing 0 182 0
#重生TP蓝
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,x=-77,y=5,z=-67,r=3,scores={"重生时间"=..0,"分队"=2}] ~~~ tp @s 0 186 -53 facing 0 182 0










































































