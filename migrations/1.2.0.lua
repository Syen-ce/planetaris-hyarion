for _, surface in pairs(game.surfaces) do
    local entities = surface.find_entities_filtered{name = "planetaris-big-refraction-ray-collector"}
    
    for _, entity in pairs(entities) do
        if entity.valid then
            -- Store the entity's position, direction, and force
            local position = entity.position
            local direction = entity.direction
            local force = entity.force
            
            -- Destroy the old entity
            entity.destroy()
            
            -- Create the new entity at the same position
            surface.create_entity{
                name = "planetaris-big-refraction-ray-collector",
                position = position,
                direction = direction,
                force = force,
                raise_built = true
            }
        end
    end
end