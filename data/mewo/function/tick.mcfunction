scoreboard players add !mewoAnimationTimer mewo 1
execute if score !mewoAnimationTimer mewo matches 40.. run scoreboard players set !mewoAnimationTimer mewo 0

execute if score !mewoAnimationTimer mewo matches 0..20 as @e[tag=MewoFrame] run data modify entity @s Item.components.minecraft:map_id set value 46
execute if score !mewoAnimationTimer mewo matches 20..40 as @e[tag=MewoFrame] run data modify entity @s Item.components.minecraft:map_id set value 77

execute as @e[tag=MewoInteraction] on target unless score @s interactionCooldown matches 0.. run function mewo:on_interacted
execute as @e[tag=MewoInteraction] run data remove entity @s interaction