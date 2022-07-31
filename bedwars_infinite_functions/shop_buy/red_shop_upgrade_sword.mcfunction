clone 239 5 258 239 5 258 -4 186 53
execute @e[type=player,x=-4,y=186,z=53,r=3,c=1,scores={"剑等级"=..3},lm=50] ~~~ tag @s add up_sword
execute @e[type=player,x=-4,y=186,z=53,r=3,c=1,scores={"剑等级"=..3},lm=50] ~~~ tellraw @s {"rawtext":[{"text":"§l商店 >> §e§l升级成功 §r§6剑⬆"}]}
execute @e[type=player,x=-4,y=186,z=53,r=3,c=1,scores={"剑等级"=..3},lm=50] ~~~ playsound note.harp @s
execute @e[type=player,x=-4,y=186,z=53,r=3,c=1,scores={"剑等级"=..3},lm=50] ~ ~ ~ xp -50L @s



