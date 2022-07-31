clone ~-1 ~-3 ~ ~-1 ~-3 ~ 4 186 56
execute @e[type=player,x=4,y=186,z=56,r=3,c=1,lm=300] ~~~ scoreboard players add @e[type=armor_stand,scores={gameSTART=1},name=main] "红保护等级" 1
execute @e[type=player,x=4,y=186,z=56,r=3,c=1,lm=300] ~~~ tellraw @s { "rawtext" : [ { "text" : "§l商店 >> §d§l升级成功 §r§6团队·抗性提升⬆" } ] }
execute @e[type=player,x=4,y=186,z=56,r=3,c=1,lm=300] ~~~ tellraw @a[scores={"分队"=1}] { "rawtext" : [ { "text" : "§l商店 · 队伍升级 >> §e " } ,{ "selector" :  "@e[type=player,x=4,y=186,z=56,r=3,c=1,scores={分队=1}]"},{ "text" : "§f§l 为您的队伍升级了 抗性提升" }] }
execute @e[type=player,x=4,y=186,z=56,r=3,c=1,lm=300] ~~~ playsound note.harp @s
execute @e[type=player,x=4,y=186,z=56,r=3,c=1,scores={"分队"=1},lm=300] ~~~ xp -300L @s
