clone 242 5 253 242 5 253 4 186 -57
execute @e[type=player,x=4,y=186,z=-57,r=3,c=1] ~~~ xp -8L @s[lm=8,scores={"分队"=1..2}]
execute @e[type=player,x=4,y=186,z=-57,r=3,c=1] ~~~ tag @s add buy_wool_success
execute @e[type=player,x=4,y=186,z=-57,r=3,c=1] ~~~ tellraw @s { "rawtext" : [ { "text" : "§l商店 >> §a§l购买成功 §r§6羊毛x16" } ] }
execute @e[type=player,x=4,y=186,z=-57,r=3,c=1] ~~~ playsound note.harp @s
