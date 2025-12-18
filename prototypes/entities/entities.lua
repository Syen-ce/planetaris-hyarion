require ("util")
require ("circuit-connector-sprites")
require ("prototypes.circuit-connector-definitions")
require ("__space-age__/prototypes/entity/circuit-network")
require ("__base__/prototypes/entity/circuit-network")
require ("__base__/prototypes/entity/pipecovers")

local simulations = require("prototypes.factoriopedia-simulations")
local sounds = require("__base__/prototypes/entity/sounds")
local hit_effects = require("__base__/prototypes/entity/hit-effects")

local wall_shift = 20
local wall_shift_adjust = wall_shift - 7


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


function zero_grav_accumulator_picture(tint, repeat_count)
  return
  {
    layers =
    {
      {
        filename = "__planetaris-hyarion__/graphics/entity/zero-gravity-accumulator/zero-gravity-accumulator.png",
        priority = "high",
        width = 158,
        height = 243,
        repeat_count = repeat_count,
        shift = util.by_pixel(0, -31),
        tint = tint,
        scale = 0.5
      },
      {
        filename = "__base__/graphics/entity/accumulator/accumulator-shadow.png",
        priority = "high",
        width = 234,
        height = 106,
        repeat_count = repeat_count,
        shift = util.by_pixel(29, 6),
        draw_as_shadow = true,
        scale = 0.5
      }
    }
  }
end

function zero_grav_accumulator_charge()
  return
  {
    layers =
    {
      zero_grav_accumulator_picture({1, 1, 1, 1} , 24),
      {
        filename = "__planetaris-hyarion__/graphics/entity/zero-gravity-accumulator/zero-gravity-accumulator-charge.png",
        priority = "high",
        width = 178,
        height = 210,
        line_length = 6,
        frame_count = 24,
        draw_as_glow = true,
        shift = util.by_pixel(1, -60),
        scale = 0.5
      }
    }
  }
end

function zero_grav_accumulator_reflection()
  return
  {
    pictures =
      {
        filename = "__base__/graphics/entity/accumulator/accumulator-reflection.png",
        priority = "extra-high",
        width = 20,
        height = 24,
        shift = util.by_pixel(0, 50),
        variation_count = 1,
        scale = 5
      },
      rotate = false,
      orientation_to_variation = false
  }
end

function zero_grav_accumulator_discharge()
  return
  {
    layers =
    {
      zero_grav_accumulator_picture({1, 1, 1, 1} , 24),
      {
        filename = "__planetaris-hyarion__/graphics/entity/zero-gravity-accumulator/zero-gravity-accumulator-discharge.png",
        priority = "high",
        width = 174,
        height = 214,
        line_length = 6,
        frame_count = 24,
        draw_as_glow = true,
        shift = util.by_pixel(-1, -61),
        scale = 0.5
      }
    }
  }
end



data:extend({
    scaled_cliff(
    {
      mod_name = "__planetaris-hyarion__",
      name = "hyarion-cliff",
      map_color = {180, 180, 180},
      suffix = "hyarion",
      subfolder = "hyarion",
      scale = 1.0,
      has_lower_layer = true,
      sprite_size_multiplier = 2,
      icon = "__planetaris-hyarion__/graphics/icons/cliff-hyarion.png",
      factoriopedia_simulation = simulations.factoriopedia_cliff_hyarion,
      cliff_explosive = "planetaris-unstable-gem",
    }
  ),
})

-- Machines

data:extend({
{
  type = "assembling-machine",
  name = "planetaris-assembling-machine-4",
  icon = "__planetaris-hyarion__/graphics/icons/assembling-machine-4.png",
  flags = {"placeable-neutral","placeable-player", "player-creation"},
  minable = {mining_time = 0.2, result = "planetaris-assembling-machine-4"},
  max_health = 400,
  corpse = "planetaris-assembling-machine-4-remnants",
  dying_explosion = "planetaris-assembling-machine-4-explosion",
  icon_draw_specification = {shift = {0, -0.3}},
  circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
  circuit_connector = circuit_connector_definitions["assembling-machine"],
  alert_icon_shift = util.by_pixel(0, -12),
  resistances =
  {
    {
      type = "fire",
      percent = 70
    }
  },
  fluid_boxes =
  {
    {
      production_type = "input",
      pipe_picture = assembler3pipepictures(),
      pipe_covers = pipecoverspictures(),
      volume = 1000,
      pipe_connections = {{ flow_direction="input", direction = defines.direction.north, position = {0, -1} }},
      secondary_draw_orders = { north = -1 }
    },
    {
      production_type = "output",
      pipe_picture = assembler3pipepictures(),
      pipe_covers = pipecoverspictures(),
      volume = 1000,
      pipe_connections = {{ flow_direction="output", direction = defines.direction.south, position = {0, 1} }},
      secondary_draw_orders = { north = -1 }
    }
  },
  fluid_boxes_off_when_no_fluid_recipe = true,
  open_sound = sounds.machine_open,
  close_sound = sounds.machine_close,
  impact_category = "metal",
  working_sound =
  {
    sound = {filename = "__base__/sound/assembling-machine-t3-1.ogg", volume = 0.45, audible_distance_modifier = 0.5},
    fade_in_ticks = 4,
    fade_out_ticks = 20
  },
  collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
  selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
  damaged_trigger_effect = hit_effects.entity(),
  drawing_box_vertical_extension = 0.2,
  fast_replaceable_group = "assembling-machine",
  graphics_set =
  {
    animation_progress = 0.3,
    animation =
    {
      layers =
      {
        {
          filename = "__planetaris-hyarion__/graphics/entity/assembling-machine-4/assembling-machine-4.png",
          priority = "high",
          width = 214,
          height = 237,
          frame_count = 32,
          line_length = 8,
          shift = util.by_pixel(0, -0.75),
          scale = 0.5
        },
        {
          filename = "__planetaris-hyarion__/graphics/entity/assembling-machine-4/assembling-machine-4-shadow.png",
          priority = "high",
          width = 260,
          height = 162,
          frame_count = 32,
          line_length = 8,
          draw_as_shadow = true,
          shift = util.by_pixel(28, 4),
          scale = 0.5
        }
      }
    }
  },
  crafting_categories = {"basic-crafting", "crafting", "advanced-crafting", "crafting-with-fluid", "electronics", "electronics-with-fluid", "pressing", "metallurgy-or-assembling", "organic-or-hand-crafting", "organic-or-assembling", "electronics-or-assembling", "cryogenics-or-assembling", "crafting-with-fluid-or-metallurgy"},
  crafting_speed = 1.75,
  energy_source =
  {
    type = "electric",
    usage_priority = "secondary-input",
    emissions_per_minute = { pollution = 1.8 }
  },
  energy_usage = "450kW",
  module_slots = 5,
  allowed_effects = {"consumption", "speed", "productivity", "pollution", "quality"}
},
})

