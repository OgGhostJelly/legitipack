execute at @s run playsound minecraft:ui.stonecutter.select_recipe master @s
tellraw @s "The heat from the laptop warmed your lap"
execute at @s run playsound minecraft:block.beacon.deactivate master @s
scoreboard players set @s laptop_open 0