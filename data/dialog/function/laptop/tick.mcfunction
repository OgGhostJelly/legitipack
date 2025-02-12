# If the player is too far from the laptop, then log them out
execute as @a[scores={laptop_open=1}] at @s unless entity @e[distance=..5.5,tag=LaptopInteraction] run tellraw @s "You left the laptop"
execute as @a[scores={laptop_open=1}] at @s unless entity @e[distance=..5.5,tag=LaptopInteraction] run function dialog:laptop/log_off_inner