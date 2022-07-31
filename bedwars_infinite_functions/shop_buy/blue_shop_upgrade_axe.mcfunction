clone ~-1 ~-3 ~ ~-1 ~-3 ~ 4 186 -51
execute @e[type=player,x=4,y=186,z=-51,r=3,c=1,scores={"斧等级"=..3},lm=50] ~~~ tag @s add up_axe
execute @e[type=player,x=4,y=186,z=-51,r=3,c=1,scores={"斧等级"=..3},lm=50] ~~~ tellraw @s { "rawtext" : [ { "text" : "§l商店 >> §e§l升级成功 §r§6斧⬆" } ] }
execute @e[type=player,x=4,y=186,z=-51,r=3,c=1,scores={"斧等级"=..3},lm=50] ~~~ playsound note.harp @s
execute @e[type=player,x=4,y=186,z=-51,r=3,c=1,scores={"斧等级"=..3},lm=50] ~~~ xp -50L @s