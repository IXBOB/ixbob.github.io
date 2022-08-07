#gamerule相关================
#游戏没开始关闭掉落伤害
execute @e[type=armor_stand,scores={gameSTART=0}] ~~~ gamerule falldamage false
#游戏开始打开掉落伤害
execute @e[type=armor_stand,scores={gameSTART=1}] ~~~ gamerule falldamage true
#游戏结算关闭掉落伤害
execute @e[type=armor_stand,scores={gameSTART=2}] ~~~ gamerule falldamage true
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
#gamerule相关结束================
#封禁(作者制作地图中遇到的外挂)
scoreboard players set 白浅_CE修改 black_list_time -1
scoreboard players set 白浅_CE修改 black_list_cheat 1
scoreboard players set 白浅_CE修改 black_list 1
scoreboard players set 白浅_CE修改 banned_by_IXBOB 1
#封禁系统
execute @a[scores={black_list=1}] ~~~ function black_list
#游戏开始初始化
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ function gamestart_reset_game_settings
#重置地图
execute @e[type=armor_stand,name=main,scores={gameSTART=0}] ~~~ function reset_map
#物品白名单
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ kill @e[type=item,ry=0,rym=0,rx=0,rxm=0,name=!橡木木板,name=!红色羊毛,name=!蓝色羊毛,name=!末地石,name=!红色玻璃,name=!蓝色玻璃,name=!炸药,name=!TNT,name=!铁锭,name=!金锭,name=!绿宝石,name=!钻石,name=!末影珍珠,name=!黑曜石,name=!附魔之瓶]
#红床存在将红非挂机玩家存活设1
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红床存活"=1}] ~~~ scoreboard players set @a[scores={"分队"=1}] "存活" 0
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红床存活"=1}] ~~~ scoreboard players set @e[type=player,scores={"分队"=1}] "存活" 1
#蓝床存在将蓝非挂机玩家存活设1
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝床存活"=1}] ~~~ scoreboard players set @a[scores={"分队"=2}] "存活" 0
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝床存活"=1}] ~~~ scoreboard players set @e[type=player,scores={"分队"=2}] "存活" 1
#火焰弹相关================
#游戏未开始时删除火焰弹（雪球）
execute @e[type=armor_stand,scores={gameSTART=0}] ~~~ execute @e[type=snowball] ~~~ kill @s
#火焰弹（雪球）出界删除
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ execute @e[type=snowball] ~ ~ ~ detect ~ 0 ~ deny 0 particle minecraft:dragon_death_explosion_emitter ~~~
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ execute @e[type=snowball] ~ ~ ~ detect ~ 0 ~ deny 0 kill @s
#火焰弹相关结束================
#TNT相关================
#检测激活TNT
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=item,name=炸药] ~~~ summon tnt ~ ~ ~
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=item,name=tnt] ~~~ summon tnt ~ ~ ~
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=item,name=炸药] ~~~ kill @s
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=item,name=tnt] ~~~ kill @s
#gameSTART=0删除TNT
execute @e[type=armor_stand,scores={gameSTART=0}] ~~~ kill @e[type=tnt]
#gameSTART=2删除TNT
execute @e[type=armor_stand,scores={gameSTART=2}] ~~~ kill @e[type=tnt]
#TNT爆炸
#tip:末影水晶爆炸逻辑在行为包中
execute @e[type=armor_stand,scores={gameSTART=1}] ~~~ scoreboard players add @e[type=tnt] tnt_time -1
execute @e[type=armor_stand,scores={gameSTART=1}] ~~~ execute @e[type=tnt,scores={tnt_time=..-70}] ~~~ summon ender_crystal ~~~ minecraft:crystal_explode
execute @e[type=armor_stand,scores={gameSTART=1}] ~~~ execute @e[type=tnt,scores={tnt_time=..-70}] ~~~ kill @s
#TNT相关结束================
#tag+sound20
execute @e[type=armor_stand,name=main,scores={gameSTART=0,starting=0},tag=!sound20] ~~~ tag @s add sound20
#tag+sound15
execute @e[type=armor_stand,name=main,scores={gameSTART=0,starting=0},tag=!sound15] ~~~ tag @s add sound15
#tag+sound10
execute @e[type=armor_stand,name=main,scores={gameSTART=0,starting=0},tag=!sound10] ~~~ tag @s add sound10
#tag+sound5
execute @e[type=armor_stand,name=main,scores={gameSTART=0,starting=0},tag=!sound5] ~~~ tag @s add sound5
#tag+sound4
execute @e[type=armor_stand,name=main,scores={gameSTART=0,starting=0},tag=!sound4] ~~~ tag @s add sound4
#tag+sound3
execute @e[type=armor_stand,name=main,scores={gameSTART=0,starting=0},tag=!sound3] ~~~ tag @s add sound3
#tag+sound2
execute @e[type=armor_stand,name=main,scores={gameSTART=0,starting=0},tag=!sound2] ~~~ tag @s add sound2
#tag+sound1
execute @e[type=armor_stand,name=main,scores={gameSTART=0,starting=0},tag=!sound1] ~~~ tag @s add sound1
#设置倒计时时间
execute @e[type=armor_stand,name=main,scores={gameSTART=0,starting=0}] ~~~ scoreboard players set @s "开始倒计时" 20
#更改游戏模式
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ gamemode 0 @a[x=-63,y=176,z=-63,dx=126,dy=28,dz=126,scores={"分队"=1..2},tag=!insider]
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[x=-63,y=205,z=-63,dx=126,dy=10,dz=126,tag=!insider] ~~~ detect ~ ~-1 ~ barrier 0 gamemode 2 @s
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ gamemode 2 @a[x=-218,y=193,z=-218,dx=36,dy=50,dz=40,tag=!insider]
execute @e[type=armor_stand,name=main,scores={gameSTART=2}] ~~~ gamemode 2 @a[tag=!insider]
execute @e[type=armor_stand,name=main,scores={gameSTART=0}] ~~~ gamemode 2 @a[tag=!insider]
#删除物品栏多余/禁止物品
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ clear @a snow
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ clear @a carpet
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ clear @a crafting_table
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ clear @a stick
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ clear @a wooden_button
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ clear @a wooden_pressure_plate
#检测出生点放置方块并删除
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ fill -5 185 52 5 188 58 air 0 replace wool
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ fill 5 185 -52 -5 188 -58 air 0 replace wool
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ fill 5 185 -52 -5 188 -58 air 0 replace wool
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ fill 5 185 -52 -5 188 -58 air 0 replace stained_glass
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ fill -5 185 52 5 188 58 air 0 replace end_stone
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ fill 5 185 -52 -5 188 -58 air 0 replace end_stone
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ fill -5 185 52 5 188 58 air 0 replace planks
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ fill 5 185 -52 -5 188 -58 air 0 replace planks
#删除出界的箭
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ execute @e[type=arrow] ~ ~ ~ detect ~ 0 ~ deny 0 kill @s
#删除出界的末影珍珠
execute @e[type=armor_stand,scores={gameSTART=1}] ~~~ execute @e[type=ender_pearl] ~~~ detect ~ 0 ~ deny 0 kill @s
#红队队伍actionbar
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={"分队"=1},x=-63,y=174,z=-63,dx=126,dy=29,dz=126] ~~~ titleraw @s actionbar { "rawtext" : [{ "text" : "§f队伍：  §c§l红队\n§r§f队伍成员：  §c§l" },{ "selector" :  "@a[scores={分队=1,存活=1}]"},{ "text" : "\n§r§7游戏时间:  " },{ "score" : { "name" : "@s" , "objective" : "game.time.min.2"}},{ "score" : { "name" : "@s" , "objective" : "game.time.min.1"}},{ "text" : " : " },{ "score" : { "name" : "@s" , "objective" : "game.time.sec.2"}},{ "score" : { "name" : "@s" , "objective" : "game.time.sec.1"}},{"translate":"%%5%%6%%7%%8","with":{"rawtext":[{"selector":"@s[tag=near_diamond]"},{"selector":"@s[tag=near_diamond]"},{"selector":"@s[tag=near_diamond]"},{"selector":"@s[tag=near_diamond]"},{"text":"\n§r§e"},{ "score" : { "name" : "@s" , "objective" : "钻石等级"}},{"text":" 级钻石刷新点     钻石刷新 "},{ "score" : { "name" : "@s" , "objective" : "钻石time"}}]}},{"translate":"%%5%%6%%7%%8","with":{"rawtext":[{"selector":"@s[tag=near_emerald]"},{"selector":"@s[tag=near_emerald]"},{"selector":"@s[tag=near_emerald]"},{"selector":"@s[tag=near_emerald]"},{"text":"\n§r§e"},{ "score" : { "name" : "@s" , "objective" : "绿宝石等级"}},{"text":" 级绿宝石刷新点     绿宝石刷新 "},{ "score" : { "name" : "@s" , "objective" : "绿宝石time"}},{"text":"\n§r§7击杀数： "},{"score":{"name":"@s","objective":"击杀数"}}]}}]}
#蓝队队伍actionbar
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={"分队"=2},x=-63,y=174,z=-63,dx=126,dy=29,dz=126] ~~~ titleraw @s actionbar { "rawtext" : [{ "text" : "§f队伍：  §b§l蓝队\n§r§f队伍成员：  §b§l" },{ "selector" :  "@a[scores={分队=2,存活=1}]"},{ "text" : "\n§r§7游戏时间:  " },{ "score" : { "name" : "@s" , "objective" : "game.time.min.2"}},{ "score" : { "name" : "@s" , "objective" : "game.time.min.1"}},{ "text" : " : " },{ "score" : { "name" : "@s" , "objective" : "game.time.sec.2"}},{ "score" : { "name" : "@s" , "objective" : "game.time.sec.1"}},{"translate":"%%5%%6%%7%%8","with":{"rawtext":[{"selector":"@s[tag=near_diamond]"},{"selector":"@s[tag=near_diamond]"},{"selector":"@s[tag=near_diamond]"},{"selector":"@s[tag=near_diamond]"},{"text":"\n§r§e"},{ "score" : { "name" : "@s" , "objective" : "钻石等级"}},{"text":" 级钻石刷新点     钻石刷新 "},{ "score" : { "name" : "@s" , "objective" : "钻石time"}}]}},{"translate":"%%5%%6%%7%%8","with":{"rawtext":[{"selector":"@s[tag=near_emerald]"},{"selector":"@s[tag=near_emerald]"},{"selector":"@s[tag=near_emerald]"},{"selector":"@s[tag=near_emerald]"},{"text":"\n§r§e"},{ "score" : { "name" : "@s" , "objective" : "绿宝石等级"}},{"text":" 级绿宝石刷新点     绿宝石刷新 "},{ "score" : { "name" : "@s" , "objective" : "绿宝石time"}},{"text":"\n§r§7击杀数： "},{"score":{"name":"@s","objective":"击杀数"}}]}}]}
#淘汰后玩家actionbar
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[x=-63,y=205,z=-63,dx=126,dy=10,dz=126,rx=90,rxm=-89] ~~~ detect ~ ~-1 ~ barrier 0 titleraw @s actionbar { "rawtext" : [{ "text" : "§f§l>> 您正在观战 <<" },{ "text" : "\n§r§f游戏时间:  " },{ "score" : { "name" : "@s" , "objective" : "game.time.min.2"}},{ "score" : { "name" : "@s" , "objective" : "game.time.min.1"}},{ "text" : " : " },{ "score" : { "name" : "@s" , "objective" : "game.time.sec.2"}},{ "score" : { "name" : "@s" , "objective" : "game.time.sec.1"}},{ "text" : "\n§r§7§l红队剩余玩家： " },{"selector":"@a[scores={分队=1,存活=1}]"},{ "text" : "\n§r§7§l蓝队剩余玩家： " },{"selector":"@a[scores={分队=2,存活=1}]"},{ "text" : "\n§f>> 抬头返回大厅 <<" } ] }
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[x=-63,y=205,z=-63,dx=126,dy=10,dz=126,rx=90,rxm=-89,scores={"分队"=1..2,"存活"=0}] ~~~ detect ~ ~-1 ~ barrier 0 titleraw @s actionbar { "rawtext" : [{ "text" : "§7§l>> 您已被淘汰  正在观战 <<" },{ "text" : "\n§r§f游戏时间:  " },{ "score" : { "name" : "@s" , "objective" : "game.time.min.2"}},{ "score" : { "name" : "@s" , "objective" : "game.time.min.1"}},{ "text" : " : " },{ "score" : { "name" : "@s" , "objective" : "game.time.sec.2"}},{ "score" : { "name" : "@s" , "objective" : "game.time.sec.1"}},{"translate":"%%3%%4","with":{"rawtext":[{"selector":"@s[scores={分队=1,存活=0}]"},{"selector":"@s[scores={分队=1,存活=0}]"},{"text":"\n§r§f您的队伍： §7§l红队  §f剩余成员： §c"},{"selector":"@a[scores={分队=1,存活=1}]"},{"text":"\n§r§f您的队伍： §7§l蓝队  §f剩余成员： §b"},{"selector":"@a[scores={分队=2,存活=1}]"}]}},{ "text" : "\n§7>> 抬头返回大厅 <<" } ] }
#clear红队淘汰玩家
execute @e[type=armor_stand,scores={gameSTART=1..2,"红床存活"=0}] ~~~ execute @a[scores={"存活"=0,"分队"=1}] ~~~ clear @s
#clear蓝队淘汰玩家
execute @e[type=armor_stand,scores={gameSTART=1..2,"红床存活"=0}] ~~~ execute @a[scores={"存活"=0,"分队"=1}] ~~~ clear @s
#删除屏障上的僵尸猪人
execute @e[type=armor_stand,scores={gameSTART=1..2},name=main] ~~~ execute @e[type=zombie_pigman] ~~~ detect ~ ~-1 ~ barrier 0 tp @s 0 -100 0
#游戏未开始时删除僵尸猪人
execute @e[type=armor_stand,scores={gameSTART=0},name=main] ~~~ execute @e[type=zombie_pigman] ~~~ detect ~ ~-1 ~ barrier 0 tp @s 0 -100 0
#删除屏障上的掉落物
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=item] ~~~ detect ~ ~-1 ~ barrier 0 kill @s
#大厅跳到结构空位TP出生点
execute @a[x=-200,y=180,z=-200,r=50] ~~~ detect ~ ~ ~ structure_void 0 tp @s -200 200 -200
#设置玩家重生时间 -> 5
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ scoreboard players set @a[x=-63,y=176,z=-63,dx=126,dy=28,dz=126,scores={"分队"=1..2}] "重生时间" 100
#胜利烟花
execute @e[type=armor_stand,scores={gameSTART=2,function_tick=10}] ~~~ execute @a[scores={firework=1}] ~~~ summon minecraft:fireworks_rocket
execute @e[type=armor_stand,scores={gameSTART=2,function_tick=20}] ~~~ execute @a[scores={firework=1}] ~~~ summon minecraft:fireworks_rocket
#红床存在spawnpoint
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红床存活"=1}] ~~~ spawnpoint @a[scores={"分队"=1}] -67 5 -67
#蓝床存在spawnpoint
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝床存活"=1}] ~~~ spawnpoint @a[scores={"分队"=2}] -67 5 -67
#传送大厅有红分队玩家至相应基地
execute @e[type=armor_stand,scores={gameSTART=1}] ~~~ execute @a[x=-218,y=193,z=-218,dx=36,dy=50,dz=40,scores={"分队"=1,"存活"=1}] ~~~ tp @s 0 186 53
#传送大厅有蓝分队玩家至相应基地
execute @e[type=armor_stand,scores={gameSTART=1}] ~~~ execute @a[x=-218,y=193,z=-218,dx=36,dy=50,dz=40,scores={"分队"=2,"存活"=1}] ~~~ tp @s 0 186 -53
#大厅区域玩家饱和
effect @a[x=-218,y=193,z=-218,r=50] saturation 2 255 true
#观战区域玩家饱和
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ execute @a[x=-63,y=205,z=-63,dx=126,dy=10,dz=126] ~~~ detect ~ ~-1 ~ barrier 0 effect @s saturation 2 255 true
#观战区域玩家虚弱
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ execute @a[x=-63,y=205,z=-63,dx=126,dy=10,dz=126] ~~~ detect ~ ~-1 ~ barrier 0 effect @s weakness 2 255 true
#观战区域玩家隐身
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ execute @a[x=-63,y=205,z=-63,dx=126,dy=10,dz=126] ~~~ detect ~ ~-1 ~ barrier 0 effect @s invisibility 2 255 true
#观战区域玩家删除背包
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2,function_tick=20}] ~~~ execute @a[x=-63,y=205,z=-63,dx=126,dy=10,dz=126] ~~~ detect ~ ~-1 ~ barrier 0 clear @s
#开始游戏后大厅玩家虚弱
execute @e[type=armor_stand,scores={gameSTART=1..2}] ~~~ effect @a[x=-218,y=193,z=-218,r=50] weakness 2 255 true
#游戏开始后还原被破坏的红队伍箱
execute @e[type=armor_stand,scores={gameSTART=1..2}] ~~~ detect 0 185 58 air 0 clone 288 7 260 288 7 260 0 185 58
#游戏开始后还原被破坏的蓝队伍箱
execute @e[type=armor_stand,scores={gameSTART=1..2}] ~~~ detect 0 185 -58 air 0 clone 288 7 259 288 7 259 0 185 -58
#<红> 检测有敌人可以破坏床
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ scoreboard players set @s "红床有敌" 0
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={"分队"=2},x=0,y=185,z=46,r=5] ~~~ scoreboard players set @e[type=armor_stand,name=main,scores={gameSTART=1}] "红床有敌" 1
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红床有敌"=0,"红床存活"=1}] ~~~ clone 0 9 47 0 9 46 0 185 46
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红床有敌"=1,"红床存活"=1}] ~~~ function destroy_red_bed
#<蓝> 检测有敌人可以破坏床
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ scoreboard players set @s "蓝床有敌" 0
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={"分队"=1},x=0,y=185,z=-46,r=5] ~~~ scoreboard players set @e[type=armor_stand,name=main,scores={gameSTART=1}] "蓝床有敌" 1
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝床有敌"=0,"蓝床存活"=1}] ~~~ clone 0 9 -46 0 9 -47 0 185 -47
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝床有敌"=1,"蓝床存活"=1}] ~~~ function destroy_blue_bed
#床被摧毁spawnpoint红
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红床存活"=0}] ~~~ spawnpoint @a[scores={"分队"=1}] 0 206 0
#床被摧毁spawnpoint蓝
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝床存活"=0}] ~~~ spawnpoint @a[scores={"分队"=2}] 0 206 0
#删除玩家脚下的地图底部方块
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,x=-63,y=172,z=-63,dx=127,dy=9,dz=127,scores={"分队"=1..2}] ~~~ fill ~5 174 ~5 ~-5 174 ~-5 air
#gameSTART为0时执行命令
execute @e[type=armor_stand,scores={gameSTART=0}] ~~~ function gameSTART0_functions
#gameSTART为2时执行命令
execute @e[type=armor_stand,scores={gameSTART=2}] ~~~ function gameSTART2_functions
#救援平台相关================
#检测购买救援平台
execute @e[type=armor_stand,scores={gameSTART=1}] ~~~ execute @a[tag="have救援平台",tag="get救援平台"] ~~~ tellraw @s { "rawtext" : [ { "text" : "§f§l商店 >> §c购买失败， 您只能同时拥有一个自动救援平台" } ] }
execute @e[type=armor_stand,scores={gameSTART=1}] ~~~ execute @a[tag="have救援平台",tag="get救援平台"] ~~~ xp 120L @s
execute @e[type=armor_stand,scores={gameSTART=1}] ~~~ execute @a[tag="have救援平台",tag="get救援平台"] ~~~ playsound fire.ignite @s
execute @e[type=armor_stand,scores={gameSTART=1}] ~~~ execute @a[tag=!"have救援平台",tag="get救援平台"] ~~~ tellraw @s { "rawtext" : [ { "text" : "§f§l商店 >> §a购买成功 §r§6自动救援平台\n§r§f§l自动救援平台 >> §a救援平台将在您掉入虚空时自动释放" } ] }
execute @e[type=armor_stand,scores={gameSTART=1}] ~~~ execute @a[tag=!"have救援平台",tag="get救援平台"] ~~~ playsound note.harp @s
execute @e[type=armor_stand,scores={gameSTART=1}] ~~~ execute @a[tag=!"have救援平台",tag="get救援平台"] ~~~ tag @s add have救援平台
execute @e[type=armor_stand,scores={gameSTART=1}] ~~~ tag @a remove "get救援平台"
#掉落虚空执行的操作
#检测kill没有救援平台的玩家
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[tag=!"have救援平台",x=-63,y=170,z=-63,dx=126,dy=4,dz=126] ~~~ detect ~ ~ ~ structure_void 0 kill @s
#检测释放救援平台
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={"分队"=1..2},x=-63,y=171,z=-63,dx=127,dy=5,dz=127] ~~~ detect ~ ~ ~ structure_void 0 tag @s add in_void
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[tag="have救援平台",tag=in_void] ~~~ fill ~2 175 ~2 ~-2 175 ~-2 slime 0 replace air
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[tag="have救援平台",tag=in_void] ~~~ tellraw @s { "rawtext" : [ { "text" : "§f§l自动救援平台 >> §6§l自动救援平台已激活" } ] }
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[tag="have救援平台",tag=in_void] ~~~ tp @s ~ 176.4 ~
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[tag="have救援平台",tag=in_void] ~~~ tag @s remove "have救援平台"
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[tag=in_void] ~~~ tag @s remove in_void
#增加游戏时间
execute @e[type=armor_stand,scores={gameSTART=1,function_tick=20}] ~~~ scoreboard players add @s game.time.sec.1 1
execute @e[type=armor_stand,scores={gameSTART=1,game.time.sec.1=10..}] ~~~ scoreboard players add @s game.time.sec.2 1
execute @e[type=armor_stand,scores={gameSTART=1,game.time.sec.1=10..}] ~~~ scoreboard players set @s game.time.sec.1 0
execute @e[type=armor_stand,scores={gameSTART=1,game.time.sec.2=6..}] ~~~ scoreboard players add @s game.time.min.1 1
execute @e[type=armor_stand,scores={gameSTART=1,game.time.sec.2=6..}] ~~~ scoreboard players set @s game.time.sec.2 0
execute @e[type=armor_stand,scores={gameSTART=1,game.time.min.1=10..}] ~~~ scoreboard players add @s game.time.min.2 1
execute @e[type=armor_stand,scores={gameSTART=1,game.time.min.1=10..}] ~~~ scoreboard players set @s game.time.min.1 0
#初始化新玩家
scoreboard players set @a[tag=!registered] "总击杀数" 0
scoreboard players set @a[tag=!registered] "胜场数" 0
scoreboard players set @a[tag=!registered] "等级" 0
scoreboard players set @a[tag=!registered] "等级经验" 0
scoreboard players set @a[tag=!registered] "硬币数" 0
scoreboard players random @a[tag=!registered] uid 0 999999999
tag @a[tag=!registered] add registered
#设置near_diamond
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ tag @a remove near_diamond
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,x=-25,y=186,z=-25,r=5] ~~~ tag @s add near_diamond
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,x=-25,y=186,z=25,r=5] ~~~ tag @s add near_diamond
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,x=25,y=186,z=25,r=5] ~~~ tag @s add near_diamond
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,x=25,y=186,z=-25,r=5] ~~~ tag @s add near_diamond
#设置near_emerald
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ tag @a remove near_emerald
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,x=0,y=185,z=0,r=10] ~~~ tag @s add near_emerald
#复制计分板数值给玩家
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ scoreboard players operation @a "钻石等级" = @e[type=armor_stand,name=main,scores={gameSTART=1}] "钻石等级"
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ scoreboard players operation @a "钻石time" = @e[type=armor_stand,name=main,scores={gameSTART=1}] "钻石time"
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ scoreboard players operation @a "绿宝石time" = @e[type=armor_stand,name=main,scores={gameSTART=1}] "绿宝石time"
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ scoreboard players operation @a "绿宝石等级" = @e[type=armor_stand,name=main,scores={gameSTART=1}] "绿宝石等级"
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ scoreboard players operation @a game.time.sec.1 = @e[type=armor_stand,name=main,scores={gameSTART=1}] game.time.sec.1
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ scoreboard players operation @a game.time.sec.2 = @e[type=armor_stand,name=main,scores={gameSTART=1}] game.time.sec.2
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ scoreboard players operation @a game.time.min.1 = @e[type=armor_stand,name=main,scores={gameSTART=1}] game.time.min.1
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ scoreboard players operation @a game.time.min.2 = @e[type=armor_stand,name=main,scores={gameSTART=1}] game.time.min.2
#无敌时间
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={"分队"=1..2,"存活"=1,"无敌时间"=1..},x=-63,y=171,z=-63,dx=126,dy=33,dz=126] ~~~ scoreboard players add @s "无敌时间" -1
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={"分队"=1..2,"存活"=1,"无敌时间"=20..},x=-63,y=171,z=-63,dx=126,dy=33,dz=126] ~~~ effect @s instant_health 1 255
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={"分队"=1..2,"存活"=1,"无敌时间"=0},x=-63,y=171,z=-63,dx=126,dy=33,dz=126] ~~~ tellraw @s { "rawtext" : [ { "text" : "§f§l起床战争 · 无限火力 >> §b§l无敌时间已经结束" } ] }
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={"分队"=1..2,"存活"=1,"无敌时间"=0},x=-63,y=171,z=-63,dx=126,dy=33,dz=126] ~~~ scoreboard players set @s "无敌时间" -1
#抬头相关功能================
#观战玩家抬头返回
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ execute @a[x=-63,y=205,z=-63,dx=126,dy=10,dz=126,rx=90,rxm=-89] ~~~ detect ~ ~-1 ~ barrier 0 scoreboard players reset @s "抬头返回time"
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ execute @a[x=-63,y=205,z=-63,dx=126,dy=10,dz=126,scores={"分队"=1..2,"存活"=1}] ~~~ detect ~ ~-1 ~ barrier 0 scoreboard players reset @s "抬头返回time"
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ execute @a[x=-63,y=205,z=-63,dx=126,dy=10,dz=126,rx=-89,rxm=-90] ~~~ detect ~ ~-1 ~ barrier 0 scoreboard players add @s "抬头返回time" -1
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ execute @a[x=-63,y=205,z=-63,dx=126,dy=10,dz=126,rx=-89,rxm=-90,scores={"抬头返回time"=..-130}] ~~~ tp @s -200 200 -200 0 0
#抬头返回title
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ execute @a[x=-63,y=205,z=-63,dx=126,dy=10,dz=126,rx=-89,rxm=-90,scores={"抬头返回time"=-30..-10}] ~~~ title @s actionbar §e■■■■■ 您将在 5 秒后返回至大厅 ■■■■■
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ execute @a[x=-63,y=205,z=-63,dx=126,dy=10,dz=126,rx=-89,rxm=-90,scores={"抬头返回time"=-50..-31}] ~~~ title @s actionbar §7■§e■■■■ 您将在 4 秒后返回至大厅 ■■■■§7■
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ execute @a[x=-63,y=205,z=-63,dx=126,dy=10,dz=126,rx=-89,rxm=-90,scores={"抬头返回time"=-70..-51}] ~~~ title @s actionbar §7■■§e■■■ 您将在 3 秒后返回至大厅 ■■■§7■■
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ execute @a[x=-63,y=205,z=-63,dx=126,dy=10,dz=126,rx=-89,rxm=-90,scores={"抬头返回time"=-90..-71}] ~~~ title @s actionbar §7■■■§e■■ 您将在 2 秒后返回至大厅 ■■§7■■■
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ execute @a[x=-63,y=205,z=-63,dx=126,dy=10,dz=126,rx=-89,rxm=-90,scores={"抬头返回time"=-110..-91}] ~~~ title @s actionbar §7■■■■§e■ 您将在 1 秒后返回至大厅 ■§7■■■■
#抬头相关功能结束================
#使用经验瓶
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ execute @e[type=minecraft:xp_bottle] ~~~ tellraw @e[type=player,scores={"分队"=1..2,"存活"=1},r=2,c=1] { "rawtext" : [ { "text" : "§f§l经验瓶 >> §6您使用了经验瓶， 获得100级经验" } ] }
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ execute @e[type=minecraft:xp_bottle] ~~~ xp 100L @e[type=player,scores={"分队"=1..2,"存活"=1},r=2,c=1]
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ execute @e[type=minecraft:xp_bottle] ~~~ kill @s
#游戏开始设置生存模式
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ gamemode 0 @a[scores={"分队"=1..2},x=0,y=184,z=52,r=10,m=2]
#游戏开始设置生存模式
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ gamemode 0 @a[scores={"分队"=1..2},x=0,y=184,z=-52,r=10,m=2]
#红队tag+team1
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ tag @a[scores={"分队"=1}] add team1
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ tag @a[scores={"分队"=1}] remove team2
#蓝队tag+team2
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ tag @a[scores={"分队"=2}] add team2
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ tag @a[scores={"分队"=2}] remove team1
#游戏未开始tag-team
execute @e[type=armor_stand,name=main,scores={gameSTART=0}] ~~~ tag @a remove team1
execute @e[type=armor_stand,name=main,scores={gameSTART=0}] ~~~ tag @a remove team2
#检测有人正在重生执行相关指令
execute @e[type=player,x=-72,y=5,z=-67,r=20,c=1] ~~~ execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ function respawn/respawn_main
execute @e[type=armor_stand,name=main,scores={gameSTART=0}] ~~~ tp @a[x=-72,y=6,z=-67,r=20] -200 200 -200
#replaceitem红队皮革护甲
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @a[x=-63,y=176,z=-63,dx=126,dy=28,dz=126,scores={"分队"=1,"防具等级"=1,"存活"=1}] ~~~ function replaceitem.red.leather.armor
#replaceitem蓝队皮革护甲
 execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @a[x=-63,y=176,z=-63,dx=126,dy=28,dz=126,scores={"分队"=2,"防具等级"=1,"存活"=1}] ~~~ function replaceitem.blue.leather.armor
