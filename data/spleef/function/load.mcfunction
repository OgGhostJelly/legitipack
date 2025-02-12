scoreboard objectives remove spleef_reg
scoreboard objectives add spleef_reg dummy

scoreboard players set .countdown spleef_reg 0
scoreboard players set .building_enabled spleef_reg 1

scoreboard objectives remove spleef_height
scoreboard objectives add spleef_height dummy

# A list of all spleef players, value of 0 means they are alive, any value above 0 means they are dead
scoreboard objectives add spleef_players deathCount