#分队
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ scoreboard players set @e[type=player] "分队" 0
#分队 1 (红)
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0},tag=reset_OK] ~~~ scoreboard players set @r[type=player,scores={"分队"=0}] "分队" 1
#分队 1 (蓝)
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0},tag=reset_OK] ~~~ scoreboard players set @r[type=player,scores={"分队"=0}] "分队" 2
#分队 1 (红)
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0},tag=reset_OK] ~~~ scoreboard players set @r[type=player,scores={"分队"=0}] "分队" 1
#分队 1 (蓝)
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0},tag=reset_OK] ~~~ scoreboard players set @r[type=player,scores={"分队"=0}] "分队" 2
#分队 1 (红)
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0},tag=reset_OK] ~~~ scoreboard players set @r[type=player,scores={"分队"=0}] "分队" 1
#分队 1 (蓝)
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0},tag=reset_OK] ~~~ scoreboard players set @r[type=player,scores={"分队"=0}] "分队" 2
#分队 1 (红)
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0},tag=reset_OK] ~~~ scoreboard players set @r[type=player,scores={"分队"=0}] "分队" 1
#分队 1 (蓝)
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0},tag=reset_OK] ~~~ scoreboard players set @r[type=player,scores={"分队"=0}] "分队" 2
#分队 1 (红)
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0},tag=reset_OK] ~~~ scoreboard players set @r[type=player,scores={"分队"=0}] "分队" 1
#分队 1 (蓝)
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0},tag=reset_OK] ~~~ scoreboard players set @r[type=player,scores={"分队"=0}] "分队" 2
#分队 1 (红)
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0},tag=reset_OK] ~~~ scoreboard players set @r[type=player,scores={"分队"=0}] "分队" 1
#分队 1 (蓝)
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0},tag=reset_OK] ~~~ scoreboard players set @r[type=player,scores={"分队"=0}] "分队" 2
#分队 1 (红)
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0},tag=reset_OK] ~~~ scoreboard players set @r[type=player,scores={"分队"=0}] "分队" 1
#分队 1 (蓝)
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0},tag=reset_OK] ~~~ scoreboard players set @r[type=player,scores={"分队"=0}] "分队" 2
#倒计时0 TP红
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ tp @a[scores={"分队"=1}] 0 186 53 facing 0 182 0
#倒计时0 TP蓝
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ tp @a[scores={"分队"=2}] 0 186 -53 facing 0 182 0
#倒计时0title.times
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ title @a[scores={"分队"=1..2}] times 10 60 10
#倒计时0 title
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ title @a title §a§l游戏开始
#倒计时0 subtitle
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ titleraw @a subtitle { "rawtext" : [{"translate":"%%2","with":{"rawtext":[{"selector":"@e[type=armor_stand,name=main,scores={游戏模式=2}]"},{"text":"§o§l疾速模式"},{"text":"§r§f§l普通模式"}]}} ] }
#红床存活 -> 1
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ scoreboard players set @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] "红床存活" 1
#蓝床存活 -> 1
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ scoreboard players set @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] "蓝床存活" 1
#gameSTART -> 1
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ scoreboard players set @e[type=armor_stand,name=main,scores={gameSTART=0}] gameSTART 1
#删除掉线玩家
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ kill @a[scores={"存活"=0}]
#重生时间 -> 5
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ scoreboard players set @a[scores={"分队"=1..2}] "重生时间" 5
#XP清空
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ xp -99999L @a
#剑等级 -> 1
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ scoreboard players set @a[scores={"分队"=1..2}] "剑等级" 1
#镐等级 -> 0
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ scoreboard players set @a[scores={"分队"=1..2}] "镐等级" 0
#斧等级 -> 0
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ scoreboard players set @a[scores={"分队"=1..2}] "斧等级" 0
#防具等级 -> 1
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ scoreboard players set @a[scores={"分队"=1..2}] "防具等级" 1
#kill经验球
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ kill @e[type=xp_orb]
#红陷阱等级 -> 0
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ scoreboard players set @s "红陷阱等级" 0
#红保护等级 -> 0
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ scoreboard players set @s "红保护等级" 0
#红锋利等级 -> 0
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ scoreboard players set @s "红锋利等级" 0
#蓝陷阱等级 -> 0
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ scoreboard players set @s "蓝陷阱等级" 0
#蓝保护等级 -> 0
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ scoreboard players set @s "蓝保护等级" 0
#蓝锋利等级 -> 0
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ scoreboard players set @s "蓝锋利等级" 0
#tag-HaveGotBaTo
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ tag @s remove have_got_base_tools
#瞬间恢复
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ effect @a[scores={"分队"=1..2}] instant_health 2 255 true
#tag - degrade
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ tag @a remove degrade
#setdisplay游戏显示
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ scoreboard objectives setdisplay sidebar "游戏显示"
#clear
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ clear @a[scores={"分队"=1..2}]
#set事件倒计时120
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ scoreboard players set @s "事件倒计时" 120
#set事件倒计时120
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ scoreboard players set §e下一个事件 "游戏显示" 121
#放置红石线
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ setblock 267 4 308 redstone_wire
#set-time.sec1 0
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ scoreboard players set @s game.time.sec.1 0
#set-time.sec2 0
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ scoreboard players set @s game.time.sec.2 0
#set-time.min1 0
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ scoreboard players set @s game.time.min.1 0
#set-time.min2 0
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ scoreboard players set @s game.time.min.2 0
#tag-HaveGotBaTo
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ tag @a remove have_got_base_tools
#tag-degrade
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ tag @a remove degrade
#tag-HaGoBaPicka
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ tag @a remove have_got_base_pickaxe
#tag-HaGoBaAxe
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ tag @a remove have_got_base_axe
#tag-HaGoBaSword
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ tag @a remove have_got_base_sword
#tag-have救援平台
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ tag @a remove "have救援平台"
#无敌时间 -> 60
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ scoreboard players set @a[scores={"分队"=1..2}] "无敌时间" 60
#tag-铁已遍历1
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ tag @a remove 铁已遍历1
#tag-铁已遍历2
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ tag @a remove 铁已遍历2
#tag-铁已遍历3
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ tag @a remove 铁已遍历3
#tag-铁遍历1
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ tag @a remove 铁遍历1
#tag-铁遍历2
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ tag @a remove 铁遍历2
#tag-铁遍历3
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ tag @a remove 铁遍历3
#tellraw获得无敌时间
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ execute @a[scores={"分队"=1..2}] ~~~ tellraw @s { "rawtext" : [ { "text" : "§f§l起床战争 · 无限火力 >> §b§l您获得了 3 秒无敌时间" } ] }
#击杀数 -> 0
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ execute @a[scores={"分队"=1..2}] ~~~ scoreboard players set @s "击杀数" 0
#游戏开始tellraw游戏玩法
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ tellraw @a { "rawtext" : [ { "text" : "§a§l▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀\n                     §f起床战争 \n \n §e保护你的床并摧毁敌人的床， 收集铁锭，金锭，绿宝石和钻石\n           来升级，使自身和队伍变得更强。\n \n§a§l▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀" } ] }
#给予木剑
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ replaceitem entity @a[scores={"分队"=1..2}] slot.hotbar 0 wooden_sword 1 0 {"minecraft:item_lock":{"mode":"lock_in_inventory"},"minecraft:keep_on_death":{}}
#给予剪刀
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ replaceitem entity @a[scores={"分队"=1..2}] slot.hotbar 1 shears 1 0 {"minecraft:item_lock":{"mode":"lock_in_inventory"},"minecraft:keep_on_death":{}}
#reset will_get_XP
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ scoreboard players reset * will_get_XP
#R_iron_count_1 -> 0
#R_iron_count_2 -> 0
#R_iron_count_3 -> 0
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.red_iron_1] R_iron_count_1 0
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.red_iron_2] R_iron_count_2 0
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.red_iron_3] R_iron_count_3 0
#B_iron_count_1 -> 0
#B_iron_count_2 -> 0
#B_iron_count_3 -> 0
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.blue_iron_1] B_iron_count_1 0
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.blue_iron_2] B_iron_count_2 0
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.blue_iron_3] B_iron_count_3 0
#R_spawned_iron_1 -> 0
#R_spawned_iron_2 -> 0
#R_spawned_iron_3 -> 0
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.red_iron_1] R_spawned_iron_1 0
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.red_iron_2] R_spawned_iron_2 0
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.red_iron_3] R_spawned_iron_3 0
#B_spawned_iron_1 -> 0
#B_spawned_iron_2 -> 0
#B_spawned_iron_3 -> 0
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.blue_iron_1] B_spawned_iron_1 0
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.blue_iron_2] B_spawned_iron_2 0
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.blue_iron_3] B_spawned_iron_3 0
#R_gold_count -> 0
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.red_gold] R_gold_count 0
#B_gold_count -> 0
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.blue_gold] B_gold_count 0
#R_spawned_gold -> 0
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.red_gold] R_spawned_gold 0
#B_spawned_gold -> 0
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.blue_gold] B_spawned_gold 0
#diamond_count_1 -> 0
#diamond_count_2 -> 0
#diamond_count_3 -> 0
#diamond_count_4 -> 0
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.diamond_1] diamond_count_1 0
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.diamond_2] diamond_count_2 0
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.diamond_3] diamond_count_3 0
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.diamond_4] diamond_count_4 0
#spawned_diam_1 -> 0
#spawned_diam_2 -> 0
#spawned_diam_3 -> 0
#spawned_diam_4 -> 0
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.diamond_1] spawned_diam_1 0
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.diamond_2] spawned_diam_2 0
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.diamond_3] spawned_diam_3 0
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.diamond_4] spawned_diam_4 0
#emerald_count -> 0
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.emerald] emerald_count 0
#spawned_emerald -> 0
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.emerald] spawned_emerald 0
#删除附魔锋利tag
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ tag @a remove have_upgraded_sword_sharpnessI
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ tag @a remove have_upgraded_sword_sharpnessII
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ tag @a remove have_upgraded_sword_sharpnessIII
#生成game_uid并赋予玩家
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ scoreboard players random @s game_uid 0 999999999
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ scoreboard players operation @a[scores={"分队"=1..2}] game_uid = @s game_uid
#starting -> 0
execute @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] ~~~ scoreboard players set @e[type=armor_stand,name=main,scores={starting=1,"开始倒计时"=0}] starting 0
