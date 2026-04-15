-- control.lua

local function setup_linked_chest(entity)
    if entity and entity.valid and entity.name == "radio-terminal" then
        entity.link_id = 1
    end
end

-- Gestisce il piazzamento tramite Script o Editor
script.on_event(defines.events.script_raised_built, function(event)
    local entity = event.entity or event.created_entity
    setup_linked_chest(entity)
end)

-- Gestisce il piazzamento tramite copia/incolla o annulla (Undo)
script.on_event(defines.events.on_space_platform_built_entity, function(event)
    local entity = event.entity or event.created_entity
    setup_linked_chest(entity)
end)