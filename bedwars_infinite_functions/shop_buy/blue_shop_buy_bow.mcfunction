clone ~-1 ~-3 ~ ~-1 ~-3 ~ 4 186 -49
execute @e[type=player,x=4,y=186,z=-49,r=3,c=1] ~~~ xp -200L @s[lm=200]
execute @e[type=player,x=4,y=186,z=-49,r=3,c=1] ~~~ give @s bow 1 0 {"minecraft:item_lock":{"mode":"lock_in_inventory"},"minecraft:keep_on_death":{}}
execute @e[type=player,x=4,y=186,z=-49,r=3,c=1] ~~~ tellraw @s { "rawtext" : [ { "text" : "§l商店 >> §a§l购买成功 §r§6弓" } ] }
execute @e[type=player,x=4,y=186,z=-49,r=3,c=1] ~~~ playsound note.harp @s
