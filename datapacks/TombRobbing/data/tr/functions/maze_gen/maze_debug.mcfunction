execute as @e[type=marker,tag=tr_grid] at @s run particle angry_villager ~ ~ ~ 0 0 0 0 1 force
execute as @e[type=marker,tag=tr_edge_x] at @s run particle flame ~2 ~ ~ 1 0 0 0 10 force 
execute as @e[type=marker,tag=tr_edge_neg_x] at @s run particle flame ~-2 ~ ~ 1 0 0 0 10 force 
execute as @e[type=marker,tag=tr_edge_z] at @s run particle flame ~ ~ ~2 0 0 1 0 10 force 
execute as @e[type=marker,tag=tr_edge_neg_z] at @s run particle flame ~ ~ ~-2 0 0 1 0 10 force 