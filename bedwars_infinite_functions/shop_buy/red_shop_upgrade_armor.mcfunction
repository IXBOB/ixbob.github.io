clone 239 5 255 239 5 255 -4 186 50
execute @e[type=player,x=-4,y=186,z=50,r=3,c=1,scores={"防具等级"=..3}] ~ ~ ~ xp -100L @s[lm=100]
execute @e[type=player,x=-4,y=186,z=50,r=3,c=1] ~~~ tag @s add up_armor
execute @e[type=player,x=-4,y=186,z=50,r=3,c=1] ~~~ tellraw @s {"rawtext":[{"text":"§l商店 >> §e§l升级成功"}]}
execute @e[type=player,x=-4,y=186,z=50,r=3,c=1] ~~~ playsound note.harp @s



