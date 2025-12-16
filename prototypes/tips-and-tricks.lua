local simulations = require("__space-age__/prototypes/tips-and-tricks-simulations")

local function hyarion_simulation()
    return
     {
        init_update_count = 200,
        planet = "hyarion",
        mute_wind_sounds = false,
        init =
        [[
            game.simulation.camera_position = {0, 1.5}

            for x = -11, 10, 1 do
            for y = -12, 12 do
                game.surfaces[1].set_tiles{{position = {x, y}, name = "hyarion-soil-light"}}
            end
            end

            for x = 2, 10, 1 do
            for y = -10, 10 do
                game.surfaces[1].set_tiles{{position = {x, y}, name = "hyarion-crystal-light"}}
            end
            end

             for k, position in pairs ({
                {1, -10},{1, -9},{1, -8},{1, -7},{1, 0},{1, 1},{1, 2},{1, 3},{1, 4},{1, 5},{1, 6},{1, 7},{1, 8},{1, 9},{1, 10},
                {0, -10},{0, -9},{0, -8},{0, 2},{0, 3},{0, 4},{0, 5},{0, 6},{0, 7},{0, 8},{0, 9},{0, 10},
                {-1, -10},{-1, -9},{-1, 4},{-1, 5},{-1, 6},{-1, 7},{-1, 8},{0-1, 9},{-1, 10},
                }) do
            game.surfaces[1].set_tiles{{position = position, name = "hyarion-crystal-light"}}
            end

             for k, position in pairs ({
                {-8, 0},{-9, 0},{-10, 0},{-11, 0},
                {-7, 1},{-8, 1},{-9, 1},{-10, 1},{-11, 1},
                {-7, 2},{-8, 2},{-9, 2},{-10, 2},{-10, 2},
                {-6, 3},{-7, 3},{-8, 3},{-9, 3},{-10, 3},{-11, 3},
                {-5, 4},{-6, 4},{-7, 4},{-8, 4},{-9, 4},{-10, 4},{-11, 4},
                {-5, 5},{-6, 5},{-7, 5},{-8, 5},{-9, 5},{-10, 5},{-11, 5},
                {-4, 6},{-5, 6},{-6, 6},{-7, 6},{-8, 6},{-9, 6},{-10, 6},{-11, 6}
                }) do
            game.surfaces[1].set_tiles{{position = position, name = "hyarion-folds"}}
            end

            for k, position in pairs ({
                {-12, -5},{-11, -5},{-10, -5},{-9, -5},{-9, -5},{-8, -5},
                {-12, -4},{-11, -4},{-10, -4},{-9, -4},{-9, -4},{-8, -4},
                {-12, -3},{-11, -3},{-10, -3},{-9, -3},{-9, -3},
                {-12, -2},{-11, -2},{-10, -2},{-9, -2},{-9, -2}}) do
            game.surfaces[1].set_tiles{{position = position, name = "hyarion-cracks-warm"}}
            end

            for k, position in pairs ({
                {-12, 7},{-12, 6},{-12, 5},{-12, 4},{-12, 3},
                {-11, 7},{-11, 6},{-11, 5},{-11, 4},{-11, 3},
                {-10, 7},{-10, 6},{-10, 5},{-10, 4},
                {-9, 7},{-9, 6},{-9, 5},{-9, 4},
                {-8, 7},{-8, 6},
                }) do
            game.surfaces[1].set_tiles{{position = position, name = "lava"}}
            end

            local create_list = {}
                for k, position in pairs ({{-10, -1},{2, 2}}) do
                table.insert(create_list, { name = "hyarion-crack-decal-large", position = position, amount = 1})
                end
                for k, position in pairs ({{8,-4},{8,-3},{8,-5},{9,-4},{9,-4}}) do
                table.insert(create_list, { name = "hyarion-small-crystal", position = position, amount = 1})
                end
                for k, position in pairs ({{-3, 2}}) do
                table.insert(create_list, { name = "hyarion-crack-decal", position = position, amount = 1})
                end
                for k, position in pairs ({{-4,-3},{-5,-2},{-5,0},{-4,-3},{-3,-3},{-2,-1},{-3,-4},{-4,-5},{-3,-6}}) do
                table.insert(create_list, { name = "hyarion-tiny-rock-cluster", position = position, amount = 1})
                end
                for k, position in pairs ({{-3, -1},{-5, -1},{-8, -2}}) do
                table.insert(create_list, { name = "hyarion-rock-decal-large", position = position, amount = 1})
                end
            game.surfaces[1].create_decoratives{decoratives = create_list}

            game.surfaces[1].create_entity{name = "ruby-geode", position = {4, -1}}
            game.surfaces[1].create_entity{name = "sapphire-geode", position = {6, 6}}
            game.surfaces[1].create_entity{name = "hyarion-pointy-crystal", position = {3, -4}}
            game.surfaces[1].create_entity{name = "hyarion-pointy-crystal", position = {10, 5}}
            game.surfaces[1].create_entity{name = "hyarion-huge-volcanic-rock", position = {-5,-2}}
            game.surfaces[1].create_entity{name = "hyarion-huge-volcanic-rock", position = {-6,-3}}
            game.surfaces[1].create_entity{name = "hyarion-big-volcanic-rock", position = {-6,-1}}
            game.surfaces[1].create_entity{name = "hyarion-big-volcanic-rock", position = {-4,-3}}
            game.surfaces[1].create_entity{name = "hyarion-chimney-truncated", position = {8, 1}}
            game.surfaces[1].create_entity{name = "hyarion-chimney-truncated", position = {6, 4}}
            game.surfaces[1].create_entity{name = "hyarion-chimney-cold", position = {2, 5}}
        ]]
        }
