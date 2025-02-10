execute as @a[scores={dialog=1}] run function dialog:how_are_you
execute as @a[scores={dialog=2}] run function dialog:good
execute as @a[scores={dialog=3}] run function dialog:bad
scoreboard players set @a dialog 0
scoreboard players enable @a dialog