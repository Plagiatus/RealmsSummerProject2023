execute if entity @s[tag=tr_edge_x,tag=!tr_edge_z,tag=!tr_edge_neg_x,tag=!tr_edge_neg_z] run place template tr:corridor_1 ~ ~ ~ none
execute if entity @s[tag=!tr_edge_x,tag=tr_edge_z,tag=!tr_edge_neg_x,tag=!tr_edge_neg_z] run place template tr:corridor_1 ~15 ~ ~ clockwise_90
execute if entity @s[tag=!tr_edge_x,tag=!tr_edge_z,tag=tr_edge_neg_x,tag=!tr_edge_neg_z] run place template tr:corridor_1 ~15 ~ ~15 180
execute if entity @s[tag=!tr_edge_x,tag=!tr_edge_z,tag=!tr_edge_neg_x,tag=tr_edge_neg_z] run place template tr:corridor_1 ~ ~ ~15 counterclockwise_90

execute if entity @s[tag=tr_edge_x,tag=tr_edge_z,tag=!tr_edge_neg_x,tag=!tr_edge_neg_z] run place template tr:corridor_2 ~ ~ ~ none
execute if entity @s[tag=!tr_edge_x,tag=tr_edge_z,tag=tr_edge_neg_x,tag=!tr_edge_neg_z] run place template tr:corridor_2 ~15 ~ ~ clockwise_90
execute if entity @s[tag=!tr_edge_x,tag=!tr_edge_z,tag=tr_edge_neg_x,tag=tr_edge_neg_z] run place template tr:corridor_2 ~15 ~ ~15 180
execute if entity @s[tag=tr_edge_x,tag=!tr_edge_z,tag=!tr_edge_neg_x,tag=tr_edge_neg_z] run place template tr:corridor_2 ~ ~ ~15 counterclockwise_90

execute if entity @s[tag=tr_edge_x,tag=tr_edge_z,tag=tr_edge_neg_x,tag=!tr_edge_neg_z] run place template tr:corridor_3 ~ ~ ~ none
execute if entity @s[tag=!tr_edge_x,tag=tr_edge_z,tag=tr_edge_neg_x,tag=tr_edge_neg_z] run place template tr:corridor_3 ~15 ~ ~ clockwise_90
execute if entity @s[tag=tr_edge_x,tag=!tr_edge_z,tag=tr_edge_neg_x,tag=tr_edge_neg_z] run place template tr:corridor_3 ~15 ~ ~15 180
execute if entity @s[tag=tr_edge_x,tag=tr_edge_z,tag=!tr_edge_neg_x,tag=tr_edge_neg_z] run place template tr:corridor_3 ~ ~ ~15 counterclockwise_90

execute if entity @s[tag=tr_edge_x,tag=tr_edge_z,tag=tr_edge_neg_x,tag=tr_edge_neg_z] run place template tr:corridor_4 ~ ~ ~ none

execute if entity @s[tag=tr_edge_x,tag=!tr_edge_z,tag=tr_edge_neg_x,tag=!tr_edge_neg_z] run place template tr:corridor_5 ~ ~ ~ none
execute if entity @s[tag=!tr_edge_x,tag=tr_edge_z,tag=!tr_edge_neg_x,tag=tr_edge_neg_z] run place template tr:corridor_5 ~15 ~ ~ clockwise_90