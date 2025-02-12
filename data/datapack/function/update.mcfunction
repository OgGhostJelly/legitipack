# Update the old legitimoose map to the new systems

tellraw @a "Updating datapack..."

tag @e[tag=TvInteraction] add LaptopInteraction
tag @e[tag=TvInteraction] remove TvInteraction

tag @e[tag=LightbulbFrame] add lightbulb_frame
tag @e[tag=LightbulbFrame] remove LightbulbFrame

tag @e[tag=MewoFrame] add mewo_frame
tag @e[tag=MewoFrame] remove MewoFrame

tag @e[tag=RedhandFrame] add redhand_frame
tag @e[tag=RedhandFrame] remove RedhandFrame

tag @e[tag=TvFrame] add laptop_frame
tag @e[tag=TvFrame] remove TvFrame

data modify storage mapimation:sf lightbulb.0 set value {Item:{components:{"minecraft:map_id":91},count:1,id:"minecraft:filled_map"},ItemRotation:0b}
data modify storage mapimation:sf lightbulb.1 set value {Item:{components:{"minecraft:map_id":92},count:1,id:"minecraft:filled_map"},ItemRotation:0b}
data modify storage mapimation:sf lightbulb.2 set value {Item:{components:{"minecraft:map_id":93},count:1,id:"minecraft:filled_map"},ItemRotation:0b}
data modify storage mapimation:sf lightbulb.3 set value {Item:{components:{"minecraft:map_id":92},count:1,id:"minecraft:filled_map"},ItemRotation:0b}

data modify storage mapimation:sf mewo.0 set value {Item:{components:{"minecraft:map_id":46},count:1,id:"minecraft:filled_map"},ItemRotation:0b}
data modify storage mapimation:sf mewo.1 set value {Item:{components:{"minecraft:map_id":77},count:1,id:"minecraft:filled_map"},ItemRotation:0b}

data modify storage mapimation:sf redhand.0 set value {Item:{components:{"minecraft:map_id":82},count:1,id:"minecraft:filled_map"},ItemRotation:0b}
data modify storage mapimation:sf redhand.1 set value {Item:{components:{"minecraft:map_id":83},count:1,id:"minecraft:filled_map"},ItemRotation:0b}

data modify storage mapimation:sf laptop.0 set value {Item:{components:{"minecraft:map_id":78},count:1,id:"minecraft:filled_map"},ItemRotation:0b}
data modify storage mapimation:sf laptop.1 set value {Item:{components:{"minecraft:map_id":79},count:1,id:"minecraft:filled_map"},ItemRotation:0b}
data modify storage mapimation:sf laptop.2 set value {Item:{components:{"minecraft:map_id":78},count:1,id:"minecraft:filled_map"},ItemRotation:0b}
data modify storage mapimation:sf laptop.3 set value {Item:{components:{"minecraft:map_id":79},count:1,id:"minecraft:filled_map"},ItemRotation:0b}
data modify storage mapimation:sf laptop.4 set value {Item:{components:{"minecraft:map_id":78},count:1,id:"minecraft:filled_map"},ItemRotation:0b}
data modify storage mapimation:sf laptop.5 set value {Item:{components:{"minecraft:map_id":79},count:1,id:"minecraft:filled_map"},ItemRotation:0b}

tellraw @a {"text": "Update complete!","color": "green"}
tellraw @a {"text": "there could have been issues with updating, check the map to ensure that everything updated correctly!", "color": "yellow"}