-- Доски
minetest.register_craft({
    output = "misha:oak_planks 4",
    recipe = {
        {"misha:oak_log"}
    }
})
-- Палки
minetest.register_craft({
    output = "misha:stick 4",
    recipe = {
        {"misha:oak_planks"},
        {"misha:oak_planks"}
    }
})
-- Деревянная кирка
minetest.register_craft({
    output = "misha:wooden_pickaxe",
    recipe = {
        {"misha:oak_planks", "misha:oak_planks", "misha:oak_planks"},
        {"", "misha:stick", ""},
        {"", "misha:stick", ""}
    }
})
-- Каменная кирка
minetest.register_craft({
    output = "misha:wooden_pickaxe",
    recipe = {
        {"misha:cobblestone", "misha:cobblestone", "misha:cobblestone"},
        {"", "misha:stick", ""},
        {"", "misha:stick", ""}
    }
})

-- Топливо
minetest.register_craft({
    type = "fuel",
    recipe = "misha:coal",
    burntime = 10,
})
minetest.register_craft({
    type = "fuel",
    recipe = "group:wood",
    burntime = 5,
})

-- Железный слиток
minetest.register_craft({
    type = "cooking",
    output = "misha:iron_ingot",
    recipe = "misha:iron_ore",
    cooktime = 5,
})
-- Золотой слиток
minetest.register_craft({
    type = "cooking",
    output = "misha:gold_ingot",
    recipe = "misha:gold_ore",
    cooktime = 5,
})