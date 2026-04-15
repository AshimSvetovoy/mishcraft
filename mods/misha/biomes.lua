-- biomes.lua
core.clear_registered_biomes()

-- Настройка шума для температуры
local heat_noise = {
    offset = 50,
    scale = 30,
    spread = {x = 50, y = 50, z = 50},  -- Уменьшите для более частых биомов
    seed = 5349,
    octaves = 3,
    persist = 0.5,
    lacunarity = 2.0,
    flags = "defaults"
}

-- Настройка шума для влажности
local humidity_noise = {
    offset = 50,
    scale = 30,
    spread = {x = 50, y = 50, z = 50},  -- Уменьшите для более частых биомов
    seed = 842,
    octaves = 3,
    persist = 0.5,
    lacunarity = 2.0,
    flags = "defaults"
}
-- Основной травяной биом
core.register_biome({
    name = "misha:grassland",
    node_top = "misha:grass_block",
    depth_top = 1,
    node_filler = "misha:dirt",
    depth_filler = 3,
    node_stone = "misha:stone",
    y_max = 128,
    y_min = 1,
    heat_point = 50,
    humidity_point = 50,
})
core.register_biome({
    name = "misha:forest",
    node_top = "misha:grass_block",
    depth_top = 1,
    node_filler = "misha:dirt",
    depth_filler = 3,
    node_stone = "misha:stone",
    y_max = 128,
    y_min = 1,
    heat_point = 50,      -- Такая же температура
    humidity_point = 70,  -- Высокая влажность (для леса)
})

-- Океан (чтобы трава не росла под водой)
core.register_biome({
    name = "misha:ocean",
    node_top = "misha:dirt",
    depth_top = 1,
    node_filler = "misha:dirt",
    depth_filler = 3,
    node_stone = "misha:stone",
    node_water = "misha:water_source",
    y_max = 0,
    y_min = -255,
    heat_point = 50,
    humidity_point = 50,
})

-- Пустынный биом
core.register_biome({
    name = "misha:desert",
    node_top = "misha:sand",
    depth_top = 1,
    node_filler = "misha:sand",
    depth_filler = 2,
    node_stone = "misha:stone",
    y_max = 128,
    y_min = 1,
    heat_point = 80,      -- Высокая температура
    humidity_point = 20,  -- Низкая влажность
})