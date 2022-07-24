clone ~1 ~-3 ~ ~1 ~-3 ~ -4 186 -55
execute @e[type=player,x=-4,y=186,z=-55,r=3,c=1,scores={"分队"=2}] ~~~ xp -400L @s[lm=400]
execute @e[type=player,x=-4,y=186,z=-55,r=3,c=1] ~~~ scoreboard players add @e[type=armor_stand,scores={gameSTART=1},name=main] "蓝锋利等级" 1
execute @e[type=player,x=-4,y=186,z=-55,r=3,c=1] ~~~ tellraw @s { "rawtext" : [ { "text" : "§l商店 >> §d§l升级成功 §r§6团队·力量⬆" } ] }
tellraw @a[scores={"分队"=2}] { "rawtext" : [ { "text" : "§l商店 · 队伍升级 >> §e " } ,{ "selector" :  "@e[type=player,x=-4,y=186,z=-55,r=3,c=1,scores={分队=2}]"},{ "text" : "§f§l 为您的队伍升级了 力量" }] }
execute @e[type=player,x=-4,y=186,z=-55,r=3,c=1] ~~~ playsound note.harp @s