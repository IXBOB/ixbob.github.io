clone ~-1 ~-3 ~ ~-1 ~-3 ~ 4 186 55
execute @e[type=player,x=4,y=186,z=55,r=3,c=1,scores={"分队"=1}] ~~~ xp -400L @s[lm=400]
execute @e[type=player,x=4,y=186,z=55,r=3,c=1] ~~~ scoreboard players add @e[type=armor_stand,scores={gameSTART=1},name=main] "红锋利等级" 1
clone 239 5 260 239 5 260 -4 186 55
execute @e[type=player,x=-4,y=186,z=55,r=3,c=1] ~~~ give @s end_stone 16 0 {"minecraft:keep_on_death":{}}
execute @e[type=player,x=4,y=186,z=55,r=3,c=1] ~~~ playsound note.harp @s