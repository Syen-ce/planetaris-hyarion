if not mods.pystellarexpedition then
    data:extend{
    {
        type = "research-with-science-pack-achievement",
        name = "research-with-polishing",
        order = "e[research]-a[research-with]-i[polishing]",
        science_pack = "planetaris-polishing-science-pack",
        icon = "__planetaris-hyarion__/graphics/achievement/research-with-polishing.png",
        icon_size = 128
    },
    {
        type = "research-with-science-pack-achievement",
        name = "research-with-refraction",
        order = "e[research]-a[research-with]-h[refraction]",
        science_pack = "planetaris-refraction-science-pack",
        icon = "__planetaris-hyarion__/graphics/achievement/research-with-refraction.png",
        icon_size = 128
    },
}
end

data:extend{
    {
    type = "change-surface-achievement",
    name = "visit-hyarion",
    order = "a[progress]-g[visit-planet]-k[hyarion]",
    surface = "hyarion",
    icon = "__planetaris-hyarion__/graphics/achievement/visit-hyarion.png",
    icon_size = 128,
    },
  {
    type = "produce-per-hour-achievement",
    name = "simulation-genius-1",
    order = "d[production]-d[simulating-unit-production]-d",
    item_product = "planetaris-simulating-unit",
    amount = 500,
    icon = "__planetaris-hyarion__/graphics/achievement/simulation-genius-1.png",
    icon_size = 128
  },
  {
    type = "produce-per-hour-achievement",
    name = "simulation-genius-2",
    order = "d[production]-d[simulating-unit-production]-e",
    item_product = "planetaris-simulating-unit",
    amount = 1000,
    icon = "__planetaris-hyarion__/graphics/achievement/simulation-genius-2.png",
    icon_size = 128
  },
  {
    type = "produce-per-hour-achievement",
    name = "simulation-genius-3",
    order = "d[production]-d[simulating-unit-production]-f",
    item_product = "planetaris-simulating-unit",
    amount = 5000,
    icon = "__planetaris-hyarion__/graphics/achievement/simulation-genius-3.png",
    icon_size = 128
  },
}