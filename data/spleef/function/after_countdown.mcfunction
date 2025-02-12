tellraw @a "GO"

give @a[tag=spleef_player] golden_shovel[unbreakable={},can_break={blocks:["snow_block"]},enchantments={silk_touch:1}]
give @a[tag=spleef_player] bow
give @a[tag=spleef_player] tipped_arrow[potion_contents={potion:"minecraft:strong_healing"}] 16

execute if score .building_enabled spleef_reg matches 1 run gamemode survival @a[tag=spleef_player]

# The whitespace commands give infinite saturation to adventure mode players
# so we remove the saturation after the player changes to survival. (Won't work if building is off)
effect clear @a[tag=spleef_player] saturation