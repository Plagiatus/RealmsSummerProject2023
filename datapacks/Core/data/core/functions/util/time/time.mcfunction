# Get time

execute store result score #world_border_diameter core.time_value run worldborder get

scoreboard players operation #time_differential core.time_value = #world_border_diameter core.time_value
scoreboard players operation #time_differential core.time_value -= #previous_world_border_diameter core.time_value

execute if score #time_differential core.time_value matches 0..999 run scoreboard players operation $time core.time_value += #time_differential core.time_value

scoreboard players operation #previous_world_border_diameter core.time_value = #world_border_diameter core.time_value