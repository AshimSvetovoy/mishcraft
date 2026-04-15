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
-- Дубовые листья
register_node('misha:oak_leaves', {
    description = 'Oak Log',
    tiles = { 'oak_leaves.png' },
    groups = { oddly_breakable_by_hand = 3 },
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

register_node('misha:water_source', {
    description = 'Essential node for mapgen alias “mapgen_water_source”',
    tiles = { 'water_source.png' },
    groups = { oddly_breakable_by_hand = 3 },
    is_ground_content = true
})

register_node('misha:river_water_source', {
    description = 'Essential node for mapgen alias “mapgen_river_water_source”',
    tiles = { 'river_water_source.png' },
    groups = { oddly_breakable_by_hand = 3 },
    is_ground_content = true
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

