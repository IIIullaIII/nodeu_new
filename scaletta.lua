-- get Boilerplate for Translations
local S = nodeu.S
local path = nodeu.path

minetest.register_node("nodeu:scaletta", {
   description= S("Metal ladder whit handrail"),
	drawtype = "mesh",
	mesh = "scaletta.obj",
	tiles = {"scaletta.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	inventory_image = "scaletta_inv.png",
	wield_image ="scaletta_inv.png",
	sunlight_propagates = true,
	walkable = false,
	climbable = true,
	is_ground_content = false,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
	sounds = default.node_sound_metal_defaults(),
	selection_box = {type = "wallmounted",
	-0.5, -0.5, 0.4375, -0.25, 0.5, 0.5},
		--
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.4375, -0.25, 0.5, 0.5}, 
			{0.4375, -0.5, 0, 0.5, 0.5, 0.0625}, 
			{-0.5, -0.5, 0, -0.4375, 0.5, 0.0625},
			{0.4375, 0.4375, 0, 0.5, 0.5, 0.5},  
			{-0.5, 0.4375, 0, -0.4375, 0.5, 0.5}, 
			{0.25, -0.5, 0.4375, 0.5, 0.5, 0.5},  
			{-0.5, -0.4375, 0.4375, 0.5, -0.3125, 0.5}, 
			{-0.5, -0.1875, 0.4375, 0.5, -0.0625, 0.5}, 
			{-0.5, 0.0625, 0.4375, 0.5, 0.1875, 0.5},  
			{-0.5, 0.3125, 0.4375, 0.5, 0.4375, 0.5}, 
		}
	}
})

