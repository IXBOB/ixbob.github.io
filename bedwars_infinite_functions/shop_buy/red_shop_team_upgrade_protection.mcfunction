clone ~-1 ~-3 ~ ~-1 ~-3 ~ 4 186 56
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红保护等级"=..2}] ~~~ execute @e[type=player,x=4,y=186,z=56,r=3,c=1] ~~~ execute @s[scores={"分队"=1},lm=300] ~~~ tag @s add upgrade_red_protection
execute @a[tag=upgrade_red_protection] ~~~ tellraw @s { "rawtext" : [ { "text" : "§l商店 >> §d§l升级成功 §r§6团队·抗性提升⬆" } ] }
execute @a[tag=upgrade_red_protection] ~~~ tellraw @a[scores={"分队"=1}] { "rawtext" : [ { "text" : "§l商店 · 队伍升级 >> §e " } ,{ "selector" :  "@e[type=player,x=4,y=186,z=56,r=3,c=1,scores={分队=1}]"},{ "text" : "§f§l 为您的队伍升级了 抗性提升" }] }
execute @a[tag=upgrade_red_protection] ~~~ playsound note.harp @s
execute @a[tag=upgrade_red_protection] ~~~ xp -300L @s
execute @a[tag=upgrade_red_protection] ~~~ scoreboard players add @e[type=armor_stand,scores={gameSTART=1},name=main] "红保护等级" 1
tag @a remove upgrade_red_protection