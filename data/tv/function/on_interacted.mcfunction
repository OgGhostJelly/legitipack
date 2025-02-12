scoreboard players set @s interactionCooldown 10
scoreboard players set @s tvOpen 1
tellraw @s ["",{"text":"You booted up your laptop. What would you like to do?\n\n"},{"text":"[STARE AT THE SCREEN]","clickEvent":{"action":"run_command","value":"/trigger tvDialog set 1"}},{"text":"\n"},{"text":"[OPEN YOUR JOURNAL]","clickEvent":{"action":"run_command","value":"/trigger tvDialog set 2"}},{"text":"\n"},{"text":"[LOG OFF]","clickEvent":{"action":"run_command","value":"/trigger tvDialog set 3"}}]
execute at @s run playsound minecraft:item.spyglass.use master @s
execute at @s run playsound minecraft:block.campfire.crackle master @s