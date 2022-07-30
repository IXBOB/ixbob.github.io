execute @a[tag=command.set.player.ban.negative] ~~~ scoreboard players set @s black_list_time 300
execute @a[tag=command.set.player.ban.negative] ~~~ scoreboard players set @s black_list 1
execute @a[tag=command.set.player.ban.negative] ~~~ scoreboard players set @s black_list_nega 1
execute @a[tag=command.set.player.ban.negative] ~~~ tellraw @a { "rawtext" : [ { "text" : "§l§c封禁 >> §f" },{ "selector" : "@s" },{ "text" : " §c因消极游戏被管理员封禁 5 分钟" } ] }
execute @a[tag=command.set.player.ban.negative] ~~~ tag @s remove command.set.player.ban.negative