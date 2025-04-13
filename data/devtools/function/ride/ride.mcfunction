# If sel doesn't have an armor stand then create a new one.
    $execute as $(sel) unless score @s devtools_ride matches -2147483648..2147483647 run function devtools:ride/new

# Ride the target armor stand
    $scoreboard players operation .target devtools_ride = $(sel) devtools_ride
    execute as @e[type=armor_stand] if score @s devtools_ride = .target devtools_ride run tag @s add DevtoolsRideTarget
    ride @s mount @e[tag=DevtoolsRideTarget,limit=1]
    execute as @e[tag=DevtoolsRideTarget] run tag @s remove DevtoolsRideTarget

execute as @s[tag=is_admin] run tellraw @s {"text":"You may need to disable collisions using `collisionRule` in `/team modify`", "color": "yellow"}
