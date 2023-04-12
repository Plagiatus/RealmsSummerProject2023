#Makes a random edge from a node. Ignores whether the edge already exists of whether the node has already visited.
#This can be used to make the maze a little less difficult.

#Choose random neighbor
execute as @e[distance=1..17,type=marker,tag=tr_grid,sort=random,limit=1] run tag @s add tr_next

#Make edge
execute positioned ~16 ~ ~ if entity @e[distance=0..1,type=marker,tag=tr_next] run tag @s add tr_edge_x
execute positioned ~16 ~ ~ as @e[distance=0..1,type=marker,tag=tr_next] run tag @s add tr_edge_neg_x

execute positioned ~-16 ~ ~ if entity @e[distance=0..1,type=marker,tag=tr_next] run tag @s add tr_edge_neg_x
execute positioned ~-16 ~ ~ as @e[distance=0..1,type=marker,tag=tr_next] run tag @s add tr_edge_x

execute positioned ~ ~ ~16 if entity @e[distance=0..1,type=marker,tag=tr_next] run tag @s add tr_edge_z
execute positioned ~ ~ ~16 as @e[distance=0..1,type=marker,tag=tr_next] run tag @s add tr_edge_neg_z

execute positioned ~ ~ ~-16 if entity @e[distance=0..1,type=marker,tag=tr_next] run tag @s add tr_edge_neg_z
execute positioned ~ ~ ~-16 as @e[distance=0..1,type=marker,tag=tr_next] run tag @s add tr_edge_z

execute as @e[distance=1..17,type=marker,tag=tr_next] run tag @s remove tr_next