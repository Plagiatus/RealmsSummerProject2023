# SET UP SCOREBOARDS, SCORES...

scoreboard objectives add tr_state dummy
scoreboard players set stage tr_state 0

scoreboard objectives add tr_temp dummy

team add tr

scoreboard objectives add tr_husk_cd dummy
scoreboard objectives add tr_husk_heart_cd dummy
scoreboard objectives add tr_settings dummy
scoreboard objectives add tr_id dummy


## init settings
# range between a natural husk event occurs, in ticks
execute unless score $husk_min_wait tr_settings = $husk_min_wait tr_settings run scoreboard players set $husk_min_wait tr_settings 1200
execute unless score $husk_max_wait tr_settings = $husk_max_wait tr_settings run scoreboard players set $husk_max_wait tr_settings 1800
# duration until the husk looses interest by force, in ticks, negative
execute unless score $husk_loose_interest tr_settings = $husk_loose_interest tr_settings run scoreboard players set $husk_loose_interest tr_settings -600
# duration of the husk sniffing around for a hidden player, in ticks
execute unless score $husk_look_for_player tr_settings = $husk_look_for_player tr_settings run scoreboard players set $husk_look_for_player tr_settings 200

# max distance squared (in meters) for fastest heartbeat
execute unless score $fast_heart_distance tr_settings = $fast_heart_distance tr_settings run scoreboard players set $fast_heart_distance tr_settings 64
# min distance squared (in meters) for slowest heartbeat
execute unless score $slow_heart_distance tr_settings = $slow_heart_distance tr_settings run scoreboard players set $slow_heart_distance tr_settings 1024
# delay of fastest heartbeat (in ticks)
execute unless score $fast_heart_delay tr_settings = $fast_heart_delay tr_settings run scoreboard players set $fast_heart_delay tr_settings 10
# delay of slowest heartbeat (in ticks)
execute unless score $slow_heart_delay tr_settings = $slow_heart_delay tr_settings run scoreboard players set $slow_heart_delay tr_settings 30

## const values
scoreboard players set 1000 const 1000

## Automatically generated setting helper values based on the above values
## If these settings can be changed ingame, make sure to run these at game start
scoreboard players operation $delta_heart_distance tr_settings = $slow_heart_distance tr_settings
scoreboard players operation $delta_heart_distance tr_settings -= $fast_heart_distance tr_settings

scoreboard players operation $delta_heart_delay tr_settings = $slow_heart_delay tr_settings
scoreboard players operation $delta_heart_delay tr_settings -= $fast_heart_delay tr_settings