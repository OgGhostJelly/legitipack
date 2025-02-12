scoreboard players set @s dialog_check 6

tellraw @s {"text":"A tissue box for wiping your sorrows away."}
give @s minecraft:paper[minecraft:custom_name='{"text":"Tissue","italic":false}']
execute at @s run playsound minecraft:item.book.page_turn master @s