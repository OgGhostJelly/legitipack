data modify storage walldisplay:reg z_aligned.transformation.right_rotation[1] set value 90f
scoreboard players operation .translation_x walldisplay_reg += .world_size_x walldisplay_reg
execute store result storage walldisplay:reg z_aligned.transformation.translation[0] float 1 run scoreboard players get .translation_x walldisplay_reg