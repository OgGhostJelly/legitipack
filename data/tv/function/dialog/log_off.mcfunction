execute if score @s tvOpen = !true tvOpen run execute at @s run playsound minecraft:ui.stonecutter.select_recipe master @s
execute if score @s tvOpen = !true tvOpen run tellraw @s "The heat from the laptop warmed your lap"
execute if score @s tvOpen = !true tvOpen run execute at @s run playsound minecraft:block.beacon.deactivate master @s
execute if score @s tvOpen = !true tvOpen run scoreboard players set @s tvOpen 0