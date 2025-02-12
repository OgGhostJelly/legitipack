# NOTE:
# Always set your gamerules, difficulty, time, and worldspawn in the load function!
# These are NOT SAVED when worlds restart at the moment.
gamerule doMobSpawning false
gamerule mobGriefing false
gamerule doFireTick false
gamerule doImmediateRespawn true
gamerule keepInventory true
gamerule sendCommandFeedback false

# Security check:
# Reset the player gm when starting the server for the first time
scoreboard objectives remove datapack_reset
scoreboard objectives add datapack_reset dummy

# Initialize the welcome message
scoreboard objectives add welcomeMessage dummy

# Hide nametags
team add nonametag
team modify nonametag nametagVisibility hideForOwnTeam

# Set the world spawn
setworldspawn 181 90 -735 180

# To make sure your datapack is working, a load message can be useful.
tellraw @a "The Code is Load"