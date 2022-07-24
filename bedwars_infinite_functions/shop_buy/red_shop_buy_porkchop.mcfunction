clone ~-1 ~-3 ~ ~-1 ~-3 ~ 4 186 48
execute @e[type=player,x=4,y=186,z=48,r=3,c=1] ~~~ xp -4L @s[lm=4]
execute @e[type=player,x=4,y=186,z=48,r=3,c=1] ~~~ give @s cooked_porkchop 4 0 {"minecraft:keep_on_death":{}}
execute @e[type=player,x=4,y=186,z=48,r=3,c=1] ~~~ tellraw @s { "rawtext" : [ { "text" : "§l商店 >> §a§l购买成功 §r§6猪排x4" } ] }
execute @e[type=player,x=4,y=186,z=48,r=3,c=1] ~~~ playsound note.harp @s
