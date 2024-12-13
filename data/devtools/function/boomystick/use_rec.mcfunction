particle minecraft:explosion
scoreboard players remove @s devtools_boomystick_raycast_lim 1
execute unless block ~ ~ ~ minecraft:air unless block ~ ~ ~ minecraft:water run return run summon minecraft:creeper ~ ~ ~ {ExplosionRadius:8b,Fuse:0b,ignited:1b,powered:1b,Silent:1b}
execute if score @s devtools_boomystick_raycast_lim matches 1.. positioned ^ ^ ^0.5 run function devtools:boomystick/use_rec
execute if score @s devtools_boomystick_raycast_lim matches ..0 run scoreboard players reset @s devtools_boomystick_raycast_lim