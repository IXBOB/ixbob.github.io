execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=1,"事件倒计时"=..0}] ~~~ tellraw @a { "rawtext" : [ { "text" : "§l起床战争 · 无限火力 >> §a§l绿宝石生成点已升为 II 级" } ] }
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=1,"事件倒计时"=..0}] ~~~ scoreboard players set @s "绿宝石等级" 2
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=1,"事件倒计时"=..0}] ~~~ scoreboard players reset "§a绿宝石生成点 II 级" "游戏显示"
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=1,"事件倒计时"=..0}] ~~~ scoreboard players set @s "事件倒计时" 122