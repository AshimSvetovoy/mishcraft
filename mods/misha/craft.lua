-- Доски
minetest.register_craft({
    output = "misha:oak_planks 4",
    recipe = {
        {"misha:oak_log"}
    }
})
minetest.register_craft({
    output = "misha:stick 4",
    recipe = {
        {"misha:oak_planks"},
        {"misha:oak_planks"}
    }
})