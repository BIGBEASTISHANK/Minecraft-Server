execute unless entity @s[tag=cob.placed] if score @s cob.phase matches 9.. if predicate obs:phases/phase_9 run function obs:phase_blocks/phase_9
execute unless entity @s[tag=cob.placed] if score @s cob.phase matches 8.. if predicate obs:phases/phase_8 run function obs:phase_blocks/phase_8
execute unless entity @s[tag=cob.placed] if score @s cob.phase matches 7.. if predicate obs:phases/phase_7 run function obs:phase_blocks/phase_7
execute unless entity @s[tag=cob.placed] if score @s cob.phase matches 6.. if predicate obs:phases/phase_6 run function obs:phase_blocks/phase_6
execute unless entity @s[tag=cob.placed] if score @s cob.phase matches 5.. if predicate obs:phases/phase_5 run function obs:phase_blocks/phase_5
execute unless entity @s[tag=cob.placed] if score @s cob.phase matches 4.. if predicate obs:phases/phase_4 run function obs:phase_blocks/phase_4
execute unless entity @s[tag=cob.placed] if score @s cob.phase matches 3.. if predicate obs:phases/phase_3 run function obs:phase_blocks/phase_3
execute unless entity @s[tag=cob.placed] if score @s cob.phase matches 2.. if predicate obs:phases/phase_2 run function obs:phase_blocks/phase_2
execute unless entity @s[tag=cob.placed] if score @s cob.phase matches 1.. if predicate obs:phases/phase_1 run function obs:phase_blocks/phase_1
execute unless entity @s[tag=cob.placed] run setblock ~ 60 ~ grass_block

tag @s remove cob.placed

scoreboard players add @s cob.block 1
execute if score @s cob.block matches 0.. run advancement grant @a only obs:phases/root
execute if score @s cob.block matches 30 run function obs:stages/phase_1
execute if score @s cob.block matches 30.. run advancement grant @a only obs:phases/phase_1
execute if score @s cob.block matches 150 run function obs:stages/phase_2
execute if score @s cob.block matches 150.. run advancement grant @a only obs:phases/phase_2
execute if score @s cob.block matches 300 run function obs:stages/phase_3
execute if score @s cob.block matches 300.. run advancement grant @a only obs:phases/phase_3
execute if score @s cob.block matches 750 run function obs:stages/phase_4
execute if score @s cob.block matches 750.. run advancement grant @a only obs:phases/phase_4
execute if score @s cob.block matches 1500 run function obs:stages/phase_5
execute if score @s cob.block matches 1500.. run advancement grant @a only obs:phases/phase_5
execute if score @s cob.block matches 2000 run function obs:stages/phase_6
execute if score @s cob.block matches 2000.. run advancement grant @a only obs:phases/phase_6
execute if score @s cob.block matches 2500 run function obs:stages/phase_7
execute if score @s cob.block matches 2500.. run advancement grant @a only obs:phases/phase_7
execute if score @s cob.block matches 3500 run function obs:stages/phase_8
execute if score @s cob.block matches 3500.. run advancement grant @a only obs:phases/phase_8
execute if score @s cob.block matches 5000 run function obs:stages/phase_9
execute if score @s cob.block matches 5000.. run advancement grant @a only obs:phases/phase_9

execute positioned ~ 60 ~ as @e[type=item,distance=..0.5] run tp @s ~ ~1 ~

scoreboard players add @s cob.trader 1
execute if score @s cob.trader matches 256.. if predicate obs:chances/4 run function obs:random_trader