# Manage world border timer

execute store result score #world_border_diameter core.time_value run worldborder get
execute if score #world_border_reset_timer core.time_value matches 0 run function core:util/time/reset

scoreboard players operation #time_differential core.time_value = #world_border_diameter core.time_value
scoreboard players operation #time_differential core.time_value -= #previous_world_border_diameter core.time_value

execute unless score #world_border_diameter core.time_value matches 59900000..59990000 run function core:util/time/reset
execute if score #time_differential core.time_value matches 1000.. run function core:util/time/reset
execute if score #time_differential core.time_value matches 0..999 unless score #world_border_diameter core.time_value matches 59990000.. run scoreboard players operation $time core.time_value += #time_differential core.time_value

execute if score #world_border_reset_timer core.time_value matches 000 run scoreboard players set #previous_world_border_diameter core.time_value 59900000
execute if score #world_border_reset_timer core.time_value matches 1.. run scoreboard players operation #previous_world_border_diameter core.time_value = #world_border_diameter core.time_value

scoreboard players add #world_border_reset_timer core.time_value 1
execute if score #world_border_reset_timer core.time_value matches 200.. run scoreboard players set #world_border_reset_timer core.time_value 0