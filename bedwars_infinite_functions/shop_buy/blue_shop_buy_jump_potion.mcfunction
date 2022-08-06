clone ~1 ~-3 ~ ~1 ~-3 ~ -4 186 -50
execute @e[type=player,x=-4,y=186,z=-50,r=3,c=1,lm=80] ~~~ give @s bedwars:potion_bottle_jumpboostv 1 0 {"minecraft:keep_on_death":{}}
execute @e[type=player,x=-4,y=186,z=-50,r=3,c=1,lm=80] ~~~ tellraw @s { "rawtext" : [ { "text" : "§l商店 >> §a§l购买成功 §r§6跳跃II药水" } ] }
execute @e[type=player,x=-4,y=186,z=-50,r=3,c=1,lm=80] ~~~ playsound note.harp @s
execute @e[type=player,x=-4,y=186,z=-50,r=3,c=1,lm=80] ~~~ xp -80L @s