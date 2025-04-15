scoreboard players operation .target devtools_ride = @s devtools_ride
execute as @e[type=player] if score @s devtools_ride = .target devtools_ride run tag @s add DevtoolsRideTarget
tp @s @e[tag=DevtoolsRideTarget,limit=1]

scoreboard players set .state devtools_ride -1

execute as @e[tag=DevtoolsRideTarget,limit=1] if predicate devtools:not_sneaking_or_swimming run scoreboard players set .state devtools_ride 0
execute as @e[tag=DevtoolsRideTarget,limit=1] if predicate devtools:is_sneaking run scoreboard players set .state devtools_ride 1
execute as @e[tag=DevtoolsRideTarget,limit=1] if predicate devtools:is_swimming run scoreboard players set .state devtools_ride 2

execute at @s if score .state devtools_ride matches 0 run tp @s ~ ~1.9 ~
execute at @s if score .state devtools_ride matches 1 run tp @s ~ ~1.5 ~
execute at @s if score .state devtools_ride matches 2 run tp @s ~ ~0.5 ~
execute at @s if score .state devtools_ride matches -1 run tellraw @a[tag=is_admin] {"text":"Warning: Invalid player state for ride","color":"yellow"}

execute as @e[tag=DevtoolsRideTarget] run tag @s remove DevtoolsRideTarget
