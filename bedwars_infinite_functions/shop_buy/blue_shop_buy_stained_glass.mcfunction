clone 242 5 254 242 5 254 4 186 -56
execute @e[type=player,x=4,y=186,z=-56,r=3,c=1,lm=20] ~~~ give @s stained_glass 4 11 {"minecraft:keep_on_death":{}}
execute @e[type=player,x=4,y=186,z=-56,r=3,c=1,lm=20] ~~~ tellraw @s { "rawtext" : [ { "text" : "§l商店 >> §a§l购买成功 §r§6防爆玻璃x4" } ] }
execute @e[type=player,x=4,y=186,z=-56,r=3,c=1,lm=20] ~~~ playsound note.harp @s
execute @e[type=player,x=4,y=186,z=-56,r=3,c=1,lm=20] ~~~ xp -20L @s