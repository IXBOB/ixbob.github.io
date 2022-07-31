clone 239 5 257 239 5 257 -4 186 52
execute @e[type=player,x=-4,y=186,z=52,r=3,c=1,scores={"镐等级"=..3},lm=50] ~~~ tag @s add up_pickaxe
execute @e[type=player,x=-4,y=186,z=52,r=3,c=1,scores={"镐等级"=..3},lm=50] ~~~ tellraw @s {"rawtext":[{"text":"§l商店 >> §e§l升级成功 §r§6镐⬆"}]}
execute @e[type=player,x=-4,y=186,z=52,r=3,c=1,scores={"镐等级"=..3},lm=50] ~~~ playsound note.harp @s
execute @e[type=player,x=-4,y=186,z=52,r=3,c=1,scores={"镐等级"=..3},lm=50] ~ ~ ~ xp -50L @s



