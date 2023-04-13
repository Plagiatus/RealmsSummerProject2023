tag @s add tr_husk

# make the husk aggro towards the player
damage @s 0 minecraft:player_attack by @p[tag=tr_husk_target]

# link up husk and player so we can play the heartbeat only to the relevant player
scoreboard players operation @s tr_id = @p[tag=tr_husk_target] core.id

tp @s ~ ~ ~32