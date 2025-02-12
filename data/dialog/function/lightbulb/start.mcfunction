scoreboard players set @s dialog_check 1

execute at @s run playsound minecraft:block.chain.place master @s
tellraw @s ["",{"text":"A lightbulb hangs from the ceiling, wherever it is. Look into the lightbulb?\n\n"},{"text":"[YES]","clickEvent":{"action":"run_command","value":"/trigger dialog set 2"}},{"text":"\n"},{"text":"[NO]","clickEvent":{"action":"run_command","value":"/trigger dialog set 3"}}]