if not mods["Krastorio2-spaced-out"] then return end

require("PlanetarisLib")
local data_util = require("__Krastorio2-spaced-out__/data-util")

local function add_light(item)
	local card = data.raw.tool[item]
	card.pictures = {
		layers = {
			{
				filename = card.icon,
				size = 64,
				scale = 0.5,
			},
			{
				filename = "__k2so-assets__/icons/cards/tech-card-light.png",
				size = 64,
				scale = 0.5,
				draw_as_light = true,
			},
		},
	}
end

------------- refraction tech data

data.extend({
	{
		type = "item",
		name = "kr-polishing-research-data",
		icon = "__planetaris-hyarion__/graphics/compat/k2so/icons/polishing-research-data.png",
		subgroup = "science-pack",
		order = "a05[agricultural-research-data]-p-a",
		stack_size = 200,
		weight = 1 * kg,
		default_import_location = "hyarion",
	},
	{
		type = "recipe",
		name = "kr-polishing-research-data",
        category = "polishing",
        surface_conditions =
        {
            {
                property = "planetaris-crystalization-resistance",
                min = 50,
                max = 100,
            }
        },
        enabled = false,
        energy_required = 10,
        ingredients =
        {
            {type = "fluid", name = "planetaris-polishing-compound", amount = 8},
            {type = "item", name = "planetaris-polished-quartz", amount = 5},
            {type = "item", name = "planetaris-polished-ruby", amount = 5},
            {type = "item", name = "planetaris-polished-sapphire", amount = 5},
        },
        results =
        {
            {type = "item",  name = "kr-polishing-research-data", amount = 1},
        },
        allow_productivity = true,
        crafting_machine_tint =
        {
            primary = {r = 0.79, g = 0.98, b = 0.008, a = 1.000},
            secondary = {r = 0.635, g = 0.8, b = 0.294, a = 1.000},
        }
    },
})

--
data_util.set_icon(data.raw.tool["planetaris-polishing-science-pack"], "__planetaris-hyarion__/graphics/compat/k2so/icons/polishing-tech-card.png")
data.raw.tool["planetaris-polishing-science-pack"].localised_name = { "item-name.kr-polishing-tech-card" }
add_light("planetaris-polishing-science-pack")

data_util.make_tech_card("planetaris-polishing-science-pack", {
	{ type = "item", name = "kr-polishing-research-data", amount = 5 },
})
data_util.add_recipe_unlock("planetaris-polishing-science-pack", "kr-polishing-research-data")
data.raw.technology["planetaris-polishing-science-pack"].localised_name = { "item-name.kr-polishing-research-data" }
data_util.set_icon(data.raw.technology["planetaris-polishing-science-pack"],"__planetaris-hyarion__/graphics/compat/k2so/technology/polishing-tech-card.png",256)

------------- refraction tech data

data.extend({
	{
		type = "item",
		name = "kr-refraction-research-data",
		icon = "__planetaris-hyarion__/graphics/compat/k2so/icons/refraction-research-data.png",
		subgroup = "science-pack",
		order = "a05[agricultural-research-data]-p-b",
		stack_size = 200,
		weight = 1 * kg,
		default_import_location = "hyarion",
    },
    {
    type = "recipe",
    name = "kr-refraction-research-data",
    category = "electromagnetics",
    emissions_multiplier = 5,
    surface_conditions =
    {
      {
        property = "planetaris-crystalization-resistance",
        min = 50,
        max = 100,
      }
    },
    enabled = false,
    energy_required = 10,
    ingredients = {
      {type = "fluid", name = "planetaris-polishing-compound", amount = 10},
      {type = "item", name = "planetaris-simulating-unit", amount = 3},
      {type = "item", name = "planetaris-nanoscale-lens", amount = 3},
      {type = "item", name = "planetaris-ruby-laser", amount = 5},
    },
    results =
    {
      {type = "item",  name = "kr-refraction-research-data", amount = 1},
    },
    allow_productivity = true,
    crafting_machine_tint =
    {
      primary = {r = 0.45, g = 0.98, b = 0.008, a = 1.000},
      secondary = {r = 0.635, g = 0.8, b = 0.294, a = 1.000},
    }
  },
})

--

data_util.set_icon(data.raw.tool["planetaris-refraction-science-pack"], "__planetaris-hyarion__/graphics/compat/k2so/icons/refraction-tech-card.png")
data.raw.tool["planetaris-refraction-science-pack"].localised_name = { "item-name.kr-refraction-tech-card" }
add_light("planetaris-refraction-science-pack")

data_util.make_tech_card("planetaris-refraction-science-pack", {
	{ type = "item", name = "kr-refraction-research-data", amount = 5 },
})
data_util.add_recipe_unlock("planetaris-refraction-science-pack", "kr-refraction-research-data")
data.raw.technology["planetaris-refraction-science-pack"].localised_name = { "item-name.kr-refraction-research-data" }
data_util.set_icon(data.raw.technology["planetaris-refraction-science-pack"],"__planetaris-hyarion__/graphics/compat/k2so/technology/refraction-tech-card.png",256)

-- K2SO items to crafting

PlanetarisLib.add_or_replace_recipe_ingredient("planetaris-polisher", "electronic-circuit", {type = "item", name = "kr-automation-core", amount = 2})
PlanetarisLib.add_or_replace_recipe_ingredient("planetaris-big-refraction-ray-collector", "electronic-circuit", {type = "item", name = "kr-automation-core", amount = 5})
PlanetarisLib.add_or_replace_recipe_ingredient("hyarion-geode-mining-drill", "steel-plate", {type = "item", name = "kr-steel-gear-wheel", amount = 10})

PlanetarisLib.add_or_replace_recipe_ingredient("planetaris-particle-manipulator", "holmium-plate", {type = "item", name = "kr-imersium-beam", amount = 25})
PlanetarisLib.add_or_replace_recipe_ingredient("planetaris-refraction-plant", "holmium-plate", {type = "item", name = "kr-imersium-plate", amount = 100})
PlanetarisLib.add_or_replace_recipe_ingredient("planetaris-refraction-generator", "holmium-plate", {type = "item", name = "kr-imersium-plate", amount = 50})

PlanetarisLib.add_or_replace_recipe_ingredient("planetaris-space-manufacturer", "", {type = "item", name = "kr-imersium-gear-wheel", amount = 30})
PlanetarisLib.add_or_replace_recipe_ingredient("planetaris-bismuth-transistor", "plastic-bar", {type = "item", name = "kr-electronic-components", amount = 1})

-- Add rare ores to the production

data.extend({
{
      type = "recipe",
      name = "planetaris-rare-ore-metallic-sifting",
      icons = {
        {icon="__planetaris-hyarion__/graphics/icons/metallic-ore.png", draw_background=false},
        {icon="__Krastorio2Assets__/icons/items/rare-metal-ore.png", shift={12, 12}, scale=0.5},
      },
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
        {type="item", name="kr-rare-metal-ore", amount=6},
      },

      allow_productivity = true,
      crafting_machine_tint = {primary = {0.57, 0.55, 0.969, 1}, secondary = {0.57, 0.55, 0.969, 1}},
    },
})

data_util.add_recipe_unlock("planetaris-metallic-ore-processing", "planetaris-rare-ore-metallic-sifting")