if not mods["TechnologyPriceMultiplier"] then return end

if settings.startup["ignore-hyarion-tech-price-exponent"].value == true then
    data.raw["technology"]["planetaris-quartz-furnace"].essential = false
    data.raw["technology"]["planetaris-metallic-ore-processing"].essential = false
    data.raw["technology"]["planetaris-polishing"].essential = false
    data.raw["technology"]["planetaris-geode-mining-drill"].essential = false
    data.raw["technology"]["planetaris-geode-processing"].essential = false
    data.raw["technology"]["planetaris-polishing-science-pack"].essential = false
    data.raw["technology"]["planetaris-diamond-polishing"].essential = false
    data.raw["technology"]["planetaris-big-refraction-ray-collector"].essential = false
    data.raw["technology"]["planetaris-advanced-raw-quartz"].essential = false
    data.raw["technology"]["planetaris-nanoscale-lens"].essential = false
    data.raw["technology"]["planetaris-ruby-laser"].essential = false
    data.raw["technology"]["planetaris-simulating-unit"].essential = false
    data.raw["technology"]["planetaris-automation-4"].essential = false
    data.raw["technology"]["planetaris-refraction-science-pack"].essential = false
    data.raw["technology"]["planetaris-ruby-laser-turret"].essential = false
    data.raw["technology"]["planetaris-crystalization-motor"].essential = false
    data.raw["technology"]["planetaris-refraction-plant"].essential = false
    data.raw["technology"]["planetaris-unstable-gems"].essential = false
    data.raw["technology"]["planetaris-particle-manipulation"].essential = false
    data.raw["technology"]["planetaris-beryllium-processing"].essential = false
    data.raw["technology"]["planetaris-space-facilities-1"].essential = false
    data.raw["technology"]["planetaris-zero-grav-accumulator"].essential = false
    data.raw["technology"]["planetaris-bismuth-processing"].essential = false
    data.raw["technology"]["planetaris-electromagnetic-radar"].essential = false
    data.raw["technology"]["planetaris-simulating-unit-productivity"].essential = false
    data.raw["technology"]["planetaris-supercapacitor-productivity"].essential = false
end