-----------------------------------------------------------------
--------------------------- Hyarion
-----------------------------------------------------------------

data:extend({
{
    type = "furnace",
    name = "planetaris-quartz-furnace",
    icon = "__planetaris-hyarion__/graphics/icons/quartz-furnace.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.2, result = "planetaris-quartz-furnace"},
    fast_replaceable_group = "furnace",
    next_upgrade = "steel-furnace",
    circuit_wire_max_distance = furnace_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["stone-furnace"],
    max_health = 200,
    corpse = "planetaris-quartz-furnace-remnants",
    dying_explosion = "stone-furnace-explosion",
    repair_sound = sounds.manual_repair,
    mined_sound = sounds.deconstruct_bricks(0.8),
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    allowed_effects = {"speed", "consumption", "pollution"},
    effect_receiver = {uses_module_effects = false, uses_beacon_effects = false, uses_surface_effects = true},
    impact_category = "stone",
    icon_draw_specification = {scale = 0.66, shift = {0, -0.1}},
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/furnace.ogg",
        volume = 0.6,
        modifiers = {volume_multiplier("main-menu", 1.5), volume_multiplier("tips-and-tricks", 1.4)},
        audible_distance_modifier = 0.4
      },
      fade_in_ticks = 4,
      fade_out_ticks = 20,
    },
    resistances =
    {
      {
        type = "fire",
        percent = 90
      },
      {
        type = "explosion",
        percent = 30
      },
      {
        type = "impact",
        percent = 30
      }
    },
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-0.8, -1}, {0.8, 1}},
    damaged_trigger_effect = hit_effects.rock(),
    crafting_categories = {"smelting"},
    result_inventory_size = 2,
    energy_usage = "45kW",
    crafting_speed = 1,
    source_inventory_size = 1,
    energy_source =
    {
      type = "burner",
      fuel_categories = {"chemical"},
      effectivity = 1,
      fuel_inventory_size = 1,
      emissions_per_minute = { pollution = 1 },
      light_flicker =
      {
        color = {0,0,0},
        minimum_intensity = 0.6,
        maximum_intensity = 0.95
      },
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.1, 0.1},
          frequency = 5,
          position = {0.0, -0.8},
          starting_vertical_speed = 0.08,
          starting_frame_deviation = 60
        }
      }
    },
    graphics_set =
    {
      animation =
      {
        layers =
        {
          {
            filename = "__planetaris-hyarion__/graphics/entity/quartz-furnace/quartz-furnace.png",
            priority = "extra-high",
            width = 151,
            height = 146,
            shift = util.by_pixel(-0.25, 6),
            scale = 0.5
          },
          {
            filename = "__planetaris-hyarion__/graphics/entity/quartz-furnace/quartz-furnace-shadow.png",
            priority = "extra-high",
            width = 164,
            height = 74,
            draw_as_shadow = true,
            shift = util.by_pixel(14.5, 13),
            scale = 0.5
          }
        }
      },
      working_visualisations =
      {
        {
          fadeout = true,
          effect = "flicker",
          animation =
          {
            layers =
            {
              {
                filename = "__planetaris-hyarion__/graphics/entity/quartz-furnace/quartz-furnace-fire.png",
                priority = "extra-high",
                line_length = 8,
                width = 41,
                height = 100,
                frame_count = 48,
                draw_as_glow = true,
                shift = util.by_pixel(-0.75, 5.5),
                scale = 0.5
              },
              {
                filename = "__planetaris-hyarion__/graphics/entity/quartz-furnace/quartz-furnace-light.png",
                blend_mode = "additive",
                width = 106,
                height = 144,
                repeat_count = 48,
                draw_as_glow = true,
                shift = util.by_pixel(0, 5),
                scale = 0.5,
              },
            }
          }
        },
        {
          fadeout = true,
          effect = "flicker",
          animation =
          {
            filename = "__planetaris-hyarion__/graphics/entity/quartz-furnace/quartz-furnace-ground-light.png",
            blend_mode = "additive",
            width = 116,
            height = 110,
            repeat_count = 48,
            draw_as_light = true,
            shift = util.by_pixel(-1, 44),
            scale = 0.5,
          },
        },
      },
      water_reflection =
      {
        pictures =
        {
          filename = "__planetaris-hyarion__/graphics/entity/quartz-furnace/quartz-furnace-reflection.png",
          priority = "extra-high",
          width = 16,
          height = 16,
          shift = util.by_pixel(0, 35),
          variation_count = 1,
          scale = 5
        },
        rotate = false,
        orientation_to_variation = false
      }
    }
  },
})

-----------------------------------------------------------------
--------------------------- Hyarion
-----------------------------------------------------------------

