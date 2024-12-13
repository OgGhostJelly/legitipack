# to += step
execute store result score .to mapimation_reg_anim_stepped run data get storage mapimation:reg anim/stepped.to
$scoreboard players add .to mapimation_reg_anim_stepped $(step)
execute store result storage mapimation:reg anim/stepped.to int 1 run scoreboard players get .to mapimation_reg_anim_stepped

function mapimation:frame/do with storage mapimation:reg anim/stepped

# from = to
data modify storage mapimation:reg anim/stepped.from set from storage mapimation:reg anim/stepped.to

# sf += 1
execute store result score .sf mapimation_reg_anim_stepped run data get storage mapimation:reg anim/stepped.sf
scoreboard players add .sf mapimation_reg_anim_stepped 1
execute store result storage mapimation:reg anim/stepped.sf int 1 run scoreboard players get .sf mapimation_reg_anim_stepped

# if sf < times: recurse
$execute unless score .sf mapimation_reg_anim_stepped matches $(times).. run function mapimation:anim/stepped_rec with storage mapimation:reg anim/stepped