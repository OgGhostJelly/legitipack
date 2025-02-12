
scoreboard players remove .countdown spleef_reg 1
tellraw @a ["spleef starts in ", {"score": {"name": ".countdown", "objective": "spleef_reg"}}, "..."]
execute if score .countdown spleef_reg matches 1.. run schedule function spleef:countdown 20t
execute if score .countdown spleef_reg matches 0 run function spleef:after_countdown