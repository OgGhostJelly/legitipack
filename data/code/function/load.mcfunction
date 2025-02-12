# load.mcfunction
# This function is called every time you run /reload, and when the world first starts.

# NOTE:
# Always set your gamerules, difficulty, time, and worldspawn in the load function!
# These are NOT SAVED when worlds restart at the moment.
gamerule doMobSpawning false
gamerule mobGriefing false
gamerule doFireTick false
gamerule doImmediateRespawn true
gamerule keepInventory true
gamerule sendCommandFeedback false

scoreboard objectives add interactionCooldown dummy

# To make sure your datapack is working, a load message can be useful.
tellraw @a "The Code is Load"

team add nonametag
team modify nonametag nametagVisibility hideForOwnTeam

# You can do whatever you want in the load function!
#give @a sea_pickle{Enchantments: [{id: "minecraft:silk_touch", lvl: 2}]}

scoreboard objectives add welcomeMessage dummy

setworldspawn 181 90 -735 180

bossbar add 1 "Chicken boss"