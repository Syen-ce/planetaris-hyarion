data:extend(
{
    {
      type = "recipe",
      name = "planetaris-assembling-machine-4",
      category = "electromagnetics",
      enabled = false,
      energy_required = 10,
      ingredients =
      {
        {type = "item", name = "planetaris-simulating-unit", amount = 10},
        {type = "item", name = "speed-module-3", amount = 2},
        {type = "item", name = "assembling-machine-3", amount = 2}
      },
      results = {{type="item", name="planetaris-assembling-machine-4", amount=1}},
      allow_productivity = false,
    },
    
-----------------------------------------------------------------
--------------------------- Hyarion
-----------------------------------------------------------------

    {
      type = "recipe",
      name = "planetaris-quartz-furnace",
      energy_required = 1,
      enabled = false,
      ingredients =
      {
        {type = "item", name = "planetaris-raw-quartz", amount = 5},
        {type = "item", name = "carbon", amount = 1},
      },
      results = {{type="item", name="planetaris-quartz-furnace", amount=1}},
      allow_productivity = false,
    },
    {
      type = "recipe",
      name = "planetaris-refraction-ray-collector",
      energy_required = 2,
      enabled = false,
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
        {type = "item", name = "planetaris-raw-quartz", amount = 5},
        {type = "item", name = "iron-plate", amount = 5},
        {type = "item", name = "copper-cable", amount = 3},
      },
      results = {{type="item", name="planetaris-refraction-ray-collector", amount=1}},
      allow_productivity = false,
    },
      {
      type = "recipe",
      name = "planetaris-big-refraction-ray-collector",
      category = "electromagnetics",
      energy_required = 4,
      enabled = false,
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
        {type = "item", name = "planetaris-polished-quartz", amount = 10},
        {type = "item", name = "steel-plate", amount = 10},
        {type = "item", name = "electronic-circuit", amount = 5},
        {type = "item", name = "planetaris-heavy-glass", amount = 2},
      },
      results = {{type="item", name="planetaris-big-refraction-ray-collector", amount=1}},
      allow_productivity = false,
    },
    {
      type = "recipe",
      name = "planetaris-polisher",
      category = "advanced-crafting",
      energy_required = 10,
      enabled = false,
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
        {type = "item", name = "planetaris-raw-quartz", amount = 50},
        {type = "item", name = "iron-plate", amount = 25},
        {type = "item", name = "electronic-circuit", amount = 10},
      },
      results = {{type="item", name="planetaris-polisher", amount=1}},
      allow_productivity = false,
    },
    {
      type = "recipe",
      name = "hyarion-geode-mining-drill",
      category = "advanced-crafting",
      energy_required = 10,
      enabled = false,
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
        {type = "item", name = "burner-mining-drill", amount = 2},
        {type = "item", name = "planetaris-polished-quartz", amount = 10},
        {type = "item", name = "steel-plate", amount = 10},
        {type = "item", name = "electronic-circuit", amount = 5},
      },
      results = {{type="item", name="hyarion-geode-mining-drill", amount=1}},
      allow_productivity = false,
    },
    {
      type = "recipe",
      name = "planetaris-burner-drill-alternative",
      localised_name = {"", {"entity-name.burner-mining-drill"}, " (", {"space-location-name.hyarion"}, ")"},
      category = "crafting",
      energy_required = 5,
      enabled = false,
      ingredients =
      {
        {type = "item", name = "iron-plate", amount = 3},
        {type = "item", name = "iron-gear-wheel", amount = 3},
        {type = "item", name = "planetaris-quartz-furnace", amount = 1},
      },
      results = {{type="item", name="burner-mining-drill", amount=1}},
      allow_productivity = false,
    },

    -- Metallics

    {
      type = "recipe",
      name = "planetaris-metallic-smelting",
      icon = "__planetaris-hyarion__/graphics/icons/metallic-smelting.png",
      icon_size = 64,
      category = "smelting",
      subgroup = "hyarion-basic-processes",
      order = "a-a-a",
      energy_required = 5,
      enabled = false,
      ingredients =
      {
        {type = "item", name = "planetaris-metallic-ore", amount = 5},
      },
      results = {
          {type = "item", name = "iron-plate",                amount = 1,  probability = 0.80, show_details_in_recipe_tooltip = false},
          {type = "item", name = "copper-plate",              amount = 1,  probability = 0.40, show_details_in_recipe_tooltip = false},
    },
      allow_productivity = false,
    },
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

    --- Polishing

    {
      type = "recipe",
      name = "planetaris-polishing-compound",
      subgroup = "hyarion-basic-processes",
      category = "polishing",
      energy_required = 10,
      enabled = false,
      ingredients =
      {
        {type = "fluid", name = "lava", amount = 50},
        {type = "item", name = "iron-ore", amount = 10},
      },
      results = {{type="fluid", name="planetaris-polishing-compound", amount=40}},
      allow_productivity = false,
    },
    {
      type = "recipe",
      name = "planetaris-polished-quartz",
      category = "polishing",
      energy_required = 5,
      enabled = false,
      ingredients =
      {
        {type = "fluid", name = "planetaris-polishing-compound", amount = 10},
        {type = "item", name = "planetaris-raw-quartz", amount = 5},
      },
      results = {{type="item", name="planetaris-polished-quartz", amount=1}},
      allow_productivity = true,
    },
    {
      type = "recipe",
      name = "planetaris-polished-emerald",
      category = "polishing",
      energy_required = 5,
      enabled = false,
      ingredients =
      {
        {type = "fluid", name = "planetaris-polishing-compound", amount = 10},
        {type = "item", name = "planetaris-raw-emerald", amount = 5},
      },
      results = {{type="item", name="planetaris-polished-emerald", amount=1}},
      allow_productivity = true,
    },
    {
      type = "recipe",
      name = "planetaris-polished-ruby",
      category = "polishing",
      energy_required = 5,
      enabled = false,
      ingredients =
      {
        {type = "fluid", name = "planetaris-polishing-compound", amount = 10},
        {type = "item", name = "planetaris-raw-ruby", amount = 5},
      },
      results = {{type="item", name="planetaris-polished-ruby", amount=1}},
      allow_productivity = true,
    },
    {
      type = "recipe",
      name = "planetaris-polished-sapphire",
      category = "polishing",
      energy_required = 5,
      enabled = false,
      ingredients =
      {
        {type = "fluid", name = "planetaris-polishing-compound", amount = 10},
        {type = "item", name = "planetaris-raw-sapphire", amount = 5},
      },
      results = {{type="item", name="planetaris-polished-sapphire", amount=1}},
      allow_productivity = true,
    },
    {
      type = "recipe",
      name = "planetaris-polished-diamond",
      category = "polishing",
      energy_required = 5,
      enabled = false,
      ingredients =
      {
        {type = "fluid", name = "planetaris-polishing-compound", amount = 10},
        {type = "item", name = "planetaris-raw-diamond", amount = 2},
      },
      results = {{type="item", name="planetaris-polished-diamond", amount=1}},
      allow_productivity = true,
    },
  {
    type = "recipe",
    name = "planetaris-polishing-science-pack",
    category = "polishing",
    enabled = false,
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
        {type = "fluid", name = "planetaris-polishing-compound", amount = 8},
        {type = "item", name = "planetaris-polished-quartz", amount = 5},
        {type = "item", name = "planetaris-polished-ruby", amount = 5},
        {type = "item", name = "planetaris-polished-sapphire", amount = 5},
    },
    energy_required = 10,
    results = {{type="item", name="planetaris-polishing-science-pack", amount=1}},
    allow_productivity = true,
  },
    --- Rocket parts
    {
      type = "recipe",
      name = "planetaris-polishing-carbon-fiber",
      localised_name = {"", {"item-name.carbon-fiber"}, " (", {"technology-name.planetaris-polishing"}, ")"},
      category = "polishing",
      subgroup = "hyarion-basic-processes",
      order = "x-a",
      energy_required = 3,
      enabled = false,
      ingredients =
      {
        {type = "fluid", name = "lava", amount = 30},
        {type = "item", name = "carbon", amount = 10},
      },
      results = {{type="item", name="carbon-fiber", amount=1}},
      allow_productivity = true,
    },
    {
      type = "recipe",
      name = "planetaris-hyarion-rocket-fuel",
      localised_name = {"", {"item-name.rocket-fuel"}, " (", {"technology-name.planetaris-polishing"}, ")"},
      category = "polishing",
      subgroup = "hyarion-basic-processes",
      order = "x-a",
      energy_required = 3,
      enabled = false,
      ingredients =
      {
        {type = "fluid", name = "planetaris-polishing-compound", amount = 10},
        {type = "item", name = "planetaris-polished-quartz", amount = 2},
        {type = "item", name = "carbon", amount = 5},
      },
      results = {{type="item", name="rocket-fuel", amount=1}},
      allow_productivity = true,
    },
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
        {type = "item", name = "engine-unit", amount = 10},
        {type = "item", name = "carbon-fiber", amount = 10},
        {type = "item", name = "rocket-fuel", amount = 10}
      },
      results = {{type="item", name="rocket-part", amount=1}},
      allow_productivity = true
    },
 {
    type = "recipe",
    name = "planetaris-hyarion-cargo-landing-pad",
    localised_name = {"", {"entity-name.cargo-landing-pad"}," (", {"space-location-name.hyarion"}, ")"},
    localised_description = {"entity-description.cargo-landing-pad"},
    subgroup = "hyarion-rocket-building",
    enabled = false,
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
      {type = "item", name = "planetaris-polished-quartz", amount = 200},
      {type = "item", name = "steel-plate", amount = 25},
      {type = "item", name = "electronic-circuit", amount = 10}
    },
    energy_required = 30,
    results = {{type="item", name="cargo-landing-pad", amount=1}}
  },
  {
    type = "recipe",
    name = "planetaris-hyarion-rocket-silo",
    localised_name = {"", {"entity-name.rocket-silo"}," (", {"space-location-name.hyarion"}, ")"},
    localised_description = {"entity-description.rocket-silo"},
    subgroup = "hyarion-rocket-building",
    enabled = false,
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
      {type = "item", name = "steel-plate", amount = 800},
      {type = "item", name = "planetaris-polished-emerald", amount = 600},
      {type = "item", name = "pipe", amount = 100},
      {type = "item", name = "electronic-circuit", amount = 200},
      {type = "item", name = "engine-unit", amount = 200}
    },
    energy_required = 30,
    results = {{type="item", name="rocket-silo", amount=1}},
    requester_paste_multiplier = 1
  },
    --- Refraction
  {
    type = "recipe",
    name = "planetaris-refraction-plant",
    category = "electromagnetics",
    enabled = false,
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
      {type = "item", name = "planetaris-crystalization-motor", amount = 5},
      {type = "item", name = "planetaris-nanoscale-lens", amount = 20},
      {type = "item", name = "planetaris-fiber-optics-cable", amount = 50},
      {type = "item", name = "planetaris-simulating-unit", amount = 20},
      {type = "item", name = "holmium-plate", amount = 100},

    },
    energy_required = 15,
    results = {{type="item", name="planetaris-refraction-plant", amount=1}},
    allow_productivity = false,
  },
    {
      type = "recipe",
      name = "planetaris-fiber-optics-cable",
      category = "electromagnetics",
      energy_required = 4,
      enabled = false,
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
        {type = "item", name = "planetaris-polished-diamond", amount = 1},
        {type = "item", name = "planetaris-polished-sapphire", amount = 1},
        {type = "item", name = "plastic-bar", amount = 2},
      },
      results = {{type="item", name="planetaris-fiber-optics-cable", amount=1}},
      allow_productivity = true,
    },
    {
      type = "recipe",
      name = "planetaris-nanoscale-lens",
      category = "polishing",
      energy_required = 3,
      enabled = false,
      ingredients =
      {
        {type = "fluid", name = "planetaris-polishing-compound", amount = 15},
        {type = "item", name = "planetaris-glass-panel", amount = 1},
        {type = "item", name = "planetaris-polished-diamond", amount = 1},
      },
      results = {{type="item", name="planetaris-nanoscale-lens", amount=1}},
      allow_productivity = true,
    },
    {
      type = "recipe",
      name = "planetaris-ruby-laser",
      category = "electromagnetics",
      energy_required = 4,
      enabled = false,
      ingredients =
      {
        {type = "item", name = "steel-plate", amount = 5},
        {type = "item", name = "planetaris-polished-quartz", amount = 2},
        {type = "item", name = "planetaris-polished-ruby", amount = 8},
        {type = "item", name = "planetaris-heavy-glass", amount = 2},
      },
      results = {{type="item", name="planetaris-ruby-laser", amount=1}},
      allow_productivity = true,
    },
    {
      type = "recipe",
      name = "planetaris-crystalization-motor",
      category = "electromagnetics",
      energy_required = 3,
      enabled = false,
      ingredients =
      {
        {type = "item", name = "engine-unit", amount = 2},
        {type = "item", name = "planetaris-polished-quartz", amount = 10},
        {type = "item", name = "planetaris-polished-emerald", amount = 5},
        {type = "item", name = "electronic-circuit", amount = 2},
      },
      results = {{type="item", name="planetaris-crystalization-motor", amount=1}},
      allow_productivity = true,
    },
