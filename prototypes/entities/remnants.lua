data:extend({
{
    type = "corpse",
    name = "planetaris-assembling-machine-4-remnants",
    icon = "__planetaris-hyarion__/graphics/icons/assembling-machine-4.png",
    flags = {"placeable-neutral", "not-on-map"},
    hidden_in_factoriopedia = true,
    subgroup = "production-machine-remnants",
    order = "a-a-a",
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    tile_width = 3,
    tile_height = 3,
    selectable_in_game = false,
    time_before_removed = 60 * 60 * 15, -- 15 minutes
    expires = false,
    final_render_layer = "remnants",
    animation = make_rotated_animation_variations_from_sheet (3,
    {
      filename = "__planetaris-hyarion__/graphics/entity/assembling-machine-4/remnants/assembling-machine-4-remnants.png",
      line_length = 1,
      width = 328,
      height = 282,
      direction_count = 1,
      shift = util.by_pixel(0, 9.5),
      scale = 0.5
    })
  },
  
-------------------Hyarion

  {
    type = "corpse",
    name = "planetaris-quartz-furnace-remnants",
    icon = "__planetaris-hyarion__/graphics/icons/quartz-furnace.png",
    flags = {"placeable-neutral", "building-direction-8-way", "not-on-map"},
    hidden_in_factoriopedia = true,
    subgroup = "smelting-machine-remnants",
    order = "a-a-a",
    selection_box = {{-1, -1}, {1, 1}},
    tile_width = 2,
    tile_height = 2,
    selectable_in_game = false,
    time_before_removed = 60 * 60 * 15, -- 15 minutes
    expires = false,
    final_render_layer = "remnants",
    remove_on_tile_placement = false,
    animation = make_rotated_animation_variations_from_sheet(1,
    {
      filename = "__planetaris-hyarion__/graphics/entity/quartz-furnace/remnants/quartz-furnace-remnants.png",
      line_length = 1,
      width = 152,
      height = 130,
      direction_count = 1,
      shift = util.by_pixel(0, 9.5),
      scale = 0.5
    })
  },
  {
    type = "corpse",
    name = "planetaris-beryllium-coating-remnants",
    localised_name = {"remnant-name", {"entity-name.stone-wall"}},
    icon = "__base__/graphics/icons/wall.png",
    hidden_in_factoriopedia = true,
    flags = {"placeable-neutral", "not-on-map"},
    subgroup = "defensive-structure-remnants",
    order = "a-a-a",
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    tile_width = 1,
    tile_height = 1,
    selectable_in_game = false,
    time_before_removed = 60 * 60 * 15, -- 15 minutes
    expires = false,
    final_render_layer = "remnants",
    remove_on_tile_placement = false,
    animation = make_rotated_animation_variations_from_sheet(4,
    {
      filename = "__planetaris-hyarion__/graphics/entity/beryllium-coating/remnants/wall-remnants.png",
      width = 118,
      height = 114,
      line_length = 1,
      direction_count = 2,
      shift = util.by_pixel(3, 7.5), --was 3.5
      scale = 0.5
    })
  },
  {
    type = "corpse",
    name = "planetaris-ruby-laser-turret-remnants",
    icon = "__base__/graphics/icons/laser-turret.png",
    flags = {"placeable-neutral", "not-on-map"},
    hidden_in_factoriopedia = true,
    subgroup = "defensive-structure-remnants",
    order = "a-d-a-b",
    selection_box = {{-1, -1}, {1, 1}},
    tile_width = 2,
    tile_height = 2,
    selectable_in_game = false,
    time_before_removed = 60 * 60 * 15, -- 15 minutes
    expires = false,
    final_render_layer = "remnants",
    remove_on_tile_placement = false,
    animation = make_rotated_animation_variations_from_sheet (3,
    {
      layers =
      {
        {
          priority = "low",
          filename = "__base__/graphics/entity/laser-turret/remnants/mask/laser-turret-remnants-mask.png",
          width = 114,
          height = 94,
          tint = {1, 0, 0, 1},
          direction_count = 1,
          shift = util.by_pixel(4, -2.5),
          scale = 0.5
        },
        {
          filename = "__base__/graphics/entity/laser-turret/remnants/laser-turret-remnants.png",
          line_length = 1,
          width = 198,
          height = 194,
          direction_count = 1,
          shift = util.by_pixel(2.5, -2),
          scale = 0.5
        }
      }
    })
  },
})