clone ~-1 ~-3 ~ ~-1 ~-3 ~ 4 186 -48
execute @e[type=player,x=4,y=186,z=-48,r=3,c=1,lm=30] ~~~ give @s arrow 8 0 {"minecraft:item_lock":{"mode":"lock_in_inventory"},"minecraft:keep_on_death":{}}
execute @e[type=player,x=4,y=186,z=-48,r=3,c=1,lm=30] ~~~ tellraw @s { "rawtext" : [ { "text" : "§l商店 >> §a§l购买成功 §r§6箭x8" } ] }
execute @e[type=player,x=4,y=186,z=-48,r=3,c=1,lm=30] ~~~ playsound note.harp @s
execute @e[type=player,x=4,y=186,z=-48,r=3,c=1,lm=30] ~~~ xp -30L @s
