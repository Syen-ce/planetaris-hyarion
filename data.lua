require("lib")
require("prototypes.achievements")
require("prototypes.autoplace-controls")
require("prototypes.categories.recipe-category")
require("prototypes.categories.resource-category")
require("prototypes.decoratives.hyarion-decoratives")
require("prototypes.entities.asteroids.asteroids")
require("prototypes.entities.asteroids.explosions")
require("prototypes.entities.asteroids.smoke")
require("prototypes.entities.asteroids.particles")
require("prototypes.entities.asteroids.smoke")
require("prototypes.entities.asteroids.sounds")
require("prototypes.entities.big-refraction-ray-collector")
require("prototypes.entities.entities")
require("prototypes.entities.remnants")
require("prototypes.entities.equipment")
require("prototypes.entities.explosions")
require("prototypes.entities.fiber-optics-cable")
require("prototypes.entities.projectiles")
require("prototypes.entities.resources")
require("prototypes.entities.hyarion-geode-mining-drill")
require("prototypes.entities.polisher")
require("prototypes.entities.particle-manipulator")
require("prototypes.entities.trees")
require("prototypes.entities.turrets")
require("prototypes.fluid")
require("prototypes.item")
require("prototypes.item-groups")
require("prototypes.particles")
require("prototypes.planets.planet")
require("prototypes.planets.planet_hyarion_map_gen")
require("prototypes.planets.planet_map_gen")
require("prototypes.planets.surface-conditions")
require("prototypes.recipe")
require("prototypes.technology")
require("prototypes.tile.hyarion-tile")
require("prototypes.tips-and-tricks")

--------------------- Compat

require("compat.stone-sifting")
require("compat.resource-spawner-overhaul")
require("compat.bzlead")
require("compat.bztin")
require("compat.lignumis")
require("compat.msppr")
require("compat.alloy-smelting")
require("compat.technology-price-multiplier")
require("compat.wood-industry")

local replace_base_game_simulations = false
local planetaris_menu_simulations = require("__planetaris-hyarion__/menu-simulations/menu-simulations")
if not data.raw["utility-constants"]["default"].main_menu_simulations or replace_base_game_simulations then
  data.raw["utility-constants"]["default"].main_menu_simulations = {}
end
local main_menu_simulations = data.raw["utility-constants"]["default"].main_menu_simulations
main_menu_simulations.hyarion_cable_madness = planetaris_menu_simulations.hyarion_cable_madness
main_menu_simulations.hyarion_metallic_and_emerald = planetaris_menu_simulations.hyarion_metallic_and_emerald
main_menu_simulations.hyarion_hyarion_polishing = planetaris_menu_simulations.hyarion_hyarion_polishing
main_menu_simulations.hyarion_hyarion_quartzlands = planetaris_menu_simulations.hyarion_hyarion_quartzlands
main_menu_simulations.tellus_mycelia_hyarion_refraction_powernutrients = planetaris_menu_simulations.hyarion_refraction_power