local item_tints = require("__base__.prototypes.item-tints")
local item_sounds = require("__base__.prototypes.item_sounds")

if not mods["multi_surface_promethium_plate_recipe"] then return end

data:extend({
    {
        type = "item",
        name = "msppr-hyarion",
        icon = "__planetaris-hyarion__/graphics/compat/msppr-hyarion.png",
        subgroup = "msppr",
        order = "d[promethium]-r[fulgora]-hyarion",
        inventory_move_sound = item_sounds.sulfur_inventory_move,
        pick_sound = item_sounds.resource_inventory_pickup,
        drop_sound = item_sounds.sulfur_inventory_move,
        stack_size = 100,
        weight = 1 * kg,
        random_tint_color = item_tints.ice_blue,
    },

    {
        type = "recipe",
        name = "msppr-hyarion",
        subgroup = "science-pack",
        category = "refraction",
        surface_conditions =
        {
            {
                property = "planetaris-crystalization-resistance",
                min = 50,
                max = 100,
            }
        },
        enabled = false,
        ingredients = {
            { type = "item",  name = "planetaris-bismuth-transistor", amount = 1 },
            { type = "item",  name = "planetaris-ruby-laser",         amount = 1 },
            { type = "item",  name = "planetaris-beryllium-plate",    amount = 1 },
            { type = "fluid", name = "planetaris-pure-light",         amount = 12 },
        },
        energy_required = 10,
        msppr = {
            result = { type = "item", name = "msppr-hyarion", amount = 1 },
            recipe_chain_order = "fulgora-arig-hyarion",
        },
        results = { { type = "item", name = "msppr-hyarion", amount = 1 } },
        allow_productivity = false,
        auto_recycle = false,
    },
})

data.raw["recipe"]["planetaris-promethium-science-pack"].ingredients = {
      {type = "item", name = "msppr-promethium-plate", amount = 20},
      {type = "item", name = "quantum-processor", amount = 1},
      {type = "item", name = "biter-egg", amount = 10}
    }