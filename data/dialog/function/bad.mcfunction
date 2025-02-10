execute unless score @s dialog_check matches 1 run return 0
scoreboard players set @s dialog_check 3
tellraw @s "Answer again!"