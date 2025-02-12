function interact:interact {id:Lightbulb,fn:"dialog:lightbulb/start"}
function interact:interact {id:Mewo,fn:"dialog:mewo/start"}
function interact:interact {id:Notebook,fn:"dialog:notebook/start"}
function interact:interact {id:Tissuebox,fn:"dialog:tissuebox/start"}
function interact:interact {id:Laptop,fn:"dialog:laptop/start"}
execute as @a[scores={interaction_cooldown=1..}] run scoreboard players remove @s interaction_cooldown 1