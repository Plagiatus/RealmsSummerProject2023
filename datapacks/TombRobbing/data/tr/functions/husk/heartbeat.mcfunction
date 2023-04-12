
# play the sound
playsound minecraft:entity.warden.heartbeat voice @s

# calculate the cooldown until the next heartbeat should be played
execute store result score #px temp run data get entity @s Pos[0]
execute store result score #pz temp run data get entity @s Pos[2]
execute store result score #hx temp run data get entity @e[tag=tr_current_husk,limit=1] Pos[0]
execute store result score #hz temp run data get entity @e[tag=tr_current_husk,limit=1] Pos[2]

scoreboard players operation #px temp -= #hx temp
scoreboard players operation #pz temp -= #hz temp
scoreboard players operation #px temp *= #px temp
scoreboard players operation #pz temp *= #pz temp
scoreboard players operation #px temp += #pz temp

scoreboard players operation #px temp -= $fast_heart_distance tr_settings
scoreboard players operation #px temp *= $delta_heart_delay tr_settings
scoreboard players operation #px temp /= $delta_heart_distance tr_settings
scoreboard players operation #px temp += $fast_heart_delay tr_settings

scoreboard players operation @s tr_husk_heart_cd = #px temp
execute if score @s tr_husk_heart_cd < $fast_heart_delay tr_settings run scoreboard players operation @s tr_husk_heart_cd = $fast_heart_delay tr_settings
execute if score @s tr_husk_heart_cd > $slow_heart_delay tr_settings run scoreboard players operation @s tr_husk_heart_cd = $slow_heart_delay tr_settings