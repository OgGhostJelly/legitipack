scoreboard players set .left_rotation_y walldisplay_reg 2147483647
scoreboard players operation .translation_x walldisplay_reg += .world_size_x walldisplay_reg
scoreboard players operation .translation_z walldisplay_reg += .world_size_z walldisplay_reg
scoreboard players add .translation_z walldisplay_reg 1