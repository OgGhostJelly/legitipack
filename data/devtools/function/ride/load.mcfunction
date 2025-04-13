execute as @e[type=armor_stand,scores={devtools_ride=-2147483648..2147483647}] run kill @s

scoreboard objectives remove devtools_ride
scoreboard objectives add devtools_ride dummy
scoreboard players set .new devtools_ride 0
