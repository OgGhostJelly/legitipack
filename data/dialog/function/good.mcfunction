execute unless score @s dialog_check matches 1 run return 0
scoreboard players set @s dialog_check 2
tellraw @s "OK cool!"