-- Code from the celestial wheather mod

local cluster_particles = {
  type = "cluster",
  distance = 8,
  distance_deviation = 8,
  action_delivery = {
    type = "instant",
    source_effects = {
      type = "create-trivial-smoke",
      initial_height = 0.6,
      speed_multiplier_deviation = 0.2,
      starting_frame = 512,
      starting_frame_deviation = 1024,
      offset_deviation = {{-96, -48}, {96, 48}},
      speed_from_center = 0,
      speed_from_center_deviation = 0
    }
  }
}

------ direct particles ------
local direct_particles = {
  type = "direct",
  action_delivery = {
    type = "instant",
    source_effects = {
      type = "create-trivial-smoke",
      initial_height = 0.4,
      speed_multiplier_deviation = 0.2,
      starting_frame = 512,
      starting_frame_deviation = 1024,
      offset_deviation = {{-96, -48}, {96, 48}},
      speed_from_center = 0,
      speed_from_center_deviation = 0
    }
  }
}

------ fog ------
local fog = {
  fog_type = "vulcanus",
  shape_noise_texture =
  {
    filename = "__core__/graphics/clouds-noise.png",
    size = 2048
  },
  detail_noise_texture =
  {
    filename = "__core__/graphics/clouds-detail-noise.png",
    size = 2048
  },
  color1 = {255, 217, 139, 1.0},
  color2 = {183, 255, 169, 1.0},
  tick_factor = 0.000001,
}


-------------------------- Hyarion


if mods["celestial-weather"] and settings.startup["enable-hyarion-weather"].value then

hyarion_effects = {}

if mods["celestial-weather"] and settings.startup["enable-hyarion-dust"].value then

----- Dust
  local hyarion_dust_particle = table.deepcopy(data.raw["trivial-smoke"]["aquilo-snow-smoke"])
  hyarion_dust_particle.name = "hyarion_dust_particle"
  hyarion_dust_particle.color = {0.961, 0.902, 0.914}
  hyarion_dust_particle.animation.filename = "__celestial-weather__/graphics/entity/sand-particles.png",
  data:extend({hyarion_dust_particle})

  local hyarion_weather_d = table.deepcopy(cluster_particles)
  hyarion_weather_d.cluster_count = 2
  hyarion_weather_d.action_delivery.source_effects.smoke_name= "hyarion_dust_particle"
  hyarion_weather_d.action_delivery.source_effects.speed = {0.32, 0}
  hyarion_weather_d.action_delivery.source_effects.speed_multiplier  = settings.startup["hyarion_dust_particle-speed"].value

  table.insert(hyarion_effects, hyarion_weather_d)

end

if mods["celestial-weather"] and settings.startup["enable-hyarion-lights"].value then

-- Light particles
  local hyarion_lights = table.deepcopy(data.raw["trivial-smoke"]["aquilo-snow-smoke"])
  hyarion_lights.name = "hyarion-lights"
  hyarion_lights.color = {1, 1, 1, 1}
  hyarion_lights.animation.filename = "__celestial-weather__/graphics/entity/fire-particles.png"
  data:extend({hyarion_lights})

  local hyarion_weather_l = table.deepcopy(cluster_particles)
  hyarion_weather_l.cluster_count = 12
  hyarion_weather_l.action_delivery.source_effects.smoke_name= "hyarion-lights"
  hyarion_weather_l.action_delivery.source_effects.speed = {-0.16, -0.4}
  hyarion_weather_l.action_delivery.source_effects.speed_multiplier = settings.startup["hyarion-lights-particle-speed"].value

  table.insert(hyarion_effects, hyarion_weather_l) 

end

if mods["celestial-weather"] and settings.startup["enable-hyarion-lights"].value then

----- Fog
  local hyarion_fog = table.deepcopy(fog)
  hyarion_fog.color1 = {1, 1, 1, 1}
  hyarion_fog.color2 = {1, 1, 1, 1}
  hyarion_fog.tick_factor = 0.0002
  hyarion_fog.detail_noise_texture.filename = "__celestial-weather__/graphics/entity/dense-clouds.png"

  data.raw["planet"]["hyarion"].surface_render_parameters = data.raw["planet"]["hyarion"]["surface_render_parameters"] or {}
  data.raw["planet"]["hyarion"].surface_render_parameters["fog"] = hyarion_fog

end

-- implement
  if #hyarion_effects > 0 then
    data.raw["planet"]["hyarion"].ticks_between_player_effects = 1
    data.raw["planet"]["hyarion"].player_effects = hyarion_effects
  end

end