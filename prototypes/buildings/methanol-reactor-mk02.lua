local pipes = {
    south = {
        filename = "__pycoalprocessinggraphics__/graphics/entity/methanol-reactor/pipe-ending-down.png",
        priority = "extra-high",
        width = 40,
        height = 32
    }
}

RECIPE {
    type = "recipe",
    name = "methanol-reactor-mk02",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"methanol-reactor", 1},
        {"advanced-circuit", 25},
        {"plastic-bar", 50},
        {"nexelit-plate", 15},
        {"engine-unit", 8},
    },
    results = {
        {"methanol-reactor-mk02", 1}
    }
}

ITEM {
    type = "item",
    name = "methanol-reactor-mk02",
    icon = "__pycoalprocessinggraphics__/graphics/icons/methanol-reactor-mk02.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-cp-buildings-mk02",
    order = "q",
    place_result = "methanol-reactor-mk02",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "methanol-reactor-mk02",
    icon = "__pycoalprocessinggraphics__/graphics/icons/methanol-reactor-mk02.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "methanol-reactor-mk02"},
    fast_replaceable_group = "methanol-reactor",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-2.75, -2.75}, {2.75, 2.75}},
    selection_box = {{-3, -3}, {3, 3}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"methanol"},
    crafting_speed = 2,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.06,
    },
    energy_usage = "600kW",
    animation = {
        filename = "__pycoalprocessinggraphics__/graphics/entity/methanol-reactor/methanol-off-mk02.png",
        width = 202,
        height = 247,
        frame_count = 1,
        shift = {0.15, -0.79}
    },
    working_visualisations = {
        {
            north_position = {0.15, -0.79},
            west_position = {0.15, -0.79},
            south_position = {0.15, -0.79},
            east_position = {0.15, -0.79},
            animation = {
                filename = "__pycoalprocessinggraphics__/graphics/entity/methanol-reactor/methanol-anim-mk02.png",
                frame_count = 50,
                line_length = 10,
                width = 202,
                height = 247,
                animation_speed = 0.4
            }
        }
    },
    fluid_boxes = {
        --North, left
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.05, -0.75}, nil, nil, pipes),
            pipe_covers = py.pipe_covers(true, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-0.5, -3.5}}}
        },
        --North, right
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.05, -0.75}, nil, nil, pipes),
            pipe_covers = py.pipe_covers(true, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {0.5, -3.5}}}
        },
        --South, left
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.05, -0.75}, nil, nil, pipes),
            pipe_covers = py.pipe_covers(true, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-0.5, 3.5}}}
        },
        --South, right
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.05, -0.75}, nil, nil, pipes),
            pipe_covers = py.pipe_covers(true, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {0.5, 3.5}}}
        },
        --West, top
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.05, -0.75}, nil, nil, pipes),
            pipe_covers = py.pipe_covers(true, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-3.5, -0.5}}}
        },
        --West, bottom
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.05, -0.75}, nil, nil, pipes),
            pipe_covers = py.pipe_covers(true, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-3.5, 0.5}}}
        },
        --East, top
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.05, -0.75}, nil, nil, pipes),
            pipe_covers = py.pipe_covers(true, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {3.5, -0.5}}}
        },
        --East, bottom
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.05, -0.75}, nil, nil, pipes),
            pipe_covers = py.pipe_covers(true, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {3.5, 0.5}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pycoalprocessinggraphics__/sounds/methanol-reactor.ogg"},
        idle_sound = {filename = "__pycoalprocessinggraphics__/sounds/methanol-reactor.ogg", volume = 0.3},
        apparent_volume = 2.5
    },
    next_upgrade = 'methanol-reactor-mk03'
}
