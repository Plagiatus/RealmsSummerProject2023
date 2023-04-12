# execute this function as @a[team=tr] at @s

scoreboard players remove @s tr_husk_cd 1

execute as @s[scores={tr_husk_cd=0}] run function tr:husk/start_event
execute as @s[scores={tr_husk_cd=..-1}] run function tr:husk/active