--- Refraction gems
    {
      type = "recipe",
      name = "planetaris-charged-gem",
      category = "polishing",
      energy_required = 10,
      enabled = false,
      ingredients =
      {
        {type = "fluid", name = "planetaris-polishing-compound", amount = 20},
        {type = "item", name = "planetaris-polished-quartz", amount = 5},
        {type = "item", name = "planetaris-polished-sapphire", amount = 10},
      },
      results = {{type="item", name="planetaris-charged-gem", amount=1}},
      allow_productivity = false,
    },
    {
      type = "recipe",
      name = "planetaris-unstable-gem",
      category = "polishing",
      energy_required = 10,
      enabled = false,
      ingredients =
      {
        {type = "fluid", name = "planetaris-polishing-compound", amount = 20},
        {type = "item", name = "planetaris-polished-quartz", amount = 5},
        {type = "item", name = "planetaris-unstable-shard", amount = 5},
        {type = "item", name = "planetaris-polished-ruby", amount = 5},
      },
      results = {{type="item", name="planetaris-unstable-gem", amount=1}},
      allow_productivity = false,
    },
  {
    type = "recipe",
    name = "planetaris-simulating-unit",
    category = "electromagnetics",
    enabled = false,
    auto_recycle = false,
    energy_required = 15,
    ingredients =
    {
      {type = "item", name = "processing-unit", amount = 1},
      {type = "item", name = "supercapacitor", amount = 1},
      {type = "item", name = "planetaris-fiber-optics-cable", amount = 2},
      {type = "item", name = "planetaris-silica", amount = 5},
    },
    results = {{type="item", name="planetaris-simulating-unit", amount=1}},
    allow_productivity = true
  },
    {
    type = "recipe",
    name = "planetaris-refraction-science-pack",
    category = "electromagnetics",
    enabled = false,
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
        {type = "fluid", name = "planetaris-polishing-compound", amount = 10},
        {type = "item", name = "planetaris-simulating-unit", amount = 3},
        {type = "item", name = "planetaris-nanoscale-lens", amount = 3},
        {type = "item", name = "planetaris-ruby-laser", amount = 5},
    },
    energy_required = 10,
    results = {{type="item", name="planetaris-refraction-science-pack", amount=1}},
    allow_productivity = true,
  },

