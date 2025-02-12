# tick.mcfunction
# Any commands placed here will run every tick, like a repeating command block.

# Example: Create some flame particles at your feet when standing on a magma block.
#execute as @a at @s if block ~ ~-1 ~ magma_block run particle flame ~ ~ ~ 0.125 0.0 0.125 0.05 1

# Example 2: Predicates
# Predicates let you easily check things that are otherwise complicated to detect. 
# We check if a player is sneaking, then give them a potion effect.
#execute as @a at @s if predicate cwwode:is_sneaking run effect give @s regeneration 1 0

#effect give @a minecraft:resistance infinite 255 true

#make dialog use /trigger and not /function

effect give @a[gamemode=adventure] minecraft:saturation infinite 255 true
effect give @a[gamemode=adventure] minecraft:weakness infinite 255 true

team join nonametag @a

execute as @a if score @s interactionCooldown matches 0.. run scoreboard players remove @s interactionCooldown 1

execute as @a unless score @s welcomeMessage matches 1 run tellraw @s {"text":"Welcome to WHITE SPACE. You have been living here for as long as you can remember."}
execute as @a unless score @s welcomeMessage matches 1 run scoreboard players set @s welcomeMessage 1