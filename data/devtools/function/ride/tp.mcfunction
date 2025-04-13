scoreboard players operation .target devtools_ride = @s devtools_ride
execute as @e[type=player] if score @s devtools_ride = .target devtools_ride run tag @s add DevtoolsRideTarget
tp @s @e[tag=DevtoolsRideTarget,limit=1]
execute at @s run tp @s ~ ~1.9 ~
execute as @e[tag=DevtoolsRideTarget] run tag @s remove DevtoolsRideTarget
