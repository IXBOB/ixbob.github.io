tellraw @a { "rawtext" : [ { "text" : "§a§l▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀" } ] }
tellraw @a { "rawtext" : [ { "text" : "§l                     起床战争       \n                  §r§f胜利队伍： §b蓝队\n" } ] }
execute @e[type=armor_stand,name=main] ~~~ tellraw @a { "rawtext" : [ { "text" : "胜利玩家： §b" },{ "selector" :  "@a[scores={分队=2}]"},{ "text" : "\n\n§r§f                    游戏时间: §7" },{ "score" : { "name" : "@s" , "objective" : "game.time.min.2"}},{ "score" : { "name" : "@s" , "objective" : "game.time.min.1"}},{ "text" : " : " },{ "score" : { "name" : "@s" , "objective" : "game.time.sec.2"}},{ "score" : { "name" : "@s" , "objective" : "game.time.sec.1"}},{"text":"\n "} ] }
scoreboard players set @e[type=armor_stand,name=main] kill.highest 0
scoreboard players reset * kill.cache
tag @e remove kill.FIRST
tag @e remove kill.SECOND
tag @e remove kill.THIRD
execute @a[scores={"分队"=1..2}] ~~~ scoreboard players operation @s kill.cache = @s 击杀数
scoreboard players operation @e[type=armor_stand,name=main] kill.highest > @a[scores={"分队"=1..2}] 击杀数
scoreboard players operation @a[scores={"分队"=1..2}] kill.cache -= @e[type=armor_stand,name=main] kill.highest
tag @a[scores={"分队"=1..2,kill.cache=0}] add kill.FIRST
tellraw @a {"rawtext":[{"text":"     §c§l击杀数第一名 §7"},{"selector":"@a[scores={分队=1..2},tag=kill.FIRST]"},{"text":" - "},{ "score" : { "name" : "@s" , "objective" : "击杀数"}}]}
execute @a[scores={"分队"=1..2},tag=!kill.FIRST] ~~~ scoreboard players operation @s kill.cache = @s 击杀数
scoreboard players set @e[name=main] kill.highest 0
scoreboard players operation @e[type=armor_stand,name=main] kill.highest > @a[scores={"分队"=1..2},tag=!kill.FIRST] 击杀数
scoreboard players operation @a[scores={"分队"=1..2},tag=!kill.FIRST] kill.cache -= @e[type=armor_stand,name=main] kill.highest
tag @a[scores={"分队"=1..2,kill.cache=0},tag=!kill.FIRST] add kill.SECOND
tellraw @a {"rawtext":[{"text":"     §6§l击杀数第二名 §7"},{"selector":"@s"},{"text":" - "},{ "score" : { "name" : "@a[scores={分队=1..2},tag=kill.SECOND]" , "objective" : "击杀数"}}]}
execute @a[scores={"分队"=1..2},tag=!kill.FIRST,tag=!kill.SECOND] ~~~ scoreboard players operation @s kill.cache = @s 击杀数
scoreboard players set @e[name=main] kill.highest 0
scoreboard players operation @e[type=armor_stand,name=main] kill.highest > @a[scores={"分队"=1..2},tag=!kill.FIRST,tag=!kill.SECOND] 击杀数
scoreboard players operation @a[scores={"分队"=1..2},tag=!kill.FIRST,tag=!kill.SECOND] kill.cache -= @e[type=armor_stand,name=main] kill.highest
tag @a[scores={"分队"=1..2,kill.cache=0},tag=!kill.FIRST,tag=!kill.SECOND] add kill.THIRD
tellraw @a {"rawtext":[{"text":"     §e§l击杀数第三名 §7"},{"selector":"@s"},{"text":" - "},{ "score" : { "name" : "@a[scores={分队=1..2},tag=kill.THIRD]" , "objective" : "击杀数"}}]}
tellraw @a { "rawtext" : [ { "text" : "\n§a§l▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀" } ] }