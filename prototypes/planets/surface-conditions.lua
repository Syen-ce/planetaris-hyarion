-- Code from Rubia mod

-- Defining surface condition
data:extend({
  {
    type = "surface-property",
    name = "planetaris-crystalization-resistance",
    default_value = 0, --0%
    order = "f[arig]",
  }
})

-- crystalization Planets
local function set_crystalization(planet_name,resistance)
  if (data.raw["planet"][planet_name]) then 
    data.raw["planet"][planet_name].surface_properties["planetaris-crystalization-resistance"] = resistance end
end
set_crystalization("arig", 0)
set_crystalization("hyarion", 50)
set_crystalization("nauvis", 0)
set_crystalization("fulgora", 0)
set_crystalization("vulcanus", 0)
set_crystalization("gleba", 0)
set_crystalization("aquilo", 5)

--Mod planets. Keep it roughly alphabetical
set_crystalization("cerys", 5)
set_crystalization("corrundum", 0)
set_crystalization("cubium", 0)
set_crystalization("frozeta", 5)
set_crystalization("igrys", 0)
set_crystalization("jahtra", 0)
set_crystalization("lignumis", 0)
set_crystalization("maraxsis", 5)
set_crystalization("moshine", 0)
set_crystalization("muluna", 0)
set_crystalization("paracelsin", 0)
set_crystalization("rubia", 0)
set_crystalization("tenebris", 0)