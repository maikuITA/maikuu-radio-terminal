-- data.lua

require("radio-terminal")

local radio_terminal_item = {
    type = "item",
    name = "radio-terminal",
    icon = "__maikuu-radio-terminal__/graphics/icons/radio-terminal-icon.png",
    icon_size = 64,
    subgroup = "storage",
    order = "a[items]-b[radio-terminal]",
    place_result = "radio-terminal",
    stack_size = 50
}

data:extend({radio_terminal_item})

local radio_terminal_recipe = {
    type = "recipe",
    name = "radio-terminal",
    ingredients =
    {
        {type = "item", name = "iron-ore", amount = 1}
    },
    results = {{type ="item", name = "radio-terminal", amount = 1}},
    energy_required = 1,
    allow_productivity = true,
    enabled = false
}

data:extend({radio_terminal_recipe})


local radio_terminal = data.raw["linked-container"]["radio-terminal"]
radio_terminal.selectable_in_game = false
radio_terminal.allow_copy_paste = false
