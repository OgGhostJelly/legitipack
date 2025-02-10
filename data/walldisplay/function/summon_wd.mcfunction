$data modify storage walldisplay:reg summon_wd.args set value {from:$(from),to:$(to),face:$(face)}

# Get from
execute store result score .from_x walldisplay_reg run data get storage walldisplay:reg summon_wd.args.from[0]
execute store result score .from_y walldisplay_reg run data get storage walldisplay:reg summon_wd.args.from[1]
execute store result score .from_z walldisplay_reg run data get storage walldisplay:reg summon_wd.args.from[2]

# Get to
execute store result score .to_x walldisplay_reg run data get storage walldisplay:reg summon_wd.args.to[0]
execute store result score .to_y walldisplay_reg run data get storage walldisplay:reg summon_wd.args.to[1]
execute store result score .to_z walldisplay_reg run data get storage walldisplay:reg summon_wd.args.to[2]

# Get position
execute store result score .position_x walldisplay_reg run data get entity @s Pos[0]
execute store result score .position_y walldisplay_reg run data get entity @s Pos[1]
execute store result score .position_z walldisplay_reg run data get entity @s Pos[2]

# translation = from
scoreboard players operation .translation_x walldisplay_reg = .from_x walldisplay_reg
scoreboard players operation .translation_y walldisplay_reg = .from_y walldisplay_reg
scoreboard players operation .translation_z walldisplay_reg = .from_z walldisplay_reg

# translation -= position
scoreboard players operation .translation_x walldisplay_reg -= .position_x walldisplay_reg
scoreboard players operation .translation_y walldisplay_reg -= .position_y walldisplay_reg
scoreboard players operation .translation_z walldisplay_reg -= .position_z walldisplay_reg

# world_size = to
scoreboard players operation .world_size_x walldisplay_reg = .to_x walldisplay_reg
scoreboard players operation .world_size_y walldisplay_reg = .to_y walldisplay_reg
scoreboard players operation .world_size_z walldisplay_reg = .to_z walldisplay_reg

# world_size -= from
scoreboard players operation .world_size_x walldisplay_reg -= .from_x walldisplay_reg
scoreboard players operation .world_size_y walldisplay_reg -= .from_y walldisplay_reg
scoreboard players operation .world_size_z walldisplay_reg -= .from_z walldisplay_reg

# size = world_size
scoreboard players operation .size_x walldisplay_reg = .world_size_x walldisplay_reg
scoreboard players operation .size_y walldisplay_reg = .world_size_y walldisplay_reg
scoreboard players operation .size_z walldisplay_reg = .world_size_z walldisplay_reg

# size *= world_size
scoreboard players set .block_size walldisplay_reg 40
scoreboard players operation .size_x walldisplay_reg *= .block_size walldisplay_reg
scoreboard players operation .size_y walldisplay_reg *= .block_size walldisplay_reg
scoreboard players operation .size_z walldisplay_reg *= .block_size walldisplay_reg

# Set left_rotation and right_rotation
scoreboard players set .left_rotation_x walldisplay_reg 0
scoreboard players set .left_rotation_y walldisplay_reg 0
scoreboard players set .left_rotation_z walldisplay_reg 0
scoreboard players set .left_rotation_w walldisplay_reg 1
scoreboard players set .right_rotation_x walldisplay_reg 0
scoreboard players set .right_rotation_y walldisplay_reg 0
scoreboard players set .right_rotation_z walldisplay_reg 0
scoreboard players set .right_rotation_w walldisplay_reg 1

$function walldisplay:summon_wd_$(face)

# Put
data modify storage walldisplay:reg summon_wd.out set value {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[20f,20f,20f]}}

# Put translation
execute store result storage walldisplay:reg summon_wd.out.transformation.translation[0] float 1 run scoreboard players get .translation_x walldisplay_reg
execute store result storage walldisplay:reg summon_wd.out.transformation.translation[1] float 1 run scoreboard players get .translation_y walldisplay_reg
execute store result storage walldisplay:reg summon_wd.out.transformation.translation[2] float 1 run scoreboard players get .translation_z walldisplay_reg

# Put size
execute store result storage walldisplay:reg summon_wd.out.transformation.scale[0] float 1 run scoreboard players get .size_x walldisplay_reg
execute store result storage walldisplay:reg summon_wd.out.transformation.scale[1] float 1 run scoreboard players get .size_y walldisplay_reg
execute store result storage walldisplay:reg summon_wd.out.transformation.scale[2] float 1 run scoreboard players get .size_z walldisplay_reg

# Put left_rotation
execute store result storage walldisplay:reg summon_wd.out.transformation.left_rotation[0] float 1 run scoreboard players get .left_rotation_x walldisplay_reg
execute store result storage walldisplay:reg summon_wd.out.transformation.left_rotation[1] float 1 run scoreboard players get .left_rotation_y walldisplay_reg
execute store result storage walldisplay:reg summon_wd.out.transformation.left_rotation[2] float 1 run scoreboard players get .left_rotation_z walldisplay_reg
execute store result storage walldisplay:reg summon_wd.out.transformation.left_rotation[3] float 1 run scoreboard players get .left_rotation_w walldisplay_reg

# Put right_rotation
execute store result storage walldisplay:reg summon_wd.out.transformation.right_rotation[0] float 1 run scoreboard players get .right_rotation_x walldisplay_reg
execute store result storage walldisplay:reg summon_wd.out.transformation.right_rotation[1] float 1 run scoreboard players get .right_rotation_y walldisplay_reg
execute store result storage walldisplay:reg summon_wd.out.transformation.right_rotation[2] float 1 run scoreboard players get .right_rotation_z walldisplay_reg
execute store result storage walldisplay:reg summon_wd.out.transformation.right_rotation[3] float 1 run scoreboard players get .right_rotation_w walldisplay_reg

function walldisplay:macro_summon_wall with storage walldisplay:reg summon_wd.out