tag @s add tr_husk
data merge entity @s {Invulnerable:1b}

execute summon zombified_piglin run function tr:husk/util/summon_pigman

# link up husk and player so we can play the heartbeat only to the relevant player
scoreboard players operation @s tr_id = @p[tag=tr_husk_target] core.id