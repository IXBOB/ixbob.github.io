clone ~1 ~-3 ~ ~1 ~-3 ~ -4 186 -51
execute @e[type=player,x=-4,y=186,z=-51,r=3,c=1] ~~~ xp -100L @s[lm=100]
execute @e[type=player,x=-4,y=186,z=-51,r=3,c=1] ~~~ give @s experience_bottle 1 0
execute @e[type=player,x=-4,y=186,z=-51,r=3,c=1] ~~~ tellraw @s { "rawtext" : [ { "text" : "§l商店 >> §a§l购买成功 §r§6经验瓶 (100级)" } ] }
execute @e[type=player,x=-4,y=186,z=-51,r=3,c=1] ~~~ playsound note.harp @s