  
-- get Boilerplate for Translations
local S = nodeu.S
local path = nodeu.path
--fences4
minetest.register_node("nodeu:ringhiera_f", {
description = S("machined railing"),
tiles = {                                    
		"pix.png",
		"pix.png",
		"ringhieraok.png",
		"ringhieraok.png",
		"pix.png",
		"pix.png"
	},
	drawtype = "nodebox",
    paramtype2="facedir",
    groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3,not_in_creative_inventory=0},
    sounds = default.node_sound_glass_defaults(),                                      
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5,- 0.48, 0.5, 0.5}, -- NodeBox2
		}
	}
})
--fences angolo
minetest.register_node("nodeu:ringhiera_f_ang", {
description =S("corner machined railing"),
tiles = {                                    
		"pix.png",
		"pix.png",
		"ringhieraok.png",
		"ringhieraok.png",
		"ringhieraok.png",
		"ringhieraok.png"
	},
	drawtype = "nodebox",
    paramtype2="facedir",
    groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3,not_in_creative_inventory=0},
    sounds = default.node_sound_glass_defaults(),                                      
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5,- 0.48, 0.5, 0.5}, -- NodeBox1
            {-0.5, -0.5, 0.5, 0.5, 0.5, 0.48}, -- NodeBox2                              
		}
	}
})

--fences2                                          
minetest.register_node("nodeu:ringhiera_g", {
description = S("machined railing 2"),
tiles = {                                    
		"pix.png",
		"pix.png",
		"ringhiera6n.png",
		"ringhiera6n.png",
		"pix.png",
		"pix.png"
	},
	drawtype = "nodebox",
    paramtype2="facedir",
    groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3,not_in_creative_inventory=0},
    sounds = default.node_sound_glass_defaults(),                                      
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5,- 0.48, 0.5, 0.5}, -- NodeBox2
		}
	}
})
--fences2 angolo
minetest.register_node("nodeu:ringhiera_g_ang", {
description = S("corner machined railing 2"),
tiles = {                                    
		"pix.png",
		"pix.png",
		"ringhiera6n.png",
		"ringhiera6n.png",
		"ringhiera6n.png",
		"ringhiera6n.png"
	},
	drawtype = "nodebox",
    paramtype2="facedir",
    groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3,not_in_creative_inventory=0},
    sounds = default.node_sound_glass_defaults(),                                      
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5,- 0.48, 0.5, 0.5}, -- NodeBox1
            {-0.5, -0.5, 0.5, 0.5, 0.5, 0.48}, -- NodeBox2                              
		}
	}
})
