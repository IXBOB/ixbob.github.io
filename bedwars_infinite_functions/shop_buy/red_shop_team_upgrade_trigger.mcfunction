clone ~-1 ~-3 ~ ~-1 ~-3 ~ 4 186 57
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红陷阱等级"=..2}] ~~~ execute @e[type=player,x=4,y=186,z=57,r=3,c=1] ~~~ execute @s[scores={"分队"=1},lm=100] ~~~ tag @s add upgrade_red_trigger
execute @a[tag=upgrade_red_trigger] ~~~ tellraw @s { "rawtext" : [ { "text" : "§l商店 >> §d§l升级成功 §r§6团队·陷阱⬆" } ] }
execute @a[tag=upgrade_red_trigger] ~~~ tellraw @a[scores={"分队"=1}] { "rawtext" : [ { "text" : "§l商店 · 队伍升级 >> §e " } ,{ "selector" :  "@e[type=player,x=4,y=186,z=57,r=3,c=1,scores={分队=1}]"},{ "text" : "§f§l 为您的队伍升级了 陷阱" }] }
execute @a[tag=upgrade_red_trigger] ~~~ playsound note.harp @s
execute @a[tag=upgrade_red_trigger] ~~~ xp -100L @s
execute @a[tag=upgrade_red_trigger] ~~~ scoreboard players add @e[type=armor_stand,scores={gameSTART=1},name=main] "红陷阱等级" 1
tag @a remove upgrade_red_trigger