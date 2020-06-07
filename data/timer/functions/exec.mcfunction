scoreboard objectives add Timer dummy
scoreboard objectives add Tick dummy

#tellraw @p {"text":"押してみて！","clickEvent":{"action":"run_command","value":"/say ぽちっ！"}}

# Tickの初期化
execute as @e[scores={Timer=1..}] run scoreboard players set @s Tick 0

# --- tickごとの実行 ---
# Tick++
execute as @e[scores={Timer=1..}] run scoreboard players operation @s Tick += 1
# Tick == 20 -> Timer++
execute as @e[scores={Tick=20}] run scoreboard players operation @s Timer += 1
# Tick == 20 -> Tick = 0
execute as @e[scores={Tick=20}] run scoreboard players set @s Tick 0
