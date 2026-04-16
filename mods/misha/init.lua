-- init.lua

minetest.register_on_joinplayer(function(player)
    player:hud_set_hotbar_itemcount(9)
    -- Устанавливаем текстуры для хотбара
    player:hud_set_hotbar_image("inventory_hotbar.png")
    player:hud_set_hotbar_selected_image("inventory_hotbar_selected.png")
end)

dofile(core.get_modpath(core.get_current_modname()) .. "/blocks.lua")
oak_tree_schematic = dofile(core.get_modpath(core.get_current_modname()) .. "/oak_tree.lua").schematic
dofile(core.get_modpath(core.get_current_modname()) .. "/biomes.lua")
dofile(core.get_modpath(core.get_current_modname()) .. "/decorations.lua")
dofile(core.get_modpath(core.get_current_modname()) .. "/tools.lua")
dofile(core.get_modpath(core.get_current_modname()) .. "/craft.lua")
dofile(core.get_modpath(core.get_current_modname()) .. "/items.lua")
dofile(core.get_modpath(core.get_current_modname()) .. "/ore.lua")


