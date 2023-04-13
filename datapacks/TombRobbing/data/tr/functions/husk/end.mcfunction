# TODO change fire

# set new timeout for new husk event to happen
scoreboard players operation RNG_MIN core.random = $husk_min_wait tr_settings
scoreboard players operation RNG_MAX core.random = $husk_max_wait tr_settings
function core:util/random
scoreboard players operation @s tr_husk_cd = RNG_RANGE core.random

# cleanup
tag @s remove tr_husk_close