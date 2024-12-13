$scoreboard players add .$(anim) mapimation_tick 1
$execute if score .$(anim) mapimation_tick matches $(max).. run scoreboard players set .$(anim) mapimation_tick 0

$execute as @e[tag=$(anim)_frame] run data modify entity @s Invulnerable set value true
$execute as @e[tag=$(anim)_frame] run data modify entity @s Invisible set value true
$execute as @e[tag=$(anim)_frame] run data modify entity @s Silent set value true
$execute as @e[tag=$(anim)_frame] run data modify entity @s Fixed set value true