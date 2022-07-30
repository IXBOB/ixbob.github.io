execute @a[tag=command.set.player.ban.bad_words] ~~~ scoreboard players set @s black_list_time 300
execute @a[tag=command.set.player.ban.bad_words] ~~~ scoreboard players set @s black_list 1
execute @a[tag=command.set.player.ban.bad_words] ~~~ scoreboard players set @s black_list_bword 1
execute @a[tag=command.set.player.ban.bad_words] ~~~ tellraw @a { "rawtext" : [ { "text" : "§l§c封禁 >> §f" },{ "selector" : "@s" },{ "text" : " §c因不雅言语被管理员封禁 5 分钟" } ] }
execute @a[tag=command.set.player.ban.bad_words] ~~~ tag @s remove command.set.player.ban.bad_words