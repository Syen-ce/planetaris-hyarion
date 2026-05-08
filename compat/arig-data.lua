if not mods["planetaris-arig"] then return end

  PlanetarisLib.convert_recipe_ingredient("planetaris-big-refraction-ray-collector", "plastic-bar", "planetaris-heavy-glass")
  PlanetarisLib.convert_recipe_ingredient("planetaris-advanced-raw-quartz", "concrete", "planetaris-sandstone-brick")
  PlanetarisLib.convert_recipe_ingredient("planetaris-simulating-unit", "tungsten-carbide", "planetaris-silica")
  PlanetarisLib.convert_recipe_ingredient("planetaris-nanoscale-lens", "tungsten-carbide", "planetaris-glass-panel")
  PlanetarisLib.convert_recipe_ingredient("planetaris-ruby-laser", "tungsten-plate", "planetaris-heavy-glass")
  PlanetarisLib.convert_recipe_ingredient("planetaris-particle-manipulator", "tungsten-plate", "planetaris-heavy-glass")
  PlanetarisLib.convert_recipe_ingredient("planetaris-beryllium-coating", "concrete", "planetaris-sandstone-brick")
  PlanetarisLib.convert_recipe_ingredient("planetaris-refractory-ceramics", "holmium-plate", "planetaris-silica")

  -- Change hyper belts

if data.raw["recipe"]["planetaris-hyper-transport-belt"] then
  local hyper_belt = data.raw["recipe"]["planetaris-hyper-transport-belt"]

  hyper_belt.ingredients =
      {
        {type = "item", name = "turbo-transport-belt", amount = 1},
        {type = "item", name = "planetaris-silica", amount = 2},
        {type = "item", name = "planetaris-polished-quartz", amount = 2},

      }

  PlanetarisLib.replace_recipe_surface_condition("planetaris-hyper-transport-belt", "planetaris-crystalization-resistance", 100, 50)
end

if data.raw["recipe"]["planetaris-hyper-underground-belt"] then
  local hyper_underground = data.raw["recipe"]["planetaris-hyper-underground-belt"]

  hyper_underground.ingredients =
      {
        {type = "item", name = "turbo-underground-belt", amount = 1},
        {type = "item", name = "planetaris-silica", amount = 3},
        {type = "item", name = "planetaris-polished-quartz", amount = 2},
      }

  PlanetarisLib.replace_recipe_surface_condition("planetaris-hyper-underground-belt", "planetaris-crystalization-resistance", 100, 50)
end

if data.raw["recipe"]["planetaris-hyper-splitter"] then
  local hyper_splitter = data.raw["recipe"]["planetaris-hyper-splitter"]

  hyper_splitter.ingredients =
        {
          {type = "item", name = "turbo-splitter", amount = 1},
          {type = "item", name = "processing-unit", amount = 2},
          {type = "item", name = "planetaris-silica", amount = 1},
          {type = "item", name = "planetaris-polished-quartz", amount = 1},
        }

  PlanetarisLib.replace_recipe_surface_condition("planetaris-hyper-splitter", "planetaris-crystalization-resistance", 100, 50)
end