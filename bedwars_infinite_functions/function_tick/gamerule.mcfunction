#游戏没开始关闭掉落伤害
execute @e[type=armor_stand,scores={gameSTART=0}] ~~~ gamerule falldamage false
#游戏开始打开掉落伤害
execute @e[type=armor_stand,scores={gameSTART=1..2}] ~~~ gamerule falldamage true
#pvp true
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ gamerule pvp true
#showtags false
gamerule showtags false
#dodaylightcycle false
gamerule dodaylightcycle false
#关闭火焰蔓延
gamerule dofiretick false
#保留物品栏
gamerule keepinventory true
#关闭天气更替
gamerule doweathercycle false
#打开立即重生
gamerule doimmediaterespawn true
#关闭命令执行提示
gamerule sendcommandfeedback false
#关闭重生方块爆炸
gamerule respawnblocksexplode false
#打开自然生命恢复
gamerule naturalregeneration true
#关闭生物破坏
gamerule mobgriefing false
#关闭生物战利品
gamerule domobloot false
#关闭生物自然生成
gamerule domobspawning false