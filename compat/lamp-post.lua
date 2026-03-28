if not mods["lamp-post"] then return end

require("PlanetarisLib")

data.raw["technology"]["lamp-post"] = nil
data.raw["item"]["lamp-post"].default_import_location = "hyarion"

data.extend({
      {
    type = "recipe",
    name = "lamp-post",
    category = "electromagnetics",
    enabled = false,
    energy_required = 4,
    ingredients =
    {
      {type = "item", name = "planetaris-polished-quartz", amount = 5},
      {type = "item", name = "steel-plate", amount = 1},
      {type = "item", name = "electronic-circuit", amount = 1},
      {type = "item", name = "planetaris-charged-fluorite", amount = 1},
    },
    results = {{type="item", name="lamp-post", amount=1}},
    allow_productivity = true
  }
})

PlanetarisLib.add_tech_unlock("planetaris-refraction-plant", "lamp-post")

if mods["planetaris-arig"] then
    PlanetarisLib.convert_recipe_ingredient("lamp-post", "planetaris-polished-quartz", "planetaris-glass-panel")
end