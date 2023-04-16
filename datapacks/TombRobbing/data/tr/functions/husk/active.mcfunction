# tag relevant husk
execute as @e[type=husk,tag=tr_husk] if score @s tr_id = @p core.id run tag @s add tr_current_husk

# heartbeat effect
scoreboard players remove @s tr_husk_heart_cd 1
execute as @s[scores={tr_husk_heart_cd=..0}] run function tr:husk/heartbeat

# Detect husk getting within range of player
tag @e[tag=tr_current_husk,distance=..8] add tr_close_husk
execute if entity @e[tag=tr_close_husk] run tag @s add tr_husk_close

scoreboard players add @e[tag=tr_husk] tr_husk_cd 0
# Player is not currently hidden - husk will attack them (retriggered if the player comes out of hiding)
execute if entity @s[tag=tr_was_hiding,tag=!tr_hiding] at @e[tag=tr_current_husk,scores={tr_husk_cd=1..},limit=1] run data merge entity @e[type=zombified_piglin,limit=1,sort=nearest,tag=tr_husk_pig] {Attributes:[{Name:"minecraft:generic.follow_range",Base:48}]}
execute if entity @s[tag=tr_husk_close,tag=!tr_hiding] run scoreboard players set @e[tag=tr_current_husk,scores={tr_husk_cd=1..}] tr_husk_cd 0

# Player is currently hidden - husk will loose interest in attacking them, goes on sniffing cooldown
execute if entity @s[tag=tr_hiding,tag=tr_husk_close] run scoreboard players add @e[tag=tr_current_husk,scores={tr_husk_cd=0..},limit=1] tr_husk_cd 1
execute if entity @s[tag=tr_hiding,tag=!tr_husk_close] run scoreboard players add @e[tag=tr_current_husk,scores={tr_husk_cd=1..},limit=1] tr_husk_cd 1
execute if entity @s[tag=tr_husk_close,tag=tr_hiding] as @e[tag=tr_close_husk,scores={tr_husk_cd=1}] at @s run function tr:husk/util/ignore_player

# make husk loose interest
# while searching close
execute as @e[tag=tr_close_husk,scores={tr_husk_cd=1..}] if score @s tr_husk_cd = $husk_look_for_player tr_settings run function tr:husk/util/leave_player
# after X amount of time, if it's not actively attacking
execute if score @s tr_husk_cd <= $husk_loose_interest tr_settings as @e[tag=tr_current_husk,tag=!tr_close_husk] run function tr:husk/util/leave_player

# TODO make husk despawn once he's out of sight

# end it
execute unless entity @e[tag=tr_current_husk] run function tr:husk/end

# cleanup
tag @e remove tr_current_husk
tag @e remove tr_close_husk