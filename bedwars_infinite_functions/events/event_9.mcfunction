execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=8,"事件倒计时"=129}] ~~~ scoreboard players set §4平局警告 "游戏显示" 120
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=8,"事件倒计时"=129}] ~~~ scoreboard players set @s "显示事件" 9
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=9,"事件倒计时"=129}] ~~~ scoreboard players set @s "事件倒计时" 120
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=9,"事件倒计时"=..0}] ~~~ tellraw @a { "rawtext" : [ { "text" : "§l起床战争 · 无限火力 >> §4§l4 分钟后游戏平局" } ] }
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=9,"事件倒计时"=..0}] ~~~ scoreboard players reset "§4平局警告" "游戏显示"
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=9,"事件倒计时"=..0}] ~~~ scoreboard players set @s "事件倒计时" 130