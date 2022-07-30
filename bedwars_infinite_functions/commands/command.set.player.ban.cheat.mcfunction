execute @a[tag=command.set.player.ban.cheat] ~~~ scoreboard players set @s black_list_time 300
execute @a[tag=command.set.player.ban.cheat] ~~~ scoreboard players set @s black_list 1
execute @a[tag=command.set.player.ban.cheat] ~~~ scoreboard players set @s black_list_cheat 1
execute @a[tag=command.set.player.ban.cheat] ~~~ tellraw @a { "rawtext" : [ { "text" : "§l§c封禁 >> §f" },{ "selector" : "@s" },{ "text" : " §c因游戏作弊被管理员封禁 5 分钟" } ] }
execute @a[tag=command.set.player.ban.cheat] ~~~ tag @s remove command.set.player.ban.cheat