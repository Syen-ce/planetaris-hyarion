local planetaris_tile_collision_masks = require("prototypes.tile.tile-collision-masks")

-- Set the next_upgrade property to point to assembling-machine-4

local assemblingMachine3 = data.raw["assembling-machine"]["assembling-machine-3"]
assemblingMachine3.next_upgrade = "planetaris-assembling-machine-4"

-- Surface conditions

-- No buildable on Hyarion      
data.raw["lightning-attractor"]["lightning-collector"].surface_conditions = {{
        property = "planetaris-crystalization-resistance",
        max = 49
      }}
data.raw["lightning-attractor"]["lightning-rod"].surface_conditions = {{
        property = "planetaris-crystalization-resistance",
        max = 49
      }}
data.raw["fusion-generator"]["fusion-generator"].surface_conditions = {{
        property = "planetaris-crystalization-resistance",
        max = 49
      }}
data.raw["reactor"]["nuclear-reactor"].surface_conditions = {{
        property = "planetaris-crystalization-resistance",
        max = 49
      }}
      
-- Adding science packs
table.insert(data.raw.lab["lab"].inputs, "planetaris-polishing-science-pack")
table.insert(data.raw.lab["lab"].inputs, "planetaris-refraction-science-pack")

