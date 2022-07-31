clone 239 5 259 239 5 259 -4 186 54
execute @e[type=player,x=-4,y=186,z=54,r=3,c=1,lm=36] ~~~ give @s planks 16 0 {"minecraft:keep_on_death":{}}
execute @e[type=player,x=-4,y=186,z=54,r=3,c=1,lm=36] ~~~ tellraw @s { "rawtext" : [ { "text" : "§l商店 >> §a§l购买成功 §r§6木板x16" } ] }
execute @e[type=player,x=-4,y=186,z=54,r=3,c=1,lm=36] ~~~ playsound note.harp @s
execute @e[type=player,x=-4,y=186,z=54,r=3,c=1,lm=36] ~~~ xp -36L @s