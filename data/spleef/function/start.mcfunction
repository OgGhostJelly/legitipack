clear @a[tag=spleef_player]

kill @e[type=item]
kill @e[type=arrow]

effect give @a[tag=spleef_player] regeneration 5 255 true
effect give @a[tag=spleef_player] saturation 5 255 true
effect give @a[tag=spleef_player] resistance 5 255 true

effect give @a[tag=spleef_player] weakness infinite 255 true

gamemode adventure @a[tag=spleef_player]

scoreboard objectives remove spleef_is_alive
scoreboard objectives add spleef_is_alive dummy
scoreboard players set @a spleef_is_alive 1

tp @a[tag=spleef_player] 115 99 -586

scoreboard players set .countdown spleef_reg 6
function spleef:countdown