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