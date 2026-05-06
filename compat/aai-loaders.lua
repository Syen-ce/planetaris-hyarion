if mods["aai-loaders"] and settings.startup["aai-loaders-mode"].value ~= "graphics-only" then
    if mods["planetaris-arig"] then
        data.raw["item"]["aai-hyper-loader"].default_import_location = "hyarion"
    end
end