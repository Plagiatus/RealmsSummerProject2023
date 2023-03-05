kill @e[type=marker,tag=tr_grid]
function tr:maze_gen/spawn_grid
execute as @e[type=minecraft:marker,tag=tr_grid,sort=random,limit=1] at @s run function tr:maze_gen/prims_algorithm
