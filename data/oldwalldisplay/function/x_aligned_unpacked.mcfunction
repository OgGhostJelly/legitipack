$tellraw @a "at ~ ~ ~ from ($(from_z), $(from_y), $(x)) to ($(to_z), $(to_y), $(x))"

data modify storage walldisplay:reg x_aligned set value {transformation:{left_rotation:[0.0f, 0.0f, 0.0f, 1.0f], translation:[0.0f, 0.0f, 0.0f], right_rotation:[0.0f, 0.0f, 0.0f, 1.0f], scale:[0.0f, 0.0f, 0.0f]}}

# Calculate size
scoreboard players set .block_size walldisplay_reg 40

$scoreboard players set .world_size_x walldisplay_reg $(to_z)
$scoreboard players remove .world_size_x walldisplay_reg $(from_z)

$scoreboard players set .world_size_y walldisplay_reg $(to_y)
$scoreboard players remove .world_size_y walldisplay_reg $(from_y)

scoreboard players operation .size_x walldisplay_reg = .world_size_x walldisplay_reg
scoreboard players operation .size_y walldisplay_reg = .world_size_y walldisplay_reg
scoreboard players operation .size_x walldisplay_reg *= .block_size walldisplay_reg
scoreboard players operation .size_y walldisplay_reg *= .block_size walldisplay_reg

execute store result storage walldisplay:reg x_aligned.transformation.scale[0] float 1 run scoreboard players get .size_x walldisplay_reg
execute store result storage walldisplay:reg x_aligned.transformation.scale[1] float 1 run scoreboard players get .size_y walldisplay_reg

# Calculate translation
execute store result score .position_x walldisplay_reg run data get entity @s Pos[0]
execute store result score .position_y walldisplay_reg run data get entity @s Pos[1]
execute store result score .position_z walldisplay_reg run data get entity @s Pos[2]

$scoreboard players set .translation_x walldisplay_reg $(from_z)
$scoreboard players set .translation_y walldisplay_reg $(from_y)
$scoreboard players set .translation_z walldisplay_reg $(x)

scoreboard players operation .translation_x walldisplay_reg -= .position_x walldisplay_reg
scoreboard players operation .translation_y walldisplay_reg -= .position_y walldisplay_reg
scoreboard players operation .translation_z walldisplay_reg -= .position_z walldisplay_reg

execute store result storage walldisplay:reg x_aligned.transformation.translation[0] float 1 run scoreboard players get .translation_x walldisplay_reg
execute store result storage walldisplay:reg x_aligned.transformation.translation[1] float 1 run scoreboard players get .translation_y walldisplay_reg
execute store result storage walldisplay:reg x_aligned.transformation.translation[2] float 1 run scoreboard players get .translation_z walldisplay_reg

data modify storage walldisplay:reg x_aligned.transformation.left_rotation[0] set value 90f

function walldisplay:summon_wd with storage walldisplay:reg x_aligned