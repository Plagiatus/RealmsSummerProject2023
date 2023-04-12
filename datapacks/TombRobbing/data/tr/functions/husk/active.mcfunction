# tag relevant husk
execute as @e[type=husk,tag=tr_husk] if score @s tr_id = @p core.id run tag @s add tr_current_husk


# TODO Detect husk getting within range of player

# heartbeat effect
scoreboard players remove @s tr_husk_heart_cd 1
execute as @s[scores={tr_husk_heart_cd=..0}] run function tr:husk/heartbeat

# TODO make husk loose interest

# TODO make husk despawn once he's out of sight

# cleanup
tag @e remove tr_current_husk