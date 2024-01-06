summon camel ~ ~ ~ 

scoreboard players remove @e[tag=cob.block] cob.camel 1
execute if score @e[tag=cob.block,limit=1] cob.camel matches 1.. run function obs:crate/camel
