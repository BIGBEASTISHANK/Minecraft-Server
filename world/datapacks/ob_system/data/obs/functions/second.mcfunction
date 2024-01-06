
recipe give @a *

scoreboard players add @e[tag=ob.trader] cob.block 1
execute as @e[scores={cob.block=1200..}] at @s run function obs:clear_trader

execute in minecraft:the_end unless entity @e[type=ender_dragon] run function obs:portal_handling

execute as @e[type=wandering_trader] run function obs:trader_silencer

schedule function obs:second 1s

