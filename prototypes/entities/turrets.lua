require ("__base__/prototypes/entity/enemy-projectiles")
require ("__base__/prototypes/entity/worm-animations")
require ("__base__/prototypes/entity/pipecovers")
require ("__base__/prototypes/entity/assemblerpipes")

local sounds = require("__base__/prototypes/entity/sounds")
local hit_effects = require ("__base__/prototypes/entity/hit-effects")

local util = require('util')


function laser_turret_extension(inputs)
  return
  {
    filename = "__planetaris-hyarion__/graphics/entity/ruby-laser-turret/ruby-laser-turret-raising.png",
    priority = "medium",
    width = 130,
    height = 126,
    frame_count = inputs.frame_count or 15,
    line_length = inputs.line_length or 0,
    run_mode = inputs.run_mode or "forward",
    direction_count = 4,
    shift = util.by_pixel(0, -32.5),
    scale = 0.5
  }
end

function laser_turret_extension_shadow(inputs)
  return
  {
    filename = "__base__/graphics/entity/laser-turret/laser-turret-raising-shadow.png",
    width = 182,
    height = 96,
    frame_count = inputs.frame_count or 15,
    line_length = inputs.line_length or 0,
    run_mode = inputs.run_mode or "forward",
    direction_count = 4,
    draw_as_shadow = true,
    shift = util.by_pixel(47, 2.5),
    scale = 0.5
  }
end

function laser_turret_shooting()
  return
  {
    filename = "__planetaris-hyarion__/graphics/entity/ruby-laser-turret/ruby-laser-turret-shooting.png",
    line_length = 8,
    width = 126,
    height = 120,
    direction_count = 64,
    shift = util.by_pixel(0, -35),
    scale = 0.5
  }
end

function laser_turret_shooting_glow()
  return
  {
    filename = "__base__/graphics/entity/laser-turret/laser-turret-shooting-light.png",
    line_length = 8,
    width = 122,
    height = 116,
    direction_count = 64,
    shift = util.by_pixel(-0.5, -35),
    blend_mode = "additive",
    scale = 0.5
  }
end

function laser_turret_shooting_shadow()
  return
  {
    filename = "__base__/graphics/entity/laser-turret/laser-turret-shooting-shadow.png",
    line_length = 8,
    width = 170,
    height = 92,
    direction_count = 64,
    draw_as_shadow = true,
    shift = util.by_pixel(50.5, 2.5),
    scale = 0.5
  }
end

data.extend({
    {
    type = "electric-turret",
    name = "planetaris-ruby-laser-turret",
    icon = "__planetaris-hyarion__/graphics/icons/ruby-laser-turret.png",
    flags = {"placeable-player", "placeable-enemy", "player-creation"},
    minable = {mining_time = 0.5, result = "planetaris-ruby-laser-turret"},
    fast_replaceable_group = "electric-turret",
    max_health = 1400,
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-1, -1}, {1, 1}},
    drawing_box_vertical_extension = 0.3,
    damaged_trigger_effect = hit_effects.entity(),
    circuit_connector = circuit_connector_definitions["laser-turret"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    rotation_speed = 0.01,
    preparing_speed = 0.05,
    heating_energy = "55kW",
    open_sound = sounds.turret_open,
    close_sound = sounds.turret_close,
    preparing_sound = sounds.laser_turret_activate,
    folding_sound = sounds.laser_turret_deactivate,
    corpse = "planetaris-ruby-laser-turret-remnants",
    dying_explosion = "laser-turret-explosion",
    folding_speed = 0.05,
    energy_source =
    {
      type = "electric",
      buffer_capacity = "1201kJ",
      input_flow_limit = "14100kW",
      drain = "32kW",
      usage_priority = "primary-input"
    },
    folded_animation =
    {
      layers =
      {
        laser_turret_extension{frame_count=1, line_length = 1},
        laser_turret_extension_shadow{frame_count=1, line_length=1},
      }
    },
    preparing_animation =
    {
      layers =
      {
        laser_turret_extension{},
        laser_turret_extension_shadow{},
      }
    },
    prepared_animation =
    {
      layers =
      {
        laser_turret_shooting(),
        laser_turret_shooting_shadow(),
      }
    },
    --attacking_speed = 0.1,
    energy_glow_animation = laser_turret_shooting_glow(),
    glow_light_intensity = 0.9, -- defaults to 0
    folding_animation =
    {
      layers =
      {
        laser_turret_extension{run_mode = "backward"},
        laser_turret_extension_shadow{run_mode = "backward"},
      }
    },
    graphics_set =
    {
      base_visualisation =
      {
        animation =
        {
          layers =
          {
            {
              filename = "__planetaris-hyarion__/graphics/entity/ruby-laser-turret/ruby-laser-turret-base.png",
              priority = "high",
              width = 138,
              height = 104,
              shift = util.by_pixel(-0.5, 2),
              scale = 0.5
            },
            {
              filename = "__base__/graphics/entity/laser-turret/laser-turret-base-shadow.png",
              line_length = 1,
              width = 132,
              height = 82,
              draw_as_shadow = true,
              shift = util.by_pixel(6, 3),
              scale = 0.5
            }
          }
        }
      }
    },

    attack_parameters =
    {
      type = "beam",
      cooldown = 35,
      range = 32,
      min_range = 5,
      range_mode = "center-to-bounding-box",
      source_direction_count = 64,
      source_offset = {0, -3.423489 / 4},
      damage_modifier = 2.5,
      ammo_category = "laser",
      ammo_type =
      {
        energy_consumption = "1200kJ",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "beam",
            beam = "laser-beam",
            max_length = 32,
            duration = 45,
            source_offset = {0, -1.31439 }
          }
        }
      }
    },

    call_for_help_radius = 40,
    water_reflection =
    {
      pictures =
      {
        filename = "__base__/graphics/entity/laser-turret/laser-turret-reflection.png",
        priority = "extra-high",
        width = 20,
        height = 32,
        shift = util.by_pixel(0, 40),
        variation_count = 1,
        scale = 5
      },
      rotate = false,
      orientation_to_variation = false
    }
  },
})