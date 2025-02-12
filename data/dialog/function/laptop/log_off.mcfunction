execute unless score @s dialog_check matches 7 run return 0
scoreboard players set @s dialog_check 8
execute if score @s laptop_open matches 1 run function dialog:laptop/log_off_inner