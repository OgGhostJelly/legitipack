# Summon an armor stand and give it the same score as @s

summon minecraft:armor_stand ~ ~ ~ {Tags:["DevtoolsRideSetup"],Invisible:1b,Marker:1b,NoBasePlate:1b}
scoreboard players operation @e[tag=DevtoolsRideSetup] devtools_ride = .new devtools_ride
tag @e[tag=DevtoolsRideSetup] remove DevtoolsRideSetup

scoreboard players operation @s devtools_ride = .new devtools_ride
scoreboard players add .new devtools_ride 1
