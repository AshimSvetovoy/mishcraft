
-- Низкая Трава
core.register_decoration({
    name = "misha:short_grass",
    deco_type = "simple",
    place_on = {"misha:grass_block"},
    sidelen = 16,
    fill_ratio = 0.15,
    biomes = {"misha:grassland", "misha:forest"},
    y_max = 31000,
    y_min = 1,
    decoration = "misha:short_grass",
    param2 = 3,
    param2_max = 3,
    flags = "place_center_x, place_center_z",
})
-- Регистрируем дерево как декорацию
core.register_decoration({
    name = "misha:oak_tree",
    deco_type = "schematic",
    place_on = {"misha:grass_block"},
    sidelen = 16,
    fill_ratio = 0.002,
    biomes = {"misha:grassland", "misha:forest"},
    schematic = oak_tree_schematic,
    flags = "place_center_x, place_center_z",
    y_max = 31000,
    y_min = 1,
})

-- Отдельная декорация для леса с более высокой частотой
core.register_decoration({
    name = "misha:oak_tree_forest",
    deco_type = "schematic",
    place_on = {"misha:grass_block"},
    sidelen = 16,
    fill_ratio = 0.04,  -- Часто в лесу
    biomes = {"misha:forest"},
    schematic = oak_tree_schematic,
    flags = "place_center_x, place_center_z",
    y_max = 31000,
    y_min = 1,
})

-- Кактус (один блок)
core.register_decoration({
    name = "misha:cactus",
    deco_type = "simple",
    place_on = {"misha:sand"},
    sidelen = 16,
    fill_ratio = 0.002,
    biomes = {"misha:desert"},
    decoration = "misha:cactus",
    height = 2,           -- Минимальная высота
    height_max = 3,       -- Максимальная высота
    place_offset_y = 0,   -- Смещение вверх
    y_max = 31000,
    y_min = 1,
})