end

local function hyarion_refraction()
    return
     {
        init_update_count = 200,
        planet = "hyarion",
        mute_wind_sounds = false,
        init =
        [[
            require("__core__/lualib/story")

            game.simulation.camera_position = {0, 1.5}
            game.forces.player.recipes["planetaris-pure-light"].enabled = true

            for x = -11, 10, 1 do
            for y = -12, 12 do
                game.surfaces[1].set_tiles{{position = {x, y}, name = "hyarion-folds"}}
            end
            end

            for x = 2, 10, 1 do
            for y = -10, 10 do
                game.surfaces[1].set_tiles{{position = {x, y}, name = "hyarion-crystal-light"}}
            end
            end

             for k, position in pairs ({
                {1, -10},{1, -9},{1, -8},{1, -7},{1, 0},{1, 1},{1, 2},{1, 3},{1, 4},{1, 5},{1, 6},{1, 7},{1, 8},{1, 9},{1, 10},
                {0, -10},{0, -9},{0, -8},{0, 2},{0, 3},{0, 4},{0, 5},{0, 6},{0, 7},{0, 8},{0, 9},{0, 10},
                {-1, -10},{-1, -9},{-1, 4},{-1, 5},{-1, 6},{-1, 7},{-1, 8},{0-1, 9},{-1, 10},
                }) do
            game.surfaces[1].set_tiles{{position = position, name = "hyarion-soil-light"}}
            end

             for k, position in pairs ({
                {-8, 0},{-9, 0},{-10, 0},{-11, 0},
                {-7, 1},{-8, 1},{-9, 1},{-10, 1},{-11, 1},
                {-7, 2},{-8, 2},{-9, 2},{-10, 2},{-10, 2},
                {-6, 3},{-7, 3},{-8, 3},{-9, 3},{-10, 3},{-11, 3},
                {-5, 4},{-6, 4},{-7, 4},{-8, 4},{-9, 4},{-10, 4},{-11, 4},
                {-5, 5},{-6, 5},{-7, 5},{-8, 5},{-9, 5},{-10, 5},{-11, 5},
                {-4, 6},{-5, 6},{-6, 6},{-7, 6},{-8, 6},{-9, 6},{-10, 6},{-11, 6}
                }) do
            game.surfaces[1].set_tiles{{position = position, name = "hyarion-crystal-light"}}
            end

            for k, position in pairs ({
                {-12, -5},{-11, -5},{-10, -5},{-9, -5},{-9, -5},{-8, -5},
                {-12, -4},{-11, -4},{-10, -4},{-9, -4},{-9, -4},{-8, -4},
                {-12, -3},{-11, -3},{-10, -3},{-9, -3},{-9, -3},
                {-12, -2},{-11, -2},{-10, -2},{-9, -2},{-9, -2}}) do
            game.surfaces[1].set_tiles{{position = position, name = "hyarion-cracks-warm"}}
            end

            for k, position in pairs ({
                {-12, 7},{-12, 6},{-12, 5},{-12, 4},{-12, 3},
                {-11, 7},{-11, 6},{-11, 5},{-11, 4},{-11, 3},
                {-10, 7},{-10, 6},{-10, 5},{-10, 4},
                {-9, 7},{-9, 6},{-9, 5},{-9, 4},
                {-8, 7},{-8, 6},
                }) do
            game.surfaces[1].set_tiles{{position = position, name = "hyarion-cracks-warm"}}
            end

            local create_list = {}
                for k, position in pairs ({{-10, -1},{2, 3}}) do
                table.insert(create_list, { name = "hyarion-crack-decal-large", position = position, amount = 1})
                end
                for k, position in pairs ({{9,-4},{9,-3},{7,-5},{10,-4},{9,-4}}) do
                table.insert(create_list, { name = "hyarion-small-crystal", position = position, amount = 1})
                end
                for k, position in pairs ({{-2, 3}}) do
                table.insert(create_list, { name = "hyarion-crack-decal", position = position, amount = 1})
                end
                for k, position in pairs ({{-4,-3},{-5,-2},{-5,0},{-4,-3},{-3,-3},{-2,-1},{-3,-4},{-4,-5},{-3,-6}}) do
                table.insert(create_list, { name = "hyarion-tiny-rock-cluster", position = position, amount = 1})
                end
                for k, position in pairs ({{-3, -1},{-5, -1},{-8, -2}}) do
                table.insert(create_list, { name = "hyarion-rock-decal-large", position = position, amount = 1})
                end
            game.surfaces[1].create_decoratives{decoratives = create_list}

            game.surfaces[1].create_entities_from_blueprint_string
            {
            string = "0eNqtl+tyoyAUgN+F39jxgre8SqeTQYOWWQIuYLfZTt59D0lrM5Wsl5h/Efm+w4ED8oEq0bNOc2nR7gPxWkmDds8fyPBWUuGeSXpkaIc6QSWzVHMTaNZoWluuZOCeWnTGiMsDe0e76Ixn922ZZJpapW/6x+cXjJi03HJ2DeTy57SX/bFiGgT4C8plwyU0BfUrMxZh1CnDHdiJAVWQpxSjE3SJ06f0orh22BtmLZetcS9qdlRvbN9Dm7BMs8OeW3aEpoYKwzC6Pr6GMh5NI3qloQPYa9W7HMYhRkd1cO9RGwhGL6EN2Xk5uwT9GFM8jIm9d5oZEwhFD9DyvzHlMKID16y+NhcY2VPnGKq3Xe/mZORJvj0C+mleB24K2lMA0890Q2s2VpbxpzAbCau+aZjeG/4XmFE4/DxqMqhNXxlLL4yxiwwuDyMdpclqKk2ntA0qJnxLIB3SVVyWwE38xGPIlhvIMkO+3JAvMxTLDdkyQzkYql78grVjmLbe1fodeglgDyoKsaeqKt7e7hOaQo0r4Zas8tbE1ZFEXkPkMzQcGgPVWV6boKaVYP9bPEl0J/p4NTubZCdr2WUyySar2dM5SVezySQ7W82ezneO555WY3o5rMDJ4okKPOdEHTvCT0cCDjDw7gei6zULBG9fXefrC/vfPRUghxel0kc4kn0BlYu2ZvD7TrBwg5lJ/DMTRxuw4zvseIMqS++wt6hgcodNNsjJPXa6wZ785ci9hmyDfTO/E32+mp1PsovV7GKSXW7AzvzsJJx7YpfhJCta/H1xA81/fl8UPsUWRXkv/GSDbd77dZqQRxJTzkpM+oiimKXIHi/+4agovHnKHxgEiWYNonhEEc5SfJerULINXinc8A6zKotczjm45v4BhbtYPhOcYjiG0xd46G6frk6HWzlGb3D/vIDSLC5JWaYFrJcyJOfzP/wePmw=",
            position = {-1, 2}
            }
                local story_table =
    {
      {
        {
          name = "start",
          condition = story_elapsed_check(2),
          action = function() game.surfaces[1].execute_lightning{name = "planetaris-refraction-ray", position = {-7, 2}} end
        },
        {
          condition = story_elapsed_check(1.5),
          action = function() game.surfaces[1].execute_lightning{name = "planetaris-refraction-ray", position = {-2, -4}} end
        },
        {
          condition = story_elapsed_check(3),
          action = function() game.surfaces[1].execute_lightning{name = "planetaris-refraction-ray", position = {8, 5}} end
        },
        {
          condition = story_elapsed_check(1),
          action = function() game.surfaces[1].execute_lightning{name = "planetaris-refraction-ray", position = {-3, 2}} end
        },
        {
          condition = story_elapsed_check(2),
          action = function() game.surfaces[1].execute_lightning{name = "planetaris-refraction-ray", position = {-6, -1}} end
        },
        {
          condition = story_elapsed_check(1),
          action = function() game.surfaces[1].execute_lightning{name = "planetaris-refraction-ray", position = {6, 4}} end
        },
        {
          condition = story_elapsed_check(1),
          action = function() story_jump_to(storage.story, "start") end
        }
      }
    }
    tip_story_init(story_table)
        ]]
        }
