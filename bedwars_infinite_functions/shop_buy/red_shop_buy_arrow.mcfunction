clone 239 5 253 239 5 253 -4 186 48
execute @e[type=player,x=-4,y=186,z=48,r=3,c=1] ~~~ xp -30L @s[lm=30]
execute @e[type=player,x=-4,y=186,z=48,r=3,c=1] ~~~ give @s arrow 8 0 {"minecraft:item_lock":{"mode":"lock_in_inventory"},"minecraft:keep_on_death":{}}
execute @e[type=player,x=-4,y=186,z=48,r=3,c=1] ~~~ tellraw @s { "rawtext" : [ { "text" : "§l商店 >> §a§l购买成功 §r§6箭x8" } ] }
execute @e[type=player,x=-4,y=186,z=48,r=3,c=1] ~~~ playsound note.harp @s





