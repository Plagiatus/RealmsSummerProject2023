# Starts the husk event. If you need to make sure no other event is currently active, use check_start instead.

scoreboard players set @s tr_husk_cd -1
scoreboard players set @s tr_husk_heart_cd 0

# summon husk and make it pathfind to player
tag @s add tr_husk_target
function tr:husk/util/find_husk_spawn_location
tag @s remove tr_husk_target

# TODO change fire to soulfire