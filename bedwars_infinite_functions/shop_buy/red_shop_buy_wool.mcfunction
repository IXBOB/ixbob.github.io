clone 239 5 262 239 5 262 -4 186 57
execute @e[type=player,x=-4,y=186,z=57,r=3,c=1,lm=8] ~~~ tag @s add buy_wool_success
execute @e[type=player,x=-4,y=186,z=57,r=3,c=1,lm=8] ~~~ tellraw @s { "rawtext" : [ { "text" : "§l商店 >> §a§l购买成功 §r§6羊毛x16" } ] }
execute @e[type=player,x=-4,y=186,z=57,r=3,c=1,lm=8] ~~~ playsound note.harp @s
execute @e[type=player,x=-4,y=186,z=57,r=3,c=1,lm=8] ~~~ xp -8L @s