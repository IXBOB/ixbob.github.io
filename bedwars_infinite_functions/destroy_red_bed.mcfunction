execute @s ~~~ detect 0 185 46 air 0 title @a[scores={"分队"=1}] title §c§l床被摧毁
execute @s ~~~ detect 0 185 46 air 0 title @a[scores={"分队"=1}] subtitle §c您已无法重生
execute @s ~~~ detect 0 185 46 air 0 playsound mob.enderdragon.growl @a[scores={"分队"=1..2}]
execute @s[scores={desbed_tell_num=1}] ~~~ detect 0 185 46 air 0 tellraw @a { "rawtext" : [{ "text" : "\n§f§l床被破坏了 >> §c§l红队的床 §f被大卸八块，摧毁者： §b" },{ "selector" :  "@e[type=player,x=0,y=185,z=46,r=10,c=1,scores={分队=2}]" },{ "text" : "\n§r" }]}
execute @s[scores={desbed_tell_num=2}] ~~~ detect 0 185 46 air 0 tellraw @a { "rawtext" : [{ "text" : "\n§f§l床被破坏了 >> §c§l红队的床 §f被切成五花肉，摧毁者： §b" },{ "selector" :  "@e[type=player,x=0,y=185,z=46,r=10,c=1,scores={分队=2}]" },{ "text" : "\n§r" }]}
execute @s[scores={desbed_tell_num=3}] ~~~ detect 0 185 46 air 0 tellraw @a { "rawtext" : [{ "text" : "\n§f§l床被破坏了 >> §c§l红队的床 §f在一声巨响中消失了，摧毁者： §b" },{ "selector" :  "@e[type=player,x=0,y=185,z=46,r=10,c=1,scores={分队=2}]" },{ "text" : "\n§r" }]}
execute @s[scores={desbed_tell_num=4}] ~~~ detect 0 185 46 air 0 tellraw @a { "rawtext" : [{ "text" : "\n§f§l床被破坏了 >> §c§l红队的床 §f在原地失去了踪影，摧毁者： §b" },{ "selector" :  "@e[type=player,x=0,y=185,z=46,r=10,c=1,scores={分队=2}]" },{ "text" : "\n§r" }]}
execute @s[scores={desbed_tell_num=5}] ~~~ detect 0 185 46 air 0 tellraw @a { "rawtext" : [{ "text" : "\n§f§l床被破坏了 >> §c§l红队的床 §f被做成了美味的蛋糕，摧毁者： §b" },{ "selector" :  "@e[type=player,x=0,y=185,z=46,r=10,c=1,scores={分队=2}]" },{ "text" : "\n§r" }]}
execute @s ~~~ detect 0 185 46 air 0 tag @e[type=player,x=0,y=185,z=46,r=10,c=1,scores={分队=2}] add get.xp.desbed
execute @s ~~~ detect 0 185 46 air 0 tag @e[type=player,x=0,y=185,z=46,r=10,c=1,scores={分队=2}] add get.coin.desbed
execute @s ~~~ detect 0 185 46 air 0 scoreboard players set @e[type=armor_stand,name=main,scores={gameSTART=1}] "红床存活" 0