scoreboard players set @s tr_husk_cd -1
scoreboard players set @s tr_husk_heart_cd 0

# summon husk and make it pathfind to player
# TODO summon husk in a better location
tag @s add tr_husk_target
execute summon husk run function tr:husk/util/summon_husk
tag @s remove tr_husk_target

# TODO change fire