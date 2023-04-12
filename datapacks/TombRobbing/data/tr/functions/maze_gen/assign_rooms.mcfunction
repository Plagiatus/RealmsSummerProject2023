#select random exit and egg from opposite sides of the maze
execute positioned ~-0.5 ~-0.5 ~ as @e[dx=1,dy=1,dz=129,type=marker,tag=tr_grid,tag=!tr_assigned,sort=random,limit=1] run tag @s add tr_exit
execute as @e[type=marker,tag=tr_exit] run tag @s add tr_assigned

execute positioned ~111.5 ~-0.5 ~ as @e[dx=1,dy=1,dz=129,type=marker,tag=tr_grid,tag=!tr_assigned,sort=random,limit=1] run tag @s add tr_egg
execute as @e[type=marker,tag=tr_egg] run tag @s add tr_assigned

#assign landmarks
execute positioned ~32 ~ ~32 as @e[type=marker,tag=tr_grid,distance=0..1] run tag @s add tr_landmark_1
execute as @e[type=marker,tag=tr_landmark_1] at @s run function tr:maze_gen/make_crossroad
execute as @e[type=marker,tag=tr_landmark_1] run tag @s add tr_assigned

execute positioned ~32 ~ ~80 as @e[type=marker,tag=tr_grid,distance=0..1] run tag @s add tr_landmark_2
execute as @e[type=marker,tag=tr_landmark_2] at @s run function tr:maze_gen/make_crossroad
execute as @e[type=marker,tag=tr_landmark_2] run tag @s add tr_assigned

execute positioned ~80 ~ ~32 as @e[type=marker,tag=tr_grid,distance=0..1] run tag @s add tr_landmark_3
execute as @e[type=marker,tag=tr_landmark_3] at @s run function tr:maze_gen/make_crossroad
execute as @e[type=marker,tag=tr_landmark_3] run tag @s add tr_assigned

execute positioned ~80 ~ ~80 as @e[type=marker,tag=tr_grid,distance=0..1] run tag @s add tr_landmark_4
execute as @e[type=marker,tag=tr_landmark_4] at @s run function tr:maze_gen/make_crossroad
execute as @e[type=marker,tag=tr_landmark_4] run tag @s add tr_assigned

#select treasure rooms
execute as @e[type=marker,tag=tr_grid,tag=!tr_assigned,sort=random,limit=8] run tag @s add tr_treasure
execute as @e[type=marker,tag=tr_treasure] run tag @s add tr_assigned

#select halls
execute as @e[type=marker,tag=tr_grid,tag=!tr_assigned,sort=random,limit=8] run tag @s add tr_hall
execute as @e[type=marker,tag=tr_hall] run tag @s add tr_assigned

#make rest corridors
execute as @e[type=marker,tag=tr_grid,tag=!tr_assigned] run tag @s add tr_corridor
#execute as @e[type=marker,tag=tr_corridor] run tag @s add tr_assigned