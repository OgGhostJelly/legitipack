scoreboard players set @a[tag=is_admin] devtools_check_gm 1
execute as @a[gamemode=creative] unless score @s devtools_check_gm matches 1 run tellraw @a[tag=is_admin] [{"selector":"@s"}," was detected in GMC without admin"]
execute as @a[gamemode=creative] unless score @s devtools_check_gm matches 1 run gamemode adventure