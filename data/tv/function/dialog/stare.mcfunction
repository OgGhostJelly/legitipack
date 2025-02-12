execute if score @s tvOpen = !true tvOpen run execute at @s run playsound minecraft:ui.stonecutter.select_recipe master @s
execute if score @s tvOpen = !true tvOpen run tellraw @s "You stared at the screen."
execute if score @s tvOpen = !true tvOpen run execute at @s run playsound minecraft:block.campfire.crackle master @s