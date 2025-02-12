execute as @e[tag=RedhandFrame] at @s unless entity @e[tag=RedhandBody,distance=..1.5,limit=1] run kill @s
execute as @e[tag=RedhandBody] at @s unless entity @e[tag=RedhandFrame,distance=..1.5,limit=1] run function redhand:summon_frame

# Rotate frame depending on body rotation
execute as @e[tag=RedhandFrame] store result score @s redhandRotationX at @s as @e[tag=RedhandBody,distance=..1.5,limit=1] run data get entity @s Rotation[0]
# ItemRotation:0b
execute as @e[tag=RedhandFrame] if score @s redhandRotationX matches 45..135 run data modify entity @s ItemRotation set value 0b
# ItemRotation:1b
execute as @e[tag=RedhandFrame] if score @s redhandRotationX matches 135..225 run data modify entity @s ItemRotation set value 1b
execute as @e[tag=RedhandFrame] if score @s redhandRotationX matches -225..-135 run data modify entity @s ItemRotation set value 1b
# ItemRotation:2b
execute as @e[tag=RedhandFrame] if score @s redhandRotationX matches -135..-45 run data modify entity @s ItemRotation set value 2b
# ItemRotation:3b
execute as @e[tag=RedhandFrame] if score @s redhandRotationX matches -45..45 run data modify entity @s ItemRotation set value 3b

scoreboard players add !animationTimer redhand 1
execute if score !animationTimer redhand matches 20.. run scoreboard players set !animationTimer redhand 0

execute if score !animationTimer redhand matches 0..10 as @e[tag=RedhandFrame] run data modify entity @s Item.components.minecraft:map_id set value 82
execute if score !animationTimer redhand matches 10..20 as @e[tag=RedhandFrame] run data modify entity @s Item.components.minecraft:map_id set value 83

# If redhand gets too close to spawn, teleport to random spawnpoint
execute positioned 181 90 -735 as @e[tag=RedhandBody,distance=..6] at @s run tp @s @e[tag=RedhandSpawn,sort=random,limit=1]

# If redhand gets too close to spawn, teleport to random spawnpoint
execute as @e[tag=RedhandSpawnEgg] at @s run summon marker ~ ~ ~ {Tags:["RedhandSpawn"]}
execute as @e[tag=RedhandSpawnEgg] run kill @s

execute as @e[tag=RedhandBody] at @s as @e[tag=RedhandBody,distance=0.01..0.2] run tp @s @e[tag=RedhandSpawn,sort=random,limit=1]
execute as @e[tag=RedhandBody] at @s as @a[gamemode=adventure,distance=..1.25] run function redhand:warp

execute store result score !redhandCount redhand if entity @e[tag=RedhandBody]
execute if score !redhandCount redhand < !redhandMin redhand at @e[tag=RedhandSpawn,sort=random,limit=1] run function redhand:summon