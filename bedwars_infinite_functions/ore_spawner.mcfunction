# 红铁
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ scoreboard players add @s "红铁time" -1
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红铁time"=..0}] ~~~ structure load iron_ingot 0 185 56
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红铁time"=..0}] ~~~ structure load iron_ingot 1 185 56
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红铁time"=..0}] ~~~ structure load iron_ingot -1 185 56
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红铁time"=..0,"游戏模式"=1}] ~~~ scoreboard players set @s "红铁time" 15
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红铁time"=..0,"游戏模式"=2}] ~~~ scoreboard players set @s "红铁time" 10
# 蓝铁
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ scoreboard players add @s "蓝铁time" -1
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝铁time"=..0}] ~~~ structure load iron_ingot 0 185 -56
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝铁time"=..0}] ~~~ structure load iron_ingot 1 185 -56
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝铁time"=..0}] ~~~ structure load iron_ingot -1 185 -56
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝铁time"=..0,"游戏模式"=1}] ~~~ scoreboard players set @s "蓝铁time" 15
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝铁time"=..0,"游戏模式"=2}] ~~~ scoreboard players set @s "蓝铁time" 10
# 红家金
execute @e[type=armor_stand,name=main,scores={gameSTART=1,function_tick=20}] ~~~ scoreboard players add @s "红家金time" -1
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红家金time"=..0}] ~~~ structure load gold_ingot 0 185 56
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红家金time"=..0}] ~~~ scoreboard players set @s "红家金time" 6
# 蓝家金
execute @e[type=armor_stand,name=main,scores={gameSTART=1,function_tick=20}] ~~~ scoreboard players add @s "蓝家金time" -1
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝家金time"=..0}] ~~~ structure load gold_ingot 0 185 -56
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝家金time"=..0}] ~~~ scoreboard players set @s "蓝家金time" 6
# 钻石
execute @e[type=armor_stand,name=main,scores={gameSTART=1,function_tick=20}] ~~~ scoreboard players add @s "钻石1time" -1
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"钻石1time"=..0}] ~~~ structure load diamond -25 186 -25
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"钻石1time"=..0}] ~~~ structure load diamond -25 186 25
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"钻石1time"=..0}] ~~~ structure load diamond 25 186 25
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"钻石1time"=..0}] ~~~ structure load diamond 25 186 -25
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"钻石1time"=..0,"钻石等级"=1}] ~~~ scoreboard players set @s "钻石1time" 35
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"钻石1time"=..0,"钻石等级"=2}] ~~~ scoreboard players set @s "钻石1time" 20
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"钻石1time"=..0,"钻石等级"=3}] ~~~ scoreboard players set @s "钻石1time" 15
# 绿宝石
execute @e[type=armor_stand,name=main,scores={gameSTART=1,function_tick=20}] ~~~ scoreboard players add @s "绿宝石time" -1
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"绿宝石time"=..0}] ~~~ structure load emerald 0 185 0
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"绿宝石time"=..0,"绿宝石等级"=1}] ~~~ scoreboard players set @s "绿宝石time" 40
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"绿宝石time"=..0,"绿宝石等级"=2}] ~~~ scoreboard players set @s "绿宝石time" 30
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"绿宝石time"=..0,"绿宝石等级"=3}] ~~~ scoreboard players set @s "绿宝石time" 20




