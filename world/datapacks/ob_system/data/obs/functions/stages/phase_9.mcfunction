
# Basic Stuff
scoreboard players add @s cob.phase 1
worldborder set 1500

# Trader
execute as @e[tag=ob.stage_dealer] at @s run particle minecraft:cloud ~ ~ ~ 0.125 0.5 0.125 0.05 10 force
tp @e[tag=ob.stage_dealer] 0 -1000 0
particle minecraft:cloud 0 62 0 0.125 0.5 0.125 0.05 10 force
summon villager 0 61 0 {ActiveEffects:[{Id:25,Amplifier:10b,Duration:10},{Id:28,Amplifier:1b,Duration:60}],Tags:["ob.trader","ob.stage_dealer"],CustomName:'{"text":"Oneblock Trader","color":"green"}',VillagerData:{profession:"minecraft:nitwit",type:"minecraft:plains"},Offers:{Recipes:[{maxUses:4,buy:{id:'minecraft:nautilus_shell',Count:4b},buyB:{id:'minecraft:diamond',Count:8b},sell:{id:'minecraft:trident',Count:1b}},{maxUses:4,buy:{id:'minecraft:dirt',Count:32b},buyB:{id:'minecraft:redstone',Count:8b},sell:{id:'minecraft:sculk_sensor',Count:1b}},{maxUses:8,buy:{id:'minecraft:bone_meal',Count:8b},sell:{id:'minecraft:azalea',Count:1b}}]}}