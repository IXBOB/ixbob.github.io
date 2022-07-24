clone ~-1 ~-3 ~ ~-1 ~-3 ~ 4 186 54
execute @e[type=player,x=4,y=186,z=54,r=3,c=1] ~~~ xp -30L @s[lm=30]
execute @e[type=player,x=4,y=186,z=54,r=3,c=1] ~~~ give @s golden_apple 1 0 {"minecraft:keep_on_death":{}}
execute @e[type=player,x=4,y=186,z=54,r=3,c=1] ~~~ tellraw @s { "rawtext" : [ { "text" : "§l商店 >> §a§l购买成功 §r§6金苹果" } ] }
execute @e[type=player,x=4,y=186,z=54,r=3,c=1] ~~~ playsound note.harp @s
