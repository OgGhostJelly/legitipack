$data modify storage mapimation:sf $(anim).$(sf).Item set from entity @e[tag=$(anim)_frame_sf$(sf),limit=1] Item
$data modify storage mapimation:sf $(anim).$(sf).ItemRotation set from entity @e[tag=$(anim)_frame_sf$(sf),limit=1] ItemRotation

$execute if score .$(anim) mapimation_tick matches $(from)..$(to) as @e[tag=$(anim)_frame] run data modify entity @s Item set from storage mapimation:sf $(anim).$(sf).Item
$execute if score .$(anim) mapimation_tick matches $(from)..$(to) as @e[tag=$(anim)_frame] run data modify entity @s ItemRotation set from storage mapimation:sf $(anim).$(sf).ItemRotation