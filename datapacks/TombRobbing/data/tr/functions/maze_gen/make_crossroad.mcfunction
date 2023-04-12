#Makes edges from this node to all neighbour nodes

tag @s add tr_edge_x
tag @s add tr_edge_neg_x
tag @s add tr_edge_z
tag @s add tr_edge_neg_z

execute positioned ~16 ~ ~ as @e[type=marker,tag=tr_grid,distance=0..1] run tag @s add tr_edge_neg_x 
execute positioned ~-16 ~ ~ as @e[type=marker,tag=tr_grid,distance=0..1] run tag @s add tr_edge_x 
execute positioned ~ ~ ~16 as @e[type=marker,tag=tr_grid,distance=0..1] run tag @s add tr_edge_neg_z 
execute positioned ~ ~ ~-16 as @e[type=marker,tag=tr_grid,distance=0..1] run tag @s add tr_edge_z 