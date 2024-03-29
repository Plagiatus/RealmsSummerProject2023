## core setup

# Universal Constants
scoreboard players set 1000 const 1000
scoreboard players set 20 const 20
scoreboard players set 60 const 60
scoreboard players set 3600 const 3600


# Random
scoreboard objectives add core.random dummy
scoreboard objectives add const dummy
scoreboard objectives add temp dummy

scoreboard players set C_1000 core.random 1000
scoreboard players set C_314159 core.random 314159
scoreboard players set C_2718281 core.random 2718281

scoreboard players set RNGseed core.random 0


# Time Keeper
scoreboard objectives add core.time_value dummy

scoreboard players add #world_border_reset_timer core.time_value 0
scoreboard players add $time core.time_value 0

execute store result score #world_border_diameter core.time_value run worldborder get
scoreboard players operation #previous_world_border_diameter core.time_value = #world_border_diameter core.time_value

# ID system
scoreboard objectives add core.id dummy

execute unless score $nextPlayer core.id = $nextPlayer core.id run scoreboard players set $nextPlayer core.id 1