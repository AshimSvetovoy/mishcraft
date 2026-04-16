-- Уголь
minetest.register_ore({
    ore_type       = "scatter",
    ore            = "misha:coal_ore",
    wherein        = "misha:stone",
    clust_scarcity = 8 * 8 * 8,
    clust_num_ores = 20,
    clust_size     = 5,
    y_min          = -31000,
    y_max          = 64,
})

-- Железо
minetest.register_ore({
    ore_type       = "scatter",
    ore            = "misha:iron_ore",
    wherein        = "misha:stone",
    clust_scarcity = 12 * 12 * 12,
    clust_num_ores = 8,
    clust_size     = 3,
    y_min          = -31000,
    y_max          = 16,
})

-- Золото
minetest.register_ore({
    ore_type       = "scatter",
    ore            = "misha:gold_ore",
    wherein        = "misha:stone",
    clust_scarcity = 15 * 15 * 15,
    clust_num_ores = 8,
    clust_size     = 3,
    y_min          = -31000,
    y_max          = -32,
})

-- Алмазы
minetest.register_ore({
    ore_type       = "scatter",
    ore            = "misha:diamond_ore",
    wherein        = "misha:stone",
    clust_scarcity = 18 * 18 * 18,
    clust_num_ores = 7,
    clust_size     = 3,
    y_min          = -31000,
    y_max          = -48,
})

-- Редстоун
minetest.register_ore({
    ore_type       = "scatter",
    ore            = "misha:redstone_ore",
    wherein        = "misha:stone",
    clust_scarcity = 16 * 16 * 16,
    clust_num_ores = 7,
    clust_size     = 3,
    y_min          = -31000,
    y_max          = -48,
})