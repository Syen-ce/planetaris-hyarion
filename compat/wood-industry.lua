if not mods["wood-industry"] then return end

--------------------------------- Hyarion
    data.extend({
        {
        type = "recipe",
        name = "planetaris-lig-carbon-wood",
        category = "sifting",
        enabled = false,
        auto_recycle = false,
        energy_required = 1,
        icon = "__base__/graphics/icons/wood.png",
        localised_name = {"", {"item-name.wood"}, " (", {"space-location-name.hyarion"}, ")"},
        ingredients =
        {
        {type = "item", name = "carbon", amount = 2},
        },
        results = {{type="item", name="wood", amount=5}},
        allow_productivity = false
        },
    })

    table.insert(data.raw["technology"]["planetaris-metallic-ore-processing"].effects,
        {
          type = "unlock-recipe",
          recipe = "planetaris-lig-carbon-wood"
        }
      )

--- Resin

if settings.startup["wood-industry-resin"].value then
  if mods["alloy-smelting"] then

    data.extend({
        {
        type = "recipe",
        name = "planetaris-wood-resin",
        category = data.raw["item"]["resin"].category,
        subgroup = "hyarion-basic-processes",
        order = "a-a-e-b",
        enabled = false,
        auto_recycle = false,
        energy_required = 10,
        icon = data.raw["item"]["resin"].icon,
        localised_name = {"", {"item-name.resin"}, " (", {"space-location-name.hyarion"}, ")"},
        surface_conditions =
        {
          {
            property = "planetaris-crystalization-resistance",
            min = 50,
            max = 100,
          }
        },
        ingredients =
        {
        {type = "item", name = "wood", amount = 3},
        {type = "item", name = "coke", amount = 1},
        {type = "item", name = "planetaris-raw-quartz", amount = 1},
        },
        results = {{type="item", name="resin", amount=2}},
        allow_productivity = true,
        crafting_machine_tint = {primary = {1, 0.808, 0.435, 1}, secondary = {1, 0.808, 0.435, 1}},
        },
    })

  else

        data.extend({
        {
        type = "recipe",
        name = "planetaris-wood-resin",
        category = data.raw["item"]["resin"].category,
        subgroup = "hyarion-basic-processes",
        order = "a-a-e-b",
        enabled = false,
        auto_recycle = false,
        energy_required = 10,
        icon = data.raw["item"]["resin"].icon,
        localised_name = {"", {"item-name.resin"}, " (", {"space-location-name.hyarion"}, ")"},
        surface_conditions =
        {
          {
            property = "planetaris-crystalization-resistance",
            min = 50,
            max = 100,
          }
        },
        ingredients =
        {
        {type = "item", name = "wood", amount = 3},
        {type = "item", name = "carbon", amount = 1},
        {type = "item", name = "planetaris-raw-quartz", amount = 1},
        },
        results = {{type="item", name="resin", amount=2}},
        allow_productivity = true,
        crafting_machine_tint = {primary = {1, 0.808, 0.435, 1}, secondary = {1, 0.808, 0.435, 1}},
        },
    })

  end

    table.insert(data.raw["technology"]["planetaris-metallic-ore-processing"].effects,
        {
          type = "unlock-recipe",
          recipe = "planetaris-wood-resin"
        }
    )
  end