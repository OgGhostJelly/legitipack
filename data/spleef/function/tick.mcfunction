scoreboard players reset @a[tag=!spleef_player,scores={spleef_players=1}] spleef_players

tag @a[tag=spleef_player] remove spleef_player
tag @a[scores={spleef_players=-2147483648..2147483647}] add spleef_player

execute as @a run scoreboard players reset @s spleef_height
execute as @a[tag=spleef_player] store result score @s spleef_height run data get entity @s Pos[1]
execute as @a[scores={spleef_players=0,spleef_height=..80}] run function spleef:to_spectator

execute as @a[scores={spleef_players=0,spleef_height=115..}] run tellraw @s {"text": "you are too high...","color": "red"}
execute as @a[scores={spleef_players=0,spleef_height=115..}] at @s run tp @s ~ ~-1 ~

execute as @a[gamemode=!spectator,scores={spleef_players=1..}] run function spleef:to_spectator