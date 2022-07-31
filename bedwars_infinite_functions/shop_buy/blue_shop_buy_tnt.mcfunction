clone ~1 ~-3 ~ ~1 ~-3 ~ -4 186 -53
execute @e[type=player,x=-4,y=186,z=-53,r=3,c=1,lm=100] ~~~ give @s tnt 1 0 {"minecraft:item_lock":{"mode":"lock_in_inventory"},"minecraft:keep_on_death":{}}
execute @e[type=player,x=-4,y=186,z=-53,r=3,c=1,lm=100] ~~~ tellraw @s { "rawtext" : [ { "text" : "§l商店 >> §a§l购买成功 §r§6炸药" } ] }
execute @e[type=player,x=-4,y=186,z=-53,r=3,c=1,lm=100] ~~~ playsound note.harp @s
execute @e[type=player,x=-4,y=186,z=-53,r=3,c=1,lm=100] ~~~ xp -100L @s