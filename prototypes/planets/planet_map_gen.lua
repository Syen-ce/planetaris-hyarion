local planet_map_gen = require("__base__/prototypes/planet/planet-map-gen")

  planet_map_gen.hyarion = function()
    return
    {
      property_expression_names =
      {
      elevation = "hyarion_elevation",
      temperature = "hyarion_temperature",
      moisture = "hyarion_moisture",
      aux = "hyarion_aux",
      cliffiness = "cliffiness_basic",
      cliff_elevation = "cliff_elevation_from_elevation",
      ["entity:planetaris-quartz-ore:probability"] = "hyarion_quartz_ore_probability",
      ["entity:planetaris-quartz-ore:richness"] = "hyarion_quartz_ore_richness",
      ["entity:planetaris-metallic-ore:probability"] = "hyarion_iron_probability",
      ["entity:planetaris-metallic-ore:richness"] = "hyarion_iron_richness",
      ["entity:planetaris-carbon-ore:probability"] = "hyarion_carbon_probability",
      ["entity:planetaris-carbon-ore:richness"] = "hyarion_carbon_richness",
      ["entity:emerald-geode:probability"] = "hyarion_emerald_geode_probability",
      ["entity:emerald-geode:richness"] = "hyarion_emerald_geode_richness",
      ["entity:ruby-geode:probability"] = "hyarion_ruby_geode_probability",
      ["entity:ruby-geode:richness"] = "hyarion_ruby_geode_richness",
      ["entity:sapphire-geode:probability"] = "hyarion_sapphire_geode_probability",
      ["entity:sapphire-geode:richness"] = "hyarion_sapphire_geode_richness",
    },
    cliff_settings =
    {
      name = "hyarion-cliff",
      cliff_elevation_interval = 120,
      cliff_elevation_0 = 70
    },
      autoplace_controls =
      {
      ["hyarion_iron"] = {},
      ["hyarion_carbon"] = {},
      ["hyarion_quartz"] = {},
      ["hyarion_emerald"] = {},
      ["hyarion_ruby"] = {},
      ["hyarion_sapphire"] = {},
      ["hyarion_volcanism"] = {},
      },
      autoplace_settings =
      {
        ["tile"] =
        {
          settings =
        {
          --nauvis tiles
          ["hyarion-soil-dark"] = {},
          ["hyarion-soil-light"] = {},
          ["hyarion-crystal-soil"] = {},
          --end of nauvis tiles
          ["hyarion-crystal-flats"] = {},
          ["hyarion-crystal-light"] = {},
          ["hyarion-crystal-dark"] = {},
          ["hyarion-cracks"] = {},
          ["hyarion-cracks-warm"] = {},
          ["hyarion-folds"] = {},
          ["hyarion-folds-flat"] = {},
          ["lava"] = {},
          ["lava-hot"] = {},
          ["hyarion-folds-warm"] = {},
          ["hyarion-pumice-stones"] = {},
          ["hyarion-cracks-hot"] = {},
          ["hyarion-jagged-ground"] = {},
          ["hyarion-smooth-stone"] = {},
          ["hyarion-smooth-stone-warm"] = {},
          ["hyarion-crystal-cracks"] = {},
        }
        },
        ["decorative"] =
        {
          settings =
        {
          ["hyarion-red-crystal"] = {},
          ["hyarion-yellow-crystal"] = {},
          ["hyarion-orange-crystal"] = {},
          ["hyarion-small-crystal"] = {},
          ["hyarion-rock-decal-large"] = {},
          ["hyarion-crack-decal-large"] = {},
          ["hyarion-crack-decal-huge-warm"] = {},
          ["hyarion-dune-decal"] = {},
          ["hyarion-sand-decal"] = {},
          ["hyarion-lava-fire"] = {},
          ["hyarion-carbon-stain"] = {},
          ["hyarion-carbon-stain-small"] = {},
          ["hyarion-metallic-stain"] = {},
          ["hyarion-metallic-stain-small"] = {},
          ["hyarion-metallic-puddle"] = {},
          ["hyarion-metallic-puddle-small"] = {},
          ["hyarion-crater-small"] = {},
          ["hyarion-crater-large"] = {},
          ["hyarion-pumice-relief-decal"] = {},
          ["hyarion-small-volcanic-rock"] = {},
          ["hyarion-medium-volcanic-rock"] = {},
          ["hyarion-tiny-volcanic-rock"] = {},
          ["hyarion-tiny-rock-cluster"] = {},
          ["hyarion-small-sulfur-rock"] = {},
          ["hyarion-tiny-sulfur-rock"] = {},
          ["hyarion-metallic-rock-cluster"] = {},
          ["hyarion-waves-decal"] = {},
        }
        },
        ["entity"] =
        {
          settings =
        {
          ["planetaris-quartz-ore"] = {},
          ["planetaris-metallic-ore"] = {},
          ["planetaris-carbon-ore"] = {},
          ["emerald-geode"] = {},
          ["sapphire-geode"] = {},
          ["ruby-geode"] = {},
          ["hyarion-huge-volcanic-rock"] = {},
          ["hyarion-big-volcanic-rock"] = {},
          ["hyarion-crater-cliff"] = {},
          ["hyarion-chimney"] = {},
          ["hyarion-chimney-faded"] = {},
          ["hyarion-chimney-cold"] = {},
          ["hyarion-chimney-short"] = {},
          ["hyarion-chimney-truncated"] = {},
          ["hyarion-pointy-crystal"] = {},
        }
        }
      }
    }
  end
  
  return planet_map_gen