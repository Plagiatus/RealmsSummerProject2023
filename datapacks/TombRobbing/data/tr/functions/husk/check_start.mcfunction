# checks if the husk event is currently active and if not, starts it.
# also checks if the player is currently hiding, which prevents the event from being started.
# If the event was started automatically by the cooldown and was prevented by the player hiding, it will try again to start in 5 seconds.

execute if score @s[tag=!tr_hiding] tr_husk_cd matches 0.. run function tr:husk/start

execute if score @s[tag=tr_hiding] tr_husk_cd matches 0 run scoreboard players set @s tr_husk_cd 100