end

data:extend ({
    {
    type = "tips-and-tricks-item",
    name = "hyarion-briefing",
    category = "space-age",
    tag = "[planet=hyarion]",
    indent = 0,
    order = "e-a-b",
    trigger = {
        type = "research",
        technology = "planet-discovery-hyarion"
    },
    skip_trigger = {
        type = "or",
        triggers = {
            {
                type = "change-surface",
                surface = "hyarion"
            },
        }
    },
    simulation = hyarion_simulation(),
    },
        {
    type = "tips-and-tricks-item",
    name = "hyarion-refraction",
    category = "space-age",
    tag = "[item=planetaris-charged-fluorite]",
    indent = 1,
    order = "e-a-b-a",
    trigger = {
        type = "research",
        technology = "planetaris-refraction-plant"
    },
    skip_trigger = {
        type = "or",
        triggers = {
            {
                type = "change-surface",
                surface = "hyarion"
            },
        }
    },
    simulation = hyarion_refraction(),
    },
    {
    type = "tips-and-tricks-item",
    name = "hyarion-unstable-gem",
    category = "space-age",
    tag = "[item=planetaris-unstable-gem]",
    indent = 1,
    order = "e-a-b-b",
    trigger = {
        type = "research",
        technology = "planetaris-unstable-gems"
    },
    skip_trigger = {
        type = "or",
        triggers = {
            {
                type = "change-surface",
                surface = "hyarion"
            },
        }
    },
    simulation = hyarion_simulation(),
    },
})