require ("__base__/prototypes/entity/laser-sounds")

data.extend{(
  {
    type = "active-defense-equipment",
    name = "planetaris-personal-ruby-laser-defense-equipment",
      localised_name = {"item-name.planetaris-personal-ruby-laser-defense-equipment"},
    localised_description = {"item-description.planetaris-personal-ruby-laser-defense-equipment"},
    sprite =
    {
      filename = "__planetaris-hyarion__/graphics/equipment/personal-ruby-laser-defense-equipment.png",
      width = 128,
      height = 128,
      priority = "medium",
      scale = 0.5
    },
    shape =
    {
      width = 3,
      height = 2,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      buffer_capacity = "440kJ"
    },

    attack_parameters =
    {
      type = "beam",
      cooldown = 45,
      range = 25,
      range_mode = "center-to-bounding-box",
      damage_modifier = 2,
      ammo_category = "laser",
      ammo_type =
      {
        energy_consumption = "90kJ",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "beam",
            beam = "laser-beam",
            max_length = 25,
            duration = 45,
            source_offset = {0, -1.31439 }
          }
        }
      }
    },

    automatic = true,
    categories = {"armor"}
  }
)}