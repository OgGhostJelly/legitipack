scoreboard players add !animationTimer lightbulb 1
execute if score !animationTimer lightbulb matches 40.. run scoreboard players set !animationTimer lightbulb 0

execute if score !animationTimer lightbulb matches 0..10 as @e[tag=LightbulbFrame] run data modify entity @s Item.components.minecraft:map_id set value 91
execute if score !animationTimer lightbulb matches 10..20 as @e[tag=LightbulbFrame] run data modify entity @s Item.components.minecraft:map_id set value 92
execute if score !animationTimer lightbulb matches 20..30 as @e[tag=LightbulbFrame] run data modify entity @s Item.components.minecraft:map_id set value 93
execute if score !animationTimer lightbulb matches 30..40 as @e[tag=LightbulbFrame] run data modify entity @s Item.components.minecraft:map_id set value 92

execute as @e[tag=LightbulbInteraction] on target unless score @s interactionCooldown matches 0.. run function lightbulb:on_interacted
execute as @e[tag=LightbulbInteraction] run data remove entity @s interaction

scoreboard players enable @a lightbulbDialog
execute as @a[scores={lightbulbDialog=1}] run function lightbulb:dialog/yes
execute as @a[scores={lightbulbDialog=2}] run function lightbulb:dialog/no
execute as @a if score @s lightbulbDialog matches 1.. run scoreboard players reset @s lightbulbDialog