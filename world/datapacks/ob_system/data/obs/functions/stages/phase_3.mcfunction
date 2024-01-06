
# Basic Stuff
scoreboard players add @s cob.phase 1
worldborder set 150

# Trader
execute as @e[tag=ob.stage_dealer] at @s run particle minecraft:cloud ~ ~ ~ 0.125 0.5 0.125 0.05 10 force
tp @e[tag=ob.stage_dealer] 0 -1000 0
particle minecraft:cloud 0 62 0 0.125 0.5 0.125 0.05 10 force
summon villager 0 61 0 {ActiveEffects:[{Id:25,Amplifier:10b,Duration:10},{Id:28,Amplifier:1b,Duration:60}],Tags:["ob.trader","ob.stage_dealer"],CustomName:'{"text":"Oneblock Trader","color":"green"}',VillagerData:{profession:"minecraft:nitwit",type:"minecraft:plains"},Offers:{Recipes:[{maxUses:1,buy:{id:'minecraft:cobblestone',Count:16b},sell:{id:'minecraft:sugar_cane',Count:1b}},{maxUses:1,buy:{id:'minecraft:iron_ingot',Count:5b},sell:{id:'minecraft:water_bucket',Count:1b}},{maxUses:3,buy:{id:'minecraft:cobblestone',Count:4b},sell:{id:'minecraft:egg',Count:1b}},{maxUses:3,buy:{id:'minecraft:dirt',Count:6b},sell:{id:'minecraft:bone_meal',Count:3b}},{maxUses:12,buy:{id:'minecraft:cobblestone',Count:4b},sell:{id:'minecraft:cooked_chicken',Count:2b}}]}}