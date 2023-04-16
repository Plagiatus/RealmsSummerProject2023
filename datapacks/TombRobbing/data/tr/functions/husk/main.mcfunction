# execute this function as @a[team=tr] at @s

scoreboard players remove @s tr_husk_cd 1

effect give @a[tag=tr_hiding] invisibility 1 0 true
effect clear @a[tag=!tr_hiding] invisibility

execute as @s[scores={tr_husk_cd=0}] run function tr:husk/start
execute as @s[scores={tr_husk_cd=..-1}] run function tr:husk/active
tag @a[tag=tr_hiding] add tr_was_hiding
tag @a[tag=!tr_hiding] remove tr_was_hiding