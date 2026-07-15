local planetaris_tile_collision_masks = require("prototypes.tile.tile-collision-masks")
PlanetarisLib = require("PlanetarisLib")


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

-- add planet backdrop

data.raw.planet["hyarion"].platform_surface_render_parameters = util.table.deepcopy(data.raw.planet["nauvis"].platform_surface_render_parameters)

data.raw.planet["hyarion"].platform_surface_render_parameters.platform_backdrop =
{
  atmosphere_color = {
    255,
    255,
    255,
    81,
  },
  atmosphere_ray_light_color_1 = {
    125,
    125,
    125,
    255,
  },
  atmosphere_ray_light_color_2 = {
    25.5,
    21.49905,
    12.900450000000001,
    255,
  },
  atmosphere_thickness = 0.095,
  cloud_flow_intensity = 0.3,
  cloud_flow_seconds = 32,
  cloud_normal_intensity = 0.3,
  cloud_panning_rate = 0,
  cloud_vertical_offset = 0.015,
  cloudiness = 1,
  emission_scalar = 3.805,
  emission_scales_with_shadow = true,
  light_color = {
    50,
    50,
    50,
    255,
  },
  light_direction = {
    -1,
    0,
    0.5,
  },
  light_intensity_contrast = 0.37,
  light_radius = 3,
  planet_axis = {
    -30,
    20,
  },
  planet_axis_deviation_amplitude = {
    0,
    0,
  },
  planet_axis_deviation_seconds = {
    609.2,
    712.7,
  },
  radius = 400,
  rotation_seconds = 340,
  specular_color = {
    255,
    255,
    255,
    255,
  },
  surface_normal_intensity = 0,
  surface_vertical_offset = 0.1,
  specular_intensity = 0.5,
  position = {-400, 270},
  parallax_strength = {0.95, 0.95},
  hero_clouds_are_emissive = true,
  hero_clouds =
  {
    {
      sprite_index = 1,
      rotate_with_planet = false,
      positions = {{0.2, 0.5}},
      position_deviation = {-0.05, -0.3},
      rotation_deviation = 100.0,
      starting_frame_offset = 0,
      size = {0.3, 0.3}
    },
    {
      sprite_index = 1,
      rotate_with_planet = false,
      positions = {{0.21, 0.7}},
      position_deviation = {0.05, -0.2},
      rotation_deviation = 1.0,
      starting_frame_offset = 24,
      size = {0.3, 0.3}
    },
    {
      sprite_index = 1,
      rotate_with_planet = false,
      positions = {{0.21, 0.9}},
      position_deviation = {-0.05, -0.4},
      rotation_deviation = 1.0,
      starting_frame_offset = 32,
      size = {0.3, 0.3}
    },
    {
      sprite_index = 1,
      rotate_with_planet = false,
      positions = {{0.21, 0.9}},
      position_deviation = {-0.05, -0.4},
      rotation_deviation = 1.0,
      starting_frame_offset = 64,
      size = {0.3, 0.3}
    }
  },
  hero_cloud_texture_1 = util.sprite_load("__planetaris-hyarion__/graphics/space/planet-lightning",{
    frame_count = 12,
    frame_sequence = {1,2,3,4,5,6,7,8,9,10,11,12,
    12,12,12,12,12,12,12,12,12,12,
    12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,},
    --12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12},
  animation_speed = 0.5
  }),
  planet_surface =
  {
    filename = "__planetaris-hyarion__/graphics/space/hyarion.png",
    width = 2048,
    height = 1024
  },
  planet_normal = nil,
  planet_emission =
  {
    filename = "__planetaris-hyarion__/graphics/space/hyarion-emission.png",
    width = 2048,
    height = 1024
  },
  global_cloud =
  {
    filename = "__planetaris-hyarion__/graphics/space/hyarion-cloud.png",
    width = 2048,
    height = 1024
  },
  global_cloud_normal =
  {
    filename = "__planetaris-hyarion__/graphics/space/hyarion-cloud-normal.png",
    width = 2048,
    height = 1024
  },
  global_cloud_flow =
  {
    filename = "__planetaris-hyarion__/graphics/space/hyarion-cloud-flow.png",
    width = 2048,
    height = 1024
  }
}