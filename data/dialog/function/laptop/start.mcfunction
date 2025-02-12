scoreboard players set @s dialog_check 7

scoreboard players set @s laptop_open 1
tellraw @s ["",{"text":"You booted up your laptop. What would you like to do?\n\n"},{"text":"[STARE AT THE SCREEN]","clickEvent":{"action":"run_command","value":"/trigger dialog set 10"}},{"text":"\n"},{"text":"[OPEN YOUR JOURNAL]","clickEvent":{"action":"run_command","value":"/trigger dialog set 9"}},{"text":"\n"},{"text":"[LOG OFF]","clickEvent":{"action":"run_command","value":"/trigger dialog set 8"}}]
execute at @s run playsound minecraft:item.spyglass.use master @s
execute at @s run playsound minecraft:block.campfire.crackle master @s