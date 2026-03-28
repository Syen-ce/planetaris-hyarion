if not mods["planetaris-arig"] then return end

require("PlanetarisLib")

-- Update items
data.raw["item"]["planetaris-raw-diamond"].subgroup = "hyarion-gems"
data.raw["item"]["planetaris-raw-diamond"].default_import_location = "arig"

data.raw["item"]["planetaris-raw-quartz"].subgroup = "arig-processes"
data.raw["item"]["planetaris-raw-quartz"].default_import_location = "arig"

-- Update recipes

if data.raw.recipe["planetaris-copper-metallic-separation"] then
  data.raw.recipe["planetaris-copper-metallic-separation"] = nil
end

if data.raw.recipe["planetaris-iron-metallic-separation"] then
  data.raw.recipe["planetaris-iron-metallic-separation"] = nil
end

data.raw.recipe["planetaris-advanced-raw-quartz"].category = "compressing"
data.raw.recipe["planetaris-refractory-ceramics"].category = "compressing"

data.extend({
    {
      type = "recipe",
      name = "planetaris-iron-metallic-sifting",
      icon = "__planetaris-hyarion__/graphics/icons/metallic-iron-sifting.png",
      icon_size = 64,
      category = "sifting",
      subgroup = "hyarion-basic-processes",
      order = "a-a-b",
      energy_required = 10,
      enabled = false,
      auto_recycle = false,
      ingredients =
      {
        {type = "item", name = "planetaris-metallic-ore", amount = 5},
      },
      results = {
        {type="item", name="iron-ore", amount=6},
      },

      allow_productivity = true,
      crafting_machine_tint = {primary = {0.57, 0.55, 0.969, 1}, secondary = {0.57, 0.55, 0.969, 1}},
    },
    {
      type = "recipe",
      name = "planetaris-copper-metallic-sifting",
      icon = "__planetaris-hyarion__/graphics/icons/metallic-copper-sifting.png",
      icon_size = 64,
      category = "sifting",
      subgroup = "hyarion-basic-processes",
      order = "a-a-c",
      energy_required = 10,
      enabled = false,
      auto_recycle = false,
      ingredients =
      {
        {type = "item", name = "planetaris-metallic-ore", amount = 5},
      },
      results = {
        {type="item", name="copper-ore", amount=3}
      },

      allow_productivity = true,
      crafting_machine_tint = {primary = {1, 0.671, 0.208, 1}, secondary = {1, 0.671, 0.208, 1}},
    },
})

PlanetarisLib.convert_recipe_ingredient("planetaris-big-refraction-ray-collector", "plastic-bar", "planetaris-heavy-glass")
PlanetarisLib.convert_recipe_ingredient("planetaris-advanced-raw-quartz", "concrete", "planetaris-sandstone-brick")
PlanetarisLib.convert_recipe_ingredient("planetaris-simulating-unit", "tungsten-carbide", "planetaris-silica")
PlanetarisLib.convert_recipe_ingredient("planetaris-nanoscale-lens", "tungsten-carbide", "planetaris-glass-panel")
PlanetarisLib.convert_recipe_ingredient("planetaris-ruby-laser", "tungsten-plate", "planetaris-heavy-glass")
PlanetarisLib.convert_recipe_ingredient("planetaris-particle-manipulator", "tungsten-plate", "planetaris-heavy-glass")
PlanetarisLib.convert_recipe_ingredient("planetaris-beryllium-coating", "concrete", "planetaris-sandstone-brick")
PlanetarisLib.convert_recipe_ingredient("planetaris-refractory-ceramics", "holmium-plate", "planetaris-silica")

-- Update techs

