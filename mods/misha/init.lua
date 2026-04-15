local register_node = core.register_node
local register_alias = core.register_alias

-- Камень
register_node('misha:stone', {
    description = 'Stone',
    tiles = { 'stone.png' },
    groups = { cracky = 3 },
    is_ground_content = true
})

-- Земля
register_node('misha:dirt', {
    description = 'Dirt',
    tiles = { 'dirt.png' },
    groups = { crumbly = 3 },
    is_ground_content = true
})

-- Блок травы
register_node('misha:grass_block', {
    description = 'Grass Block',
    tiles = {
        'grass_block.png',
        'dirt.png',
        'grass_block_side.png'
    },
    groups = { crumbly = 3 },
    is_ground_content = true
})
-- Песок
register_node('misha:sand', {
    description = 'Sand',
    tiles = {'sand.png'},
    groups = { crumbly = 3 },
    is_ground_content = true
})
-- Кактус
register_node('misha:cactus', {
    description = 'Cactus',
    tiles = {
        'cactus_top.png',
        'cactus_bottom.png',
        'cactus.png'
    },
    groups = { oddly_breakable_by_hand = 3 },
    is_ground_content = true
})

-- Дубовое бревно
register_node('misha:oak_log', {
    description = 'Oak Log',
    tiles = {
        'oak_log_top.png',
        'oak_log_top.png',
        'oak_log.png'
    },
    groups = { choppy = 3 },
    is_ground_content = true
})
-- Доски дубовые
register_node('misha:oak_planks', {
    description = 'Oak Planks',
    tiles = {'oak_planks.png'},
    groups = { choppy = 3, wood = 1},
    is_ground_content = true
})
-- Дубовые листья
register_node('misha:oak_leaves', {
    description = 'Oak Leaves', -- Не забудьте поправить описание
    drawtype = "allfaces_optional", -- Тип отрисовки для листвы
    tiles = { 'oak_leaves.png' },
    use_texture_alpha = "clip",    -- Режим прозрачности
    paramtype = "light",           -- Для корректного освещения прозрачных блоков
    sunlight_propagates = true,    -- Чтобы солнечный свет проходил сквозь листву
    groups = { oddly_breakable_by_hand = 3, leaves = 1 }, -- Добавлен стандартный group для листвы
    is_ground_content = true,
})
-- Низкая трава
register_node('misha:short_grass', {
    description = 'Short Grass',
    drawtype = "plantlike",
    tiles = { 'short_grass.png' },
    inventory_image = 'short_grass.png',
    wield_image = 'short_grass.png',
    paramtype = "light",
    paramtype2 = "meshoptions",
    place_param2 = 3,
    sunlit_propagates = true,
    walkable = false,
    buildable_to = true,
    climbable = false,
    diggable = true,
    dig_immediate = true,
    groups = {
        oddly_breakable_by_hand = 3,
        attached_node = 1,
        flora = 1,
        dig_by_water = 1,
        destroy_by_lava_flow = 1,
        fire_risk = 50
    },
    drop = {},
    selection_box = {
        type = "fixed",
        fixed = { -0.4, -0.5, -0.4, 0.4, -0.3, 0.4 }
    },
    node_box = {
        type = "fixed",
        fixed = { -0.4, -0.5, -0.4, 0.4, -0.3, 0.4 }
    },
    is_ground_content = true
})

-- Текучая версия воды
minetest.register_node('misha:water_flowing', {
    description = 'Flowing Misha Water',
    drawtype = 'flowingliquid',
    tiles = { 'water_flowing_animated.png' },
    special_tiles = {
        {
            name = 'water_flowing_animated.png',
            backface_culling = false,
            animation = {
                type = 'vertical_frames',
                aspect_w = 16,
                aspect_h = 16,
                length = 2.0 -- 2 секунды на полный цикл
            }
        },
        {
            name = 'water_flowing_animated.png',
            backface_culling = false,
            animation = {
                type = 'vertical_frames',
                aspect_w = 16,
                aspect_h = 16,
                length = 2.0
            }
        }
    },
    paramtype = 'light',
    paramtype2 = 'flowingliquid',
    walkable = false,
    pointable = false,
    diggable = false,
    buildable_to = true,
    is_ground_content = false,
    drop = '',
    drowning = 1,
    liquidtype = 'flowing',
    liquid_alternative_flowing = 'misha:water_flowing',
    liquid_alternative_source = 'misha:water_source',
    liquid_viscosity = 1,
    liquid_range = 8,
    post_effect_color = {a = 120, r = 30, g = 60, b = 90},
    groups = { water = 3, liquid = 3, puts_out_fire = 1, not_in_creative_inventory = 1 }
})

-- Источник воды
minetest.register_node('misha:water_source', {
    description = 'Misha Water Source',
    drawtype = 'liquid',
    tiles = {
        {
            name = 'water_source_animated.png',
            backface_culling = false,
            animation = {
                type = 'vertical_frames',
                aspect_w = 16,
                aspect_h = 16,
                length = 2.0
            }
        }
    },
    paramtype = 'light',
    walkable = false,
    pointable = true,
    diggable = false,
    buildable_to = true,
    is_ground_content = true,
    drop = '',
    drowning = 1,
    liquidtype = 'source',
    liquid_alternative_flowing = 'misha:water_flowing',
    liquid_alternative_source = 'misha:water_source',
    liquid_viscosity = 1,
    liquid_range = 8,
    post_effect_color = {a = 120, r = 30, g = 60, b = 90},
    groups = { water = 3, liquid = 3, puts_out_fire = 1, immortal = 1 },
    on_blast = function() end,
    can_dig = function() return false end
})

register_alias('mapgen_stone', 'misha:stone')
register_alias('mapgen_water_source', 'misha:water_source')
register_alias('mapgen_river_water_source', 'misha:river_water_source')
register_alias('mapgen_dirt', 'misha:dirt')
register_alias('mapgen_dirt_with_grass', 'misha:grass_block')

oak_tree_schematic = dofile(core.get_modpath(core.get_current_modname()) .. "/oak_tree.lua").schematic
dofile(core.get_modpath(core.get_current_modname()) .. "/biomes.lua")
dofile(core.get_modpath(core.get_current_modname()) .. "/decorations.lua")
dofile(core.get_modpath(core.get_current_modname()) .. "/tools.lua")
dofile(core.get_modpath(core.get_current_modname()) .. "/craft.lua")
dofile(core.get_modpath(core.get_current_modname()) .. "/items.lua")


