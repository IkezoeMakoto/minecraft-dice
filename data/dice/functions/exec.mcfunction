###### - 1d6 - ######
# init
execute at @a[scores={R_Click=1..}] run scoreboard players set @s 1d6 0
# random set 
execute at @a[scores={R_Click=1..}] run scoreboard players set @s RNG 5
# rng 実行
function rng:exec
# 表示用に 1 追加
scoreboard players operation @s NUM += 1 NUM
# 代入
scoreboard players operation @s 1d6 = @s NUM

###### - 1d10 - ######
# init
execute at @a[scores={R_Click=1..}] run scoreboard players set @s 1d10 0
# random set 
execute at @a[scores={R_Click=1..}] run scoreboard players set @s RNG 9
# rng 実行
function rng:exec
# 表示用に 1 追加
scoreboard players operation @s NUM += 1 NUM
# 代入
scoreboard players operation @s 1d10 = @s NUM

###### - 1d100 - ######
# init
execute at @a[scores={R_Click=1..}] run scoreboard players set @s 1d100 0
# random set 
execute at @a[scores={R_Click=1..}] run scoreboard players set @s RNG 99
# rng 実行
function rng:exec
# 表示用に 1 追加
scoreboard players operation @s NUM += 1 NUM
# 代入
scoreboard players operation @s 1d100 = @s NUM

###### - 表示 - ######
execute at @a[scores={R_Click=1..}] run tellraw @a [{"text":"["},{"selector":"@s"},{"text":"] "},{"text":"<1D6>","color":"green"},{"score":{"name":"@s","objective":"1d6"},"color":"green"},{"text":" <1D10>","color":"aqua"},{"score":{"name":"@s","objective":"1d10"},"color":"aqua"},{"text":" <1D100>","color":"dark_aqua"},{"score":{"name":"@s","objective":"1d100"},"color":"dark_aqua"}]
