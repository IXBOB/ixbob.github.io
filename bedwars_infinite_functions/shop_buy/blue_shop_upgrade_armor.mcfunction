clone ~-1 ~-3 ~ ~-1 ~-3 ~ 4 186 -50
execute @e[type=player,x=4,y=186,z=-50,r=3,c=1,lm=100] ~~~ tag @s add up_armor
execute @e[type=player,x=4,y=186,z=-50,r=3,c=1,lm=100] ~~~ tellraw @s { "rawtext" : [ { "text" : "§l商店 >> §e§l升级成功 §r§6防具⬆" } ] }
execute @e[type=player,x=4,y=186,z=-50,r=3,c=1,lm=100] ~~~ playsound note.harp @s
execute @e[type=player,x=4,y=186,z=-50,r=3,c=1,scores={"防具等级"=..3},lm=100] ~~~ xp -100L @s