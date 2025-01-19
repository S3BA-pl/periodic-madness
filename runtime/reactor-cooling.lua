---@type event_handler
local event_handler = {events={}}
local events = event_handler.events

storage = storage or {}
---@class reactor_info
---@field reactor LuaEntity
---@field furnace LuaEntity

--MARK: Setup

local function setup_storage()
	---@type table<uint, reactor_info>
	storage.reactors = storage.reactors or {}
end

event_handler.on_init = function ()
	setup_storage()
end
event_handler.on_configuration_changed = function (data)
	setup_storage()
end

---@type table<string,fun(event:EventData.on_script_trigger_effect)>
local script_triggers = {}
---@param event EventData.on_script_trigger_effect
events[defines.events.on_script_trigger_effect] = function (event)
	local func = script_triggers[event.effect_id]
	if not func then return end
	func(event)
end

--MARK: placement

script_triggers["pm-cooled-reactor-placed"] = function (event)
	local reactor = event.source_entity
	if not reactor then error("The source entity for 'pm-cooled-reactor-placed' was somehow nil") end
	script.register_on_object_destroyed(reactor)

	-- Create furnace
	local surface = reactor.surface
	local furnace = surface.create_entity{
		name = reactor.name.."-coolant-furnace",
		direction = reactor.direction,
		position = reactor.position,
		quality = reactor.quality,
		force = reactor.force,
		create_build_effect_smoke = false,
	}
	if not furnace then error("The internal furnace for the cooled reactor wasn't placed") end
	script.register_on_object_destroyed(furnace)

	-- Link fluidboxes
	for i = 1, 10, 1 do
		reactor.fluidbox.add_linked_connection(i, furnace, i)
	end

	-- Create info tables
	---@type reactor_info
	local reactor_info = {
		reactor = reactor,
		furnace = furnace
	}
	storage.reactors[reactor.unit_number--[[@as int]]] = reactor_info
	storage.reactors[furnace.unit_number--[[@as int]]] = reactor_info
end

--MARK: GUI

---@param event EventData.on_gui_opened
events[defines.events.on_gui_opened] = function (event)
	if event.gui_type ~= defines.gui_type.entity then return end
	local reactor_info = storage.reactors[event.entity.unit_number--[[@as int]]]
	if not reactor_info then return end

	local player = game.get_player(event.player_index)
	---@cast player -?
	player.opened = reactor_info.furnace
end

--MARK: non-cooling

script_triggers["pm-cooled-reactor-died"] = function (event)
	-- game.print("Whoops... ".. event.source_entity.gps_tag)
	local furnace = event.source_entity
	if not furnace then error("The source entity for 'pm-cooled-reactor-died' was somehow nil") end
	local reactor_info = storage.reactors[furnace.unit_number--[[@as int]]]
	reactor_info.reactor.die()

	-- Alert people of the reactor meltdown
	for _, player in pairs(furnace.force.players) do -- TODO: Get a better icon than signal-skull
		player.add_custom_alert(furnace, {type="virtual", name="signal-skull"}, {"pm-alerts.reactor-meltdown"}, true)
	end
end

script_triggers["pm-cooled-reactor-hurt"] = function (event)
	local furnace = event.source_entity
	if not furnace then error("The source entity for 'pm-cooled-reactor-hurt' was somehow nil") end

	-- If there's no heat and nothing in the output, it shouldn't be dying right now
	if furnace.burner.heat == 0
	and furnace.get_fluid_count("pm-liquid-heat") then
		furnace.health = furnace.health + 1/60
		return
	end

	-- Otherwise, alert
	for _, player in pairs(furnace.force.players) do -- TODO: Get a better icon than signal-skull
		player.add_custom_alert(furnace, {type="virtual", name="signal-skull"}, {"pm-alerts.reactor-melting-down"}, true)
	end
end

--MARK: cleanup

---@param event EventData.on_object_destroyed
events[defines.events.on_object_destroyed] = function (event)
	local unit_id = event.useful_id
	local reactor_info = storage.reactors[unit_id]
	if not reactor_info then return end
	storage.reactors[unit_id] = nil

	local reactor = reactor_info.reactor
	local furnace = reactor_info.furnace

	if reactor.valid then
		reactor.die()
	end
	if furnace.valid then
		furnace.destroy()
	end
end

return event_handler