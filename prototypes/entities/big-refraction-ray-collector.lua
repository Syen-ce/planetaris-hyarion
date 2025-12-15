require ("util")

local simulations = require("prototypes.factoriopedia-simulations")
local sounds = require("__base__/prototypes/entity/sounds")
local hit_effects = require("__base__/prototypes/entity/hit-effects")

planetaris_fiber_optics_covers_pictures = function()
  local layers =
  {
    north =
    {
      layers =
      {
        {
          filename = "__planetaris-hyarion__/graphics/entity/fiber-optics-cable/fiber-optics-cable-cover-south.png",
          priority = "extra-high",
          width = 64,
          height = 64,
          scale = 0.5,
          shift = {0, 0.5}
        },
      }
    },
    east =
    {
      layers =
      {
        {
          filename = "__planetaris-hyarion__/graphics/entity/fiber-optics-cable/fiber-optics-cable-cover-east.png",
          priority = "extra-high",
          width = 64,
          height = 64,
          scale = 0.5,
          shift = {-0.5, 0}
        },
      }
    },
    south =
    {
      layers =
      {
        {
          filename = "__planetaris-hyarion__/graphics/entity/fiber-optics-cable/fiber-optics-cable-cover-north.png",
          priority = "extra-high",
          width = 64,
          height = 64,
          scale = 0.5,
          shift = {0, -0.5}
        },
      }
    },
    west =
    {
      layers =
      {
        {
          filename = "__planetaris-hyarion__/graphics/entity/fiber-optics-cable/fiber-optics-cable-cover-west.png",
          priority = "extra-high",
          width = 64,
          height = 64,
          scale = 0.5,
          shift = {0.5, 0}
        },
      }
    }
  }
  return layers
end

local function lightning_rod_picture(repeat_count)
  return
  {
    layers =
    {
      util.sprite_load("__planetaris-hyarion__/graphics/entity/big-refraction-ray-collector/big-refraction-ray-collector",
      {
        priority = "high",
        scale = 0.5,
        shift = util.by_pixel(0, -22),
        repeat_count = repeat_count
      }),
      util.sprite_load("__planetaris-hyarion__/graphics/entity/big-refraction-ray-collector/big-refraction-ray-collector-shadow",
      {
        priority = "high",
        draw_as_shadow = true,
        scale = 0.5,
        shift = util.by_pixel(0, -22),
        repeat_count = repeat_count
      })
    }
  }
end

local function lightning_rod_charge()
  return
  {
    layers =
    {
      util.sprite_load("__planetaris-hyarion__/graphics/entity/big-refraction-ray-collector/big-refraction-ray-collector-charge",
      {
        priority = "high",
        blend_mode = "additive",
        scale = 0.5,
        frame_count = 30,
        draw_as_glow = true,
        shift = util.by_pixel(0, -22),
      })
    }
  }
end

local function lightning_rod_discharge()
  return
  {
    layers =
    {
      util.sprite_load("__planetaris-hyarion__/graphics/entity/big-refraction-ray-collector/big-refraction-ray-collector-discharge",
      {
        priority = "high",
        blend_mode = "additive",
        scale = 0.5,
        frame_count = 30,
        draw_as_glow = true,
        shift = util.by_pixel(0, -22),
      })
    }
  }
end

