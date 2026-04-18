minetest.register_node("misha:furnace", {
    description = "Furnace",
    tiles = {
        "furnace_top.png",
        "stone.png",
        "furnace_side.png",
        "furnace_side.png",
        "furnace_side.png",
        "furnace_front.png"
    },
    paramtype2 = "facedir",
    groups = {cracky = 2},

    on_construct = function(pos)
        local meta = minetest.get_meta(pos)
        local inv = meta:get_inventory()

        inv:set_size("src", 1)
        inv:set_size("fuel", 1)
        inv:set_size("dst", 1)

        meta:set_string("formspec",
            "size[8,9]" ..
            "list[current_name;src;2,1;1,1;]" ..
            "list[current_name;fuel;2,3;1,1;]" ..
            "list[current_name;dst;5,2;1,1;]" ..
            "list[current_player;main;0,5;8,4;]"
        )

        meta:set_float("fuel_time", 0)
        meta:set_float("fuel_totaltime", 0)
        meta:set_float("src_time", 0)

        minetest.get_node_timer(pos):start(1.0)
    end,

on_timer = function(pos, elapsed)
    local meta = minetest.get_meta(pos)
    local inv = meta:get_inventory()

    local src = inv:get_stack("src", 1)
    local fuel = inv:get_stack("fuel", 1)

    local fuel_time = meta:get_float("fuel_time")
    local fuel_totaltime = meta:get_float("fuel_totaltime")
    local src_time = meta:get_float("src_time")

    -- 🔴 ВАЖНО: проверяем рецепт
    local result = minetest.get_craft_result({
        method = "cooking",
        width = 1,
        items = {src}
    })

    local can_cook = not src:is_empty()
        and not result.item:is_empty()

    -- если горит топливо
    if fuel_time < fuel_totaltime then
        fuel_time = fuel_time + elapsed

        if can_cook then
            src_time = src_time + elapsed

            if src_time >= result.time then
                src:take_item(1)
                inv:set_stack("src", 1, src)
                inv:add_item("dst", result.item)

                src_time = 0
            end
        else
            -- ❗ если нельзя плавить — сбрасываем прогресс
            src_time = 0
        end
    else
        -- 🔥 берём топливо ТОЛЬКО если есть что плавить
        if can_cook and not fuel:is_empty() then
            local fuel_def = minetest.get_craft_result({
                method = "fuel",
                width = 1,
                items = {fuel}
            })

            if fuel_def.time > 0 then
                fuel:take_item(1)
                inv:set_stack("fuel", 1, fuel)

                fuel_time = 0
                fuel_totaltime = fuel_def.time
            end
        end
    end

    meta:set_float("fuel_time", fuel_time)
    meta:set_float("fuel_totaltime", fuel_totaltime)
    meta:set_float("src_time", src_time)

    return true
end
})