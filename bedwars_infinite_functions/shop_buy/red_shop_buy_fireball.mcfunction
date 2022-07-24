clone ~-1 ~-3 ~ ~-1 ~-3 ~ 4 186 52
execute @e[type=player,x=4,y=186,z=52,r=3,c=1] ~~~ xp -80L @s[lm=80]
execute @e[type=player,x=4,y=186,z=52,r=3,c=1] ~~~ give @s snowball 1 0 {"minecraft:item_lock":{"mode":"lock_in_inventory"},"minecraft:keep_on_death":{}}
execute @e[type=player,x=4,y=186,z=52,r=3,c=1] ~~~ tellraw @s { "rawtext" : [ { "text" : "§l商店 >> §a§l购买成功 §r§6火焰弹" } ] }
execute @e[type=player,x=4,y=186,z=52,r=3,c=1] ~~~ playsound note.harp @s