-- Particle Manipulation

    {
    type = "recipe",
    name = "planetaris-particle-manipulator",
    category = "electromagnetics",
    enabled = false,
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
        {type = "item", name = "planetaris-heavy-glass", amount = 50},
        {type = "item", name = "holmium-plate", amount = 25},
        {type = "item", name = "planetaris-nanoscale-lens", amount = 25},
        {type = "item", name = "planetaris-simulating-unit", amount = 10},
        {type = "item", name = "planetaris-crystalization-motor", amount = 15},
    },
    energy_required = 10,
    results = {{type="item", name="planetaris-particle-manipulator", amount=1}},
    allow_productivity = true,
  },
  {
    type = "recipe",
    name = "planetaris-beryl",
    category = "particle-manipulation",
    enabled = false,
    auto_recycle = false,
    energy_required = 3,
    ingredients =
    {
      {type = "fluid", name = "planetaris-polishing-compound", amount = 10},
      {type = "item", name = "planetaris-polished-emerald", amount = 3},
      {type = "item", name = "planetaris-unstable-gem", amount = 1},
    },
    results = {
      {type="item", name="planetaris-beryl", amount=1},
      {type="fluid", name="planetaris-aluminium", amount=10}
    },
    main_product = "planetaris-beryl",
    allow_productivity = true,

    crafting_machine_tint = {primary = {0.4, 1, 0.4, 0.6}, secondary = {0, 1, 0, 0.8}},
  },
  {
    type = "recipe",
    name = "planetaris-beryllium-plate",
    category = "particle-manipulation",
    enabled = false,
    auto_recycle = false,
    energy_required = 3,
    ingredients =
    {
      {type = "fluid", name = "planetaris-polishing-compound", amount = 10},
      {type = "item", name = "planetaris-beryl", amount = 3},
      {type = "item", name = "copper-ore", amount = 5},
    },
    results = {{type="item", name="planetaris-beryllium-plate", amount=1}},
    allow_productivity = true,

    crafting_machine_tint = {primary = {0.4, 0.8, 0.4, 0.6}, secondary = {0, 0.8, 0, 0.8}},
  },
  {
    type = "recipe",
    name = "planetaris-beryllium-nitride",
    category = "particle-manipulation",
    enabled = false,
    auto_recycle = false,
    energy_required = 6,
    ingredients =
    {
      {type = "fluid", name = "lava", amount = 30},
      {type = "item", name = "planetaris-beryl", amount = 2},
      {type = "item", name = "sulfur", amount = 6},
    },
    results = {{type="item", name="planetaris-beryllium-nitride", amount=1}},
    allow_productivity = true,

    crafting_machine_tint = {primary = {0.4, 0.8, 0.4, 0.6}, secondary = {0, 0.8, 0, 0.8}},
  },
  {
    type = "recipe",
    name = "planetaris-coal-particle-manipulation",
    localised_name = {"", {"item-name.coal"}, " (", {"technology-name.planetaris-particle-manipulation"}, ")"},
    category = "particle-manipulation",
    subgroup = "hyarion-advanced-processes",
    order = "f[p-manipulation]-a",
    enabled = false,
    auto_recycle = false,
    energy_required = 3,
    ingredients =
    {
      {type = "item", name = "carbon", amount = 3},
    },
    results = {{type="item", name="coal", amount=2}},
    allow_productivity = false,

    crafting_machine_tint = {primary = {0,0,0,0.5}, secondary = {1,1,1,1}},
  },
  {
    type = "recipe",
    name = "planetaris-carbon-particle-manipulation",
    localised_name = {"", {"item-name.carbon"}, " (", {"technology-name.planetaris-particle-manipulation"}, ")"},
    category = "particle-manipulation",
    subgroup = "hyarion-advanced-processes",
    order = "f[p-manipulation]-a",
    enabled = false,
    auto_recycle = false,
    energy_required = 3,
    ingredients =
    {
      {type = "item", name = "coal", amount = 3},
    },
    results = {{type="item", name="carbon", amount=2}},
    allow_productivity = false,

    crafting_machine_tint = {primary = {0,0,0,0.5}, secondary = {1,1,1,1}},
  },
  {
    type = "recipe",
    name = "planetaris-calcite-particle-manipulation",
    localised_name = {"", {"item-name.calcite"}, " (", {"technology-name.planetaris-particle-manipulation"}, ")"},
    category = "particle-manipulation",
    subgroup = "hyarion-advanced-processes",
    order = "f[p-manipulation]-b",
    enabled = false,
    auto_recycle = false,
    energy_required = 3,
    ingredients =
    {
      {type = "item", name = "planetaris-raw-quartz", amount = 2},
    },
    results = {{type="item", name="calcite", amount=1}},
    allow_productivity = false,

    crafting_machine_tint = {primary = {1,1,1,0.5}, secondary = {1,1,1,1}},
  },
  {
    type = "recipe",
    name = "planetaris-raw-quartz-particle-manipulation",
    localised_name = {"", {"item-name.planetaris-raw-quartz"}, " (", {"technology-name.planetaris-particle-manipulation"}, ")"},
    category = "particle-manipulation",
    subgroup = "hyarion-advanced-processes",
    order = "f[p-manipulation]-b",
    enabled = false,
    auto_recycle = false,
    energy_required = 3,
    ingredients =
    {
      {type = "item", name = "calcite", amount = 1},
    },
    results = {{type="item", name="planetaris-raw-quartz", amount=2}},
    allow_productivity = false,

    crafting_machine_tint = {primary = {1,1,1,0.5}, secondary = {1,1,1,1}},
  },
