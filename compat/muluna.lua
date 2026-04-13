if not mods["planet-muluna"] then return end

-- override muluna increasing ingredients
data.extend({
    {
      type = "recipe",
      name = "planetaris-hyarion-rocket-part",
      localised_name = {"", {"item-name.rocket-part"}," (", {"space-location-name.hyarion"}, ")"},
      localised_description = {"item-description.rocket-part"},
      energy_required = 3,
      enabled = false,
    surface_conditions =
    {
      {
        property = "planetaris-crystalization-resistance",
        min = 50,
        max = 100,
      }
    },
      hide_from_player_crafting = true,
      auto_recycle = false,
      category = "rocket-building",
      ingredients =
      {
        {type = "item", name = "engine-unit", amount = 5},
        {type = "item", name = "planetaris-carbon-nanotube", amount = 5},
        {type = "item", name = "rocket-fuel", amount = 10}
      },
      results = {{type="item", name="rocket-part", amount=1}},
      allow_productivity = true
    }
})