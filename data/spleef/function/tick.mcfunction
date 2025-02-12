execute as @a run scoreboard players reset @s spleef_height
execute as @a[tag=spleef_player] store result score @s spleef_height run data get entity @s Pos[1]
execute as @a[scores={spleef_height=..84}] run function spleef:to_spectator