data:extend({
{
    type = "furnace",
    name = "planetaris-quartz-furnace",
    icon = "__planetaris-hyarion__/graphics/icons/quartz-furnace.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.2, result = "planetaris-quartz-furnace"},
    fast_replaceable_group = "furnace",
    next_upgrade = "steel-furnace",
    circuit_wire_max_distance = furnace_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["stone-furnace"],
    max_health = 50,
    corpse = "planetaris-quartz-furnace-remnants",
    dying_explosion = "stone-furnace-explosion",
    repair_sound = sounds.manual_repair,
    mined_sound = sounds.deconstruct_bricks(0.8),
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    allowed_effects = {"speed", "consumption", "pollution"},
    effect_receiver = {uses_module_effects = false, uses_beacon_effects = false, uses_surface_effects = true},
    impact_category = "stone",
    icon_draw_specification = {scale = 0.66, shift = {0, -0.1}},
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/furnace.ogg",
        volume = 0.6,
        modifiers = {volume_multiplier("main-menu", 1.5), volume_multiplier("tips-and-tricks", 1.4)},
        audible_distance_modifier = 0.4
      },
      fade_in_ticks = 4,
      fade_out_ticks = 20,
    },
    resistances =
    {
      {
        type = "fire",
        percent = 90
      },
      {
        type = "explosion",
        percent = 30
      },
      {
        type = "impact",
        percent = 30
      }
    },
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-0.8, -1}, {0.8, 1}},
    damaged_trigger_effect = hit_effects.rock(),
    crafting_categories = {"smelting"},
    result_inventory_size = 2,
    energy_usage = "100kW",
    crafting_speed = 1,
    source_inventory_size = 1,
    energy_source =
    {
      type = "burner",
      fuel_categories = {"chemical"},
      effectivity = 1,
      fuel_inventory_size = 1,
      emissions_per_minute = { pollution = 1 },
      light_flicker =
      {
        color = {0,0,0},
        minimum_intensity = 0.6,
        maximum_intensity = 0.95
      },
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.1, 0.1},
          frequency = 5,
          position = {0.0, -0.8},
          starting_vertical_speed = 0.08,
          starting_frame_deviation = 60
        }
      }
    },
    graphics_set =
    {
      animation =
      {
        layers =
        {
          {
            filename = "__planetaris-hyarion__/graphics/entity/quartz-furnace/quartz-furnace.png",
            priority = "extra-high",
            width = 151,
            height = 146,
            shift = util.by_pixel(-0.25, 6),
            scale = 0.5
          },
          {
            filename = "__planetaris-hyarion__/graphics/entity/quartz-furnace/quartz-furnace-shadow.png",
            priority = "extra-high",
            width = 164,
            height = 74,
            draw_as_shadow = true,
            shift = util.by_pixel(14.5, 13),
            scale = 0.5
          }
        }
      },
      working_visualisations =
      {
        {
          fadeout = true,
          effect = "flicker",
          animation =
          {
            layers =
            {
              {
                filename = "__planetaris-hyarion__/graphics/entity/quartz-furnace/quartz-furnace-fire.png",
                priority = "extra-high",
                line_length = 8,
                width = 41,
                height = 100,
                frame_count = 48,
                draw_as_glow = true,
                shift = util.by_pixel(-0.75, 5.5),
                scale = 0.5
              },
              {
                filename = "__planetaris-hyarion__/graphics/entity/quartz-furnace/quartz-furnace-light.png",
                blend_mode = "additive",
                width = 106,
                height = 144,
                repeat_count = 48,
                draw_as_glow = true,
                shift = util.by_pixel(0, 5),
                scale = 0.5,
              },
            }
          }
        },
        {
          fadeout = true,
          effect = "flicker",
          animation =
          {
            filename = "__planetaris-hyarion__/graphics/entity/quartz-furnace/quartz-furnace-ground-light.png",
            blend_mode = "additive",
            width = 116,
            height = 110,
            repeat_count = 48,
            draw_as_light = true,
            shift = util.by_pixel(-1, 44),
            scale = 0.5,
          },
        },
      },
      water_reflection =
      {
        pictures =
        {
          filename = "__planetaris-hyarion__/graphics/entity/quartz-furnace/quartz-furnace-reflection.png",
          priority = "extra-high",
          width = 16,
          height = 16,
          shift = util.by_pixel(0, 35),
          variation_count = 1,
          scale = 5
        },
        rotate = false,
        orientation_to_variation = false
      }
    }
  },
{
    type = "lightning-attractor",
    name = "planetaris-refraction-ray-collector",
    efficiency = 0.2,
    range_elongation = 15.0,
    energy_source =
    {
      type = "electric",
      buffer_capacity = "500MJ",
      usage_priority = "primary-output",
      output_flow_limit = "0.5MW",
      drain = "0.166MJ"
    },
    icon = "__planetaris-hyarion__/graphics/icons/refraction-ray-collector.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.2, result = "planetaris-refraction-ray-collector"},
    max_health = 200,
    corpse = "lightning-rod-remnants",
    dying_explosion = "medium-electric-pole-explosion",
    factoriopedia_simulation = simulations.factoriopedia_refraction_ray_collector,
    resistances =
    {
      {
        type = "fire",
        percent = 50
      },
      {
        type = "electric",
        percent = 100
      }
    },
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    lightning_strike_offset = {0, -1},
    damaged_trigger_effect = hit_effects.entity({{-0.2, -2.2},{0.2, 0.2}}),
    drawing_box_vertical_extension = 1.5,
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
    chargable_graphics = require("__planetaris-hyarion__.prototypes.entities.refraction-ray-collector"),
    water_reflection =
    {
      pictures =
      {
        filename = "__planetaris-hyarion__/graphics/entity/refraction-ray-collector/refraction-ray-collector-reflection.png",
        priority = "extra-high",
        width = 11,
        height = 30,
        shift = util.by_pixel(0, 50),
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
{
    type = "assembling-machine",
    name = "planetaris-refraction-plant",
    icon = "__planetaris-hyarion__/graphics/icons/refraction-plant.png",
    icon_size = 64,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.8, results = {{type = "item", name = "planetaris-refraction-plant", amount = 1}}},
    max_health = 1000,
    fast_replaceable_group = nil,
    corpse = data.raw["fusion-reactor"]["fusion-reactor"].corpse,
    dying_explosion = "big-explosion",
    resistances = {
        {type = "physical", percent = 50},
        {type = "fire",     percent = 20},
        {type = "impact",   percent = 100},
    },

    crafting_categories = {"refraction"},
    crafting_speed = 1,
    heating_energy = "500kW",
    module_slots = 3,
    allowed_effects = {"consumption", "speed", "productivity", "pollution", "quality"},

    collision_box = {{-2.7, -2.7}, {2.7, 2.7}},
    collision_mask = {layers = {item = true, object = true, player = true, water_tile = true}},
    selection_box = {{-3, -3}, {3, 3}},
    drawing_box_vertical_extension = 1,
    damaged_trigger_effect = hit_effects.entity(),
  
    impact_category = data.raw["assembling-machine"]["electromagnetic-plant"].impact_category,
    open_sound = table.deepcopy(data.raw["assembling-machine"]["chemical-plant"].open_sound),
    close_sound = table.deepcopy(data.raw["assembling-machine"]["chemical-plant"].close_sound),
    working_sound = {
      sound = sound_variations("__base__/sound/nuclear-reactor", 2, 0.55, volume_multiplier("main-menu", 0.8)),
      max_sounds_per_prototype = 3,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },
    idle_sound = {filename = "__base__/sound/idle1.ogg"},
    energy_usage = "350kW",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 1.8 }
    },
    fluid_boxes =
    {
        {
            production_type = "input",
            pipe_covers = planetaris_fiber_optics_covers_pictures(),
            volume = 100,
            pipe_connections = {
              {direction = defines.direction.west, flow_direction = "input", position = {-2.5, -1.5},  connection_category = "light"},
              {direction = defines.direction.east, flow_direction = "input", position = {2.5, 1.5},  connection_category = "light"},
              {direction = defines.direction.north, flow_direction = "input", position = {1.5, -2.5},  connection_category = "light"},
              {direction = defines.direction.south, flow_direction = "input", position = {-1.5, 2.5},  connection_category = "light"},
          },
            --filter = {"refraction-light","pure-light"},
        },
        {
            production_type = "output",
            pipe_covers = planetaris_fiber_optics_covers_pictures(),
            volume = 100,
            pipe_connections = {
              {direction = defines.direction.west, flow_direction = "output", position = {-2.5, 1.5},  connection_category = "light"},
              {direction = defines.direction.east, flow_direction = "output", position = {2.5, -1.5},  connection_category = "light"},
              {direction = defines.direction.north, flow_direction = "output", position = {-1.5, -2.5},  connection_category = "light"},
              {direction = defines.direction.south, flow_direction = "output", position = {1.5, 2.5},  connection_category = "light"},
            },
            --filter = {"refraction-light","pure-light"},
        },
    },
    graphics_set = {
      animation =
      {
        north = {
          layers =
          {
            {
              filename = "__planetaris-hyarion__/graphics/entity/refraction-plant/refraction-plant-hr-working-glow.png",
              width = 400,
              height = 450,
              frame_count = 60,
              line_length = 8,
              animation_speed = 1,
              shift = util.by_pixel(0, -10),
              scale = 0.5
            },
            {
            filename = "__planetaris-hyarion__/graphics/entity/refraction-plant/refraction-plant-connections.png",
            width = 400,
            height = 450,
            repeat_count = 60,
            shift = util.by_pixel(0, -10),
            scale = 0.5
            },
            {
              filename = "__planetaris-hyarion__/graphics/entity/refraction-plant/refraction-plant-hr-shadow.png",
              width = 700,
              height = 600,          
              repeat_count = 60,
              draw_as_shadow = true,
              shift = util.by_pixel(0, -10),
              scale = 0.5
            },
          }
        }
      },
      idle_animation =
      {
        north = {
          layers = {
        {
        filename = "__planetaris-hyarion__/graphics/entity/refraction-plant/refraction-plant-hr-animation-1.png",
        frame_count = 60,
        line_length = 8,
        width = 400,
        height = 450,
        animation_speed = 0.5,
        shift = util.by_pixel(0, -10),
        scale = 0.5
        },
        {
        filename = "__planetaris-hyarion__/graphics/entity/refraction-plant/refraction-plant-connections.png",
        width = 400,
        height = 450,
        repeat_count = 60,
        shift = util.by_pixel(0, -10),
        scale = 0.5
        },
        {
          filename = "__planetaris-hyarion__/graphics/entity/refraction-plant/refraction-plant-hr-shadow.png",
          width = 700,
          height = 600,          
          repeat_count = 60,
          draw_as_shadow = true,
          shift = util.by_pixel(0, -10),
          scale = 0.5
        },
      }}},
    },

    icon_draw_specification = {scale = 1.75, shift = {0, 0}},
    circuit_connector = circuit_connector_definitions["refraction-plant"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
},
{
    type = "generator",
    name = "planetaris-refraction-generator",
    icon = "__planetaris-hyarion__/graphics/icons/refraction-generator.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 0.5, result = "planetaris-refraction-generator"},
    max_health = 600,
    corpse = "steam-engine-remnants",
    dying_explosion = "steam-engine-explosion",
    alert_icon_shift = util.by_pixel(0, -12),
    drawing_box_vertical_extension = 1,
    effectivity = 1,
    fluid_usage_per_tick = 0.1,
    maximum_temperature = 500,
    max_power_output = "15MW",
    burns_fluid = false,
    resistances =
    {
      {
        type = "fire",
        percent = 70
      },
      {
        type = "impact",
        percent = 30
      }
    },
    fast_replaceable_group = nil,
    collision_box = {{-1.7, -1.7}, {1.7, 1.7}},
    selection_box = {{-2, -2}, {2, 2}},
    damaged_trigger_effect = hit_effects.entity(),
    fluid_box =
    {
      volume = 24,
      pipe_covers = planetaris_fiber_optics_covers_pictures(),
      pipe_connections =
      {
        { flow_direction = "input-output", direction = defines.direction.south, position = { 1.5,  1.5}, connection_category = "light" },
        { flow_direction = "input-output", direction = defines.direction.east,  position = { 1.5,  1.5}, connection_category = "light" },
        { flow_direction = "input-output", direction = defines.direction.north, position = {-1.5, -1.5}, connection_category = "light" },
        { flow_direction = "input-output", direction = defines.direction.west,  position = {-1.5, -1.5}, connection_category = "light" }
      },
      filter = "planetaris-pure-light",
      minimum_temperature = 100.0
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-output"
    },
    vertical_animation =
    {
      animation_speed = 1,
      layers =
      {
        {
          filename = "__planetaris-hyarion__/graphics/entity/refraction-generator/refraction-generator-vertical.png",
          priority = "extra-high",
          width = 220,
          height = 290,
          repeat_count = 60,
          shift = util.by_pixel(0, -22),
          scale = 0.6
        },
        {
          filename = "__planetaris-hyarion__/graphics/entity/refraction-generator/refraction-generator-emission.png",
          priority = "extra-high",
          width = 220,
          height = 290,
          line_length = 10,
          lines_per_file = 6,
          frame_count = 60,
          draw_as_glow = true,
          blend_mode = "additive",
          shift = util.by_pixel(0, -22),
          scale = 0.6
        },
        {
          filename = "__planetaris-hyarion__/graphics/entity/refraction-generator/refraction-generator-shadow.png",
          priority = "extra-high",
          width = 600,
          height = 400,
          repeat_count = 60,
          draw_as_shadow = true,
          shift = util.by_pixel(0, -22),
          scale = 0.6
        }
      }
    },
    horizontal_animation =
   {
      animation_speed = 1,
      layers =
      {
        {
          filename = "__planetaris-hyarion__/graphics/entity/refraction-generator/refraction-generator-horizontal.png",
          priority = "extra-high",
          width = 220,
          height = 290,
          repeat_count = 60,
          shift = util.by_pixel(0, -22),
          scale = 0.6
        },
        {
          filename = "__planetaris-hyarion__/graphics/entity/refraction-generator/refraction-generator-emission.png",
          priority = "extra-high",
          width = 220,
          height = 290,
          line_length = 10,
          lines_per_file = 6,
          frame_count = 60,
          draw_as_glow = true,
          blend_mode = "additive",
          shift = util.by_pixel(0, -22),
          scale = 0.6
        },
        {
          filename = "__planetaris-hyarion__/graphics/entity/refraction-generator/refraction-generator-shadow.png",
          priority = "extra-high",
          width = 600,
          height = 400,
          repeat_count = 60,
          draw_as_shadow = true,
          shift = util.by_pixel(0, -22),
          scale = 0.6
        }
      }
    },
    impact_category = "metal-large",
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    working_sound = data.raw["lab"]["lab"].working_sound,
    perceived_performance = {minimum = 0.25, performance_to_activity_rate = 2.0},
  },
{
    type = "wall",
    name = "planetaris-beryllium-coating",
    icon = "__planetaris-hyarion__/graphics/icons/beryllium-coating.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    damaged_trigger_effect = hit_effects.wall(),
    minable = {mining_time = 0.4, result = "planetaris-beryllium-coating"},
    fast_replaceable_group = nil,
    max_health = 650,
    repair_speed_modifier = 3,
    corpse = "planetaris-beryllium-coating-remnants",
    dying_explosion = "wall-explosion",
    repair_sound = sounds.manual_repair,
    mined_sound = sounds.deconstruct_bricks(0.8),
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    impact_category = "stone",

    connected_gate_visualization =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "high",
      width = 64,
      height = 64,
      scale = 1
    },
    resistances =
    {
      {
        type = "physical",
        decrease = 3,
        percent = 40
      },
      {
        type = "impact",
        decrease = 45,
        percent = 70
      },
      {
        type = "explosion",
        decrease = 10,
        percent = 60
      },
      {
        type = "fire",
        percent = 100
      },
      {
        type = "acid",
        percent = 20
      },
      {
        type = "laser",
        percent = 70
      }
    },
    surface_conditions =
    {
      {
        property = "gravity",
        min = 0,
        max = 0
      }
    },
    visual_merge_group = 1, -- different walls will visually connect to each other if their merge group is same (defaults to 0)
    pictures =
    {
      single =
      {
        layers =
        {
          {
            filename = "__planetaris-hyarion__/graphics/entity/beryllium-coating/wall-single.png",
            priority = "extra-high",
            width = 64,
            height = 86,
            variation_count = 2,
            line_length = 2,
            shift = util.by_pixel(0, -5 - wall_shift),
            scale = 1
          },
          {
            filename = "__planetaris-hyarion__/graphics/entity/beryllium-coating/wall-single-shadow.png",
            priority = "extra-high",
            width = 98,
            height = 60,
            repeat_count = 2,
            shift = util.by_pixel(10, 17 - wall_shift),
            draw_as_shadow = true,
            scale = 1
          }
        }
      },
      straight_vertical =
      {
        layers =
        {
          {
            filename = "__planetaris-hyarion__/graphics/entity/beryllium-coating/wall-vertical.png",
            priority = "extra-high",
            width = 64,
            height = 134,
            variation_count = 5,
            line_length = 5,
            shift = util.by_pixel(0, 8 - wall_shift),
            scale = 1
          },
          {
            filename = "__planetaris-hyarion__/graphics/entity/beryllium-coating/wall-vertical-shadow.png",
            priority = "extra-high",
            width = 98,
            height = 110,
            repeat_count = 5,
            shift = util.by_pixel(10, 29 - wall_shift),
            draw_as_shadow = true,
            scale = 1
          }
        }
      },
      straight_horizontal =
      {
        layers =
        {
          {
            filename = "__planetaris-hyarion__/graphics/entity/beryllium-coating/wall-horizontal.png",
            priority = "extra-high",
            width = 64,
            height = 92,
            variation_count = 6,
            line_length = 6,
            shift = util.by_pixel(0, -2 - wall_shift),
            scale = 1
          },
          {
            filename = "__planetaris-hyarion__/graphics/entity/beryllium-coating/wall-horizontal-shadow.png",
            priority = "extra-high",
            width = 124,
            height = 68,
            repeat_count = 6,
            shift = util.by_pixel(14, 15 - wall_shift),
            draw_as_shadow = true,
            scale = 1
          }
        }
      },
      corner_right_down =
      {
        layers =
        {
          {
            filename = "__planetaris-hyarion__/graphics/entity/beryllium-coating/wall-corner-right.png",
            priority = "extra-high",
            width = 64,
            height = 128,
            variation_count = 2,
            line_length = 2,
            shift = util.by_pixel(0, 7 - wall_shift_adjust),
            scale = 1
          },
          {
            filename = "__planetaris-hyarion__/graphics/entity/beryllium-coating/wall-corner-right-shadow.png",
            priority = "extra-high",
            width = 124,
            height = 120,
            repeat_count = 2,
            shift = util.by_pixel(17, 28 - wall_shift_adjust),
            draw_as_shadow = true,
            scale = 1
          }
        }
      },
      corner_left_down =
      {
        layers =
        {
          {
            filename = "__planetaris-hyarion__/graphics/entity/beryllium-coating/wall-corner-left.png",
            priority = "extra-high",
            width = 64,
            height = 134,
            variation_count = 2,
            line_length = 2,
            shift = util.by_pixel(0, 7 - wall_shift_adjust),
            scale = 1
          },
          {
            filename = "__planetaris-hyarion__/graphics/entity/beryllium-coating/wall-corner-left-shadow.png",
            priority = "extra-high",
            width = 102,
            height = 120,
            repeat_count = 2,
            shift = util.by_pixel(9, 28 - wall_shift_adjust),
            draw_as_shadow = true,
            scale = 1
          }
        }
      },
      t_up =
      {
        layers =
        {
          {
            filename = "__planetaris-hyarion__/graphics/entity/beryllium-coating/wall-t.png",
            priority = "extra-high",
            width = 64,
            height = 134,
            variation_count = 4,
            line_length = 4,
            shift = util.by_pixel(0, 7 - wall_shift_adjust),
            scale = 1
          },
          {
            filename = "__planetaris-hyarion__/graphics/entity/beryllium-coating/wall-t-shadow.png",
            priority = "extra-high",
            width = 124,
            height = 120,
            repeat_count = 4,
            shift = util.by_pixel(14, 28 - wall_shift_adjust),
            draw_as_shadow = true,
            scale = 1
          }
        }
      },
      ending_right =
      {
        layers =
        {
          {
            filename = "__planetaris-hyarion__/graphics/entity/beryllium-coating/wall-ending-right.png",
            priority = "extra-high",
            width = 64,
            height = 92,
            variation_count = 2,
            line_length = 2,
            shift = util.by_pixel(0, -3 - wall_shift),
            scale = 1
          },
          {
            filename = "__planetaris-hyarion__/graphics/entity/beryllium-coating/wall-ending-right-shadow.png",
            priority = "extra-high",
            width = 124,
            height = 68,
            repeat_count = 2,
            shift = util.by_pixel(17, 15 - wall_shift),
            draw_as_shadow = true,
            scale = 1
          }
        }
      },
      ending_left =
      {
        layers =
        {
          {
            filename = "__planetaris-hyarion__/graphics/entity/beryllium-coating/wall-ending-left.png",
            priority = "extra-high",
            width = 64,
            height = 92,
            variation_count = 2,
            line_length = 2,
            shift = util.by_pixel(0, -3 - wall_shift),
            scale = 1
          },
          {
            filename = "__planetaris-hyarion__/graphics/entity/beryllium-coating/wall-ending-left-shadow.png",
            priority = "extra-high",
            width = 102,
            height = 68,
            repeat_count = 2,
            shift = util.by_pixel(9, 15 - wall_shift),
            draw_as_shadow = true,
            scale = 1
          }
        }
      },
      filling =
      {
        filename = "__planetaris-hyarion__/graphics/entity/beryllium-coating/wall-filling.png",
        priority = "extra-high",
        width = 48,
        height = 56,
        variation_count = 8,
        line_length = 8,
        shift = util.by_pixel(0 + 0, -1 - wall_shift - 7),
        scale = 0.45
      },
      water_connection_patch =
      {
        sheets =
        {
          {
            filename = "__planetaris-hyarion__/graphics/entity/beryllium-coating/wall-patch.png",
            priority = "extra-high",
            width = 116,
            height = 128,
            shift = util.by_pixel(0, -2 - wall_shift),
            scale = 1
          },
          {
            filename = "__planetaris-hyarion__/graphics/entity/beryllium-coating/wall-patch-shadow.png",
            priority = "extra-high",
            width = 144,
            height = 100,
            shift = util.by_pixel(9, 15 - wall_shift),
            draw_as_shadow = true,
            scale = 1
          }
        }
      },
      gate_connection_patch =
      {
        sheets =
        {
          {
            filename = "__planetaris-hyarion__/graphics/entity/beryllium-coating/wall-gate.png",
            priority = "extra-high",
            width = 82,
            height = 108,
            shift = util.by_pixel(0, -7 - wall_shift),
            scale = 1
          },
          {
            filename = "__planetaris-hyarion__/graphics/entity/beryllium-coating/wall-gate-shadow.png",
            priority = "extra-high",
            width = 130,
            height = 78,
            shift = util.by_pixel(14, 18 - wall_shift),
            draw_as_shadow = true,
            scale = 1
          }
        }
      }
    },

    wall_diode_green =
    {
      sheet =
      {
        filename = "__planetaris-hyarion__/graphics/entity/beryllium-coating/wall-diode-green.png",
        priority = "extra-high",
        width = 72,
        height = 44,
        draw_as_glow = true,
        --frames = 4,
        shift = util.by_pixel(-1, -23 - wall_shift),
        scale = 1
      }
    },
    wall_diode_green_light_top =
    {
      minimum_darkness = 0.3,
      color = {g=1},
      shift = util.by_pixel(0, -30 - wall_shift),
      size = 1,
      intensity = 0.2
    },
    wall_diode_green_light_right =
    {
      minimum_darkness = 0.3,
      color = {g=1},
      shift = util.by_pixel(12, -23 - wall_shift),
      size = 1,
      intensity = 0.2
    },
    wall_diode_green_light_bottom =
    {
      minimum_darkness = 0.3,
      color = {g=1},
      shift = util.by_pixel(0, -17 - wall_shift),
      size = 1,
      intensity = 0.2
    },
    wall_diode_green_light_left =
    {
      minimum_darkness = 0.3,
      color = {g=1},
      shift = util.by_pixel(-12, -23 - wall_shift),
      size = 1,
      intensity = 0.2
    },

    wall_diode_red =
    {
      sheet =
      {
        filename = "__planetaris-hyarion__/graphics/entity/beryllium-coating/wall-diode-red.png",
        priority = "extra-high",
        width = 72,
        height = 44,
        draw_as_glow = true,
        --frames = 4,
        shift = util.by_pixel(-1, -23 - wall_shift),
        scale = 1
      }
    },
    wall_diode_red_light_top =
    {
      minimum_darkness = 0.3,
      color = {r=1},
      shift = util.by_pixel(0, -30 - wall_shift),
      size = 1,
      intensity = 0.2
    },
    wall_diode_red_light_right =
    {
      minimum_darkness = 0.3,
      color = {r=1},
      shift = util.by_pixel(12, -23 - wall_shift),
      size = 1,
      intensity = 0.2
    },
    wall_diode_red_light_bottom =
    {
      minimum_darkness = 0.3,
      color = {r=1},
      shift = util.by_pixel(0, -17 - wall_shift),
      size = 1,
      intensity = 0.2
    },
    wall_diode_red_light_left =
    {
      minimum_darkness = 0.3,
      color = {r=1},
      shift = util.by_pixel(-12, -23 - wall_shift),
      size = 1,
      intensity = 0.2
    },

    circuit_connector = circuit_connector_definitions["wall"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    default_output_signal = {type = "virtual", name = "signal-G"}
  },
{
    type = "assembling-machine",
    name = "planetaris-space-manufacturer",
    icon = "__planetaris-hyarion__/graphics/icons/space-manufacturer.png",
    icon_size = 64,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    subgroup = "space-facilities",
    order = "a-a",
    minable = {mining_time = 1, results = {{type = "item", name = "planetaris-space-manufacturer", amount = 1}}},
    fast_replaceable_group = nil,
    max_health = 1800,
    corpse = data.raw["fusion-reactor"]["fusion-reactor"].corpse,
    dying_explosion = "big-explosion",
    resistances = {
        {type = "physical", percent = 30},
        {type = "fire",     percent = 20},
        {type = "impact",   percent = 50},
    },
    heating_energy = "800kW",

    collision_box = {{-2.5, -2.5}, {2.5, 2.5}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    tile_buildability_rules =
    {
      {
        area = {{-5.5, -5.5}, {5.5, 5.5}},
        required_tiles = {layers = {ground_tile = true}},
        colliding_tiles = {layers = {empty_space = true}},
        remove_on_collision = true
      }
    },
    drawing_box_vertical_extension = 0.5,
    damaged_trigger_effect = hit_effects.entity(),
  
    impact_category = "metal",
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    working_sound = {
      sound = sound_variations("__base__/sound/nuclear-reactor", 2, 0.55, volume_multiplier("main-menu", 0.8)),
      max_sounds_per_prototype = 3,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },
    idle_sound = {filename = "__base__/sound/idle1.ogg"},

    crafting_speed = 1,
    crafting_categories = {"space-manufacturing"},
    result_inventory_size = 2,
    module_slots = 6,
    allowed_effects = {"consumption", "speed", "productivity", "pollution", "quality"},
    effect_receiver = { base_effect = { productivity = 0.5 }},
    energy_usage = "250kW",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 2 }
    },
    surface_conditions =
    {
      {
        property = "gravity",
        min = 0,
        max = 0
      }
    },

    graphics_set =
    {
      animation =
      {
      north = {
        layers =
        {
          {
            filename = "__planetaris-hyarion__/graphics/entity/space-manufacturer/space-manufacturer-animation.png",
            priority = "high",
            animation_speed = 0.5,
            scale = 0.5,
            line_length= 10,
            frame_count= 100,
            draw_as_glow= false,
            width= 320,
            height= 350,
            shift = util.by_pixel(0, -10),
          },
          {
            filename = "__planetaris-hyarion__/graphics/entity/space-manufacturer/space-manufacturer-shadow.png",
            priority = "extra-high",
            width = 320,
            height = 350,
            repeat_count = 100,
            shift = util.by_pixel(10, -10),
            draw_as_shadow = true,
            scale = 0.5
            }
          }
        },
      },
    idle_animation =
    {
      north = {
        layers = {
          {
            filename = "__planetaris-hyarion__/graphics/entity/space-manufacturer/space-manufacturer-color2.png",
            priority = "extra-high",
            width = 320,
            height = 350,
            repeat_count = 100,
            shift = util.by_pixel(0, -10),
            scale = 0.5
          },
          {
            filename = "__planetaris-hyarion__/graphics/entity/space-manufacturer/space-manufacturer-color1.png",
            priority = "extra-high",
            width = 320,
            height = 350,
            repeat_count = 100,
            shift = util.by_pixel(0, -10),
            scale = 0.5
          },
          {
            filename = "__planetaris-hyarion__/graphics/entity/space-manufacturer/space-manufacturer-idle.png",
            priority = "extra-high",
            width = 320,
            height = 350,
            repeat_count = 100,
            shift = util.by_pixel(0, -10),
            scale = 0.5
          },
          {
            filename = "__planetaris-hyarion__/graphics/entity/space-manufacturer/space-manufacturer-shadow.png",
            priority = "extra-high",
            width = 320,
            height = 350,
            shift = util.by_pixel(10, -10),
            draw_as_shadow = true,
            repeat_count = 100,
            scale = 0.5
          },
    }}
    },
    working_visualisations = {
      {
        animation =
            {
            filename = "__planetaris-hyarion__/graphics/entity/space-manufacturer/space-manufacturer-emission3.png",
            priority = "high",
            animation_speed = 0.5,
            scale= 0.5,
            line_length= 10,
            frame_count= 100,
            width= 320,
            height= 350,
            shift = util.by_pixel(0, -10),
            draw_as_glow= true,
            blend_mode= "additive",
          },
      },
      {
        animation =
            {
            filename = "__planetaris-hyarion__/graphics/entity/space-manufacturer/space-manufacturer-emission2.png",
            priority = "high",
            animation_speed = 0.5,
            scale= 0.5,
            line_length= 10,
            frame_count= 100,
            width= 320,
            height= 350,
            shift = util.by_pixel(0, -10),
            draw_as_glow= true,
            blend_mode= "additive",
          },
      },
      {
        animation =
            {
            filename = "__planetaris-hyarion__/graphics/entity/space-manufacturer/space-manufacturer-emission1.png",
            priority = "high",
            animation_speed = 0.5,
            scale= 0.5,
            line_length= 10,
            frame_count= 100,
            width= 320,
            height= 350,
            shift = util.by_pixel(0, -10),
            draw_as_glow= true,
            blend_mode= "additive",
          },
      },
      {
        animation =
            {
            filename = "__planetaris-hyarion__/graphics/entity/space-manufacturer/space-manufacturer-color2.png",
            priority = "high",
            animation_speed = 0.5,
            scale= 0.5,
            line_length= 10,
            frame_count= 100,
            draw_as_glow= false,
            width= 320,
            height= 350,
            shift = util.by_pixel(0, -10),
          },
      },
      {
        animation =
            {
            filename = "__planetaris-hyarion__/graphics/entity/space-manufacturer/space-manufacturer-color1.png",
            priority = "high",
            animation_speed = 0.5,
            scale= 0.5,
            line_length= 10,
            frame_count= 100,
            draw_as_glow= false,
            width= 320,
            height= 350,
            shift = util.by_pixel(0, -10),
          },
      }
    }
},


    icon_draw_specification = {scale = 1.75, shift = {0, -0.5}},
    circuit_connector = circuit_connector_definitions["manufacturer"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
},
  {
    type = "accumulator",
    name = "planetaris-zero-grav-accumulator",
    icon = "__planetaris-hyarion__/graphics/icons/zero-gravity-accumulator.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "planetaris-zero-grav-accumulator"},
    fast_replaceable_group = "accumulator",
    max_health = 450,
    corpse = "planetaris-zero-grav-accumulator-remnants",
    dying_explosion = "accumulator-explosion",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
    damaged_trigger_effect = hit_effects.entity(),
    drawing_box_vertical_extension = 1.5,
    energy_source =
    {
      type = "electric",
      buffer_capacity = "15MJ",
      usage_priority = "tertiary",
      input_flow_limit = "750kW",
      output_flow_limit = "750kW"
    },
    chargable_graphics =
    {
      picture = zero_grav_accumulator_picture(),
      charge_animation = zero_grav_accumulator_charge(),
      charge_cooldown = 30,
      discharge_animation = zero_grav_accumulator_discharge(),
      discharge_cooldown = 60
    },
        surface_conditions =
    {
      {
        property = "gravity",
        min = 0,
        max = 0
      }
    },
    water_reflection = zero_grav_accumulator_reflection(),
    impact_category = "metal",
    open_sound = sounds.electric_large_open,
    close_sound = sounds.electric_large_close,
    working_sound =
    {
      main_sounds =
      {
        {
          sound =
          {
            filename = "__base__/sound/accumulator-working.ogg",
            volume = 0.4,
            modifiers = volume_multiplier("main-menu", 1.44),
            audible_distance_modifier = 0.5
          },
          match_volume_to_activity = true,
          activity_to_volume_modifiers = {offset = 2, inverted = true},
          fade_in_ticks = 4,
          fade_out_ticks = 20
        },
        {
          sound =
          {
            filename = "__base__/sound/accumulator-discharging.ogg",
            volume = 0.4,
            modifiers = volume_multiplier("main-menu", 1.44),
            audible_distance_modifier = 0.5
          },
          match_volume_to_activity = true,
          activity_to_volume_modifiers = {offset = 1},
          fade_in_ticks = 4,
          fade_out_ticks = 20
        }
      },
      idle_sound = {filename = "__base__/sound/accumulator-idle.ogg", volume = 0.35, audible_distance_modifier = 0.5},
      max_sounds_per_prototype = 3,
    },

    circuit_connector = circuit_connector_definitions["accumulator"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,

    default_output_signal = {type = "virtual", name = "signal-A"}
  },
  {
    type = "radar",
    name = "planetaris-electromagnetic-radar",
    icon = "__planetaris-hyarion__/graphics/icons/electromagnetic-radar.png",
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.1, result = "planetaris-electromagnetic-radar"},
    fast_replaceable_group = "radar",
    max_health = 450,
    corpse = "radar-remnants",
    dying_explosion = "radar-explosion",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      },
      {
        type = "impact",
        percent = 50
      }
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    damaged_trigger_effect = hit_effects.entity(),
    energy_per_sector = "15MJ",
    max_distance_of_sector_revealed = 30,
    max_distance_of_nearby_sector_revealed = 6,
    energy_per_nearby_scan = "200kJ",
    drawing_box_vertical_extension = 2,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "900kW",
    pictures =
    {
      layers =
      {
        {
          filename = "__planetaris-hyarion__/graphics/entity/electromagnetic-radar/electromagnetic-radar.png",
          priority = "low",
          width = 250,
          height = 350,
          apply_projection = false,
          direction_count = 64,
          line_length = 8,
          shift = util.by_pixel(1.0, -34.0),
          scale = 0.5
        },
        {
          filename = "__planetaris-hyarion__/graphics/entity/electromagnetic-radar/electromagnetic-radar-shadow.png",
          priority = "low",
          width = 320,
          height = 186,
          apply_projection = false,
          direction_count = 64,
          line_length = 8,
          shift = util.by_pixel(30.0, 16.0),
          draw_as_shadow = true,
          scale = 0.5
        }
      }
    },
    impact_category = "metal",
    working_sound =
    {
      sound = {filename = "__base__/sound/radar.ogg", volume = 0.8, modifiers = volume_multiplier("main-menu", 2.0)},
      max_sounds_per_prototype = 3,
      use_doppler_shift = false
    },
    radius_minimap_visualisation_color = {0.059, 0.092, 0.235, 0.275},
    rotation_speed = 0.01,
    water_reflection =
    {
      pictures =
      {
        filename = "__planetaris-hyarion__/graphics/entity/electromagnetic-radar/electromagnetic-radar-reflection.png",
        priority = "extra-high",
        width = 218,
        height = 213,
        shift = util.by_pixel(5, 35),
        variation_count = 1,
        scale = 5
      },
      rotate = false,
      orientation_to_variation = false
    },
    is_military_target = false,
    circuit_connector = circuit_connector_definitions["radar"],
    circuit_wire_max_distance = default_circuit_wire_max_distance
  },
})

if not mods["Krastorio2-spaced-out"] then
    data.raw["furnace"]["planetaris-quartz-furnace"].energy_usage = "45kW"
end