#大厅按钮选项相关================
#复制告示牌游戏未开始
execute @e[type=armor_stand,scores={gameSTART=0}] ~~~ clone 293 4 296 293 4 296 -200 200 -204
execute @e[type=armor_stand,scores={gameSTART=2}] ~~~ clone 293 4 296 293 4 296 -200 200 -204
execute @e[type=armor_stand,scores={gameSTART=0}] ~~~ setblock -200 201 -205 air
execute @e[type=armor_stand,scores={gameSTART=2}] ~~~ setblock -200 201 -205 air
#复制告示牌游戏已开始
execute @e[type=armor_stand,scores={gameSTART=1,function_tick=20}] ~~~ clone 293 5 296 293 5 296 -200 200 -204
execute @e[type=armor_stand,scores={gameSTART=1,function_tick=20}] ~~~ setblock -200 201 -205 polished_blackstone_button 1
#检测游戏开始时按钮被按下并重置按钮
execute @e[type=armor_stand,scores={gameSTART=1}] ~~~ detect -200 201 -205 polished_blackstone_button 9 tp @e[type=player,x=-200,y=201,z=-205,r=3,c=1] 0 206 0
execute @e[type=armor_stand,scores={gameSTART=1}] ~~~ detect -200 201 -205 polished_blackstone_button 9 setblock -200 201 -205 polished_blackstone_button 1
#检测按下按钮更换地图
execute @e[type=armor_stand,scores={gameSTART=0,reseting=0,starting=0},tag=!reset_OK] ~~~ testforblock -203 201 -196 polished_blackstone_button 9
execute @e[type=armor_stand,scores={gameSTART=0,reseting=0,starting=0},tag=!reset_OK] ~~~ detect -203 201 -196 polished_blackstone_button 9 execute @e[type=player,x=-203,y=201,z=-196,r=3,c=1] ~~~ execute @s[tag=!op] ~~~ tellraw @s { "rawtext":[{"text":"§f§l起床战争 · 无限火力 >> §c您没有管理员权限， 无法更换地图"}]}
execute @e[type=armor_stand,scores={gameSTART=0,reseting=0,starting=0},tag=!reset_OK] ~~~ detect -203 201 -196 polished_blackstone_button 9 execute @e[type=player,x=-203,y=201,z=-196,r=3,c=1] ~~~ execute @s[tag=!op] ~~~ setblock -203 201 -196 polished_blackstone_button 1
execute @e[type=armor_stand,scores={gameSTART=0,reseting=0,starting=0},tag=!reset_OK] ~~~ detect -203 201 -196 polished_blackstone_button 9 execute @e[type=player,x=-203,y=201,z=-196,r=3,c=1] ~~~ execute @s[tag=op] ~~~ tellraw @s { "rawtext" : [ { "text" : "§f§l起床战争 · 无限火力 >> §a地图已更换" } ] }
execute @e[type=armor_stand,scores={gameSTART=0,reseting=0,starting=0},tag=!reset_OK] ~~~ detect -203 201 -196 polished_blackstone_button 9 execute @e[type=player,x=-203,y=201,z=-196,r=3,c=1] ~~~ execute @s[tag=op] ~~~ scoreboard players add @e[type=armor_stand,name=main] "地图选择" 1
execute @e[type=armor_stand,scores={gameSTART=0,reseting=0,starting=0},tag=!reset_OK] ~~~ detect -203 201 -196 polished_blackstone_button 9 setblock -203 201 -196 polished_blackstone_button 1
#检测地图选择超过设定范围设为0
execute @e[type=armor_stand,name=main,scores={gameSTART=0,"地图选择"=4..}] ~~~ scoreboard players set @s "地图选择" 0
#游戏重置前复制地图选择告示牌
execute @e[type=armor_stand,name=main,scores={gameSTART=0,"地图选择"=0,starting=0,reseting=0},tag=!reset_OK] ~~~ clone 293 4 294 293 4 294 -203 200 -197
execute @e[type=armor_stand,name=main,scores={gameSTART=0,"地图选择"=1,starting=0,reseting=0},tag=!reset_OK] ~~~ clone 293 5 294 293 5 294 -203 200 -197
execute @e[type=armor_stand,name=main,scores={gameSTART=0,"地图选择"=2,starting=0,reseting=0},tag=!reset_OK] ~~~ clone 293 6 294 293 6 294 -203 200 -197
execute @e[type=armor_stand,name=main,scores={gameSTART=0,"地图选择"=3,starting=0,reseting=0},tag=!reset_OK] ~~~ clone 293 7 294 293 7 294 -203 200 -197
#重置结束后后复制地图选择告示牌
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"游戏地图"=1,function_tick=20}] ~~~ clone 291 4 294 291 4 294 -203 200 -197
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"游戏地图"=2,function_tick=20}] ~~~ clone 291 5 294 291 5 294 -203 200 -197
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"游戏地图"=3,function_tick=20}] ~~~ clone 291 6 294 291 6 294 -203 200 -197
execute @e[type=armor_stand,name=main,scores={gameSTART=0,reseting=1,function_tick=20}] ~~~ clone 291 4 294 291 4 294 -203 200 -197
execute @e[type=armor_stand,name=main,scores={gameSTART=0,reseting=1,function_tick=20}] ~~~ clone 291 5 294 291 5 294 -203 200 -197
execute @e[type=armor_stand,name=main,scores={gameSTART=0,reseting=1,function_tick=20}] ~~~ clone 291 6 294 291 6 294 -203 200 -197
execute @e[type=armor_stand,name=main,scores={gameSTART=0,starting=1,function_tick=20}] ~~~ clone 291 4 294 291 4 294 -203 200 -197
execute @e[type=armor_stand,name=main,scores={gameSTART=0,starting=1,function_tick=20}] ~~~ clone 291 5 294 291 5 294 -203 200 -197
execute @e[type=armor_stand,name=main,scores={gameSTART=0,starting=1,function_tick=20}] ~~~ clone 291 6 294 291 6 294 -203 200 -197
execute @e[type=armor_stand,name=main,tag=reset_OK,scores={function_tick=20}] ~~~ clone 291 4 294 291 4 294 -203 200 -197
execute @e[type=armor_stand,name=main,tag=reset_OK,scores={function_tick=20}] ~~~ clone 291 5 294 291 5 294 -203 200 -197
execute @e[type=armor_stand,name=main,tag=reset_OK,scores={function_tick=20}] ~~~ clone 291 6 294 291 6 294 -203 200 -197
#检测按下按钮更换模式
execute @e[type=armor_stand,name=main,scores={gameSTART=0,starting=0,reseting=0},tag=!reset_OK] ~~~ execute @e[type=player,x=-202,y=201,z=-196,r=3,c=1] ~~~ detect -202 201 -196 polished_blackstone_button 9 execute @s[tag=op] ~~~ execute @e[type=armor_stand,name=main,scores={gameSTART=0}] ~~~ scoreboard players add @s "游戏模式" 1
execute @e[type=armor_stand,name=main,scores={gameSTART=0,starting=0,reseting=0},tag=!reset_OK] ~~~ execute @e[type=player,x=-202,y=201,z=-196,r=3,c=1] ~~~ detect -202 201 -196 polished_blackstone_button 9 execute @s[tag=!op] ~~~ tellraw @s { "rawtext" : [ { "text" : "§f§l起床战争 · 无限火力 >> §c您没有管理员权限， 无法更换模式" } ] }
execute @e[type=armor_stand,name=main,scores={gameSTART=0,"游戏模式"=3..,starting=0,reseting=0},tag=!reset_OK] ~~~ execute @e[type=player,x=-202,y=201,z=-196,r=3,c=1] ~~~ detect -202 201 -196 polished_blackstone_button 9 execute @s[tag=op] ~~~ scoreboard players set @e[type=armor_stand,name=main,scores={gameSTART=0,"游戏模式"=3..,starting=0,reseting=0}] "游戏模式" 1
execute @e[type=armor_stand,name=main,scores={gameSTART=0,starting=0,reseting=0},tag=!reset_OK] ~~~ execute @e[type=player,x=-202,y=201,z=-196,r=3,c=1] ~~~ detect -202 201 -196 polished_blackstone_button 9 execute @s[tag=op] ~~~ tellraw @s { "rawtext" : [ { "text" : "§f§l起床战争 · 无限火力 >> §6§l游戏模式已更换， 当前选择： §d" },{"translate":"%%2","with":{"rawtext":[{"selector":"@e[type=armor_stand,name=main,scores={游戏模式=2}]"},{"text":"§o疾速模式"},{"text":"§r§l§d普通模式"}]}} ] }
execute @e[type=armor_stand,name=main,scores={gameSTART=0,starting=0,reseting=0},tag=!reset_OK] ~~~ detect -202 201 -196 polished_blackstone_button 9 setblock -202 201 -196 polished_blackstone_button 1
#游戏开始前复制游戏模式告示牌
execute @e[type=armor_stand,name=main,scores={gameSTART=0,"游戏模式"=2,starting=0,reseting=0},tag=!reset_OK] ~~~ clone 289 5 294 289 5 294 -202 200 -197
execute @e[type=armor_stand,name=main,scores={gameSTART=0,"游戏模式"=1,starting=0,reseting=0},tag=!reset_OK] ~~~ clone 289 4 294 289 4 294 -202 200 -197
#重置结束后后复制游戏模式告示牌
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"游戏地图"=1}] ~~~ clone 288 4 294 288 4 294 -202 200 -197
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"游戏地图"=2}] ~~~ clone 288 5 294 288 5 294 -202 200 -197
execute @e[type=armor_stand,name=main,scores={reseting=1}] ~~~ clone 288 4 294 288 4 294 -202 200 -197
execute @e[type=armor_stand,name=main,scores={reseting=1}] ~~~ clone 288 5 294 288 5 294 -202 200 -197
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ clone 288 4 294 288 4 294 -202 200 -197
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ clone 288 5 294 288 5 294 -202 200 -197
execute @e[type=armor_stand,name=main,tag=reset_OK] ~~~ clone 288 4 294 288 4 294 -202 200 -197
execute @e[type=armor_stand,name=main,tag=reset_OK] ~~~ clone 288 5 294 288 5 294 -202 200 -197
#检测人数开始游戏相关================
#当 即将设置的最少开始玩家数 等于 已设置的最少开始玩家数 时tellraw管理员
execute @e[type=armor_stand,name=main,scores={gameSTART=0},tag=set.start.players.2] ~~~ execute @a[tag=op,tag=set.start.players.2] ~~~ tellraw @s { "rawtext" : [ { "text" : "§f§l起床战争 · 无限火力 >> §r§c当前开始游戏最少需要玩家已被设置为 2 名" } ] }
execute @e[type=armor_stand,name=main,scores={gameSTART=0},tag=set.start.players.3] ~~~ execute @a[tag=op,tag=set.start.players.3] ~~~ tellraw @s { "rawtext" : [ { "text" : "§f§l起床战争 · 无限火力 >> §r§c当前开始游戏最少需要玩家已被设置为 3 名" } ] }
execute @e[type=armor_stand,name=main,scores={gameSTART=0},tag=set.start.players.4] ~~~ execute @a[tag=op,tag=set.start.players.4] ~~~ tellraw @s { "rawtext" : [ { "text" : "§f§l起床战争 · 无限火力 >> §r§c当前开始游戏最少需要玩家已被设置为 4 名" } ] }
execute @e[type=armor_stand,name=main,scores={gameSTART=0},tag=set.start.players.5] ~~~ execute @a[tag=op,tag=set.start.players.5] ~~~ tellraw @s { "rawtext" : [ { "text" : "§f§l起床战争 · 无限火力 >> §r§c当前开始游戏最少需要玩家已被设置为 5 名" } ] }
execute @e[type=armor_stand,name=main,scores={gameSTART=0},tag=set.start.players.6] ~~~ execute @a[tag=op,tag=set.start.players.6] ~~~ tellraw @s { "rawtext" : [ { "text" : "§f§l起床战争 · 无限火力 >> §r§c当前开始游戏最少需要玩家已被设置为 6 名" } ] }
execute @e[type=armor_stand,name=main,scores={gameSTART=0},tag=set.start.players.7] ~~~ execute @a[tag=op,tag=set.start.players.7] ~~~ tellraw @s { "rawtext" : [ { "text" : "§f§l起床战争 · 无限火力 >> §r§c当前开始游戏最少需要玩家已被设置为 7 名" } ] }
execute @e[type=armor_stand,name=main,scores={gameSTART=0},tag=set.start.players.8] ~~~ execute @a[tag=op,tag=set.start.players.8] ~~~ tellraw @s { "rawtext" : [ { "text" : "§f§l起床战争 · 无限火力 >> §r§c当前开始游戏最少需要玩家已被设置为 8 名" } ] }
execute @e[type=armor_stand,name=main,scores={gameSTART=!0}] ~~~ execute @a[tag=op,tag=set.start.players.2] ~~~ tellraw @s { "rawtext" : [ { "text" : "§f§l起床战争 · 无限火力 >> §r§c此时无法修改开始游戏最少需要玩家数" } ] }
execute @e[type=armor_stand,name=main,scores={gameSTART=!0}] ~~~ execute @a[tag=op,tag=set.start.players.3] ~~~ tellraw @s { "rawtext" : [ { "text" : "§f§l起床战争 · 无限火力 >> §r§c此时无法修改开始游戏最少需要玩家数" } ] }
execute @e[type=armor_stand,name=main,scores={gameSTART=!0}] ~~~ execute @a[tag=op,tag=set.start.players.4] ~~~ tellraw @s { "rawtext" : [ { "text" : "§f§l起床战争 · 无限火力 >> §r§c此时无法修改开始游戏最少需要玩家数" } ] }
execute @e[type=armor_stand,name=main,scores={gameSTART=!0}] ~~~ execute @a[tag=op,tag=set.start.players.5] ~~~ tellraw @s { "rawtext" : [ { "text" : "§f§l起床战争 · 无限火力 >> §r§c此时无法修改开始游戏最少需要玩家数" } ] }
execute @e[type=armor_stand,name=main,scores={gameSTART=!0}] ~~~ execute @a[tag=op,tag=set.start.players.6] ~~~ tellraw @s { "rawtext" : [ { "text" : "§f§l起床战争 · 无限火力 >> §r§c此时无法修改开始游戏最少需要玩家数" } ] }
execute @e[type=armor_stand,name=main,scores={gameSTART=!0}] ~~~ execute @a[tag=op,tag=set.start.players.7] ~~~ tellraw @s { "rawtext" : [ { "text" : "§f§l起床战争 · 无限火力 >> §r§c此时无法修改开始游戏最少需要玩家数" } ] }
execute @e[type=armor_stand,name=main,scores={gameSTART=!0}] ~~~ execute @a[tag=op,tag=set.start.players.8] ~~~ tellraw @s { "rawtext" : [ { "text" : "§f§l起床战争 · 无限火力 >> §r§c此时无法修改开始游戏最少需要玩家数" } ] }
#删除非tag=op玩家的tag
execute @a[tag=!op,tag=set.start.players.2] ~~~ tag @s remove set.start.players.2
execute @a[tag=!op,tag=set.start.players.3] ~~~ tag @s remove set.start.players.3
execute @a[tag=!op,tag=set.start.players.4] ~~~ tag @s remove set.start.players.4
execute @a[tag=!op,tag=set.start.players.5] ~~~ tag @s remove set.start.players.5
execute @a[tag=!op,tag=set.start.players.6] ~~~ tag @s remove set.start.players.6
execute @a[tag=!op,tag=set.start.players.7] ~~~ tag @s remove set.start.players.7
execute @a[tag=!op,tag=set.start.players.8] ~~~ tag @s remove set.start.players.8
#非gameSTART=0时删除玩家的tag
execute @e[type=armor_stand,name=main,scores={gameSTART=!0}] ~~~ tag @a remove set.start.players.2
execute @e[type=armor_stand,name=main,scores={gameSTART=!0}] ~~~ tag @a remove set.start.players.3
execute @e[type=armor_stand,name=main,scores={gameSTART=!0}] ~~~ tag @a remove set.start.players.4
execute @e[type=armor_stand,name=main,scores={gameSTART=!0}] ~~~ tag @a remove set.start.players.5
execute @e[type=armor_stand,name=main,scores={gameSTART=!0}] ~~~ tag @a remove set.start.players.6
execute @e[type=armor_stand,name=main,scores={gameSTART=!0}] ~~~ tag @a remove set.start.players.7
execute @e[type=armor_stand,name=main,scores={gameSTART=!0}] ~~~ tag @a remove set.start.players.8
#检测玩家获得tag后给盔甲架对应tag
execute @a[tag=op,tag=set.start.players.2] ~~~ execute @e[type=armor_stand,name=main,scores={gameSTART=0},tag=!set.start.players.2] ~~~ tag @s add set.start.players.2
execute @a[tag=op,tag=set.start.players.2] ~~~ tag @s remove set.start.players.2
execute @a[tag=op,tag=set.start.players.3] ~~~ execute @e[type=armor_stand,name=main,scores={gameSTART=0},tag=!set.start.players.3] ~~~ tag @s add set.start.players.3
execute @a[tag=op,tag=set.start.players.3] ~~~ tag @s remove set.start.players.3
execute @a[tag=op,tag=set.start.players.4] ~~~ execute @e[type=armor_stand,name=main,scores={gameSTART=0},tag=!set.start.players.4] ~~~ tag @s add set.start.players.4
execute @a[tag=op,tag=set.start.players.4] ~~~ tag @s remove set.start.players.4
execute @a[tag=op,tag=set.start.players.5] ~~~ execute @e[type=armor_stand,name=main,scores={gameSTART=0},tag=!set.start.players.5] ~~~ tag @s add set.start.players.5
execute @a[tag=op,tag=set.start.players.5] ~~~ tag @s remove set.start.players.5
execute @a[tag=op,tag=set.start.players.6] ~~~ execute @e[type=armor_stand,name=main,scores={gameSTART=0},tag=!set.start.players.6] ~~~ tag @s add set.start.players.6
execute @a[tag=op,tag=set.start.players.6] ~~~ tag @s remove set.start.players.6
execute @a[tag=op,tag=set.start.players.7] ~~~ execute @e[type=armor_stand,name=main,scores={gameSTART=0},tag=!set.start.players.7] ~~~ tag @s add set.start.players.7
execute @a[tag=op,tag=set.start.players.7] ~~~ tag @s remove set.start.players.7
execute @a[tag=op,tag=set.start.players.8] ~~~ execute @e[type=armor_stand,name=main,scores={gameSTART=0},tag=!set.start.players.8] ~~~ tag @s add set.start.players.8
execute @a[tag=op,tag=set.start.players.8] ~~~ tag @s remove set.start.players.8
#检测管理员调整开始人数(给予盔甲架tag后自动删除其他矛盾的tag)
#拥有tag set.start.players.2 时：
execute @e[type=armor_stand,name=main,scores={gameSTART=0},tag=set.start.players.2,tag=!have.set.start.players.2] ~~~ function commands/test_tag/set.start.players.2
#拥有tag set.start.players.3 时：
execute @e[type=armor_stand,name=main,scores={gameSTART=0},tag=set.start.players.3,tag=!have.set.start.players.3] ~~~ function commands/test_tag/set.start.players.3
#拥有tag set.start.players.4 时：
execute @e[type=armor_stand,name=main,scores={gameSTART=0},tag=set.start.players.4,tag=!have.set.start.players.4] ~~~ function commands/test_tag/set.start.players.4
#拥有tag set.start.players.5 时：
execute @e[type=armor_stand,name=main,scores={gameSTART=0},tag=set.start.players.5,tag=!have.set.start.players.5] ~~~ function commands/test_tag/set.start.players.5
#拥有tag set.start.players.6 时：
execute @e[type=armor_stand,name=main,scores={gameSTART=0},tag=set.start.players.6,tag=!have.set.start.players.6] ~~~ function commands/test_tag/set.start.players.6
#拥有tag set.start.players.7 时：
execute @e[type=armor_stand,name=main,scores={gameSTART=0},tag=set.start.players.7,tag=!have.set.start.players.7] ~~~ function commands/test_tag/set.start.players.7
#拥有tag set.start.players.8 时：
execute @e[type=armor_stand,name=main,scores={gameSTART=0},tag=set.start.players.8,tag=!have.set.start.players.8] ~~~ function commands/test_tag/set.start.players.8
#检测人数
execute @e[type=armor_stand,scores={gameSTART=0}] ~~~ execute @e[type=player] ~~~ scoreboard players add @e[type=armor_stand,scores={gameSTART=0},tag=reset_OK] "大厅人数" 1
execute @e[type=armor_stand,scores={gameSTART=0},tag=reset_OK] ~~~ scoreboard players operation @a "大厅人数" = @s "大厅人数"
execute @e[type=armor_stand,scores={gameSTART=0},tag=reset_OK] ~~~ scoreboard players operation @a "开始倒计时" = @s "开始倒计时"
#房主更改游戏开始所需人数时tellraw提示
execute @e[type=armor_stand,scores={gameSTART=0},tag=set.start.players.2,tag=!set.players.2.tellrawed] ~~~ function commands/test_tag/set.players.2.tellrawed
execute @e[type=armor_stand,scores={gameSTART=0},tag=set.start.players.3,tag=!set.players.3.tellrawed] ~~~ function commands/test_tag/set.players.3.tellrawed
execute @e[type=armor_stand,scores={gameSTART=0},tag=set.start.players.4,tag=!set.players.4.tellrawed] ~~~ function commands/test_tag/set.players.4.tellrawed
execute @e[type=armor_stand,scores={gameSTART=0},tag=set.start.players.5,tag=!set.players.5.tellrawed] ~~~ function commands/test_tag/set.players.5.tellrawed
execute @e[type=armor_stand,scores={gameSTART=0},tag=set.start.players.6,tag=!set.players.6.tellrawed] ~~~ function commands/test_tag/set.players.6.tellrawed
execute @e[type=armor_stand,scores={gameSTART=0},tag=set.start.players.7,tag=!set.players.7.tellrawed] ~~~ function commands/test_tag/set.players.7.tellrawed
execute @e[type=armor_stand,scores={gameSTART=0},tag=set.start.players.8,tag=!set.players.8.tellrawed] ~~~ function commands/test_tag/set.players.8.tellrawed
#游戏结束时大厅actionbar
execute @e[type=armor_stand,scores={gameSTART=0,starting=0..1},tag=reset_OK] ~~~ execute @a ~~~ titleraw @s actionbar { "rawtext" : [ { "text" : "§r§f等级： §b§l" },{ "score" : { "name" : "@s" , "objective" : "等级"}},{ "text" : "    §r§f经验： §b§l" },{ "score" : { "name" : "@s" , "objective" : "等级经验"}},{ "text" : "§b / 5000\n" },{ "text" : "§r§f硬币： §e§l" },{ "score" : { "name" : "@s" , "objective" : "硬币数"}},{ "text" : "\n§r§f总击杀数： §e§l" },{ "score" : { "name" : "@s" , "objective" : "总击杀数"}},{ "text" : "\n§r§f总胜利数： §e§l" },{ "score" : { "name" : "@s" , "objective" : "胜场数"}} ] }
#等待玩家时设置等待显示计分板
execute @e[type=armor_stand,name=main,scores={gameSTART=0,function_tick=20}] ~~~ function set_gameSTART0_waiting_scoreboard
#开始倒计时-1
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=1..,function_tick=20},tag=reset_OK] ~~~ scoreboard players add @s "开始倒计时" -1
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=1..,function_tick=20},tag=reset_OK] ~~~ title @a times 0 40 0
#设置计分板游戏倒计时
execute @e[type=armor_stand,scores={gameSTART=0,starting=1,function_tick=20,"开始倒计时"=0..20},tag=reset_OK] ~~~ function refresh_starting_scoreboard
execute @e[type=armor_stand,scores={gameSTART=0,starting=0..1},tag=reset_OK] ~~~ scoreboard players reset 地图正在重置，请稍候 "等待显示"
#设置starting值
execute @e[type=armor_stand,name=main,scores={gameSTART=0}] ~~~ function set.game.starting
#初始化重复检测大厅人数
scoreboard players reset * "大厅人数"
#检测人数开始游戏相关结束================
#开始游戏倒计时title
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0..20},tag=reset_OK] ~~~ function startgame_timer
#玩家tag指令相关================
#玩家获取或被夺去tag=op时提示
execute @a[tag=op,tag=!get.op.tellrawed] ~~~ tellraw @s { "rawtext" : [ { "text" : "§f§l起床战争 · 无限火力 >> §r§a您已取得管理员权限，\n输入/tag @s add command.help获取帮助" } ] }
execute @a[tag=op,tag=!get.op.tellrawed] ~~~ tag @s add get.op.tellrawed
execute @a[tag=!op,tag=get.op.tellrawed] ~~~ tellraw @s { "rawtext" : [ { "text" : "§f§l起床战争 · 无限火力 >> §r§c您的管理员权限已被夺去" } ] }
execute @a[tag=!op,tag=get.op.tellrawed] ~~~ tag @s remove get.op.tellrawed
#command.help
execute @a[tag=!op,tag=command.help] ~~~ tag @s remove command.help
execute @a[tag=!op,tag=command.help.1] ~~~ tag @s remove command.help.1
execute @a[tag=!op,tag=command.help.2] ~~~ tag @s remove command.help.2
execute @a[tag=op,tag=command.help] ~~~ function commands/command.help
execute @a[tag=op,tag=command.help.1] ~~~ function commands/command.help.1
execute @a[tag=op,tag=command.help.2] ~~~ function commands/command.help.2
#command.set.player.ban.negative
execute @a[tag=command.set.player.ban.negative] ~~~ function commands/command.set.player.ban.negative
#command.set.player.ban.cheat
execute @a[tag=command.set.player.ban.cheat] ~~~ function commands/command.set.player.ban.cheat
#command.set.player.ban.bad_words
execute @a[tag=command.set.player.ban.bad_words] ~~~ function commands/command.set.player.ban.bad_words
#玩家tag指令相关结束================
#防止地图关键区域被破坏相关================
#防止稀有资源刷新点被破坏
execute @e[type=armor_stand,scores={gameSTART=1..2,function_tick=20}] ~~~ setblock 0 181 0 emerald_block
execute @e[type=armor_stand,scores={gameSTART=1..2,function_tick=20}] ~~~ setblock 25 185 25 diamond_block
execute @e[type=armor_stand,scores={gameSTART=1..2,function_tick=20}] ~~~ setblock -25 185 25 diamond_block
execute @e[type=armor_stand,scores={gameSTART=1..2,function_tick=20}] ~~~ setblock 25 185 -25 diamond_block
execute @e[type=armor_stand,scores={gameSTART=1..2,function_tick=20}] ~~~ setblock -25 185 -25 diamond_block
#地图1-防止资源点被破坏
execute @e[type=armor_stand,scores={gameSTART=1..2,"游戏地图"=1,function_tick=20}] ~~~ fill -1 183 57 1 183 55 wooden_slab 5
execute @e[type=armor_stand,scores={gameSTART=1..2,"游戏地图"=1,function_tick=20}] ~~~ fill -1 183 -57 1 183 -55 wooden_slab 5
#地图2-防止资源点被破坏
execute @e[type=armor_stand,scores={gameSTART=1..2,"游戏地图"=2,function_tick=20}] ~~~ fill -1 183 57 1 183 55 stained_glass
execute @e[type=armor_stand,scores={gameSTART=1..2,"游戏地图"=2,function_tick=20}] ~~~ fill -1 183 -57 1 183 -55 stained_glass
#地图3-防止资源点被破坏
execute @e[type=armor_stand,scores={gameSTART=1..2,"游戏地图"=3,function_tick=20}] ~~~ fill 1 183 57 -1 183 55 prismarine 2
execute @e[type=armor_stand,scores={gameSTART=1..2,"游戏地图"=3,function_tick=20}] ~~~ fill -1 183 -57 1 183 -55 prismarine 2
#防止地图关键区域被破坏相关结束================
#游戏区域tag+degrade
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @a[scores={"分队"=1..2},x=-63,y=171,z=-63,dx=126,dy=33,dz=126] ~~~ tag @s add degrade
#传送结束时有分队值的玩家到大厅并清空背包
execute @e[type=armor_stand,scores={gameSTART=0}] ~~~ tp @a[scores={"分队"=1..2},tag=!insider] -200 200 -200
execute @e[type=armor_stand,scores={gameSTART=0}] ~~~ clear @a[tag=!insider]
execute @e[type=armor_stand,scores={gameSTART=0}] ~~~ scoreboard players set @a[scores={"分队"=1..2}] "分队" 0
#检测蓝队床情况#蓝队√-游戏显示
execute @e[type=armor_stand,scores={gameSTART=1,"蓝床存活"=1}] ~~~ scoreboard players set "§b蓝队 §a✔" "游戏显示" -5
execute @e[type=armor_stand,scores={gameSTART=1,"蓝床存活"=0}] ~~~ scoreboard players reset "§b蓝队 §a✔" "游戏显示"
#检测红队床情况#红队√-游戏显示
execute @e[type=armor_stand,scores={gameSTART=1,"红床存活"=1}] ~~~ scoreboard players set "§c红队 §a✔" "游戏显示" -4
execute @e[type=armor_stand,scores={gameSTART=1,"红床存活"=0}] ~~~ scoreboard players reset "§c红队 §a✔" "游戏显示"
#事件系统相关================
#事件开始初始化
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=0}] ~~~ scoreboard players set "§a绿宝石生成点 II 级" "游戏显示" 120
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=0}] ~~~ scoreboard players set @s "显示事件" 1
#事件倒计时-1
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=1..11,function_tick=20}] ~~~ scoreboard players add @s "事件倒计时" -1
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=1,function_tick=20}] ~~~ scoreboard players add "§a绿宝石生成点 II 级" "游戏显示" -1
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=2,function_tick=20}] ~~~ scoreboard players add "§b钻石生成点 II 级" "游戏显示" -1
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=3,function_tick=20}] ~~~ scoreboard players add "§a绿宝石生成点 III 级" "游戏显示" -1
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=4,function_tick=20}] ~~~ scoreboard players add "§b钻石生成点 III 级" "游戏显示" -1
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=5,function_tick=20}] ~~~ scoreboard players add "§d刷新手持黑曜石猪灵" "游戏显示" -1
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=6,function_tick=20}] ~~~ scoreboard players add "§d刷新手持末影珍珠猪灵" "游戏显示" -1
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=7,function_tick=20}] ~~~ scoreboard players add "§4床自毁警告" "游戏显示" -1
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=8,function_tick=20}] ~~~ scoreboard players add "§4§l床自毁" "游戏显示" -1
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=9,function_tick=20}] ~~~ scoreboard players add "§4平局警告" "游戏显示" -1
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=10,function_tick=20}] ~~~ scoreboard players add "§4平局警告" "游戏显示" -1
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=11,function_tick=20}] ~~~ scoreboard players add "§4§l游戏平局结束" "游戏显示" -1
#事件1
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=1}] ~~~ function events/event_1
#事件2
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=1..2}] ~~~ function events/event_2
#事件3
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=2..3}] ~~~ function events/event_3
#事件4
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=3..4}] ~~~ function events/event_4
#事件5
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=4..5}] ~~~ function events/event_5
#事件6
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=5..6}] ~~~ function events/event_6
#事件7
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=6..7}] ~~~ function events/event_7
#事件8
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=7}] ~~~ function events/event_8
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=8}] ~~~ function events/event_8
#事件9
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=8}] ~~~ function events/event_9
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=9}] ~~~ function events/event_9
#事件10
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=9..10}] ~~~ function events/event_10
#平局
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=10}] ~~~ function events/event_draw
#事件相关结束================
#游戏开始时自动获取经验和硬币
execute @e[type=armor_stand,scores={gameSTART=1,function_tick=20,fc_tick_cycle=10}] ~~~ tag @a add get.xp.game
execute @e[type=armor_stand,scores={gameSTART=1,function_tick=20,fc_tick_cycle=10}] ~~~ tag @a add get.coin.game
#遍历获取经验
tag @e[type=armor_stand,name=main] add 可进行下一遍经验遍历
execute @a[scores={"get_xp遍历"=1}] ~~~ tag @e[type=armor_stand,name=main] remove 可进行下一遍经验遍历
execute @e[type=armor_stand,name=main,tag=可进行下一遍经验遍历] ~~~ scoreboard players set @a[tag=get.xp.game] "get_xp遍历" 1
execute @e[type=armor_stand,name=main,tag=可进行下一遍经验遍历] ~~~ scoreboard players set @a[tag=get.xp.soul] "get_xp遍历" 1
execute @e[type=armor_stand,name=main,tag=可进行下一遍经验遍历] ~~~ scoreboard players set @a[tag=get.xp.desbed] "get_xp遍历" 1
scoreboard players set @a[x=0,y=200,z=0,c=1,scores={"get_xp遍历"=1}] "xp遍历中" 1
execute @a[scores={"xp遍历中"=1},tag=get.xp.game] ~~~ scoreboard players operation @s "等级经验" += @e[type=armor_stand,name=main] xp_get_game
execute @a[scores={"xp遍历中"=1},tag=get.xp.game] ~~~ execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ tellraw @a[scores={"xp遍历中"=1},tag=get.xp.game] {"rawtext":[{"text":"§3在线奖励， 获得经验 "},{"score":{"name":"@s","objective":"xp_get_game"}}]}
execute @a[scores={"xp遍历中"=1},tag=get.xp.game] ~~~ tag @s remove get.xp.game
execute @a[scores={"xp遍历中"=1},tag=get.xp.soul] ~~~ scoreboard players operation @s "等级经验" += @e[type=armor_stand,name=main] xp_get_soul
execute @a[scores={"xp遍历中"=1},tag=get.xp.soul] ~~~ execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ tellraw @a[scores={"xp遍历中"=1},tag=get.xp.soul] {"rawtext":[{"text":"§3击杀玩家， 获得经验 "},{"score":{"name":"@s","objective":"xp_get_soul"}}]}
execute @a[scores={"xp遍历中"=1},tag=get.xp.soul] ~~~ tag @s remove get.xp.soul
execute @a[scores={"xp遍历中"=1},tag=get.xp.desbed] ~~~ scoreboard players operation @s "等级经验" += @e[type=armor_stand,name=main] xp_get_desbed
execute @a[scores={"xp遍历中"=1},tag=get.xp.desbed] ~~~ execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ tellraw @a[scores={"xp遍历中"=1},tag=get.xp.desbed] {"rawtext":[{"text":"§3破坏床， 获得经验 "},{"score":{"name":"@s","objective":"xp_get_desbed"}}]}
execute @a[scores={"xp遍历中"=1},tag=get.xp.desbed] ~~~ tag @s remove get.xp.desbed
execute @a[scores={"xp遍历中"=1}] ~~~ scoreboard players reset @s "get_xp遍历"
execute @a[scores={"xp遍历中"=1}] ~~~ scoreboard players reset @s "xp遍历中"
#遍历获取硬币
tag @e[type=armor_stand,name=main] add 可进行下一遍硬币遍历
execute @a[scores={"get_coin遍历"=1}] ~~~ tag @e[type=armor_stand,name=main] remove 可进行下一遍硬币遍历
execute @e[type=armor_stand,name=main,tag=可进行下一遍硬币遍历] ~~~ scoreboard players set @a[tag=get.coin.game] "get_coin遍历" 1
execute @e[type=armor_stand,name=main,tag=可进行下一遍硬币遍历] ~~~ scoreboard players set @a[tag=get.coin.soul] "get_coin遍历" 1
execute @e[type=armor_stand,name=main,tag=可进行下一遍硬币遍历] ~~~ scoreboard players set @a[tag=get.coin.desbed] "get_coin遍历" 1
scoreboard players set @a[x=0,y=200,z=0,c=1,scores={"get_coin遍历"=1}] "coin遍历中" 1
execute @a[scores={"coin遍历中"=1},tag=get.coin.game] ~~~ scoreboard players operation @s "硬币数" += @e[type=armor_stand,name=main] coin_get_game
execute @a[scores={"coin遍历中"=1},tag=get.coin.game] ~~~ execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ tellraw @a[scores={"coin遍历中"=1},tag=get.coin.game] {"rawtext":[{"text":"§e在线奖励， 获得硬币 "},{"score":{"name":"@s","objective":"coin_get_game"}}]}
execute @a[scores={"coin遍历中"=1},tag=get.coin.game] ~~~ tag @s remove get.coin.game
execute @a[scores={"coin遍历中"=1},tag=get.coin.soul] ~~~ scoreboard players operation @s "硬币数" += @e[type=armor_stand,name=main] coin_get_soul
execute @a[scores={"coin遍历中"=1},tag=get.coin.soul] ~~~ execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ tellraw @a[scores={"coin遍历中"=1},tag=get.coin.soul] {"rawtext":[{"text":"§e击杀玩家， 获得硬币 "},{"score":{"name":"@s","objective":"coin_get_soul"}}]}
execute @a[scores={"coin遍历中"=1},tag=get.coin.soul] ~~~ tag @s remove get.coin.soul
execute @a[scores={"coin遍历中"=1},tag=get.coin.desbed] ~~~ scoreboard players operation @s "硬币数" += @e[type=armor_stand,name=main] coin_get_desbed
execute @a[scores={"coin遍历中"=1},tag=get.coin.desbed] ~~~ execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ tellraw @a[scores={"coin遍历中"=1},tag=get.coin.desbed] {"rawtext":[{"text":"§e破坏床， 获得硬币 "},{"score":{"name":"@s","objective":"coin_get_desbed"}}]}
execute @a[scores={"coin遍历中"=1},tag=get.coin.desbed] ~~~ tag @s remove get.coin.desbed
execute @a[scores={"coin遍历中"=1}] ~~~ scoreboard players reset @s "get_coin遍历"
execute @a[scores={"coin遍历中"=1}] ~~~ scoreboard players reset @s "coin遍历中"
#升级
execute @a[scores={"等级经验"=5000..}] ~~~ scoreboard players add @s "等级" 1
execute @a[scores={"等级经验"=5000..}] ~~~ tellraw @s {"rawtext":[{"text":"§6§l■■■■■ 升 级 ■■■■■\n§r§6您升级到了 "},{ "score" : { "name" : "@s" , "objective" : "等级"}},{"text":" 级！"}]}
execute @a[scores={"等级经验"=5000..}] ~~~ scoreboard players set @s "等级经验" 0
#检测buy_wool_success并给予不同颜色的羊毛
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={"分队"=1},tag=buy_wool_success] ~~~ give @s wool 16 14
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={"分队"=2},tag=buy_wool_success] ~~~ give @s wool 16 11
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={"分队"=1..2},tag=buy_wool_success] ~~~ tag @s remove buy_wool_success
#重复复制蓝队商店
execute @e[type=armor_stand,name=main,scores={gameSTART=1,function_tick=20}] ~~~ clone 273 4 260 272 5 251 -5 185 -57
#重复复制红队商店
execute @e[type=armor_stand,name=main,scores={gameSTART=1,function_tick=20}] ~~~ clone 271 5 260 270 4 251 4 185 48
#复制蓝队团队升级告示牌
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝陷阱等级"=1,function_tick=20}] ~~~ clone 313 4 311 313 4 311 -4 185 -57
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝陷阱等级"=2,function_tick=20}] ~~~ clone 313 5 311 313 5 311 -4 185 -57
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝陷阱等级"=3,function_tick=20}] ~~~ clone 313 6 311 313 6 311 -4 185 -57
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝保护等级"=1,function_tick=20}] ~~~ clone 313 4 312 313 4 312 -4 185 -56
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝保护等级"=2,function_tick=20}] ~~~ clone 313 5 312 313 5 312 -4 185 -56
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝保护等级"=3,function_tick=20}] ~~~ clone 313 6 312 313 6 312 -4 185 -56
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝锋利等级"=1,function_tick=20}] ~~~ clone 313 4 313 313 4 313 -4 185 -55
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝锋利等级"=2,function_tick=20}] ~~~ clone 313 5 313 313 5 313 -4 185 -55
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝锋利等级"=3,function_tick=20}] ~~~ clone 313 6 313 313 6 313 -4 185 -55
#复制红队团队升级告示牌
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红陷阱等级"=1,function_tick=20}] ~~~ clone 310 4 313 310 4 313 4 185 57
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红陷阱等级"=2,function_tick=20}] ~~~ clone 310 5 313 310 5 313 4 185 57
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红陷阱等级"=3,function_tick=20}] ~~~ clone 310 6 313 310 6 313 4 185 57
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红保护等级"=1,function_tick=20}] ~~~ clone 310 4 312 310 4 312 4 185 56
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红保护等级"=2,function_tick=20}] ~~~ clone 310 5 312 310 5 312 4 185 56
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红保护等级"=3,function_tick=20}] ~~~ clone 310 6 312 310 6 312 4 185 56
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红锋利等级"=1,function_tick=20}] ~~~ clone 310 4 311 310 4 311 4 185 55
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红锋利等级"=2,function_tick=20}] ~~~ clone 310 5 311 310 5 311 4 185 55
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红锋利等级"=3,function_tick=20}] ~~~ clone 310 6 311 310 6 311 4 185 55
#will_get_XP
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={"分队"=1..2,will_get_XP=1..}] ~~~ xp 1L @s
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={"分队"=1..2,will_get_XP=1..}] ~~~ scoreboard players add @s will_get_XP -1
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={"分队"=1..2,will_get_XP=1..}] ~~~ xp 1L @s
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={"分队"=1..2,will_get_XP=1..}] ~~~ scoreboard players add @s will_get_XP -1
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={"分队"=1..2,will_get_XP=1..}] ~~~ xp 1L @s
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={"分队"=1..2,will_get_XP=1..}] ~~~ scoreboard players add @s will_get_XP -1
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={"分队"=1..2,will_get_XP=1..}] ~~~ xp 1L @s
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={"分队"=1..2,will_get_XP=1..}] ~~~ scoreboard players add @s will_get_XP -1
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={"分队"=1..2,will_get_XP=1..}] ~~~ xp 1L @s
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={"分队"=1..2,will_get_XP=1..}] ~~~ scoreboard players add @s will_get_XP -1
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={"分队"=1..2,will_get_XP=1..}] ~~~ xp 1L @s
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={"分队"=1..2,will_get_XP=1..}] ~~~ scoreboard players add @s will_get_XP -1
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={"分队"=1..2,will_get_XP=1..}] ~~~ xp 1L @s
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={"分队"=1..2,will_get_XP=1..}] ~~~ scoreboard players add @s will_get_XP -1
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={"分队"=1..2,will_get_XP=1..}] ~~~ xp 1L @s
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={"分队"=1..2,will_get_XP=1..}] ~~~ scoreboard players add @s will_get_XP -1
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={"分队"=1..2,will_get_XP=1..}] ~~~ xp 1L @s
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={"分队"=1..2,will_get_XP=1..}] ~~~ scoreboard players add @s will_get_XP -1
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={"分队"=1..2,will_get_XP=1..}] ~~~ xp 1L @s
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={"分队"=1..2,will_get_XP=1..}] ~~~ scoreboard players add @s will_get_XP -1
#删除背包内的铁锭，金锭，钻石，绿宝石
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ clear @a iron_ingot
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ clear @a gold_ingot
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ clear @a diamond
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ clear @a emerald
#停止升级的声音
#execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ stopsound @a random.levelup 