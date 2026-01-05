local lib = require("lib")
local merge = lib.merge

-----------------------------------------------------------------
--------------------------- Hyarion
-----------------------------------------------------------------
  
  data:extend({
    {
      type = "technology",
      name = "planet-discovery-hyarion",
      icons = PlanetsLib.technology_icon_constant_planet("__planetaris-hyarion__/graphics/technology/hyarion-discovery.png", 256),
      essential = true,
      effects = {
        {
          type = "unlock-space-location",
          space_location = "hyarion",
          use_icon_overlay_constant = true
        }
      },
      prerequisites = {
        "planetaris-compression-science",
      },
      unit = {
        count = 8000,
        ingredients = {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"chemical-science-pack", 1},
          {"space-science-pack", 1},
          {"metallurgic-science-pack", 1},
          {"agricultural-science-pack", 1},
          {"electromagnetic-science-pack", 1},
          {"planetaris-compression-science-pack", 1}
        },
        time = 30,
      },
      order = "e-b[hyarion]",
    },
    {
      type = "technology",
      name = "planetaris-quartz-furnace",
      icon = "__planetaris-hyarion__/graphics/technology/quartz-furnace.png",
      icon_size = 256,
      essential = true,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "planetaris-quartz-furnace"
        },
      },
      prerequisites = {"planet-discovery-hyarion"},
      research_trigger = {
        type = "mine-entity",
        entity = "planetaris-quartz-ore"
      },
      order = "e-b[hyarion]",
    },
    {
      type = "technology",
      name = "planetaris-metallic-ore-processing",
      icon = "__planetaris-hyarion__/graphics/technology/quartz-furnace.png",
      icon_size = 256,
      essential = true,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "planetaris-burner-drill-alternative"
        },
        {
          type = "unlock-recipe",
          recipe = "planetaris-metallic-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "planetaris-iron-metallic-sifting"
        },
        {
          type = "unlock-recipe",
          recipe = "planetaris-copper-metallic-sifting"
        },
        {
          type = "unlock-recipe",
          recipe = "planetaris-refraction-ray-collector"
        },
      },
      prerequisites = {"planetaris-quartz-furnace"},
      research_trigger = {
        type = "mine-entity",
        entity = "planetaris-metallic-ore"
      },
      order = "e-b[hyarion]",
    },
    {
      type = "technology",
      name = "planetaris-polishing",
      icon = "__planetaris-hyarion__/graphics/technology/polishing.png",
      icon_size = 256,
      essential = true,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "planetaris-polisher"
        },
        {
          type = "unlock-recipe",
          recipe = "planetaris-polishing-compound"
        },
        {
          type = "unlock-recipe",
          recipe = "planetaris-polished-quartz"
        },
        {
          type = "unlock-recipe",
          recipe = "planetaris-polishing-carbon-fiber"
        },
        {
          type = "unlock-recipe",
          recipe = "planetaris-hyarion-rocket-fuel"
        },
        {
          type = "unlock-recipe",
          recipe = "planetaris-hyarion-cargo-landing-pad"
        },
      },
      prerequisites = {"planetaris-quartz-furnace", "planetaris-metallic-ore-processing"},
      research_trigger = {
        type = "build-entity",
        entity = "planetaris-quartz-furnace"
      },
      order = "e-b[hyarion]",
    },
    {
      type = "technology",
      name = "planetaris-geode-mining-drill",
      icon = "__planetaris-hyarion__/graphics/technology/geode-mining-drill.png",
      icon_size = 256,
      effects =
      {
        {
          type = "unlock-recipe",
          recipe = "hyarion-geode-mining-drill"
        }
      },
      prerequisites = {"planetaris-polishing"},
      research_trigger =
      {
        type = "build-entity",
        entity = "planetaris-polisher"
      }
    },
    {
      type = "technology",
      name = "planetaris-geode-processing",
      icon = "__planetaris-hyarion__/graphics/technology/sapphire-tech.png",
      icon_size = 256,
      essential = true,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "planetaris-polished-ruby"
        },
        {
          type = "unlock-recipe",
          recipe = "planetaris-polished-sapphire"
        },
        {
          type = "unlock-recipe",
          recipe = "planetaris-polished-emerald"
        },
      },
      prerequisites = {"planetaris-geode-mining-drill"},
      research_trigger = {
        type = "build-entity",
        entity = "hyarion-geode-mining-drill"
      },
      order = "e-b[hyarion]",
    },
      {
      type = "technology",
      name = "planetaris-polishing-science-pack",
      icon = "__planetaris-hyarion__/graphics/technology/polishing-science-pack.png",
      icon_size = 256,
      essential = true,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "planetaris-polishing-science-pack"
        },
        {
          type = "unlock-recipe",
          recipe = "planetaris-hyarion-rocket-silo"
        },
        {
          type = "unlock-recipe",
          recipe = "planetaris-hyarion-rocket-part"
        },
      },
      prerequisites = {"planetaris-geode-processing", "planetaris-polishing"},
      research_trigger = {
        type = "craft-item",
        item = "planetaris-polished-emerald",
        count = 100
      },
      order = "e-b[hyarion]",
    },
      {
      type = "technology",
      name = "planetaris-diamond-polishing",
      icon = "__planetaris-hyarion__/graphics/technology/diamond-tech.png",
      icon_size = 256,
      essential = true,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "planetaris-polished-diamond"
        },
        {
          type = "unlock-recipe",
          recipe = "planetaris-fiber-optics-cable"
        },
      },
      prerequisites = {"planetaris-polishing-science-pack","planetaris-raw-diamond-production"},
      unit =
      {
        count = 1500,
        ingredients =
        {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"chemical-science-pack", 1},
          {"production-science-pack", 1},
          {"space-science-pack", 1},
          {"metallurgic-science-pack", 1},
          {"planetaris-compression-science-pack", 1},
          {"planetaris-polishing-science-pack", 1},
        },
        time = 120
      },
      order = "e-b[hyarion]",
    },
        {
      type = "technology",
      name = "planetaris-big-refraction-ray-collector",
      icon = "__planetaris-hyarion__/graphics/technology/big-refraction-ray-collector.png",
      icon_size = 256,
      essential = true,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "planetaris-big-refraction-ray-collector"
        },
      },
      prerequisites = {"planetaris-polishing-science-pack"},
      unit =
      {
        count = 1000,
        ingredients =
        {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"chemical-science-pack", 1},
          {"production-science-pack", 1},
          {"space-science-pack", 1},
          {"electromagnetic-science-pack", 1 },
          {"planetaris-compression-science-pack", 1},
          {"planetaris-polishing-science-pack", 1},
        },
        time = 60
      },
      order = "e-b[hyarion]",
    },
          {
      type = "technology",
      name = "planetaris-advanced-raw-quartz",
      icon = "__planetaris-arig__/graphics/technology/quartz.png",
      icon_size = 256,
      essential = true,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "planetaris-advanced-raw-quartz"
        },
      },
      prerequisites = {"planetaris-polishing-science-pack","planetaris-diamond-polishing"},
      unit =
      {
        count = 500,
        ingredients =
        {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"chemical-science-pack", 1},
          {"production-science-pack", 1},
          {"space-science-pack", 1},
          { "metallurgic-science-pack", 1 },
          {"planetaris-compression-science-pack", 1},
          {"planetaris-polishing-science-pack", 1},
        },
        time = 60
      },
      order = "e-b[hyarion]",
    },
    {
      type = "technology",
      name = "planetaris-nanoscale-lens",
      icon = "__planetaris-hyarion__/graphics/technology/nanoscale-lens.png",
      icon_size = 256,
      essential = true,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "planetaris-nanoscale-lens"
        },
      },
      prerequisites = {"planetaris-polishing-science-pack","planetaris-diamond-polishing"},
      unit =
      {
        count = 1500,
        ingredients =
        {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"chemical-science-pack", 1},
          {"production-science-pack", 1},
          {"space-science-pack", 1},
          { "metallurgic-science-pack", 1 },
          {"planetaris-compression-science-pack", 1},
          {"planetaris-polishing-science-pack", 1},
        },
        time = 60
      },
      order = "e-b[hyarion]",
    },
          {
      type = "technology",
      name = "planetaris-ruby-laser",
      icon = "__planetaris-hyarion__/graphics/technology/ruby-laser.png",
      icon_size = 256,
      essential = true,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "planetaris-ruby-laser"
        },
      },
      prerequisites = {"planetaris-polishing-science-pack"},
      unit =
      {
        count = 800,
        ingredients =
        {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"chemical-science-pack", 1},
          {"production-science-pack", 1},
          {"space-science-pack", 1},
          { "metallurgic-science-pack", 1 },
          {"planetaris-compression-science-pack", 1},
          {"planetaris-polishing-science-pack", 1},
        },
        time = 60
      },
      order = "e-b[hyarion]",
    },
      {
      type = "technology",
      name = "planetaris-simulating-unit",
      icon = "__planetaris-arig__/graphics/technology/simulating-unit.png",
      icon_size = 256,
      essential = true,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "planetaris-simulating-unit"
        },
      },
      prerequisites = {"planetaris-polishing-science-pack","planetaris-silica-processing","planetaris-diamond-polishing"},
      unit =
      {
        count = 800,
        ingredients =
        {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"chemical-science-pack", 1},
          {"production-science-pack", 1},
          {"space-science-pack", 1},
          { "metallurgic-science-pack", 1 },
          {"planetaris-compression-science-pack", 1},
          {"planetaris-polishing-science-pack", 1},
        },
        time = 120
      },
      order = "e-b[hyarion]",
    },
      {
        type = "technology",
        name = "planetaris-automation-4",
        icon = "__planetaris-hyarion__/graphics/technology/automation-4.png",
        icon_size = 256,
        localised_name = {"technology-name.planetaris-automation-4"},
        localised_description = {"technology-description.planetaris-automation-4"},
        effects =
        {
          {
            type = "unlock-recipe",
            recipe = "planetaris-assembling-machine-4"
          }
        },
        prerequisites = {"planetaris-simulating-unit","automation-3","planetaris-heavy-glass"},
        unit =
        {
          count = 5000,
          ingredients =
          {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"chemical-science-pack", 1},
          {"production-science-pack", 1},
          {"space-science-pack", 1},
          { "metallurgic-science-pack", 1 },
          {"planetaris-compression-science-pack", 1},
          {"planetaris-polishing-science-pack", 1},
          },
          time = 120
        }
    },
      {
      type = "technology",
      name = "planetaris-refraction-science-pack",
      icon = "__planetaris-hyarion__/graphics/technology/refraction-science-pack.png",
      icon_size = 256,
      essential = true,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "planetaris-refraction-science-pack"
        },
      },
      prerequisites = {"planetaris-diamond-polishing","planetaris-nanoscale-lens","planetaris-simulating-unit"},
      unit =
      {
        count = 2000,
        ingredients =
        {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"chemical-science-pack", 1},
          {"production-science-pack", 1},
          {"space-science-pack", 1},
          { "metallurgic-science-pack", 1 },
          { "agricultural-science-pack", 1 },
          { "electromagnetic-science-pack", 1 },
          {"planetaris-compression-science-pack", 1},
          {"planetaris-polishing-science-pack", 1},
        },
        time = 60
      },
      order = "e-b[hyarion]",
    },
    {
      type = "technology",
      name = "planetaris-ruby-laser-turret",
      localised_name = {"entity-name.planetaris-ruby-laser-turret"},
      localised_description = {"entity-description.planetaris-ruby-laser-turret"},
      icon = "__planetaris-hyarion__/graphics/technology/ruby-laser-turret.png",
      icon_size = 256,
      essential = true,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "planetaris-ruby-laser-turret"
        },        
        {
          type = "unlock-recipe",
          recipe = "planetaris-personal-ruby-laser-defense-equipment"
        },
      },
      prerequisites = {"planetaris-refraction-science-pack", "planetaris-ruby-laser"},
      unit =
      {
        count = 1000,
        ingredients =
        {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"chemical-science-pack", 1},
          {"production-science-pack", 1},
          {"space-science-pack", 1},
          { "metallurgic-science-pack", 1 },
          {"planetaris-compression-science-pack", 1},
          {"planetaris-polishing-science-pack", 1},
          {"planetaris-refraction-science-pack", 1},
        },
        time = 30
      },
      order = "e-b[hyarion]",
    },
        {
      type = "technology",
      name = "planetaris-crystalization-motor",
      icon = "__planetaris-hyarion__/graphics/technology/crystalization-motor.png",
      icon_size = 256,
      essential = true,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "planetaris-crystalization-motor"
        },
      },
      prerequisites = {"planetaris-refraction-science-pack"},
      unit =
      {
        count = 500,
        ingredients =
        {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"chemical-science-pack", 1},
          {"production-science-pack", 1},
          {"space-science-pack", 1},
          { "metallurgic-science-pack", 1 },
          { "electromagnetic-science-pack", 1 },
          {"planetaris-compression-science-pack", 1},
          {"planetaris-polishing-science-pack", 1},
          {"planetaris-refraction-science-pack", 1},
        },
        time = 30
      },
      order = "e-b[hyarion]",
    },
        {
      type = "technology",
      name = "planetaris-refraction-plant",
      icon = "__planetaris-hyarion__/graphics/technology/refraction-plant.png",
      icon_size = 256,
      essential = true,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "planetaris-refraction-plant"
        },
        {
          type = "unlock-recipe",
          recipe = "planetaris-refraction-generator"
        },
        {
          type = "unlock-recipe",
          recipe = "planetaris-charged-fluorite"
        },
        {
          type = "unlock-recipe",
          recipe = "planetaris-pure-light"
        },
        {
          type = "unlock-recipe",
          recipe = "planetaris-fluorite"
        },
        {
          type = "unlock-recipe",
          recipe = "planetaris-fluorite-discharge"
        },
      },
      prerequisites = {"planetaris-crystalization-motor"},
      unit =
      {
        count = 1000,
        ingredients =
        {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"chemical-science-pack", 1},
          {"production-science-pack", 1},
          {"space-science-pack", 1},
          { "metallurgic-science-pack", 1 },
          { "electromagnetic-science-pack", 1 },
          {"planetaris-compression-science-pack", 1},
          {"planetaris-polishing-science-pack", 1},
          {"planetaris-refraction-science-pack", 1},
        },
        time = 30
      },
      order = "e-b[hyarion]",
    },
    {
      type = "technology",
      name = "planetaris-unstable-gems",
      icon = "__planetaris-hyarion__/graphics/technology/unstable-gems.png",
      icon_size = 256,
      essential = true,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "planetaris-unstable-gem"
        },
      },
      prerequisites = {"planetaris-refraction-plant"},
      unit =
      {
        count = 500,
        ingredients =
        {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"chemical-science-pack", 1},
          {"production-science-pack", 1},
          {"space-science-pack", 1},
          { "metallurgic-science-pack", 1 },
          { "electromagnetic-science-pack", 1 },
          {"planetaris-compression-science-pack", 1},
          {"planetaris-polishing-science-pack", 1},
          {"planetaris-refraction-science-pack", 1},
        },
        time = 30
      },
      order = "e-b[hyarion]",
    },
        {
      type = "technology",
      name = "planetaris-particle-manipulation",
      icon = "__planetaris-hyarion__/graphics/technology/particle-manipulator.png",
      icon_size = 256,
      essential = true,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "planetaris-particle-manipulator"
        },
        {
          type = "unlock-recipe",
          recipe = "planetaris-carbon-particle-manipulation"
        },
        {
          type = "unlock-recipe",
          recipe = "planetaris-coal-particle-manipulation"
        },
        {
          type = "unlock-recipe",
          recipe = "planetaris-calcite-particle-manipulation"
        },
        {
          type = "unlock-recipe",
          recipe = "planetaris-raw-quartz-particle-manipulation"
        },
        {
          type = "unlock-recipe",
          recipe = "planetaris-coal-to-stone-particle-manipulation"
        },
        {
          type = "unlock-recipe",
          recipe = "planetaris-stone-to-coal-particle-manipulation"
        },
        {
          type = "unlock-recipe",
          recipe = "planetaris-sapphire-to-sulfur-particle-manipulation"
        },
        {
          type = "unlock-recipe",
          recipe = "planetaris-sulfur-to-sapphire-particle-manipulation"
        },
      },
      prerequisites = {"planetaris-crystalization-motor","planetaris-nanoscale-lens","planetaris-simulating-unit"},
      unit =
      {
        count = 2000,
        ingredients =
        {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"chemical-science-pack", 1},
          {"production-science-pack", 1},
          {"space-science-pack", 1},
          { "metallurgic-science-pack", 1 },
          { "agricultural-science-pack", 1 },
          { "electromagnetic-science-pack", 1 },
          {"planetaris-compression-science-pack", 1},
          {"planetaris-polishing-science-pack", 1},
          {"planetaris-refraction-science-pack", 1},
        },
        time = 60
      },
      order = "e-b[hyarion]",
    },
    {
      type = "technology",
      name = "planetaris-beryllium-processing",
      icon = "__planetaris-hyarion__/graphics/technology/beryllium-processing.png",
      icon_size = 256,
      essential = true,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "planetaris-beryl"
        },
        {
          type = "unlock-recipe",
          recipe = "planetaris-beryllium-plate"
        },
        {
          type = "unlock-recipe",
          recipe = "planetaris-beryllium-nitride"
        },
      },
      prerequisites = {"planetaris-refraction-science-pack","planetaris-particle-manipulation","planetaris-unstable-gems"},
      unit =
      {
        count = 800,
        ingredients =
        {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"chemical-science-pack", 1},
          {"production-science-pack", 1},
          {"space-science-pack", 1},
          { "metallurgic-science-pack", 1 },
          { "agricultural-science-pack", 1 },
          { "electromagnetic-science-pack", 1 },
          {"planetaris-compression-science-pack", 1},
          {"planetaris-polishing-science-pack", 1},
          {"planetaris-refraction-science-pack", 1},
        },
        time = 60
      },
      order = "e-b[hyarion]",
    },
{
      type = "technology",
      name = "planetaris-space-facilities-1",
      icon = "__planetaris-hyarion__/graphics/technology/space-facilities-1.png",
      icon_size = 256,
      essential = true,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "planetaris-space-manufacturer"
        },
        {
          type = "unlock-recipe",
          recipe = "planetaris-beryllium-coating"
        },
        {
          type = "unlock-recipe",
          recipe = "planetaris-refractory-ceramics"
        },
        {
          type = "unlock-recipe",
          recipe = "planetaris-space-science-pack"
        },
      },
      prerequisites = {"planetaris-beryllium-processing"},
      unit =
      {
        count = 3000,
        ingredients =
        {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"chemical-science-pack", 1},
          {"production-science-pack", 1},
          {"space-science-pack", 1},
          {"metallurgic-science-pack", 1 },
          {"agricultural-science-pack", 1 },
          {"electromagnetic-science-pack", 1 },
          {"planetaris-compression-science-pack", 1},
          {"planetaris-polishing-science-pack", 1},
          {"planetaris-refraction-science-pack", 1},
        },
        time = 60
      },
      order = "e-b[hyarion]",
    },
    {
      type = "technology",
      name = "planetaris-zero-grav-accumulator",
      localised_name = {"entity-name.planetaris-zero-grav-accumulator"},
      localised_description = {"entity-description.planetaris-zero-gravity-accumulator"},
      icon = "__planetaris-hyarion__/graphics/technology/zero-gravity-accumulator.png",
      icon_size = 256,
      essential = false,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "planetaris-zero-grav-accumulator"
        },
      },
      prerequisites = {"planetaris-bismuth-processing", "planetaris-space-facilities-1"},
      unit =
      {
        count = 800,
        ingredients =
        {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"chemical-science-pack", 1},
          {"production-science-pack", 1},
          {"space-science-pack", 1},
          {"metallurgic-science-pack", 1 },
          {"agricultural-science-pack", 1 },
          {"electromagnetic-science-pack", 1 },
          {"planetaris-compression-science-pack", 1},
          {"planetaris-polishing-science-pack", 1},
          {"planetaris-refraction-science-pack", 1},
        },
        time = 60
      },
      order = "e-b[hyarion]",
    },
        {
      type = "technology",
      name = "planetaris-bismuth-processing",
      icon = "__planetaris-hyarion__/graphics/technology/bismuth-processing.png",
      icon_size = 256,
      essential = true,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bismuth-asteroid-crushing"
        },        
        {
          type = "unlock-recipe",
          recipe = "planetaris-polished-bismuth"
        },
        {
          type = "unlock-recipe",
          recipe = "planetaris-bismuth-transistor"
        },
      },
      prerequisites = {"planetaris-refraction-science-pack", "planetaris-space-facilities-1"},
      unit =
      {
        count = 600,
        ingredients =
        {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"chemical-science-pack", 1},
          {"production-science-pack", 1},
          {"space-science-pack", 1},
          {"metallurgic-science-pack", 1 },
          {"agricultural-science-pack", 1 },
          {"electromagnetic-science-pack", 1 },
          {"planetaris-compression-science-pack", 1},
          {"planetaris-polishing-science-pack", 1},
          {"planetaris-refraction-science-pack", 1},
        },
        time = 30
      },
      order = "e-b[hyarion]",
    },
      {
    type = "technology",
    name = "planetaris-electromagnetic-radar",
    localised_name = {"entity-name.planetaris-electromagnetic-radar"},
    localised_description = {"entity-description.planetaris-electromagnetic-radar"},
    icon = "__planetaris-hyarion__/graphics/technology/electromagnetic-radar.png",
    icon_size = 256,
    essential = false,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "planetaris-electromagnetic-radar"
      }
    },
    prerequisites = {"radar","planetaris-bismuth-processing"},
    unit =
    {
      count = 500,
      ingredients = {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"chemical-science-pack", 1},
          {"production-science-pack", 1},
          {"space-science-pack", 1},
          {"metallurgic-science-pack", 1 },
          {"agricultural-science-pack", 1 },
          {"electromagnetic-science-pack", 1 },
          {"planetaris-compression-science-pack", 1},
          {"planetaris-polishing-science-pack", 1},
          {"planetaris-refraction-science-pack", 1},
        },
      time = 30
    }
  },
    {
    type = "technology",
    name = "planetaris-simulating-unit-productivity",
    icons = util.technology_icon_constant_recipe_productivity("__planetaris-hyarion__/graphics/technology/simulating-unit-productivity.png"),
    icon_size = 256,
    essential = false,
    effects =
    {
      {
        type = "change-recipe-productivity",
        recipe = "planetaris-simulating-unit",
        change = 0.1
      },
    },
    prerequisites = {"planetaris-refraction-science-pack"},
    unit =
    {
      count_formula = "1.5^L*1000",
      ingredients =
        {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"chemical-science-pack", 1},
          {"production-science-pack", 1},
          {"space-science-pack", 1},
          {"electromagnetic-science-pack", 1 },
          {"planetaris-compression-science-pack", 1},
          {"planetaris-polishing-science-pack", 1},
          {"planetaris-refraction-science-pack", 1},
        },
      time = 60
    },
    max_level = 20,
    upgrade = true
  },
      {
    type = "technology",
    name = "planetaris-supercapacitor-productivity",
    icons = util.technology_icon_constant_recipe_productivity("__planetaris-hyarion__/graphics/technology/supercapacitor-productivity.png"),
    icon_size = 256,
    essential = false,
    effects =
    {
      {
        type = "change-recipe-productivity",
        recipe = "supercapacitor",
        change = 0.1
      },
    },
    prerequisites = {"planetaris-refraction-science-pack"},
    unit =
    {
      count_formula = "1.5^L*1000",
      ingredients =
        {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"chemical-science-pack", 1},
          {"production-science-pack", 1},
          {"space-science-pack", 1},
          {"electromagnetic-science-pack", 1 },
          {"planetaris-polishing-science-pack", 1},
          {"planetaris-refraction-science-pack", 1},
        },
      time = 60
    },
    max_level = 20,
    upgrade = true
  },
  })