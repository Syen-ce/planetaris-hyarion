if not mods["Arcanyx"] then return end

require("PlanetarisLib")

PlanetarisLib.remove_surface_condition("planetaris-refraction-ray-collector", "magnetic-field")    
PlanetarisLib.remove_surface_condition("planetaris-big-refraction-ray-collector", "magnetic-field")    