---
  {
    type = "recipe",
    name = "planetaris-refractory-ceramics",
    category = "compressing",
    enabled = false,
    auto_recycle = false,
    energy_required = 3,
    ingredients =
    {
      {type = "fluid", name = "planetaris-aluminium", amount = 10},
      {type = "item", name = "planetaris-beryllium-nitride", amount = 3},
      {type = "item", name = "planetaris-silica", amount = 25},
    },
    results = {{type="item", name="planetaris-refractory-ceramics", amount=1}},
    allow_productivity = true,
  },

  --- Space Facilites
    {
    type = "recipe",
    name = "planetaris-space-manufacturer",
    category = "advanced-crafting",
    enabled = false,
    surface_conditions =
    {
      {
        property = "gravity",
        min = 0,
        max = 0
      }
    },
    ingredients =
    {
        {type = "item", name = "tungsten-plate", amount = 50},
        {type = "item", name = "planetaris-fiber-optics-cable", amount = 30},
        {type = "item", name = "planetaris-beryllium-plate", amount = 60},
        {type = "item", name = "planetaris-simulating-unit", amount = 15},
    },
    energy_required = 10,
    results = {{type="item", name="planetaris-space-manufacturer", amount=1}},
    allow_productivity = true,
  },
    {
    type = "recipe",
    name = "planetaris-beryllium-coating",
    category = "space-manufacturing",
    enabled = false,
    surface_conditions =
    {
      {
        property = "gravity",
        min = 0,
        max = 0
      }
    },
    ingredients =
    {
        {type = "item", name = "planetaris-beryllium-plate", amount = 5},
        {type = "item", name = "planetaris-sandstone-brick", amount = 20},
        {type = "item", name = "planetaris-refractory-ceramics", amount = 2},
    },
    energy_required = 5,
    results = {{type="item", name="planetaris-beryllium-coating", amount=1}},
    allow_productivity = true,
  },
})

PlanetsLib.assign_rocket_part_recipe("hyarion","planetaris-hyarion-rocket-part")