doors.register("autodoors:door_wood", {
	tiles = {{ name = "doors_door_wood.png", backface_culling = true }},
	description = "Automatic Wooden Door",
	inventory_image = "doors_item_wood.png^[colorize:yellow:50",
	groups = { node = 1, oddly_breakable_by_hand = 1 },
	on_rightclick = function() end,
	mesecons = {
		effector = {
			action_on = function(pos, node)
				local door = doors.get(pos)
				if door then door:open() end
			end,
			action_off = function(pos, node)
				local door = doors.get(pos)
				if door then door:close() end
			end,
		}
	},
})
