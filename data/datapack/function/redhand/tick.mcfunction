execute as @e[tag=redhand_frame] at @s unless entity @e[tag=RedhandBody,distance=..1.5,limit=1] run kill @s
execute as @e[tag=RedhandBody] at @s unless entity @e[tag=redhand_frame,distance=..1.5,limit=1] run function datapack:redhand/summon_frame

# Rotate frame depending on body rotation
execute as @e[tag=redhand_frame] store result score @s redhandRotationX at @s as @e[tag=RedhandBody,distance=..1.5,limit=1] run data get entity @s Rotation[0]
# ItemRotation:0b
execute as @e[tag=redhand_frame] if score @s redhandRotationX matches 45..135 run data modify entity @s ItemRotation set value 0b
# ItemRotation:1b
execute as @e[tag=redhand_frame] if score @s redhandRotationX matches 135..225 run data modify entity @s ItemRotation set value 1b
execute as @e[tag=redhand_frame] if score @s redhandRotationX matches -225..-135 run data modify entity @s ItemRotation set value 1b
# ItemRotation:2b
execute as @e[tag=redhand_frame] if score @s redhandRotationX matches -135..-45 run data modify entity @s ItemRotation set value 2b
# ItemRotation:3b
execute as @e[tag=redhand_frame] if score @s redhandRotationX matches -45..45 run data modify entity @s ItemRotation set value 3b

# If redhand gets too close to spawn, teleport to random spawnpoint
execute positioned 181 90 -735 as @e[tag=RedhandBody,distance=..6] at @s run tp @s @e[tag=RedhandSpawn,sort=random,limit=1]

# If redhand gets too close to spawn, teleport to random spawnpoint
execute as @e[tag=RedhandSpawnEgg] at @s run summon marker ~ ~ ~ {Tags:["RedhandSpawn"]}
execute as @e[tag=RedhandSpawnEgg] run kill @s

execute as @e[tag=RedhandBody] at @s as @e[tag=RedhandBody,distance=0.01..0.2] run tp @s @e[tag=RedhandSpawn,sort=random,limit=1]
execute as @e[tag=RedhandBody] at @s as @a[gamemode=adventure,distance=..1.25] run function datapack:redhand/warp

execute store result score !redhandCount redhand if entity @e[tag=RedhandBody]
execute if score !redhandCount redhand < !redhandMin redhand at @e[tag=RedhandSpawn,sort=random,limit=1] run function datapack:redhand/summon