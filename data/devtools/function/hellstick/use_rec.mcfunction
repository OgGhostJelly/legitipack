particle minecraft:cherry_leaves
scoreboard players remove @s devtools_hellstick_raycast_lim 1

tag @s add HellstickSelf
execute as @n[tag=!HellstickSelf,type=player] run return run function devtools:send_to_hell
tag @s remove HellstickSelf

execute if score @s devtools_hellstick_raycast_lim matches 1.. positioned ^ ^ ^0.5 run function devtools:hellstick/use_rec
execute if score @s devtools_hellstick_raycast_lim matches ..0 run scoreboard players reset @s devtools_hellstick_raycast_lim