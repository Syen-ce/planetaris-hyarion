if settings.startup["disable-assembling-machine-4"].value == true then

    if data.raw.technology["planetaris-assembling-machine-4"] then
        data.raw.technology["planetaris-assembling-machine-4"].hidden = true
    end

    if data.raw.item["planetaris-assembling-machine-4"] then
        data.raw.recipe["planetaris-assembling-machine-4"].hidden = true
        data.raw.item["planetaris-assembling-machine-4"].hidden = true
        data.raw["assembling-machine"]["planetaris-assembling-machine-4"].hidden = true
    end

end