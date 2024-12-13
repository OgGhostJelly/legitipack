execute store result score @s mapimation_sf_placer_sf_num run data get entity @s SelectedItem.components."minecraft:custom_data".mapimation_sf_num
scoreboard players add @s mapimation_sf_placer_sf_num 1

# Modify inventory
summon chest_minecart ~ ~ ~ {Tags:["MapimationSFPlacerTempChest"]}
item replace entity @n[tag=MapimationSFPlacerTempChest] container.0 from entity @s weapon.mainhand

execute store result entity @n[tag=MapimationSFPlacerTempChest] Items[{Slot:0b}].components."minecraft:custom_data".mapimation_sf_num int 1 run scoreboard players get @s mapimation_sf_placer_sf_num
execute as @n[tag=MapimationSFPlacerTempChest] run function mapimation:sf_placer/set_data with entity @s Items[{Slot:0b}].components."minecraft:custom_data"

item replace entity @s weapon.mainhand from entity @n[tag=MapimationSFPlacerTempChest] container.0
kill @n[tag=MapimationSFPlacerTempChest]