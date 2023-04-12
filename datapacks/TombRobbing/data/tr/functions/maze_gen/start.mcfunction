#The function that is called for the first maze to generate.
#From the calling position, the rooms expand toward positive x and z

gamerule doTileDrops false

kill @e[type=marker,tag=tr_grid]
scoreboard players set counter tr_temp 0

function tr:maze_gen/spawn_grid

execute as @e[type=minecraft:marker,tag=tr_grid,sort=random,limit=1] at @s run function tr:maze_gen/prims_algorithm

#add additional random edges to make the maze easier
#execute as @e[type=marker,tag=tr_grid,sort=random,limit=16] at @s run function tr:maze_gen/new_random_edge

function tr:maze_gen/assign_rooms

execute as @e[type=minecraft:marker,tag=tr_exit] at @s run function tr:maze_gen/place_room/corridor
execute as @e[type=minecraft:marker,tag=tr_egg] at @s run function tr:maze_gen/place_room/corridor
execute as @e[type=minecraft:marker,tag=tr_treasure] at @s run function tr:maze_gen/place_room/treasure

execute as @e[type=minecraft:marker,tag=tr_landmark_1] at @s run place template tr:landmark_1 ~ ~ ~ none
execute as @e[type=minecraft:marker,tag=tr_landmark_2] at @s run place template tr:landmark_2 ~ ~ ~ none
execute as @e[type=minecraft:marker,tag=tr_landmark_3] at @s run place template tr:landmark_3 ~ ~ ~ none
execute as @e[type=minecraft:marker,tag=tr_landmark_4] at @s run place template tr:landmark_4 ~ ~ ~ none

execute as @e[type=minecraft:marker,tag=tr_hall] at @s run function tr:maze_gen/place_room/hall
execute as @e[type=minecraft:marker,tag=tr_corridor] at @s run function tr:maze_gen/place_room/corridor

gamerule doTileDrops true