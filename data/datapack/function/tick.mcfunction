# Security check:
# Reset the player gm when starting the server for the first time
execute as @a unless score @s datapack_reset matches -2147483648..2147483647 run function datapack:reset_gm

# Give users in gm adventure saturation and weakness
effect give @a[gamemode=adventure] minecraft:saturation infinite 255 true
effect give @a[gamemode=adventure] minecraft:weakness infinite 255 true

# Hide nametags
team join nonametag @a

# Welcome new players
execute as @a unless score @s welcomeMessage matches 1 run tellraw @s {"text":"Welcome to WHITE SPACE. You have been living here for as long as you can remember."}
execute as @a unless score @s welcomeMessage matches 1 run scoreboard players set @s welcomeMessage 1