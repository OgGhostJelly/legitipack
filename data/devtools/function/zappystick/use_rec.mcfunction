particle minecraft:electric_spark
scoreboard players remove @s devtools_zappystick_raycast_lim 1
execute unless block ~ ~ ~ minecraft:air unless block ~ ~ ~ minecraft:water run return run summon minecraft:lightning_bolt
execute if score @s devtools_zappystick_raycast_lim matches 1.. positioned ^ ^ ^0.5 run function devtools:zappystick/use_rec
execute if score @s devtools_zappystick_raycast_lim matches ..0 run scoreboard players reset @s devtools_zappystick_raycast_lim