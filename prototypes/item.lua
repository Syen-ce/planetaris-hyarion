local item_sounds = require("__base__.prototypes.item_sounds")
local space_age_item_sounds = require("__space-age__.prototypes.item_sounds")
local item_tints = require("__base__.prototypes.item-tints")
local item_effects = require("__space-age__.prototypes.item-effects")
-- local planetaris_item_effects = require("prototypes.item-effects")

data:extend({
  {
    type = "item",
    name = "planetaris-assembling-machine-4",
    icon = "__planetaris-hyarion__/graphics/icons/assembling-machine-4.png",
    icon_size = 64,
    icon_mipmaps = 4, -- Optional, depending on how you want it to display
    subgroup = "production-machine",
    order = "c[assembling-machine-4]-a",
    place_result = "planetaris-assembling-machine-4",
    stack_size = 50,
    default_import_location = "arig",
    },
    {
        type = "item",
        name = "planetaris-raw-quartz",
        icon = "__planetaris-arig__/graphics/icons/quartz.png",
        subgroup = "arig-processes",
        order = "a[basic]-b-b",
        stack_size = 100,
        weight = 5*kg,
        default_import_location = "arig",

        inventory_move_sound = item_sounds.sulfur_inventory_move,
        pick_sound = item_sounds.resource_inventory_pickup,
        drop_sound = item_sounds.sulfur_inventory_move,
    },
    {
        type = "item",
        name = "planetaris-simulating-unit",
        icon = "__planetaris-hyarion__/graphics/icons/simulating-unit.png",
        subgroup = "arig-processes",
        order = "c[advance]-c",
        stack_size = 100,
        default_import_location = "arig",

        inventory_move_sound = item_sounds.sulfur_inventory_move,
        pick_sound = item_sounds.resource_inventory_pickup,
        drop_sound = item_sounds.sulfur_inventory_move,
        weight = 10*kg,
    },
        {
        type = "item",
        name = "planetaris-arig-roboport",
        icon = "__planetaris-arig__/graphics/icons/arig-roboport.png",
        subgroup = "logistic-network",
        order = "c[signal]-a[roboport]-b",
        localised_description = {"item-description.roboport"},
        inventory_move_sound = item_sounds.roboport_inventory_move,
        pick_sound = item_sounds.roboport_inventory_pickup,
        drop_sound = item_sounds.roboport_inventory_move,
        place_result = "planetaris-arig-roboport",
        stack_size = 10,
        weight = 100*kg,
        default_import_location = "arig",
     },
  {
    type = "item",
    name = "planetaris-polished-diamond",
    icon = "__planetaris-hyarion__/graphics/icons/polished-diamond.png",
    subgroup = "hyarion-gems",
    order = "b-b[polished]",
    stack_size = 50,
    weight = 5*kg,
    default_import_location = "hyarion",

    inventory_move_sound = item_sounds.sulfur_inventory_move,
    pick_sound = item_sounds.resource_inventory_pickup,
    drop_sound = item_sounds.sulfur_inventory_move,
  }, 

-----------------------------------------------------------------
--------------------------- Hyarion
-----------------------------------------------------------------
     
  {
    type = "item",
    name = "planetaris-quartz-furnace",
    icon = "__planetaris-hyarion__/graphics/icons/quartz-furnace.png",
    subgroup = "hyarion-production",
    order = "a-a-c",
    place_result = "planetaris-quartz-furnace",
    stack_size = 50,
    weight = 20*kg,
    default_import_location = "hyarion",

    inventory_move_sound = item_sounds.fluid_inventory_move,
    pick_sound = item_sounds.brick_inventory_pickup,
    drop_sound = item_sounds.brick_inventory_move,
  },
  {
    type = "item",
    name = "planetaris-refraction-ray-collector",
    icon = "__planetaris-hyarion__/graphics/icons/refraction-ray-collector.png",
    subgroup = "hyarion-production",
    order = "a-a-a",
    place_result = "planetaris-refraction-ray-collector",
    stack_size = 50,
    weight = 20*kg,
    default_import_location = "hyarion",

    inventory_move_sound = item_sounds.fluid_inventory_move,
    pick_sound = item_sounds.brick_inventory_pickup,
    drop_sound = item_sounds.brick_inventory_move,
  },
  {
    type = "item",
    name = "planetaris-big-refraction-ray-collector",
    icon = "__planetaris-hyarion__/graphics/icons/big-refraction-ray-collector.png",
    subgroup = "hyarion-production",
    order = "a-a-b",
    place_result = "planetaris-big-refraction-ray-collector",
    stack_size = 50,
    weight = 20*kg,
    default_import_location = "hyarion",

    inventory_move_sound = item_sounds.fluid_inventory_move,
    pick_sound = item_sounds.brick_inventory_pickup,
    drop_sound = item_sounds.brick_inventory_move,
  },
  {
    type = "item",
    name = "planetaris-polisher",
    icon = "__planetaris-hyarion__/graphics/icons/polisher.png",
    subgroup = "hyarion-production",
    order = "a-b",
    place_result = "planetaris-polisher",
    stack_size = 50,
    weight = 40*kg,
    default_import_location = "hyarion",

    inventory_move_sound = item_sounds.fluid_inventory_move,
    pick_sound = item_sounds.brick_inventory_pickup,
    drop_sound = item_sounds.brick_inventory_move,
  },
     {
    type = "item",
    name = "hyarion-geode-mining-drill",
    icon = "__planetaris-hyarion__/graphics/icons/geode-mining-drill.png",
    subgroup = "extraction-machine",
    color_hint = { text = "1" },
    order = "a[items]-d[big-mining-drill]",
    inventory_move_sound = item_sounds.drill_inventory_move,
    pick_sound = item_sounds.drill_inventory_pickup,
    drop_sound = item_sounds.drill_inventory_move,
    place_result = "hyarion-geode-mining-drill",
    stack_size = 20,
    weight = 40*kg,
    random_tint_color = item_tints.iron_rust
  },

    --- Metallic
    
  {
    type = "item",
    name = "planetaris-metallic-ore",
    icon = "__planetaris-hyarion__/graphics/icons/metallic-ore.png",
    subgroup = "hyarion-basic-processes",
    order = "a-a[ore]-a",
    stack_size = 100,
    weight = 5*kg,
    default_import_location = "hyarion",

    inventory_move_sound = item_sounds.sulfur_inventory_move,
    pick_sound = item_sounds.resource_inventory_pickup,
    drop_sound = item_sounds.sulfur_inventory_move,
  },

    --- Gems

  {
    type = "item",
    name = "planetaris-polished-quartz",
    icon = "__planetaris-hyarion__/graphics/icons/polished-quartz.png",
    pictures =
    {
      { size = 64, filename = "__planetaris-hyarion__/graphics/icons/polished-quartz-1.png",   scale = 0.5, mipmap_count = 4 },
      { size = 64, filename = "__planetaris-hyarion__/graphics/icons/polished-quartz-2.png", scale = 0.5, mipmap_count = 4 },
      { size = 64, filename = "__planetaris-hyarion__/graphics/icons/polished-quartz-3.png", scale = 0.5, mipmap_count = 4 },
    },
    subgroup = "hyarion-gems",
    order = "b-b[polished]",
    stack_size = 50,
    weight = 5*kg,
    default_import_location = "hyarion",

    inventory_move_sound = item_sounds.sulfur_inventory_move,
    pick_sound = item_sounds.resource_inventory_pickup,
    drop_sound = item_sounds.sulfur_inventory_move,
  },
  {
    type = "item",
    name = "planetaris-raw-emerald",
    icon = "__planetaris-hyarion__/graphics/icons/raw-emerald-1.png",
    pictures =
    {
      { size = 64, filename = "__planetaris-hyarion__/graphics/icons/raw-emerald-1.png",   scale = 0.5, mipmap_count = 4 },
      { size = 64, filename = "__planetaris-hyarion__/graphics/icons/raw-emerald-2.png", scale = 0.5, mipmap_count = 4 },
      { size = 64, filename = "__planetaris-hyarion__/graphics/icons/raw-emerald-3.png", scale = 0.5, mipmap_count = 4 },
      { size = 64, filename = "__planetaris-hyarion__/graphics/icons/raw-emerald-4.png", scale = 0.5, mipmap_count = 4 },
    },
    subgroup = "hyarion-gems",
    order = "b-a[raw]",
    stack_size = 100,
    weight = 2*kg,
    default_import_location = "hyarion",

    inventory_move_sound = item_sounds.sulfur_inventory_move,
    pick_sound = item_sounds.resource_inventory_pickup,
    drop_sound = item_sounds.sulfur_inventory_move,
  },
  {
    type = "item",
    name = "planetaris-polished-emerald",
    icon = "__planetaris-hyarion__/graphics/icons/polished-emerald.png",
    subgroup = "hyarion-gems",
    order = "b-b[polished]",
    stack_size = 50,
    weight = 5*kg,
    default_import_location = "hyarion",

    inventory_move_sound = item_sounds.sulfur_inventory_move,
    pick_sound = item_sounds.resource_inventory_pickup,
    drop_sound = item_sounds.sulfur_inventory_move,
  },
  {
    type = "item",
    name = "planetaris-raw-ruby",
    icon = "__planetaris-hyarion__/graphics/icons/raw-ruby-1.png",
    pictures =
    {
      { size = 64, filename = "__planetaris-hyarion__/graphics/icons/raw-ruby-1.png",   scale = 0.5, mipmap_count = 4 },
      { size = 64, filename = "__planetaris-hyarion__/graphics/icons/raw-ruby-2.png", scale = 0.5, mipmap_count = 4 },
      { size = 64, filename = "__planetaris-hyarion__/graphics/icons/raw-ruby-3.png", scale = 0.5, mipmap_count = 4 },
      { size = 64, filename = "__planetaris-hyarion__/graphics/icons/raw-ruby-4.png", scale = 0.5, mipmap_count = 4 },
    },
    subgroup = "hyarion-gems",
    order = "b-a[raw]",
    stack_size = 100,
    weight = 2*kg,
    default_import_location = "hyarion",

    inventory_move_sound = item_sounds.sulfur_inventory_move,
    pick_sound = item_sounds.resource_inventory_pickup,
    drop_sound = item_sounds.sulfur_inventory_move,
  },
  {
    type = "item",
    name = "planetaris-polished-ruby",
    icon = "__planetaris-hyarion__/graphics/icons/polished-ruby.png",
    subgroup = "hyarion-gems",
    order = "b-b[polished]",
    stack_size = 50,
    weight = 5*kg,
    default_import_location = "hyarion",

    inventory_move_sound = item_sounds.sulfur_inventory_move,
    pick_sound = item_sounds.resource_inventory_pickup,
    drop_sound = item_sounds.sulfur_inventory_move,
  },
  {
    type = "item",
    name = "planetaris-raw-sapphire",
    icon = "__planetaris-hyarion__/graphics/icons/raw-sapphire-1.png",
    pictures =
    {
      { size = 64, filename = "__planetaris-hyarion__/graphics/icons/raw-sapphire-1.png",   scale = 0.5, mipmap_count = 4 },
      { size = 64, filename = "__planetaris-hyarion__/graphics/icons/raw-sapphire-2.png", scale = 0.5, mipmap_count = 4 },
      { size = 64, filename = "__planetaris-hyarion__/graphics/icons/raw-sapphire-3.png", scale = 0.5, mipmap_count = 4 },
      { size = 64, filename = "__planetaris-hyarion__/graphics/icons/raw-sapphire-4.png", scale = 0.5, mipmap_count = 4 },
    },
    subgroup = "hyarion-gems",
    order = "b-a[raw]",
    stack_size = 100,
    weight = 2*kg,
    default_import_location = "hyarion",

    inventory_move_sound = item_sounds.sulfur_inventory_move,
    pick_sound = item_sounds.resource_inventory_pickup,
    drop_sound = item_sounds.sulfur_inventory_move,
  },
  {
    type = "item",
    name = "planetaris-polished-sapphire",
    icon = "__planetaris-hyarion__/graphics/icons/polished-sapphire.png",
    subgroup = "hyarion-gems",
    order = "b-b[polished]",
    stack_size = 50,
    weight = 5*kg,
    default_import_location = "hyarion",

    inventory_move_sound = item_sounds.sulfur_inventory_move,
    pick_sound = item_sounds.resource_inventory_pickup,
    drop_sound = item_sounds.sulfur_inventory_move,
  },
  {
    type = "item",
    name = "planetaris-charged-gem",
    icon = "__planetaris-hyarion__/graphics/icons/charged-gem-1.png",
    subgroup = "hyarion-gems",
    order = "c[refraction]-d[charged]-b",
    fuel_category = "refraction",
    burnt_result = "planetaris-unstable-shard",
    fuel_value = "0.15GJ",
    stack_size = 20,
    weight = 100*kg,
    default_import_location = "hyarion",
    pictures =
    {
      { size = 64, filename = "__planetaris-hyarion__/graphics/icons/charged-gem-1.png",   scale = 0.5, mipmap_count = 4 },
      { size = 64, filename = "__planetaris-hyarion__/graphics/icons/charged-gem-2.png", scale = 0.5, mipmap_count = 4 },
      { size = 64, filename = "__planetaris-hyarion__/graphics/icons/charged-gem-3.png", scale = 0.5, mipmap_count = 4 },
      { size = 64, filename = "__planetaris-hyarion__/graphics/icons/charged-gem-4.png", scale = 0.5, mipmap_count = 4 },
    },

    spoil_ticks = 5 * minute,
    spoil_result = "planetaris-polished-quartz",

    inventory_move_sound = item_sounds.sulfur_inventory_move,
    pick_sound = item_sounds.resource_inventory_pickup,
    drop_sound = item_sounds.sulfur_inventory_move,
  },
  {
    type = "capsule",
    name = "planetaris-unstable-gem",
    icon = "__planetaris-hyarion__/graphics/icons/unstable-gem-1.png",
    subgroup = "hyarion-gems",
    order = "c[refraction]-d[charged]-d",
    flags = {"hide-from-bonus-gui"},
    capsule_action =
    {
      type = "destroy-cliffs",
      radius = 4,
      attack_parameters =
      {
        type = "projectile",
        activation_type = "throw",
        ammo_category = "grenade",
        cooldown = 30,
        projectile_creation_distance = 0.6,
        range = 10,
        ammo_type =
        {
          target_type = "position",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "projectile",
              projectile = "unstable-gem",
              starting_speed = 0.3
            }
          }
        }
      }
    },
    pictures =
    {
      { size = 64, filename = "__planetaris-hyarion__/graphics/icons/unstable-gem-1.png",   scale = 0.5, mipmap_count = 4 },
      { size = 64, filename = "__planetaris-hyarion__/graphics/icons/unstable-gem-2.png", scale = 0.5, mipmap_count = 4 },
      { size = 64, filename = "__planetaris-hyarion__/graphics/icons/unstable-gem-3.png", scale = 0.5, mipmap_count = 4 },
    },

    spoil_ticks = 15 * minute,
    spoil_to_trigger_result =
    {
      items_per_trigger = 25,
      trigger =
      {
        {
          type = "direct",
          action_delivery =
          {
            type = "instant",
            target_effects =
            {
              {
                type = "create-entity",
                entity_name = "medium-explosion"
              },
              {
                type = "create-entity",
                entity_name = "small-scorchmark-tintable",
                check_buildability = true
              },
              {
                type = "invoke-tile-trigger",
                repeat_count = 1
              },
              {
                type = "destroy-decoratives",
                from_render_layer = "decorative",
                to_render_layer = "object",
                include_soft_decoratives = true, -- soft decoratives are decoratives with grows_through_rail_path = true
                include_decals = false,
                invoke_decorative_trigger = true,
                decoratives_with_trigger_only = false, -- if true, destroys only decoratives that have trigger_effect set
                radius = 1.25 -- large radius for demostrative purposes
              }
            }
          }
        },
        {
          type = "area",
          radius = 1,
          action_delivery =
          {
            type = "instant",
            target_effects =
            {
              {
                type = "damage",
                damage = {amount = 170, type = "explosion"}
              },
              {
                type = "create-entity",
                entity_name = "explosion"
              }
            }
          }
        }
      }
    },

    stack_size = 20,
    weight = 5*kg,
    default_import_location = "hyarion",

    inventory_move_sound = item_sounds.explosive_inventory_move,
    pick_sound = item_sounds.explosive_inventory_pickup,
    drop_sound = item_sounds.explosive_inventory_move,
  },
  {
    type = "item",
    name = "planetaris-unstable-shard",
    icon = "__planetaris-hyarion__/graphics/icons/unstable-shard-1.png",
    subgroup = "hyarion-gems",
    order = "c[refraction]-d[charged]-c",
    stack_size = 50,
    weight = 2*kg,
    default_import_location = "hyarion",

    spoil_ticks = 2.5 * minute,
    spoil_to_trigger_result =
    {
      items_per_trigger = 25,
      trigger =
      {
        {
          type = "direct",
          action_delivery =
          {
            type = "instant",
            target_effects =
            {
              {
                type = "create-entity",
                entity_name = "medium-explosion"
              },
              {
                type = "create-entity",
                entity_name = "small-scorchmark-tintable",
                check_buildability = true
              },
              {
                type = "invoke-tile-trigger",
                repeat_count = 1
              },
              {
                type = "destroy-decoratives",
                from_render_layer = "decorative",
                to_render_layer = "object",
                include_soft_decoratives = true, -- soft decoratives are decoratives with grows_through_rail_path = true
                include_decals = false,
                invoke_decorative_trigger = true,
                decoratives_with_trigger_only = false, -- if true, destroys only decoratives that have trigger_effect set
                radius = 1.25 -- large radius for demostrative purposes
              }
            }
          }
        },
        {
          type = "area",
          radius = 1,
          action_delivery =
          {
            type = "instant",
            target_effects =
            {
              {
                type = "damage",
                damage = {amount = 80, type = "explosion"}
              },
              {
                type = "create-entity",
                entity_name = "explosion"
              }
            }
          }
        }
      }
    },
    pictures =
    {
      { size = 64, filename = "__planetaris-hyarion__/graphics/icons/unstable-shard-1.png",   scale = 0.5, mipmap_count = 4 },
      { size = 64, filename = "__planetaris-hyarion__/graphics/icons/unstable-shard-2.png", scale = 0.5, mipmap_count = 4 },
      { size = 64, filename = "__planetaris-hyarion__/graphics/icons/unstable-shard-3.png", scale = 0.5, mipmap_count = 4 },
    },

    inventory_move_sound = item_sounds.sulfur_inventory_move,
    pick_sound = item_sounds.resource_inventory_pickup,
    drop_sound = item_sounds.sulfur_inventory_move,
  },
   {
      type = "tool",
      name = "planetaris-polishing-science-pack",
      icon = "__planetaris-hyarion__/graphics/icons/polishing-science-pack.png",
      localised_description = {"item-description.science-pack"},
      subgroup = "science-pack",
      order = "h-c",
      stack_size = 200,
      default_import_location = "hyarion",

      inventory_move_sound = item_sounds.science_inventory_move,
      pick_sound = item_sounds.science_inventory_pickup,
      drop_sound = item_sounds.science_inventory_move,
      weight = 1*kg,
      durability = 1,
      durability_description_key = "description.science-pack-remaining-amount-key",
      factoriopedia_durability_description_key = "description.factoriopedia-science-pack-remaining-amount-key",
      durability_description_value = "description.science-pack-remaining-amount-value",
  },
    --- Refraction
  {
    type = "item",
    name = "planetaris-refraction-plant",
    icon = "__planetaris-hyarion__/graphics/icons/refraction-plant.png",
    subgroup = "hyarion-production",
    order = "a-d",
    place_result = "planetaris-refraction-plant",
    stack_size = 50,
    weight = 40*kg,
    default_import_location = "hyarion",

    inventory_move_sound = item_sounds.fluid_inventory_move,
    pick_sound = item_sounds.brick_inventory_pickup,
    drop_sound = item_sounds.brick_inventory_move,
  },
  {
    type = "item",
    name = "planetaris-fiber-optics-cable",
    icon = "__planetaris-hyarion__/graphics/icons/fiber-optics-cable.png",
    subgroup = "hyarion-advanced-processes",
    order = "c[refraction]-a",
    stack_size = 200,
    weight = 2*kg,
    default_import_location = "hyarion",

    inventory_move_sound = item_sounds.wire_inventory_move,
    pick_sound = item_sounds.wire_inventory_pickup,
    drop_sound = item_sounds.wire_inventory_move,
  },
  {
    type = "item",
    name = "planetaris-nanoscale-lens",
    icon = "__planetaris-hyarion__/graphics/icons/nanoscale-lens.png",
    subgroup = "hyarion-advanced-processes",
    order = "c[refraction]-b",
    stack_size = 100,
    weight = 10*kg,
    default_import_location = "hyarion",

    inventory_move_sound = item_sounds.wire_inventory_move,
    pick_sound = item_sounds.wire_inventory_pickup,
    drop_sound = item_sounds.wire_inventory_move,
  },
  {
    type = "item",
    name = "planetaris-ruby-laser",
    icon = "__planetaris-hyarion__/graphics/icons/ruby-laser.png",
    subgroup = "hyarion-advanced-processes",
    order = "c[refraction]-c",
    stack_size = 50,
    weight = 10*kg,
    default_import_location = "hyarion",

    inventory_move_sound = item_sounds.wire_inventory_move,
    pick_sound = item_sounds.wire_inventory_pickup,
    drop_sound = item_sounds.wire_inventory_move,
  },
  {
    type = "item",
    name = "planetaris-crystalization-motor",
    icon = "__planetaris-hyarion__/graphics/icons/crystalization-motor.png",
    subgroup = "hyarion-advanced-processes",
    order = "c[refraction]-d-a",
    stack_size = 200,
    weight = 5*kg,
    default_import_location = "hyarion",

    inventory_move_sound = item_sounds.wire_inventory_move,
    pick_sound = item_sounds.wire_inventory_pickup,
    drop_sound = item_sounds.wire_inventory_move,
  },
  {
    type = "tool",
    name = "planetaris-refraction-science-pack",
    icon = "__planetaris-hyarion__/graphics/icons/refraction-science-pack.png",
      subgroup = "science-pack",
      order = "h-d-b",
    stack_size = 200,
    default_import_location = "hyarion",

    inventory_move_sound = item_sounds.science_inventory_move,
    pick_sound = item_sounds.science_inventory_pickup,
    drop_sound = item_sounds.science_inventory_move,
    weight = 1*kg,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount-key",
    factoriopedia_durability_description_key = "description.factoriopedia-science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value",
  },
    {
    type = "item",
    name = "planetaris-particle-manipulator",
    icon = "__planetaris-hyarion__/graphics/icons/particle-manipulator.png",
    subgroup = "hyarion-production",
    order = "a-c",
    place_result = "planetaris-particle-manipulator",
    stack_size = 50,
    weight = 40*kg,
    default_import_location = "hyarion",

    inventory_move_sound = item_sounds.wire_inventory_move,
    pick_sound = item_sounds.wire_inventory_pickup,
    drop_sound = item_sounds.wire_inventory_move,
  }, 
  {
    type = "item",
    name = "planetaris-beryl",
    icon = "__planetaris-hyarion__/graphics/icons/beryl.png",
    subgroup = "hyarion-advanced-processes",
    order = "d[beryl]-a",
    stack_size = 100,
    weight = 5*kg,
    default_import_location = "hyarion",

    inventory_move_sound = item_sounds.wire_inventory_move,
    pick_sound = item_sounds.wire_inventory_pickup,
    drop_sound = item_sounds.wire_inventory_move,
  },
  {
    type = "item",
    name = "planetaris-beryllium-plate",
    icon = "__planetaris-hyarion__/graphics/icons/beryllium-plate.png",
    subgroup = "hyarion-advanced-processes",
    order = "d[beryl]-b",
    stack_size = 100,
    weight = 5*kg,
    default_import_location = "hyarion",

    inventory_move_sound = item_sounds.wire_inventory_move,
    pick_sound = item_sounds.wire_inventory_pickup,
    drop_sound = item_sounds.wire_inventory_move,
  },
  {
    type = "item",
    name = "planetaris-beryllium-nitride",
    icon = "__planetaris-hyarion__/graphics/icons/beryllium-nitride.png",
    subgroup = "hyarion-advanced-processes",
    order = "d[beryl]-c",
    stack_size = 50,
    weight = 10*kg,
    default_import_location = "hyarion",

    inventory_move_sound = item_sounds.wire_inventory_move,
    pick_sound = item_sounds.wire_inventory_pickup,
    drop_sound = item_sounds.wire_inventory_move,
  },
  {
    type = "item",
    name = "planetaris-refractory-ceramics",
    icon = "__planetaris-hyarion__/graphics/icons/refractory-ceramics.png",
    subgroup = "hyarion-advanced-processes",
    order = "e[post-refraction]-a",
    stack_size = 50,
    weight = 20*kg,
    default_import_location = "hyarion",

    inventory_move_sound = item_sounds.wire_inventory_move,
    pick_sound = item_sounds.wire_inventory_pickup,
    drop_sound = item_sounds.wire_inventory_move,
  },

    --- space facilities

  {
    type = "item",
    name = "planetaris-space-manufacturer",
    icon = "__planetaris-hyarion__/graphics/icons/space-manufacturer.png",
    subgroup = "space-facilities",
    order = "a-a",
    place_result = "planetaris-space-manufacturer",
    stack_size = 5,
    weight = 1000*kg,
    default_import_location = "hyarion",

    inventory_move_sound = item_sounds.steam_inventory_move,
    pick_sound = item_sounds.steam_inventory_pickup,
    drop_sound = item_sounds.steam_inventory_move,
  },  
  {
    type = "item",
    name = "planetaris-beryllium-coating",
    icon = "__planetaris-hyarion__/graphics/icons/beryllium-coating.png",
    subgroup = "space-facilities",
    order = "a-b",
    place_result = "planetaris-beryllium-coating",
    stack_size = 100,
    weight = 20*kg,
    default_import_location = "hyarion",

    inventory_move_sound = item_sounds.concrete_inventory_move,
    pick_sound = item_sounds.concrete_inventory_pickup,
    drop_sound = item_sounds.concrete_inventory_move,
  },   
})