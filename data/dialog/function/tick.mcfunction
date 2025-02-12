# The lines that are commented out
# are dialog that are not activated by other dialog
# they are instead activated by, for example, interaction entities

#execute as @a[scores={dialog=1}] run function dialog:lightbulb/start
execute as @a[scores={dialog=2}] run function dialog:lightbulb/yes
execute as @a[scores={dialog=3}] run function dialog:lightbulb/no
#execute as @a[scores={dialog=4}] run function dialog:mewo/start
#execute as @a[scores={dialog=5}] run function dialog:notebook/start
#execute as @a[scores={dialog=6}] run function dialog:tissuebox/start
#execute as @a[scores={dialog=7}] run function dialog:laptop/start
execute as @a[scores={dialog=8}] run function dialog:laptop/log_off
execute as @a[scores={dialog=9}] run function dialog:laptop/open_journal
execute as @a[scores={dialog=10}] run function dialog:laptop/stare
scoreboard players set @a dialog 0
scoreboard players enable @a dialog

# Tick submodules
function dialog:laptop/tick