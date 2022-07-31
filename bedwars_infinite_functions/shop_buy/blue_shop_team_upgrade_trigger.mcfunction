clone ~1 ~-3 ~ ~1 ~-3 ~ -4 186 -57
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝陷阱等级"=..2}] ~~~ execute @e[type=player,x=-4,y=186,z=-57,r=3,c=1] ~~~ execute @s[scores={"分队"=2},lm=100] ~~~ tag @s add upgrade_blue_trigger
execute @a[tag=upgrade_blue_trigger] ~~~ tellraw @s { "rawtext" : [ { "text" : "§l商店 >> §d§l升级成功 §r§6团队·陷阱⬆" } ] }
execute @a[tag=upgrade_blue_trigger] ~~~ tellraw @a[scores={"分队"=2}] { "rawtext" : [ { "text" : "§l商店 · 队伍升级 >> §e " } ,{ "selector" :  "@e[type=player,x=-4,y=186,z=-57,r=3,c=1,scores={分队=2}]"},{ "text" : "§f§l 为您的队伍升级了 陷阱" }] }
execute @a[tag=upgrade_blue_trigger] ~~~ playsound note.harp @s
execute @a[tag=upgrade_blue_trigger] ~~~ xp -100L @s
execute @a[tag=upgrade_blue_trigger] ~~~ scoreboard players add @e[type=armor_stand,scores={gameSTART=1},name=main] "蓝陷阱等级" 1
tag @a remove upgrade_blue_trigger







