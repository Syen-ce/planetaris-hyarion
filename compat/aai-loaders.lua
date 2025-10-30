if not mods["aai-loaders"] and settings.startup["aai-loaders-mode"].value ~= "graphics-only" then return end

data.raw["item"]["aai-hyper-loader"].default_import_location = "hyarion"