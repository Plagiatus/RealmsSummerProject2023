# players without an ID get one
scoreboard players add @a core.id 0
execute as @a[scores={core.id=0}] run function core:util/id