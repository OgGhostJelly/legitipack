scoreboard objectives add devtools_boomystick_raycast_lim dummy
scoreboard objectives add devtools_zappystick_raycast_lim dummy
scoreboard objectives add devtools_hellstick_raycast_lim dummy

scoreboard objectives remove devtools_check_gm
scoreboard objectives add devtools_check_gm dummy

tellraw @a "Devtools Loaded"