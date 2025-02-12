scoreboard objectives remove spleef_reg
scoreboard objectives add spleef_reg dummy

scoreboard objectives remove spleef_height
scoreboard objectives add spleef_height dummy

# spleef_is_alive is created and then removed again in `start.mcfunction`
scoreboard objectives remove spleef_is_alive
scoreboard objectives add spleef_is_alive dummy

scoreboard players set .countdown spleef_reg 0
scoreboard players set .building_enabled spleef_reg 1