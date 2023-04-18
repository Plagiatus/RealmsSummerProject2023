
# play the sound
playsound minecraft:entity.warden.heartbeat voice @s

# calculate the cooldown until the next heartbeat should be played
# How it works:
# 1. calculate the vertical distance between the player (@s, px/py) and the husk (hx/hy)
#    using a² + b² = c², not pulling he root because that's annoying to do in minecraft.
execute store result score #px temp run data get entity @s Pos[0]
execute store result score #pz temp run data get entity @s Pos[2]
execute store result score #hx temp run data get entity @e[tag=tr_current_husk,limit=1] Pos[0]
execute store result score #hz temp run data get entity @e[tag=tr_current_husk,limit=1] Pos[2]

scoreboard players operation #px temp -= #hx temp
scoreboard players operation #pz temp -= #hz temp
scoreboard players operation #px temp *= #px temp
scoreboard players operation #pz temp *= #pz temp
scoreboard players operation #px temp += #pz temp

# 2. now px contains the distance squared. Using this formula we can calculate the speed of the heartbeat by mapping the distance to a range of heartbeat delays.
#    e.g. The slowest heartrate has a 30 tick delay, the fastest heartrate only a 10 tick delay.
#         The distance from the husk where the fastest heartbeat occurs is 8 blocks, so anything below that needs to have 10 ticks delay
#         The distance from the husk where the slowest heartbeat occurs is 32 blocks, so anything above that needs to have a 30 tick delay
#         Thus we need to interpolate 
#                  v 8 blocks          v Player Position?    v 32 blocks
#    Husk --------- Fastest Heartrate Distance  ------------- Slowest Heartrate Distance 
#    (distance² - <min distance>) * (<max delay> - <min delay>) / (<max distance>² - <min distance>²) + <min delay>
# 
#   This results in a quardatic distribution curve, so the heartbeat is changing speed faster if you're further away from the husk
#   See https://www.desmos.com/calculator/azmcbq5uxa, where x is the (non squared) distance and y is the heartbeat delay

scoreboard players operation #px temp -= $fast_heart_distance tr_settings
scoreboard players operation #px temp *= $delta_heart_delay tr_settings
scoreboard players operation #px temp /= $delta_heart_distance tr_settings
scoreboard players operation #px temp += $fast_heart_delay tr_settings

# make sure it stays between min and max delay values.
scoreboard players operation @s tr_husk_heart_cd = #px temp
execute if score @s tr_husk_heart_cd < $fast_heart_delay tr_settings run scoreboard players operation @s tr_husk_heart_cd = $fast_heart_delay tr_settings
execute if score @s tr_husk_heart_cd > $slow_heart_delay tr_settings run scoreboard players operation @s tr_husk_heart_cd = $slow_heart_delay tr_settings