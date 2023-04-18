# the pigman is the new brains for the husk, as it's easier to control.
# it rides the husk 
data merge entity @s {Tags:["tr_husk_pig","tr_new"], Attributes:[{Name:"minecraft:generic.follow_range",Base:48}], Invulnerable:1b}
ride @s mount @e[type=husk,limit=1,sort=nearest]

data remove entity @s Attributes[{Name:"minecraft:generic.follow_range"}].Modifiers
data modify entity @s AngryAt set from entity @p[tag=tr_husk_target] UUID
scoreboard players operation @s tr_id = @p[tag=tr_husk_target] core.id