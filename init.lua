minetest.register_chatcommand("locate", {
	description = "Get's a player's coordinates",
	params = "<playername>",

	func = function(param)
		local lpos = minetest.localplayer:get_pos()

		for _, obj in ipairs(minetest.get_objects_inside_radius(lpos, 100000)) do
			if obj:get_name() == param then
				return true, obj:get_name() .. "'s Position is: (" .. obj:get_pos().x .. ", " .. obj:get_pos().y .. ", " .. obj:get_pos().z .. ")"
			end
		end
		
		return false, "Could not find this player sorry!"
	end
})