PlanetarisLib.add_tech_ingredient_if_missing("planet-discovery-hyarion", "planetaris-compression-science-pack")
PlanetarisLib.add_tech_prerequisite_if_missing("planet-discovery-hyarion", "planetaris-compression-science")
PlanetarisLib.add_tech_ingredient_if_missing("planetaris-diamond-polishing", "planetaris-compression-science-pack")
PlanetarisLib.add_tech_prerequisite_if_missing("planetaris-diamond-polishing", "planetaris-raw-diamond-production")
PlanetarisLib.add_tech_ingredient_if_missing("planetaris-big-refraction-ray-collector", "planetaris-compression-science-pack")
PlanetarisLib.add_tech_ingredient_if_missing("planetaris-advanced-raw-quartz", "planetaris-compression-science-pack")
PlanetarisLib.add_tech_ingredient_if_missing("planetaris-nanoscale-lens", "planetaris-compression-science-pack")
PlanetarisLib.add_tech_ingredient_if_missing("planetaris-ruby-laser", "planetaris-compression-science-pack")
PlanetarisLib.add_tech_ingredient_if_missing("planetaris-simulating-unit", "planetaris-compression-science-pack")
PlanetarisLib.add_tech_prerequisite_if_missing("planetaris-simulating-unit", "planetaris-silica-processing")
PlanetarisLib.add_tech_ingredient_if_missing("planetaris-automation-4", "planetaris-compression-science-pack")
PlanetarisLib.add_tech_prerequisite_if_missing("planetaris-automation-4", "planetaris-heavy-glass")
PlanetarisLib.add_tech_ingredient_if_missing("planetaris-refraction-science-pack", "planetaris-compression-science-pack")
PlanetarisLib.add_tech_ingredient_if_missing("planetaris-ruby-laser-turret", "planetaris-compression-science-pack")
PlanetarisLib.add_tech_ingredient_if_missing("planetaris-crystalization-motor", "planetaris-compression-science-pack")
PlanetarisLib.add_tech_ingredient_if_missing("planetaris-refraction-plant", "planetaris-compression-science-pack")
PlanetarisLib.add_tech_ingredient_if_missing("planetaris-unstable-gems", "planetaris-compression-science-pack")
PlanetarisLib.add_tech_ingredient_if_missing("planetaris-particle-manipulation", "planetaris-compression-science-pack")
PlanetarisLib.add_tech_ingredient_if_missing("planetaris-beryllium-processing", "planetaris-compression-science-pack")
PlanetarisLib.add_tech_ingredient_if_missing("planetaris-space-facilities-1", "planetaris-compression-science-pack")
PlanetarisLib.add_tech_ingredient_if_missing("planetaris-zero-grav-accumulator", "planetaris-compression-science-pack")
PlanetarisLib.add_tech_ingredient_if_missing("planetaris-bismuth-processing", "planetaris-compression-science-pack")
PlanetarisLib.add_tech_ingredient_if_missing("planetaris-electromagnetic-radar", "planetaris-compression-science-pack")
PlanetarisLib.add_tech_ingredient_if_missing("planetaris-simulating-unit-productivity", "planetaris-compression-science-pack")

PlanetarisLib.remove_tech_effect("planetaris-metallic-ore-processing", "unlock-recipe", "planetaris-iron-metallic-separation")
PlanetarisLib.remove_tech_effect("planetaris-metallic-ore-processing", "unlock-recipe", "planetaris-copper-metallic-separation")
PlanetarisLib.add_tech_effect("planetaris-metallic-ore-processing", {type = "unlock-recipe", recipe = "planetaris-iron-metallic-sifting"})
PlanetarisLib.add_tech_effect("planetaris-metallic-ore-processing", {type = "unlock-recipe", recipe = "planetaris-copper-metallic-sifting"})

PlanetarisLib.remove_tech_effect("planetaris-diamond-polishing", "unlock-recipe", "planetaris-raw-diamond")

-- Change hyper belts

local hyper_belt = data.raw["recipe"]["planetaris-hyper-transport-belt"]
local hyper_underground = data.raw["recipe"]["planetaris-hyper-underground-belt"]
local hyper_splitter = data.raw["recipe"]["planetaris-hyper-splitter"]

hyper_belt.ingredients =
      {
        {type = "item", name = "turbo-transport-belt", amount = 1},
        {type = "item", name = "planetaris-silica", amount = 2},
        {type = "item", name = "planetaris-polished-quartz", amount = 2},

      }

hyper_belt.surface_conditions =
    {
      {
        property = "planetaris-crystalization-resistance",
        min = 50,
        max = 100,
      }
    }

hyper_splitter.ingredients =
      {
        {type = "item", name = "turbo-splitter", amount = 1},
        {type = "item", name = "processing-unit", amount = 2},
        {type = "item", name = "planetaris-silica", amount = 1},
        {type = "item", name = "planetaris-polished-quartz", amount = 1},
      }

hyper_splitter.surface_conditions =
    {
      {
        property = "planetaris-crystalization-resistance",
        min = 50,
        max = 100,
      }
    }

hyper_underground.ingredients =
      {
        {type = "item", name = "turbo-underground-belt", amount = 1},
        {type = "item", name = "planetaris-silica", amount = 3},
        {type = "item", name = "planetaris-polished-quartz", amount = 2},
      }

hyper_underground.surface_conditions =
    {
      {
        property = "planetaris-crystalization-resistance",
        min = 50,
        max = 100,
      }
    }

data.raw["technology"]["planetaris-hyper-transport-belt"].prerequisites = {"planetaris-polishing-science-pack", "turbo-transport-belt"}
data.raw["technology"]["planetaris-hyper-transport-belt"].unit.ingredients =
        {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"chemical-science-pack", 1},
          {"production-science-pack", 1},
          {"space-science-pack", 1},
          {"metallurgic-science-pack", 1},
          {"planetaris-compression-science-pack", 1},
          {"planetaris-polishing-science-pack", 1},
        }
