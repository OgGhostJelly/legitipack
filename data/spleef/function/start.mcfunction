clear @a[tag=spleef_player]

kill @e[type=item]
kill @e[type=arrow]

effect give @a[tag=spleef_player] regeneration 5 255 true
effect give @a[tag=spleef_player] saturation 5 255 true
effect give @a[tag=spleef_player] resistance 5 255 true

effect give @a[tag=spleef_player] weakness infinite 255 true

gamemode adventure @a[tag=spleef_player] 

scoreboard players set @a[tag=spleef_player] spleef_players 0

tp @a[tag=spleef_player] 115 99 -586

scoreboard players set .countdown spleef_reg 6
function spleef:countdown