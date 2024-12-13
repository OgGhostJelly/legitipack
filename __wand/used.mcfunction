# Called by mapimation/advancement/wand_used.json when the right-click detection gets activated.
# Has code for a cooldown so the right click can't be spammed

advancement revoke @s only mapimation:wand_used
execute if score @s mapimation_wand_cooldown matches ..0 run summon marker ~ ~ ~ {Tags:["MapimationWandMarker"]}
execute if score @s mapimation_wand_cooldown matches ..0 run tp @n[type=minecraft:marker,tag=MapimationWandMarker] @s
execute if score @s mapimation_wand_cooldown matches ..0 as @n[type=minecraft:marker,tag=MapimationWandMarker] at @s positioned ~ ~1.8 ~ run function mapimation:wand/used_inner
execute if score @s mapimation_wand_cooldown matches ..0 run scoreboard players set @s mapimation_wand_cooldown 5