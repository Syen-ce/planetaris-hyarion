local planetaris_menu_simulations = {}

--special variables:
-- sim_planet = current sim surface
-- on_tick = override to do stuff on given tick when timeline_tools are included
local make_simulation = function(duration, planet, filename, script)
  return
  {
    checkboard = false,
    save = "__planetaris-hyarion__/menu-simulations/" .. filename,
    length = duration,
    init =
    [[
      local sim_planet = game.surfaces["]] .. planet .. [["]
      local logo = sim_planet.find_entities_filtered{name = "planetaris-logo-white", limit = 1}[1]
      logo.destructible = false
      local center = {logo.position.x, logo.position.y+9.75}
      game.simulation.camera_surface_index = sim_planet.index
      game.simulation.camera_position = center
      game.simulation.camera_zoom = 1
      game.tick_paused = false
    ]]
    ..
    script
  }
end

local timeline_tools =
  [[
    local tick = 0
    local on_tick = function() end
    script.on_nth_tick(1,
      function()
        tick = tick + 1
        on_tick()
      end)
  ]]

planetaris_menu_simulations.hyarion_cable_madness = make_simulation(60 * 12, "hyarion", "menu-simulation-hyarion-cable-madness.zip", [[]])
planetaris_menu_simulations.hyarion_metallic_and_emerald = make_simulation(60 * 12, "hyarion", "menu-simulation-hyarion-metallic-and-emerald.zip", [[]])
planetaris_menu_simulations.hyarion_hyarion_polishing = make_simulation(60 * 12, "hyarion", "menu-simulation-hyarion-polishing.zip", [[]])
planetaris_menu_simulations.hyarion_hyarion_quartzlands = make_simulation(60 * 12, "hyarion", "menu-simulation-hyarion-quartzlands.zip", [[]])
planetaris_menu_simulations.hyarion_refraction_power = make_simulation(60 * 12, "hyarion", "menu-simulation-hyarion-refraction-power.zip", [[]])

return planetaris_menu_simulations