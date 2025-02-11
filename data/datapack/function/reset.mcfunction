# Set all players to adventure on server startup
# just in-case so they don't break anything
scoreboard players set @s datapack_reset 1
execute if entity @s[tag=is_admin] run return 0
gamemode adventure @s