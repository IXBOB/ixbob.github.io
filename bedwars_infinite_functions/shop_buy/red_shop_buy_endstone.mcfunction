clone 239 5 260 239 5 260 -4 186 55
execute @e[type=player,x=-4,y=186,z=55,r=3,c=1] ~~~ xp -36L @s[lm=36]
execute @e[type=player,x=-4,y=186,z=55,r=3,c=1] ~~~ give @s end_stone 16 0 {"minecraft:keep_on_death":{}}
execute @e[type=player,x=-4,y=186,z=55,r=3,c=1] ~~~ tellraw @s { "rawtext" : [ { "text" : "§l商店 >> §a§l购买成功 §r§6末地石x16" } ] }
execute @e[type=player,x=-4,y=186,z=55,r=3,c=1] ~~~ playsound note.harp @s