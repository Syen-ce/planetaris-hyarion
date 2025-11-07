local explosion_animations = require("__base__.prototypes.entity.explosion-animations")
local smoke_animations = require("__base__.prototypes.entity.smoke-animations")
local sounds = require("__base__.prototypes.entity.sounds")
local space_age_sounds = require ("__space-age__.prototypes.entity.sounds")
local simulations = require("prototypes.factoriopedia-simulations")

data:extend({
  {
    type = "lightning",
    name = "planetaris-refraction-ray",
    icon = "__planetaris-hyarion__/graphics/icons/refraction-ray.png",
    subgroup = "obstacles",
    factoriopedia_simulation = simulations.factoriopedia_refraction_ray,
    damage = 120,
    energy = "500MJ",
    time_to_damage = 10,
    effect_duration = 50,
    source_offset = {0, -25},
    source_variance = {30, 6},
    sound =
    {
      variations = sound_variations_with_volume_variations("__space-age__/sound/explosions/lightning-effect", 5, 0.25, 0.8),
      advanced_volume_control =
      {
        fades = {fade_in = {curve_type = "S-curve", from = {control = 0.3, volume_percentage = 50.0}, to = {2.5, 100.0 }}},
      },
      aggregation = {max_count = 3, remove = true, count_already_playing = true},
      audible_distance_modifier = 2.25
    },
    attracted_volume_modifier = 0.4,
    created_effect =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          type = "camera-effect",
          duration = 20,
          ease_in_duration = 10,
          ease_out_duration = 7,
          delay = 0,
          strength = 0.75,
          full_strength_max_distance = 10,
          max_distance = 70
        }
      }
    },
    strike_effect =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-particle",
            repeat_count = 5,
            particle_name = "hyarion-stone-particle-big",
            offset_deviation = {{-0.8984, -0.5}, {0.8984, 0.5}},
            initial_height = 0.3,
            initial_vertical_speed = 0.03,
            initial_vertical_speed_deviation = 0.15,
            speed_from_center = 0.08,
            speed_from_center_deviation = 0.15,
            only_when_visible = true
          },
          {
            type = "create-particle",
            repeat_count = 10,
            particle_name = "hyarion-stone-particle-medium",
            offset_deviation = {{-0.8984, -0.5}, {0.8984, 0.5}},
            initial_height = 0.5,
            initial_vertical_speed = 0.05,
            initial_vertical_speed_deviation = 0.15,
            speed_from_center = 0.08,
            speed_from_center_deviation = 0.15,
            only_when_visible = true
          },
          {
            type = "create-particle",
            repeat_count = 25,
            particle_name = "hyarion-stone-particle-small",
            offset_deviation = {{-0.8984, -0.5}, {0.8984, 0.5}},
            initial_height = 0.5,
            initial_height_deviation = 0.5,
            initial_vertical_speed = 0.08,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.05,
            speed_from_center_deviation = 0.05,
            only_when_visible = true
          },
          {
            type = "create-particle",
            repeat_count = 30,
            particle_name = "big-rock-stone-particle-tiny",
            offset_deviation = {{-0.8984, -0.5}, {0.8984, 0.5}},
            initial_height = 0.5,
            initial_height_deviation = 0.5,
            initial_vertical_speed = 0.08,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.05,
            speed_from_center_deviation = 0.05,
            only_when_visible = true
          },
          {
            type = "create-trivial-smoke",
            smoke_name = "fire-smoke-without-glow",
            offsets = {{0, -0.5}},
            offset_deviation = {{-0.5, -0.5}, {0.5, 0.5}},
            speed = {0, -0.5},
            initial_height = 0.5,
            speed_from_center = 0.008,
            speed_from_center_deviation = 0.015,
            only_when_visible = true
          }
        }
      }
    },
    graphics_set =
    {
      relative_cloud_fork_length = 0.15,
      cloud_fork_orientation_variance = 0.2,
      cloud_detail_level = 4,
      bolt_detail_level = 5,
      bolt_half_width = 0.1,
      bolt_midpoint_variance = 0.05,
      max_bolt_offset = 0.01,
      max_fork_probability = 1,
      fork_intensity_multiplier = 0.99,
      min_ground_streamer_distance = 2,
      max_ground_streamer_distance = 4,
      ground_streamer_variance = 4,
      shader_configuration =
      {
        {color = {1, 1, 1, 0.8}, distortion =  0.20, thickness = 0.20, power = 0.55},
        {color = {1, 1, 1, 1.0}, distortion =  0.40, thickness = 1.00, power = 0.55},
        {color = {1, 1, 1, 1.0}, distortion =  0.55, thickness = 1.00, power = 0.55},
        {color = {1, 1, 1, 0.6}, distortion =  0.70, thickness = 0.75, power = 0.55},
        {color = {1, 1, 1, 0.3}, distortion =  1.00, thickness = 0.50, power = 0.40},
        {color = {1, 1, 1, 0.0}, distortion = 20.00, thickness = 0.50, power = 0.21}
      },
      cloud_background = util.sprite_load("__planetaris-hyarion__/graphics/entity/refraction-ray/refraction-ray-cloud",
                                          {
                                            draw_as_glow = true,
                                            scale = 1,
                                            frame_count = 4,
                                            --tint = {0.5, 0.5, 0.5, 0.5}
                                          }),
      explosion =
      {
        util.sprite_load("__planetaris-hyarion__/graphics/entity/refraction-ray/refraction-ray-explosion",{
          draw_as_glow = true,
          scale = 0.5,
          frame_count = 36
        }),
--        util.sprite_load("__planetaris-hyarion__/graphics/entity/refraction-ray/refraction-ray-explosion-2",{
--          draw_as_glow = true,
--          scale = 0.5,
--          frame_count = 36
--         })
      },
      attractor_hit_animation = util.sprite_load("__planetaris-hyarion__/graphics/entity/refraction-ray/refraction-ray-attractor-hit-anim",{
        draw_as_glow = true,
        scale = 1,
        frame_count = 29
      }),
      ground_streamers =
      {
        util.sprite_load("__planetaris-hyarion__/graphics/entity/refraction-ray/refraction-ray-streamer-1",{
          draw_as_glow = true,
          scale = 0.5,
          frame_count = 36
         }),
         util.sprite_load("__planetaris-hyarion__/graphics/entity/refraction-ray/refraction-ray-streamer-2",{
          draw_as_glow = true,
          scale = 0.5,
          frame_count = 36
         }),
         util.sprite_load("__planetaris-hyarion__/graphics/entity/refraction-ray/refraction-ray-streamer-3",{
          draw_as_glow = true,
          scale = 0.5,
          frame_count = 36
         }),
         util.sprite_load("__planetaris-hyarion__/graphics/entity/refraction-ray/refraction-ray-streamer-4",{
          draw_as_glow = true,
          scale = 0.5,
          frame_count = 36
         }),
         util.sprite_load("__planetaris-hyarion__/graphics/entity/refraction-ray/refraction-ray-streamer-5",{
          draw_as_glow = true,
          scale = 0.5,
          frame_count = 36
         }),
         util.sprite_load("__planetaris-hyarion__/graphics/entity/refraction-ray/refraction-ray-streamer-6",{
          draw_as_glow = true,
          scale = 0.5,
          frame_count = 36
         }),
         util.sprite_load("__planetaris-hyarion__/graphics/entity/refraction-ray/refraction-ray-streamer-7",{
          draw_as_glow = true,
          scale = 0.5,
          frame_count = 36
         }),
         util.sprite_load("__planetaris-hyarion__/graphics/entity/refraction-ray/refraction-ray-streamer-8",{
          draw_as_glow = true,
          scale = 0.5,
          frame_count = 36
         }),
      },
      light = {intensity = 1.0, size = 120, color = {1, 1, 1}}
    }
  },
  -----------------------------------------------------------------------------
  {
        type = "explosion",
        name = "planetaris-assembling-machine-4-explosion",
        icon = "__planetaris-hyarion__/graphics/icons/assembling-machine-4.png",
        flags = {"not-on-map"},
        hidden = true,
        subgroup = "production-machine-explosions",
        order = "d-c-a",
        height = 0,
        animations = explosion_animations.medium_explosion(),
        smoke = "smoke-fast",
        smoke_count = 2,
        smoke_slow_down_factor = 1,
        sound = sounds.medium_explosion,
        created_effect =
        {
          type = "direct",
          action_delivery =
          {
            type = "instant",
            target_effects =
            {
              {
                type = "create-particle",
                repeat_count = 17,
                particle_name = "assembling-machine-3-metal-particle-big",
                offset_deviation = { { -0.6875, -0.6875 }, { 0.6875, 0.6875 } },
                initial_height = 0.1,
                initial_height_deviation = 0.49,
                initial_vertical_speed = 0.08,
                initial_vertical_speed_deviation = 0.05,
                speed_from_center = 0.03,
                speed_from_center_deviation = 0.05
              },
              {
                type = "create-particle",
                repeat_count = 21,
                particle_name = "assembling-machine-3-metal-particle-medium",
                offset_deviation = { { -0.8789, -0.8945 }, { 0.8789, 0.8945 } },
                initial_height = 0.2,
                initial_height_deviation = 0.5,
                initial_vertical_speed = 0.098,
                initial_vertical_speed_deviation = 0.05,
                speed_from_center = 0.05,
                speed_from_center_deviation = 0.05
              },
              {
                type = "create-particle",
                repeat_count = 26,
                particle_name = "assembling-machine-3-metal-particle-small",
                offset_deviation = { { -0.8945, -0.3906 }, { 0.8945, 0.3906 } },
                initial_height = 0.1,
                initial_height_deviation = 0.5,
                initial_vertical_speed = 0.075,
                initial_vertical_speed_deviation = 0.05,
                speed_from_center = 0.04,
                speed_from_center_deviation = 0.05
              },
              {
                type = "create-particle",
                repeat_count = 7,
                particle_name = "cable-and-electronics-particle-small-medium",
                offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
                initial_height = 0.3,
                initial_height_deviation = 0.5,
                initial_vertical_speed = 0.092,
                initial_vertical_speed_deviation = 0.05,
                speed_from_center = 0.05,
                speed_from_center_deviation = 0.05
              },
              {
                type = "create-particle",
                repeat_count = 25,
                particle_name = "assembling-machine-mechanical-component-particle-medium",
                offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
                initial_height = 0.4,
                initial_height_deviation = 0.5,
                initial_vertical_speed = 0.069,
                initial_vertical_speed_deviation = 0.05,
                speed_from_center = 0.05,
                speed_from_center_deviation = 0.05
              }
            }
          }
        }
      },
})