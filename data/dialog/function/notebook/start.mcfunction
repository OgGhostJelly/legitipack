scoreboard players set @s dialog_check 5

execute store success score @s has_notebook_check run clear @s minecraft:written_book[minecraft:custom_data={notebook:1b}] 0
execute if score @s has_notebook_check matches 0 at @s run function dialog:notebook/give
execute if score @s has_notebook_check matches 1 at @s run function dialog:notebook/greedy