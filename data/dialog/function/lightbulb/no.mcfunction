execute unless score @s dialog_check matches 1 run return 0
scoreboard players set @s dialog_check 3

execute at @s run playsound minecraft:block.chain.place master @s
tellraw @s ""