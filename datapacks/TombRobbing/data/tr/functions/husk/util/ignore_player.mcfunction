summon husk ~ ~ ~ {Tags:["tr_replacement"]}
tp @e[tag=tr_replacement,limit=1] ~ ~ ~ ~ ~
scoreboard players operation @e[tag=tr_replacement,limit=1] tr_husk_cd = @s tr_husk_cd
scoreboard players operation @e[tag=tr_replacement,limit=1] tr_id = @s tr_id
data modify entity @e[tag=tr_replacement,limit=1] Tags set from entity @s Tags

tp @s ~ -1000 ~
kill @s