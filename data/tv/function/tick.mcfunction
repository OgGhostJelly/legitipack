scoreboard players add !animationTimer tv 1
execute if score !animationTimer tv matches 12.. run scoreboard players set !animationTimer tv 0

execute if score !animationTimer tv matches 0..2 as @e[tag=TvFrame] run data modify entity @s Item.components.minecraft:map_id set value 78
execute if score !animationTimer tv matches 2..4 as @e[tag=TvFrame] run data modify entity @s Item.components.minecraft:map_id set value 79
execute if score !animationTimer tv matches 4..6 as @e[tag=TvFrame] run data modify entity @s Item.components.minecraft:map_id set value 78
execute if score !animationTimer tv matches 6..8 as @e[tag=TvFrame] run data modify entity @s Item.components.minecraft:map_id set value 79
execute if score !animationTimer tv matches 8..10 as @e[tag=TvFrame] run data modify entity @s Item.components.minecraft:map_id set value 78
execute if score !animationTimer tv matches 10..12 as @e[tag=TvFrame] run data modify entity @s Item.components.minecraft:map_id set value 79

execute as @e[tag=TvInteraction] on target unless score @s interactionCooldown matches 0.. run function tv:on_interacted
execute as @e[tag=TvInteraction] run data remove entity @s interaction

execute as @a[scores={tvOpen=1}] at @s unless entity @e[distance=..5.5,tag=TvInteraction] run tellraw @s "You left the laptop"
execute as @a[scores={tvOpen=1}] at @s unless entity @e[distance=..5.5,tag=TvInteraction] run function tv:dialog/log_off

scoreboard players enable @a tvDialog
execute as @a[scores={tvDialog=1}] run function tv:dialog/stare
execute as @a[scores={tvDialog=2}] run function tv:dialog/open_journal
execute as @a[scores={tvDialog=3}] run function tv:dialog/log_off
execute as @a if score @s tvDialog matches 1.. run scoreboard players reset @s tvDialog