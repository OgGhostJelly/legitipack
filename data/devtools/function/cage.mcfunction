fill ~-1 ~-1 ~-1 ~1 ~3 ~1 minecraft:iron_bars outline
fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:tuff_bricks replace
fill ~-1 ~3 ~-1 ~1 ~3 ~1 minecraft:tuff_bricks replace
gamemode adventure @s
particle angry_villager
playsound minecraft:block.iron_door.close ambient @a ~ ~ ~

effect give @s minecraft:saturation 1 255
effect give @s minecraft:resistance 1 255
effect give @s minecraft:regeneration 1 255

execute at @s if block ~ ~ ~ minecraft:water run effect give @s blindness 300 255 true
execute at @s if block ~ ~ ~ minecraft:water run playsound minecraft:ambient.basalt_deltas.mood ambient @s
execute at @s if block ~ ~ ~ minecraft:water run playsound minecraft:ambient.basalt_deltas.mood ambient @s
execute at @s if block ~ ~ ~ minecraft:water run playsound minecraft:ambient.basalt_deltas.mood ambient @s
execute at @s if block ~ ~ ~ minecraft:water run playsound minecraft:ambient.basalt_deltas.mood ambient @s
execute at @s if block ~ ~ ~ minecraft:water run playsound minecraft:ambient.basalt_deltas.mood ambient @s