data.extend({
  {
    type = "lightning-attractor",
    name = "planetaris-big-refraction-ray-collector",
    efficiency = 0.7,
    range_elongation = 25.0,
    energy_source =
    {
      type = "electric",
      buffer_capacity = "500MJ",
      usage_priority = "primary-output",
      output_flow_limit = "0.5MW",
      drain = "0.166MJ"
    },
    icon = "__planetaris-hyarion__/graphics/icons/big-refraction-ray-collector.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.3, result = "planetaris-big-refraction-ray-collector"},
    selectable_in_game = true,
    max_health = 350,
    corpse = "accumulator-remnants",
    dying_explosion = "accumulator-explosion",
    factoriopedia_simulation = simulations.factoriopedia_big_refraction_ray_collector,
    drawing_box_vertical_extension = 1,
    resistances =
    {
      {
        type = "fire",
        percent = 90
      },
      {
        type = "electric",
        percent = 100
      }
    },
    collision_box = {{-0.85, -0.85}, {0.85, 0.85}},
    selection_box = {{-1, 0}, {1, 1}},
    lightning_strike_offset = {0, -1},
    damaged_trigger_effect = hit_effects.entity({{-0.2, -2.2},{0.2, 0.2}}),
    open_sound = sounds.electric_network_open,
    close_sound = sounds.electric_network_close,
    working_sound =
    {
      main_sounds =
      {
        {
          sound =
          {
            filename = "__space-age__/sound/entity/lightning-attractor/lightning-attractor-charge.ogg",
            volume = 0.5,
            audible_distance_modifier = 0.5,
          },
          match_volume_to_activity = true,
          activity_to_volume_modifiers = {offset = 2, inverted = true},
        },
        {
          sound =
          {
            filename = "__space-age__/sound/entity/lightning-attractor/lightning-attractor-discharge.ogg",
            volume = 0.5,
            audible_distance_modifier = 0.5,
          },
          match_volume_to_activity = true,
          activity_to_volume_modifiers = {offset = 1},
        }
      },
      max_sounds_per_prototype = 3,
    },
    chargable_graphics = {
        picture = lightning_rod_picture(),
        charge_animation = lightning_rod_charge(),
        charge_animation_is_looped = false,
        charge_cooldown = 30,
        discharge_animation = lightning_rod_discharge(),
        discharge_cooldown = 60
    },
    water_reflection =
    {
      pictures =
      {
        filename = "__planetaris-hyarion__/graphics/entity/big-refraction-ray-collector/big-refraction-ray-collector-reflection.png",
        priority = "extra-high",
        width = 11,
        height = 30,
        shift = util.by_pixel(0, 28),
        variation_count = 1,
        scale = 1
      },
      rotate = false,
      orientation_to_variation = false
    },
      surface_conditions =
    {
      {
        property = "planetaris-crystalization-resistance",
        min = 50,
        max = 100,
      }
    },
  },
--------------------------------------------------------------------------
--- Tank
--------------------------------------------------------------------------
{
    type = "storage-tank",
    name = "hidden-big-refraction-ray-collector-tank",
    icon = "__planetaris-hyarion__/graphics/icons/big-refraction-ray-collector.png",
    icon_size = 64,
    flags = {"not-rotatable", "placeable-off-grid", "not-on-map", "not-deconstructable", "not-blueprintable"},
    max_health = 1000,
    corpse = "small-remnants",
    collision_box = {{-1, -1}, {1, 1}},
    selection_box = {{-1, 0}, {1, 1}},
    show_fluid_icon = false,
    collision_mask = {layers={item=true, object=true, water_tile=true}},
    fluid_box = {
        -- pipe_covers = planetaris_fiber_optics_covers_pictures(),
        filter = "planetaris-refraction-light",
        volume = 24,
        pipe_connections = {
            { direction = defines.direction.west,  position = { -0.5, -0.5 }, connection_category = "light"},
            { direction = defines.direction.east,  position = { 0.5, 0.5 },   connection_category = "light"},
            { direction = defines.direction.north, position = { -0.5, -0.5 }, connection_category = "light"},
            { direction = defines.direction.south, position = { 0.5, 0.5 },   connection_category = "light"},
        },
    },
    two_direction_only = false,
    window_bounding_box = {{0, 0}, {0, 0}},
    circuit_connector = circuit_connector_definitions["stone-furnace"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    pictures = {
      picture = {
        sheets = {
          {
            filename = "__core__/graphics/empty.png",
            priority = "extra-high",
            width = 1,
            height = 1,
            shift = {0, 0}
          }
        }
      },
      fluid_background = {
        filename = "__core__/graphics/empty.png",
        priority = "extra-high",
        width = 1,
        height = 1
      },
      window_background = {
        filename = "__core__/graphics/empty.png",
        priority = "extra-high",
        width = 1,
        height = 1
      },
      flow_sprite = {
        filename = "__core__/graphics/empty.png",
        priority = "extra-high",
        width = 1,
        height = 1
      },
      gas_flow = {
        filename = "__core__/graphics/empty.png",
        priority = "extra-high",
        width = 1,
        height = 1,
        frame_count = 1
      }
    },
    flow_length_in_ticks = 1,
  }
})