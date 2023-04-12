# to get a random number, just call this function and query the 
# scoreboard players get RNG core.random

# if you want to limit it, you can set the following values:
# RNG_MIN core.random to set the minimum value (inclusive)
# RNG_MAX core.random to set the maximum value (exclusive)
# then query RNG_RANGE instead 

scoreboard players add RNGseed core.random 1
execute store result score RNG core.random run time query gametime
scoreboard players operation RNG core.random *= RNGseed core.random
scoreboard players operation RNG core.random *= C_314159 core.random
scoreboard players operation RNG core.random *= C_2718281 core.random
scoreboard players operation RNG core.random *= RNG core.random
scoreboard players operation RNG core.random /= C_1000 core.random
scoreboard players operation RNG core.random *= C_314159 core.random
scoreboard players operation RNG core.random *= C_2718281 core.random


scoreboard players operation RNG_MOD core.random = RNG_MAX core.random
scoreboard players operation RNG_MOD core.random -= RNG_MIN core.random
scoreboard players operation RNG_RANGE core.random = RNG core.random
scoreboard players operation RNG_RANGE core.random %= RNG_MOD core.random
scoreboard players operation RNG_RANGE core.random += RNG_MIN core.random
