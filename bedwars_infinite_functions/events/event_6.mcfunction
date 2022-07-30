execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=5,"事件倒计时"=126}] ~~~ scoreboard players set §d刷新手持末影珍珠猪灵 "游戏显示" 120
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=5,"事件倒计时"=126}] ~~~ scoreboard players set @s "显示事件" 6
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=6,"事件倒计时"=126}] ~~~ scoreboard players set @s "事件倒计时" 120
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=6,"事件倒计时"=..0}] ~~~ tellraw @a { "rawtext" : [ { "text" : "§l起床战争 · 无限火力 >> §d§l在绿宝石岛屿（中心岛屿）已刷新手持末影珍珠的僵尸猪灵， 击杀它们有几率掉落末影珍珠" } ] }
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=6,"事件倒计时"=..0}] ~~~ scoreboard players reset "§d刷新手持末影珍珠猪灵" "游戏显示"
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=6,"事件倒计时"=..0}] ~ ~ ~ summon minecraft:zombie_pigman §d末影珍珠僵尸猪灵 0 183 0
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=6,"事件倒计时"=..0}] ~ ~ ~ summon minecraft:zombie_pigman §d末影珍珠僵尸猪灵 0 183 0
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=6,"事件倒计时"=..0}] ~ ~ ~ summon minecraft:zombie_pigman §d末影珍珠僵尸猪灵 0 183 0
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=6,"事件倒计时"=..0}] ~ ~ ~ summon minecraft:zombie_pigman §d末影珍珠僵尸猪灵 0 183 0
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=6,"事件倒计时"=..0}] ~~~ execute @e[type=minecraft:zombie_pigman,name=§d末影珍珠僵尸猪灵] ~~~ replaceitem entity @s slot.weapon.mainhand 0 ender_pearl 2
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=6,"事件倒计时"=..0}] ~~~ execute @e[type=minecraft:zombie_pigman,name=§d末影珍珠僵尸猪灵] ~~~ replaceitem entity @s slot.armor.head 0 ender_pearl 2
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=6,"事件倒计时"=..0}] ~~~ scoreboard players set @s "事件倒计时" 127