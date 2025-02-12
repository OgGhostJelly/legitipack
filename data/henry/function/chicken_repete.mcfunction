data modify entity @e[limit=1,distance=..5,sort=furthest,type=minecraft:item] Age set value 1s
execute store result bossbar minecraft:1 value run data get entity @e[limit=1,type=chicken,tag=Chicken_boss] Health
execute store result bossbar minecraft:1 max run attribute @e[limit=1,type=chicken,tag=Chicken_boss] minecraft:generic.max_health base get

execute unless entity @e[type=minecraft:item,tag=seed] run data modify entity @e[limit=1,type=chicken,tag=Chicken_boss] Invulnerable set value 0b
execute as @e[type=minecraft:item,tag=seed] run data modify entity @e[limit=1,type=chicken,tag=Chicken_boss] Invulnerable set value 1b

execute positioned 111 100 -529 if entity @e[nbt={Item:{id:"minecraft:ominous_trial_key"}},distance=..1] positioned 111 100 -527 if entity @e[nbt={Item:{id:"minecraft:ominous_trial_key"}},distance=..1] run fill 106 102 -534 101 104 -529 minecraft:air replace minecraft:iron_bars

execute positioned 111 100 -529 unless entity @e[nbt={Item:{id:"minecraft:ominous_trial_key"}},distance=..1] positioned 111 100 -527 if entity @e[nbt={Item:{id:"minecraft:ominous_trial_key"}},distance=..1] run fill 106 102 -534 101 104 -529 minecraft:iron_bars replace minecraft:air
execute positioned 111 100 -529 if entity @e[nbt={Item:{id:"minecraft:ominous_trial_key"}},distance=..1] positioned 111 100 -527 unless entity @e[nbt={Item:{id:"minecraft:ominous_trial_key"}},distance=..1] run fill 106 102 -534 101 104 -529 minecraft:iron_bars replace minecraft:air
execute positioned 111 100 -529 unless entity @e[nbt={Item:{id:"minecraft:ominous_trial_key"}},distance=..1] positioned 111 100 -527 unless entity @e[nbt={Item:{id:"minecraft:ominous_trial_key"}},distance=..1] run fill 106 102 -534 101 104 -529 minecraft:iron_bars replace minecraft:air

schedule function henry:chicken_repete 1t