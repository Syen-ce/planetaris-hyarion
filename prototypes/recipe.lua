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
      auto_recycle = false,
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
      auto_recycle = false,
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
      auto_recycle = false,
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
      auto_recycle = false,
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
      auto_recycle = false,
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
      auto_recycle = false,
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
      auto_recycle = false,
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
  {
    type = "recipe",
    name = "planetaris-advanced-raw-quartz",
    category = "compressing",
    enabled = false,
    auto_recycle = false,
    energy_required = 2,
    ingredients =
    {
      {type = "fluid", name = "steam", amount = 10},
      {type = "fluid", name = "light-oil", amount = 10},
      {type = "item", name = "planetaris-sandstone-brick", amount = 1},
      {type = "item", name = "coal", amount = 1},
    },
    results = {{type="item", name="planetaris-raw-quartz", amount=2}},
    allow_productivity = true
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
      auto_recycle = false,
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
      icons = {
        {icon="__base__/graphics/icons/rocket-fuel.png", draw_background=false},
        {icon="__planetaris-hyarion__/graphics/icons/fluids/polishing-compound.png", shift={12, 12}, scale=0.5},
      },
      localised_name = {"", {"item-name.rocket-fuel"}, " (", {"technology-name.planetaris-polishing"}, ")"},
      category = "polishing",
      subgroup = "hyarion-basic-processes",
      order = "x-a",
      energy_required = 3,
      enabled = false,
      auto_recycle = false,
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
    auto_recycle = false,
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
    auto_recycle = false,
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
    name = "planetaris-refraction-generator",
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
      {type = "item", name = "planetaris-crystalization-motor", amount = 10},
      {type = "item", name = "planetaris-fluorite", amount = 20},
      {type = "item", name = "planetaris-fiber-optics-cable", amount = 30},
      {type = "item", name = "planetaris-simulating-unit", amount = 20},
      {type = "item", name = "holmium-plate", amount = 50},

    },
    energy_required = 15,
    results = {{type="item", name="planetaris-refraction-generator", amount=1}},
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
      name = "planetaris-fluorite",
      localised_name = {"item-name.planetaris-charged-fluorite"},
      localised_description = {"item-description.planetaris-charged-fluorite"},
      category = "polishing",
      energy_required = 10,
      auto_recycle = false,
      enabled = false,
      ingredients =
      {
        {type = "fluid", name = "planetaris-polishing-compound", amount = 20},
        {type = "item", name = "planetaris-polished-diamond", amount = 1},
        {type = "item", name = "planetaris-polished-sapphire", amount = 5},
        {type = "item", name = "planetaris-polished-emerald", amount = 5},
      },
      results = {{type="item", name="planetaris-fluorite", amount=1}},
      allow_productivity = true,
    },
    {
      type = "recipe",
      name = "planetaris-charged-fluorite",
      icons = {{icon="__planetaris-hyarion__/graphics/icons/charged-fluorite.png", draw_background=true}},
      localised_name = {"item-name.planetaris-charged-fluorite"},
      localised_description = {"item-description.planetaris-charged-fluorite"},
      category = "refraction",
      energy_required = 5,
      auto_recycle = false,
      enabled = false,
      ingredients =
      {
        {type = "fluid", name = "planetaris-refraction-light", amount = 48},
        {type = "item", name = "planetaris-fluorite", amount = 1},
      },
      results = {{type="item", name="planetaris-charged-fluorite", amount=1}},
      allow_productivity = false,
    },
    {
      type = "recipe",
      name = "planetaris-fluorite-discharge",
      icons = {
        {icon="__planetaris-hyarion__/graphics/icons/charged-fluorite.png", draw_background=false},
        {icon="__planetaris-hyarion__/graphics/icons/fluids/pure-light.png", shift={12, 12}, scale=0.5},
      },
      category = "refraction",
      subgroup = "hyarion-advanced-processes",
      energy_required = 2,
      auto_recycle = false,
      enabled = false,
      ingredients =
      {
        {type = "item", name = "planetaris-charged-fluorite", amount = 1},
      },
      results = {{type="fluid", name="planetaris-pure-light", amount=48, temperature = 500},
                 {type="item", name="planetaris-unstable-shard", amount=1}
      },
      allow_productivity = false,
    },
    {
      type = "recipe",
      name = "planetaris-pure-light",
      icon = "__planetaris-hyarion__/graphics/icons/fluids/pure-light.png",
      localised_name = {"fluid-name.planetaris-pure-light"},
      localised_description = {"fluid-description.planetaris-pure-light"},
      category = "refraction",
      subgroup = "hyarion-advanced-processes",
      energy_required = 2,
      auto_recycle = false,
      enabled = false,
      ingredients =
      {
        {type = "fluid", name = "planetaris-refraction-light", amount = 48},
        {type = "item", name = "planetaris-fluorite", amount = 1},
      },
      results = {{type="fluid", name="planetaris-pure-light", amount=48, temperature = 500},
                 {type="item", name="planetaris-unstable-shard", amount=1}
      },
      allow_productivity = false,
    },
    {
      type = "recipe",
      name = "planetaris-unstable-gem",
      category = "refraction",
      energy_required = 10,
      auto_recycle = false,
      enabled = false,
      ingredients =
      {
        {type = "fluid", name = "planetaris-pure-light",      amount = 20},
        {type = "item",  name = "planetaris-polished-quartz", amount = 5 },
        {type = "item",  name = "planetaris-unstable-shard",  amount = 5 },
        {type = "item",  name = "planetaris-polished-ruby",   amount = 5 },
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
    icon="__planetaris-hyarion__/graphics/icons/refraction-science-pack.png",
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
    {
    type = "recipe",
    name = "planetaris-ruby-laser-turret",
    category = "electromagnetics",
    enabled = false,
    energy_required = 20,
    ingredients =
    {
      {type = "item", name = "advanced-circuit", amount = 5},
      {type = "item", name = "tungsten-plate", amount = 20},
      {type = "item", name = "laser-turret", amount = 5},
      {type = "item", name = "planetaris-ruby-laser", amount = 2},
    },
    results = {{type="item", name="planetaris-ruby-laser-turret", amount=1}},
    allow_productivity = true
  },
      {
    type = "recipe",
    name = "planetaris-personal-ruby-laser-defense-equipment",
    category = "electromagnetics",
    enabled = false,
    energy_required = 25,
    ingredients =
    {
      {type = "item", name = "planetaris-simulating-unit", amount = 20},
      {type = "item", name = "planetaris-crystalization-motor", amount = 10},
      {type = "item", name = "personal-laser-defense-equipment", amount = 5},
      {type = "item", name = "planetaris-ruby-laser-turret", amount = 5},
    },
    results = {{type="item", name="planetaris-personal-ruby-laser-defense-equipment", amount=1}},
    allow_productivity = true
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
    order = "f[p-manipulation]-a-b",
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
    order = "f[p-manipulation]-b-b",
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
    {
    type = "recipe",
    name = "planetaris-coal-to-stone-particle-manipulation",
    localised_name = {"", {"item-name.stone"}, " (", {"technology-name.planetaris-particle-manipulation"}, ")"},
    category = "particle-manipulation",
    subgroup = "hyarion-advanced-processes",
    order = "f[p-manipulation]-c",
    enabled = false,
    auto_recycle = false,
    energy_required = 3,
    ingredients =
    {
      {type = "item", name = "coal", amount = 3},
    },
    results = {{type="item", name="stone", amount=5}},
    allow_productivity = false,

    crafting_machine_tint = {primary = {0.902, 0.898, 0.773, 1}, secondary = {0.922, 0.922, 0.765, 1}},
  },
  {
    type = "recipe",
    name = "planetaris-stone-to-coal-particle-manipulation",
    localised_name = {"", {"item-name.coal"}, " (", {"technology-name.planetaris-particle-manipulation"}, ")"},
    category = "particle-manipulation",
    subgroup = "hyarion-advanced-processes",
    order = "f[p-manipulation]-c-b",
    enabled = false,
    auto_recycle = false,
    energy_required = 3,
    ingredients =
    {
      {type = "item", name = "stone", amount = 5},
    },
    results = {{type="item", name="coal", amount=3}},
    allow_productivity = false,

    crafting_machine_tint = {primary = {0,0,0,0.5}, secondary = {1,1,1,1}},
  },
      {
    type = "recipe",
    name = "planetaris-sapphire-to-sulfur-particle-manipulation",
    localised_name = {"", {"item-name.sulfur"}, " (", {"technology-name.planetaris-particle-manipulation"}, ")"},
    category = "particle-manipulation",
    subgroup = "hyarion-advanced-processes",
    order = "f[p-manipulation]-d",
    enabled = false,
    auto_recycle = false,
    energy_required = 3,
    ingredients =
    {
      {type = "item", name = "planetaris-raw-sapphire", amount = 2},
    },
    results = {{type="item", name="sulfur", amount=5}},
    allow_productivity = false,

    crafting_machine_tint = {primary = {1, 0.89, 0, 1}, secondary = {1,1,0,1}},
  },
  {
    type = "recipe",
    name = "planetaris-sulfur-to-sapphire-particle-manipulation",
    localised_name = {"", {"item-name.planetaris-raw-sapphire"}, " (", {"technology-name.planetaris-particle-manipulation"}, ")"},
    category = "particle-manipulation",
    subgroup = "hyarion-advanced-processes",
    order = "f[p-manipulation]-d-b",
    enabled = false,
    auto_recycle = false,
    energy_required = 3,
    ingredients =
    {
      {type = "item", name = "sulfur", amount = 5},
    },
    results = {{type="item", name="planetaris-raw-sapphire", amount=2}},
    allow_productivity = false,

    crafting_machine_tint = {primary = {0, 0, 0.79, 0.5}, secondary = {0, 0, 1, 1}},
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

  --- Bismuth 

    {
    type = "recipe",
    name = "bismuth-asteroid-crushing",
    icon = "__planetaris-hyarion__/graphics/icons/bismuth-asteroid-crushing.png",
    category = "crushing",
    subgroup="space-crushing",
    order = "b-a-c-a",
    auto_recycle = false,
    enabled = false,
    ingredients =
    {
      {type = "item", name = "bismuth-asteroid-chunk", amount = 1},
    },
    energy_required = 2,
    results =
    {
      {type = "item", name = "planetaris_raw_bismuth", amount = 5},
      {type = "item", name = "bismuth-asteroid-chunk", amount = 1, probability = 0.2}
    },
    allow_productivity = true,
    allow_decomposition = false
  },
      {
      type = "recipe",
      name = "planetaris-polished-bismuth",
      category = "polishing",
      energy_required = 5,
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
        {type = "fluid", name = "planetaris-polishing-compound", amount = 10},
        {type = "item", name = "planetaris_raw_bismuth", amount = 5},
      },
      results = {{type="item", name="planetaris-polished-bismuth", amount=1}},
      allow_productivity = true,
    },
    {
    type = "recipe",
    name = "planetaris-bismuth-transistor",
    category = "electromagnetics",
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
      {type = "item", name = "planetaris-polished-bismuth", amount = 2},
      {type = "item", name = "copper-cable", amount = 20},
      {type = "item", name = "plastic-bar", amount = 5},
      {type = "fluid", name = "sulfuric-acid", amount = 25},
    },
    results = {{type="item", name="planetaris-bismuth-transistor", amount=1}},
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
    energy_required = 20,
    results = {{type="item", name="planetaris-space-manufacturer", amount=1}},
    allow_productivity = true,
  },
    {
    type = "recipe",
    name = "planetaris-space-science-pack",
    localised_name = {"item-name.space-science-pack"},
    localised_description = {"item-description.space-science-pack"},
    icon = "__base__/graphics/icons/space-science-pack.png",
    category = "space-manufacturing",
    subgroup = "space-facilities",
    order = "a-b-a-a",
    enabled = false,
    ingredients =
    {
      {type = "item", name = "iron-plate", amount = 10},
      {type = "item", name = "carbon", amount = 5},
      {type = "item", name = "ice", amount = 5}
    },
    surface_conditions =
    {
      {
        property = "gravity",
        min = 0,
        max = 0
      }
    },
    energy_required = 25,
    results =
    {
      {type = "item", name = "space-science-pack", amount = 25}
    },
    allow_productivity = true,
    main_product = "space-science-pack"
  },
    {
    type = "recipe",
    name = "planetaris-promethium-science-pack",
    localised_name = {"item-name.promethium-science-pack"},
    localised_description = {"item-description.promethium-science-pack"},
    energy_required = 5,
    surface_conditions =
    {
      {
        property = "gravity",
        min = 0,
        max = 0
      }
    },
    enabled = false,
    allow_productivity = true,
    category = "space-manufacturing",
    subgroup = "space-facilities",
    order = "a-b-a-b",
    ingredients =
    {
      {type = "item", name = "promethium-asteroid-chunk", amount = 20},
      {type = "item", name = "quantum-processor", amount = 1},
      {type = "item", name = "biter-egg", amount = 10}
    },
    results = {{type="item", name="promethium-science-pack", amount=15}},
    main_product = "promethium-science-pack",
    crafting_machine_tint =
    {
      primary = {r = 0, g = 0, b = 0.1, a = 1},
      secondary = {r = 0, g = 0, b = 0.4, a = 1},
      tertiary = {r = 0.1, g = 0.1, b = 0.4, a = 1},
      quaternary = {r = 0, g = 0, b = 0.1, a = 1},
    }
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
    {
    type = "recipe",
    name = "planetaris-zero-grav-accumulator",
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
        {type = "item", name = "planetaris-beryllium-plate", amount = 10},
        {type = "item", name = "planetaris-bismuth-transistor", amount = 20},
        {type = "item", name = "planetaris-refractory-ceramics", amount = 15},
        {type = "item", name = "battery", amount = 30},
    },
    energy_required = 10,
    results = {{type="item", name="planetaris-zero-grav-accumulator", amount=1}},
    allow_productivity = true,
  },
    {
    type = "recipe",
    name = "planetaris-electromagnetic-radar",
    category = "space-manufacturing",
    enabled = false,
    energy_required = 10,
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
      {type = "item", name = "planetaris-simulating-unit", amount = 20},
      {type = "item", name = "planetaris-refractory-ceramics", amount = 10},
      {type = "item", name = "planetaris-bismuth-transistor", amount = 10},
      {type = "item", name = "tungsten-plate", amount = 35}
    },
    results = {{type="item", name="planetaris-electromagnetic-radar", amount=1}},
  },
})

PlanetsLib.assign_rocket_part_recipe("hyarion","planetaris-hyarion-rocket-part")