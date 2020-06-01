###### - 1d6 - ######
# init
execute at @a[scores={R_Click=1..}] run scoreboard players set @p 1d6 0
# random set 
execute at @a[scores={R_Click=1..}] run scoreboard players set @p RNG 5
# rng 実行
function rng:exec
# 表示用に 1 追加
scoreboard players operation @p NUM += 1 NUM
# 代入
scoreboard players operation @p 1d6 = @p NUM

###### - 1d10 - ######
# init
execute at @a[scores={R_Click=1..}] run scoreboard players set @p 1d10 0
# random set 
execute at @a[scores={R_Click=1..}] run scoreboard players set @p RNG 9
# rng 実行
function rng:exec
# 表示用に 1 追加
scoreboard players operation @p NUM += 1 NUM
# 代入
scoreboard players operation @p 1d10 = @p NUM

###### - 1d100 - ######
# init
execute at @a[scores={R_Click=1..}] run scoreboard players set @p 1d100 0
# random set 
execute at @a[scores={R_Click=1..}] run scoreboard players set @p RNG 99
# rng 実行
function rng:exec
# 表示用に 1 追加
scoreboard players operation @p NUM += 1 NUM
# 代入
scoreboard players operation @p 1d100 = @p NUM

###### - 表示 - ######
execute at @a[scores={R_Click=1..}] run tellraw @a [{"text":"["},{"selector":"@p"},{"text":"] "},{"text":"<1D6>","color":"green"},{"score":{"name":"@p","objective":"1d6"},"color":"green"},{"text":" <1D10>","color":"aqua"},{"score":{"name":"@p","objective":"1d10"},"color":"aqua"},{"text":" <1D100>","color":"dark_aqua"},{"score":{"name":"@p","objective":"1d100"},"color":"dark_aqua"}]
