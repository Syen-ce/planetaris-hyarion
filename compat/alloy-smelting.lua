if not mods["alloy-smelting"] then return end
    
data.extend({
        {
        type = "recipe",
        name = "planetaris-wood-coke-sifting",
        category = "sifting",
        subgroup = "hyarion-basic-processes",
        order = "a-a-e",
        enabled = false,
        auto_recycle = false,
        energy_required = 10,
        icons = {
          {icon="__space-age__/graphics/icons/carbon.png", shift={-12, -12}, scale=0.4},
          {icon="__alloy-smelting__/graphics/icons/coke.png", draw_background=true}
        },
        localised_name = {"", {"item-name.coke"}, " (", {"space-location-name.hyarion"}, ")"},
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
        {type = "item", name = "carbon", amount = 1},
        },
        results = {{type="item", name="coke", amount=2}},
        allow_productivity = true,
        crafting_machine_tint = {primary = {0.2, 0.2, 0.2, 1}, secondary = {0.2, 0.2, 0.2, 1}},
        },
    })

table.insert(data.raw["technology"]["planetaris-metallic-ore-processing"].effects,
    {
      type = "unlock-recipe",
      recipe = "planetaris-wood-coke-sifting"
    }
)