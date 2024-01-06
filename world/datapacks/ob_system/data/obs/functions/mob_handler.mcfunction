tag @s[type=skeleton,predicate=obs:chances/7,predicate=obs:nether] add obs.replace
tag @s[type=zombified_piglin,predicate=obs:chances/8] add obs.replace

execute as @e[type=skeleton,tag=obs.replace] run summon wither_skeleton
execute as @e[type=zombified_piglin,tag=obs.replace] run summon blaze ~0.25 ~ ~
execute as @e[type=zombified_piglin,tag=obs.replace] run summon blaze ~-0.25 ~ ~

tp @e[tag=obs.replace] ~ -1000 ~

tag @s add obs.process