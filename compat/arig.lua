---------- ARIG

data.raw["item"]["planetaris-raw-diamond"].subgroup = "hyarion-gems"

-- Changing hyper belts

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
