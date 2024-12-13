function mapimation:sf_placer/load
function mapimation:anim/load

scoreboard objectives remove mapimation_tick
scoreboard objectives add mapimation_tick dummy

tellraw @a {"text":"Mapimation Loaded","color":"light_purple"}