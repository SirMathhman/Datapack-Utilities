
execute store result score $world.temp_1 du_data run data get storage du:temp list[0].biomes[0]
execute if score $world.temp_1 du_data = $world.biome du_data run scoreboard players set $world.out_0 du_data 1

data remove storage du:temp list[0].biomes[0]
execute if score $world.out_0 du_data matches 0 if data storage du:temp list[0].biomes[0] run function du:world/generation/struct_gen/check_biomes
