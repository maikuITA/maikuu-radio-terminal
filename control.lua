-- control.lua

local function setup_linked_chest(entity)
    game.print("1 Evento scattato per: " .. event.created_entity.name)
    if entity and entity.valid and entity.name == "radio-terminal" then
        entity.link_id = 1
    end
end

-- Gestisce il piazzamento tramite Script o Editor
script.on_event(defines.events.script_raised_built, function(event)
    game.print("2 Evento scattato per: " .. event.created_entity.name)
    setup_linked_chest(event.entity)
end)

-- Gestisce il piazzamento tramite copia/incolla o annulla (Undo)
script.on_event(defines.events.on_space_platform_built_entity, function(event)
    game.print("3 Evento scattato per: " .. event.created_entity.name)
    setup_linked_chest(event.created_entity)
end)