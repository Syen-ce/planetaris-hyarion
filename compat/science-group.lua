if not mods["science-tab"] then return end

if not data.raw["item-subgroup"]["science-tab-planetaris-science-pack"] then
    data:extend {
        {
            type = "item-subgroup",
            name = "science-tab-planetaris-science-pack",
            group = "science",
            order = "p[planetaris-science-pack]"
        }
    }
end

data.raw.item["planetaris-polishing-science-pack"].subgroup = "science-tab-planetaris-science-pack"
data.raw.item["planetaris-polishing-science-pack"].order = "b[hyarion]-a"

data.raw.item["planetaris-refraction-science-pack"].subgroup = "science-tab-planetaris-science-pack"
data.raw.item["planetaris-refraction-science-pack"].order = "b[hyarion]-b"

if mods["Krastorio2-spaced-out"] then
    if data.raw["item-group"]["science"] then
            data.raw.item["kr-polishing-research-data"].subgroup = 'krastorio-research-data'
            data.raw.recipe["kr-polishing-research-data"].subgroup = 'krastorio-research-data'

            data.raw.item["kr-refraction-research-data"].subgroup = 'krastorio-research-data'
            data.raw.recipe["kr-refraction-research-data"].subgroup = 'krastorio-research-data'
    end
end