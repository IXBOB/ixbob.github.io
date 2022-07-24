clone 239 5 261 239 5 261 -4 186 56
execute @e[type=player,x=-4,y=186,z=56,r=3,c=1] ~~~ xp -20L @s[lm=20]
execute @e[type=player,x=-4,y=186,z=56,r=3,c=1] ~~~ give @s stained_glass 4 14 {"minecraft:keep_on_death":{}}
execute @e[type=player,x=-4,y=186,z=56,r=3,c=1] ~~~ tellraw @s { "rawtext" : [ { "text" : "§l商店 >> §a§l购买成功 §r§6防爆玻璃x4" } ] }
execute @e[type=player,x=-4,y=186,z=56,r=3,c=1] ~~~ playsound note.harp @s