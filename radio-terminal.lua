-- Radio terminal
data:extend({
    {
        type = "linked-container",
        name = "radio-terminal",
        icon = "__maikuu-radio-terminal__/graphics/icons/radio-terminal-icon.png",
        icon_size = 64,
        minable = {mining_time = 0.2, result = "radio-terminal"},
        max_health = 350,
        corpse = "electric-furnace-remnants",
        dying_explosion = data.raw["furnace"]["electric-furnace"].dying_explosion,
        collision_box = {{-0.7, -1.2}, {0.7, 1.2}},
        selection_box = {{0, 0}, {0, 0}}, -- Rende l'entità non selezionabile
        inventory_size = 1,
        flags = {"placeable-player", "player-creation"},
        picture = {
        layers = {
            {
            filename = "__maikuu-radio-terminal__/graphics/entity/radio-terminal/radio-terminal-hr-animation-1.png",
            priority = "high",
            width = 160,
            height = 290,
            frame_count = 20,
            line_length = 8,
            shift = util.by_pixel(0, 0),
            scale = 0.5
            },
            {
            filename = "__maikuu-radio-terminal__/graphics/entity/radio-terminal/radio-terminal-hr-shadow.png",
            priority = "high",
            width = 400,
            height = 350,
            frame_count = 1,
            line_length = 1,
            repeat_count = 20,
            draw_as_shadow = true,
            shift = util.by_pixel(0, 0),
            scale = 0.5
            },
            {
            filename = "__maikuu-radio-terminal__/graphics/entity/radio-terminal/radio-terminal-hr-emission-1.png",
            priority = "high",
            width = 160,
            height = 290,
            frame_count = 20,
            line_length = 8,
            draw_as_glow = true,
            blend_mode = "additive",
            shift = util.by_pixel(0, 0),
            scale = 0.5
            }
        }
        }
    }
})