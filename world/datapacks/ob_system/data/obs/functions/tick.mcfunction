recipe give @a *

execute as @e[tag=cob.block] at @s if block ~ 60 ~ minecraft:air run function obs:blocker

advancement grant @a[scores={cob.dirt=20}] only obs:ob/dirt_1
advancement grant @a[scores={cob.dirt=100}] only obs:ob/dirt_2
advancement grant @a[scores={cob.dirt=250}] only obs:ob/dirt_3
advancement grant @a[scores={cob.dirt=500}] only obs:ob/dirt_4
advancement grant @a[scores={cob.dirt=1000}] only obs:ob/dirt_5
advancement grant @a[scores={cob.dirt=2500}] only obs:ob/dirt_6
advancement grant @a[scores={cob.dirt=10000}] only obs:ob/dirt_7

advancement grant @a[scores={cob.netherrack=100..}] only obs:ob/nether_expansion
advancement grant @a[scores={cob.endstone=100}] only obs:ob/end_expansion

execute as @a at @s store result score @s cob.y run data get entity @s Pos[1]
advancement grant @a[scores={cob.y=..-64}] only obs:ob/void
advancement grant @a[scores={cob.y=320..}] only obs:ob/light
advancement grant @a[scores={cob.carrots=64..}] only obs:ob/vege
advancement grant @a[scores={cob.meaty=64..}] only obs:ob/meaty
advancement grant @a[scores={cob.sushi=64..}] only obs:ob/sushi

advancement grant @a[scores={cob.kill_zompig=50..}] only obs:ob/zompig

execute as @e[tag=ob.visit_dealer,tag=!ob.trader] at @s run function obs:trader_trades

execute as @e[tag=obs.portal_builder] at @s run function obs:end_portal_builder

execute as @e[type=#obs:process,tag=!obs.process] at @s run function obs:mob_handler

gamemode survival @a[tag=!ob.joined]
tag @a[tag=!ob.joined] add ob.joined