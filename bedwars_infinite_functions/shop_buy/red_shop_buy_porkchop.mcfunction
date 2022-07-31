clone ~-1 ~-3 ~ ~-1 ~-3 ~ 4 186 48
execute @e[type=player,x=4,y=186,z=48,r=3,c=1,lm=4] ~~~ give @s cooked_porkchop 4 0 {"minecraft:keep_on_death":{}}
execute @e[type=player,x=4,y=186,z=48,r=3,c=1,lm=4] ~~~ tellraw @s { "rawtext" : [ { "text" : "§l商店 >> §a§l购买成功 §r§6猪排x4" } ] }
execute @e[type=player,x=4,y=186,z=48,r=3,c=1,lm=4] ~~~ playsound note.harp @s
execute @e[type=player,x=4,y=186,z=48,r=3,c=1,lm=4] ~~~ xp -4L @s