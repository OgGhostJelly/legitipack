scoreboard objectives add devtools_boomystick_raycast_lim dummy
scoreboard objectives add devtools_zappystick_raycast_lim dummy
scoreboard objectives add devtools_hellstick_raycast_lim dummy

function devtools:ride_inner/load

tellraw @a "Devtools Loaded"
