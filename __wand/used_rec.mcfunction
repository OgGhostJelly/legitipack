tp @s ^ ^ ^0.1
particle minecraft:flame
scoreboard players remove @s mapimation_wand_raycast_lim 1
execute unless block ^ ^ ^0.1 minecraft:air run function mapimation:wand/used_do
execute at @s if score @s mapimation_wand_raycast_lim matches 1.. run function mapimation:wand/used_rec