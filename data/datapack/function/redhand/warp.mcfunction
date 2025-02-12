execute as @e[tag=RedhandBody,sort=nearest,limit=1] run tp @s @e[tag=RedhandSpawn,sort=random,limit=1]
tp @s 181 90 -735
effect give @s minecraft:slowness 1 255 true
effect give @s minecraft:blindness 2 255 true
effect give @s minecraft:wither 1 1 true
execute at @s run playsound minecraft:block.bell.resonate master @s