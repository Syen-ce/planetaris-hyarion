if not mods["lignumis"] then return end

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