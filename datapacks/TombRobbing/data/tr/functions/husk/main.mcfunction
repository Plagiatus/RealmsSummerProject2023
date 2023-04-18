# execute this function as @a[team=tr] at @s while the game is active

# count down the husk cooldown
scoreboard players remove @s tr_husk_cd 1
# start the husk event when cooldown hits 0
execute as @s[scores={tr_husk_cd=0}] run function tr:husk/check_start
# control the active husk event
execute as @s[scores={tr_husk_cd=..-1}] run function tr:husk/active

# ETEX I need this to know when a player goes from hiding to not hiding in the next tick. Might be better placed inside whatever controls the hiding mechanic.
tag @a[tag=tr_hiding] add tr_was_hiding
tag @a[tag=!tr_hiding] remove tr_was_hiding