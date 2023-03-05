#Execute first from a random node in the grid
tag @s remove tr_next
tag @s add tr_visited

#Choose random unvisited neighbor
execute as @e[distance=1..17,type=marker,tag=!tr_visited,sort=random,limit=1] run tag @s add tr_next

#Make edge
execute positioned ~16 ~ ~ if entity @e[distance=0..1,type=marker,tag=tr_next] run tag @s add tr_edge_x
execute positioned ~16 ~ ~ as @e[distance=0..1,type=marker,tag=tr_next] run tag @s add tr_edge_neg_x

execute positioned ~-16 ~ ~ if entity @e[distance=0..1,type=marker,tag=tr_next] run tag @s add tr_edge_neg_x
execute positioned ~-16 ~ ~ as @e[distance=0..1,type=marker,tag=tr_next] run tag @s add tr_edge_x

execute positioned ~ ~ ~16 if entity @e[distance=0..1,type=marker,tag=tr_next] run tag @s add tr_edge_z
execute positioned ~ ~ ~16 as @e[distance=0..1,type=marker,tag=tr_next] run tag @s add tr_edge_neg_z

execute positioned ~ ~ ~-16 if entity @e[distance=0..1,type=marker,tag=tr_next] run tag @s add tr_edge_neg_z
execute positioned ~ ~ ~-16 as @e[distance=0..1,type=marker,tag=tr_next] run tag @s add tr_edge_z

#Continue from next
execute as @e[distance=1..17,type=marker,tag=tr_next] at @s run function tr:maze_gen/prims_algorithm
execute if entity @e[distance=1..17,type=marker,tag=!tr_visited] run function tr:maze_gen/prims_algorithm