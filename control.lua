local function on_built_collector(event)
	local collector = event.entity or event.created_entity
	if not (collector and collector.valid and collector.name == "planetaris-big-refraction-ray-collector") then
		return
	end
	storage.big_refraction_ray_collector = storage.big_refraction_ray_collector or {}
	storage.big_refraction_ray_collector[collector.unit_number] = { 
		collector = collector, 
		tank = nil,
		last_energy = 0  -- Track last energy level
	}
end

local function on_removed_collector(event)
	local collector = event.entity
	if not (collector and collector.valid and collector.name == "planetaris-big-refraction-ray-collector") then
		return
	end

	local data = storage.big_refraction_ray_collector and storage.big_refraction_ray_collector[collector.unit_number]
	if data and data.tank and data.tank.valid then
		data.tank.destroy()
	end
	if storage.big_refraction_ray_collector then
		storage.big_refraction_ray_collector[collector.unit_number] = nil
	end
end

-- Check tank exists AND detect lightning strikes
script.on_nth_tick(60, function()
	if not storage.big_refraction_ray_collector then
		return
	end

	for id, data in pairs(storage.big_refraction_ray_collector) do
		local collector = data.collector
		if not (collector and collector.valid) then
			if data.tank and data.tank.valid then
				data.tank.destroy()
			end
			storage.big_refraction_ray_collector[id] = nil
		else
			local tank = data.tank

			-- Create tank if it doesn't exist
			if not (tank and tank.valid) then
				local tank_position = {x = collector.position.x, y = collector.position.y}
				
				local new_tank = collector.surface.create_entity({
					name = "hidden-big-refraction-ray-collector-tank",
					position = tank_position,
					direction = defines.direction.south,
					force = collector.force,
					create_build_effect_smoke = false,
					move_stuck_players = true,
				})
				if new_tank then
					new_tank.destructible = false
					data.tank = new_tank
					tank = new_tank
				end
			end

			-- Detect lightning strike by monitoring energy changes
			if tank and tank.valid then
				local current_energy = collector.energy
				local last_energy = data.last_energy or 0
				local energy_threshold = 1000000

				-- If energy increased, lightning struck
				if current_energy > last_energy + energy_threshold then
					tank.insert_fluid({
						name = "planetaris-refraction-light",
						amount = 6,
						temperature = 0
					})
				end

				-- Update last energy
				data.last_energy = current_energy
			end
		end
	end
end)

------------------------------ Initialization

local function on_init(event)
	storage.big_refraction_ray_collector = storage.big_refraction_ray_collector or {}
end
script.on_init(on_init)

local function on_configuration_changed(event)
	storage.big_refraction_ray_collector = storage.big_refraction_ray_collector or {}
end
script.on_configuration_changed(on_configuration_changed)

------------------------------ Event handlers

script.on_event(defines.events.on_built_entity, function(event)
	local e = event.created_entity or event.entity
	if not e then return end
	on_built_collector(event)
end)

script.on_event(defines.events.on_robot_built_entity, function(event)
	local e = event.created_entity or event.entity
	if not e then return end
	on_built_collector(event)
end)

script.on_event(
	{ defines.events.on_entity_died, defines.events.on_player_mined_entity, defines.events.on_robot_mined_entity },
	function(event)
		local e = event.entity
		if not e then return end
		on_removed_collector(event)
	end
)