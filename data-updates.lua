local planetaris_tile_collision_masks = require("prototypes.tile.tile-collision-masks")
require("PlanetarisLib")


-- Set the next_upgrade property to point to assembling-machine-4

local assemblingMachine3 = data.raw["assembling-machine"]["assembling-machine-3"]
assemblingMachine3.next_upgrade = "planetaris-assembling-machine-4"

-- Set the next_upgrade property to point to assembling-machine-4

data.raw["electric-turret"]["laser-turret"].next_upgrade = "planetaris-ruby-laser-turret"

if mods["bobwarfare"] then

  data.raw["electric-turret"]["planetaris-ruby-laser-turret"].fast_replaceable_group = "turret"

elseif not mods["bobwarfare"] then

  data.raw["electric-turret"]["laser-turret"].next_upgrade = "planetaris-ruby-laser-turret"
  
end

-- Surface conditions

-- No buildable on Hyarion

local hyarion_allowed = {
  ["planetaris-big-refraction-ray-collector"] = true,
  ["planetaris-refraction-ray-collector"] = true
}

for _, attractor in pairs(data.raw["lightning-attractor"]) do
  if not hyarion_allowed[attractor.name] then
    PlanetarisLib.add_entity_surface_condition(attractor.name, "planetaris-crystalization-resistance", 49, 0)
  end
end

data.raw["fusion-generator"]["fusion-generator"].surface_conditions = {{
        property = "planetaris-crystalization-resistance",
        max = 49
      }}
data.raw["reactor"]["nuclear-reactor"].surface_conditions = {{
        property = "planetaris-crystalization-resistance",
        max = 49
      }}
      
-- Adding science packs
PlanetarisLib.add_science_pack("lab", "planetaris-polishing-science-pack")
PlanetarisLib.add_science_pack("lab", "planetaris-refraction-science-pack")

PlanetarisLib.add_science_pack("biolab", "planetaris-polishing-science-pack")
PlanetarisLib.add_science_pack("biolab", "planetaris-refraction-science-pack")

table.insert(data.raw.technology["promethium-science-pack"].effects, {
          type = "unlock-recipe",
          recipe = "planetaris-promethium-science-pack"
        })


if settings.startup["hyarion-packs-for-aquilo"].value == true then
    PlanetarisLib.add_tech_ingredient_if_missing("planet-discovery-aquilo", "planetaris-polishing-science-pack")
    PlanetarisLib.add_tech_prerequisite_if_missing("planet-discovery-aquilo", "planetaris-polishing-science-pack")

    PlanetarisLib.add_tech_ingredient_if_missing("planet-discovery-aquilo", "planetaris-refraction-science-pack")
    PlanetarisLib.add_tech_prerequisite_if_missing("planet-discovery-aquilo", "planetaris-refraction-science-pack")
end

if settings.startup["hyarion-packs-for-promethium"].value == true then
    PlanetarisLib.add_tech_ingredient_if_missing("promethium-science-pack", "planetaris-polishing-science-pack")
    PlanetarisLib.add_tech_prerequisite_if_missing("promethium-science-pack", "planetaris-polishing-science-pack")
    PlanetarisLib.add_tech_ingredient_if_missing("research-productivity", "planetaris-polishing-science-pack")
    PlanetarisLib.add_tech_prerequisite_if_missing("research-productivity", "planetaris-polishing-science-pack")

    PlanetarisLib.add_tech_ingredient_if_missing("promethium-science-pack", "planetaris-refraction-science-pack")
    PlanetarisLib.add_tech_prerequisite_if_missing("promethium-science-pack", "planetaris-refraction-science-pack")
    PlanetarisLib.add_tech_ingredient_if_missing("research-productivity", "planetaris-refraction-science-pack")
    PlanetarisLib.add_tech_prerequisite_if_missing("research-productivity", "planetaris-refraction-science-pack")
end