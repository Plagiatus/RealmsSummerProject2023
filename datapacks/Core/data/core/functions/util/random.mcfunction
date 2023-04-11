# to get a random number, just call this function and query the 
# scoreboard players get RNG core_random

# if you want to limit it, you can set the following values:
# RNG_MIN core_random to set the minimum value (inclusive)
# RNG_MAX core_random to set the maximum value (exclusive)
# then query RNG_RANGE instead 

scoreboard players add RNGseed core_random 1
execute store result score RNG core_random run time query gametime
scoreboard players operation RNG core_random *= RNGseed core_random
scoreboard players operation RNG core_random *= C_314159 core_random
scoreboard players operation RNG core_random *= C_2718281 core_random
scoreboard players operation RNG core_random *= RNG core_random
scoreboard players operation RNG core_random /= C_1000 core_random
scoreboard players operation RNG core_random *= C_314159 core_random
scoreboard players operation RNG core_random *= C_2718281 core_random


scoreboard players operation RNG_MOD core_random = RNG_MAX core_random
scoreboard players operation RNG_MOD core_random -= RNG_MIN core_random
scoreboard players operation RNG_RANGE core_random = RNG core_random
scoreboard players operation RNG_RANGE core_random %= RNG_MOD core_random
scoreboard players operation RNG_RANGE core_random += RNG_MIN core_random
