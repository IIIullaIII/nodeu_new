-- get Boilerplate for Translations
local S = nodeu.S
local path = nodeu.path

local metal_list = {
	{ S("Red_Metal") , "red"},
	{ S("Orange_Metal") , "orange"},
    { S("Grey_Metal") , "grey"},
	{ S("Yellow_Metal") , "yellow"},
	{ S("Green_Metal") , "green"},
	{ S("Blue_Metal") , "blue"},
	{ S("Black_Metal") , "black"},
	{ S("white_Metal") , "white"},
	{ S("Violet_Metal") , "violet"},
	{ S("Cyan_Metal") , "cyan"}
}

for i in ipairs(metal_list) do
	local metaldesc = metal_list[i][1]
	local col = metal_list[i][2]
  
    --scala
   minetest.register_node("nodeu:scala_"..col.."", {
	    description =S("Stair ")..metaldesc.."",
        tiles = {
		"scalaa_"..col..".png",
		"scalaa_"..col..".png",
		"scalaa_"..col..".png",
		"scalaa_"..col..".png",
		"scalaa_"..col..".png",
		"scalaa_"..col..".png"
	},                              
	drawtype = "nodebox",
	paramtype = "light",
    paramtype2="facedir",
    groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3,not_in_creative_inventory=0},
    sounds = default.node_sound_defaults(),
    node_box = {
    	type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, -0.375, -0.25, -0.25}, -- NodeBox1
			{0.375, -0.5, -0.5, 0.5, -0.25, -0.25}, -- NodeBox3
			{-0.5, -0.25, -0.5, 0.5, 0, 0.25}, -- NodeBox4
			{-0.5, 0, 0, -0.3125, 0.25, 0.25}, -- NodeBox5
			{0.375, 0, 0, 0.5, 0.25, 0.25}, -- NodeBox6
			{-0.5, 0.25, 0, 0.5, 0.5, 0.5}, -- NodeBox7
		}
	}
})

                                       --pianetto piccolo
    minetest.register_node("nodeu:fine_scala_"..col.."", {
	    description = S("Railing support ")..col.."",
        tiles = {"scalaa_"..col..".png",
	    },	    
	drawtype = "nodebox",
	paramtype = "light",
    paramtype2="facedir",
    groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3,not_in_creative_inventory=0},
    sounds = default.node_sound_defaults(),
    node_box = {
    	type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, -0.375, -0.25, -0.25}, -- NodeBox1
			{0.375, -0.5, -0.5, 0.5, -0.25, -0.25}, -- NodeBox3
			{-0.5, -0.25, -0.5, 0.5, 0, 0.25}, -- NodeBox4
			{-0.5, 0, 0, -0.375, 0.25, 0.25}, -- NodeBox5
			{0.375, 0, 0, 0.5, 0.25, 0.25}, -- NodeBox6
			{-0.5, 0.25, 0, 0.5, 0.5, 0.5}, -- NodeBox7
			{-0.1875, -0.5, -0.5, 0.1875, 0.5, 0.5}, -- NodeBox7
		}
	}
})

minetest.register_node("nodeu:piano_scala_"..col.."", {
	    description =S("Landing of the staircase ")..col.."",
        tiles = {"scalaa_"..col..".png",
	    },	    
	drawtype = "nodebox",
	paramtype = "light",
    paramtype2="facedir",
    groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3,not_in_creative_inventory=0},
    sounds = default.node_sound_defaults(),
    node_box = {
    	type = "fixed",
		fixed = {
			{-0.5, 0.25, -0.5, 0.5, 0.5, 0.5}, -- NodeBox7
		}
	}
})

minetest.register_node("nodeu:scala_ringhiera_"..col.."", {
	    description = S("Railing stair NU ")..col.."",
        tiles = {"scalaa_"..col..".png",
                 "scalaa_"..col..".png",
                 "ringhieranodeu.png",
		         "ringhieranodeu.png",
                 "scalaa_"..col..".png",                          
	    	     "scalaa_"..col..".png" 
                                                    },
	drawtype = "nodebox",
	paramtype = "light",
    paramtype2="facedir",
    groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3,not_in_creative_inventory=0},
    sounds = default.node_sound_defaults(),
        node_box = {
		type = "fixed",
		fixed = {
			{-0.1875, -0.5, -0.5, 0.1875, 0.5, 0.5}, -- NodeBox7
		}
	}
})
--angoloringhiera scala
minetest.register_node("nodeu:ringhiera_L_"..col.."", {
  description = S("Corner railing stair ")..col.."",
  tiles = {
		"scalaa_"..col..".png",
		"scalaa_"..col..".png",
		"ringhieranodeu.png",
		"ringhieranodeu.png",
		"ringhieranodeu.png",
		"ringhieranodeu.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
    paramtype2="facedir",
    groups = {cracky=3,oddly_breakable_by_hand=3,not_in_creative_inventory=0},
    sounds = default.node_sound_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-0.1875, -0.5, -0.5, 0.1875, 0.5, 0.1875}, -- NodeBox7
			{-0.1875, -0.5, -0.1875, 0.5, 0.5, 0.1875}, -- NodeBox2
		}
	}
})

--incrocio scala
minetest.register_node("nodeu:ringhiera_X_"..col.."", {
description = S("Stair railing crossing")..col.."",
tiles = {                                    
		"scalaa_"..col..".png",
		"scalaa_"..col..".png",
		"ringhieranodeu.png",
		"ringhieranodeu.png",
		"ringhieranodeu.png",
		"ringhieranodeu.png"
	},
	drawtype = "nodebox",
    paramtype2="facedir",
    groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3,not_in_creative_inventory=0},
    sounds = default.node_sound_defaults(),                                      
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.1875, -0.5, -0.5, 0.1875, 0.5, 0.5}, -- NodeBox7
			{-0.5, -0.5, -0.1875, 0.5, 0.5, 0.1875}, -- NodeBox2
		}
	}
})

    minetest.register_node("nodeu:nodo_scala_"..col.."", {
	    description =S("Metal_blocK ")..col.."",
        tiles = {"scalaa_"..col..".png",
	    },	    
	drawtype = "nodebox",
	paramtype = "light",
    paramtype2="facedir",
    groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3,not_in_creative_inventory=0},
    sounds = default.node_sound_defaults(),
    node_box = {
    	type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5}, -- NodeBox7
		}
	}
})
---------------------------------------FARETTO--------------------------
  local S_C_box = {
	type = "fixed",
	fixed = { -0.35, -0.5, -0.35, 0.35, -0.45, 0.35 }
}
   minetest.register_node("nodeu:faretto_s_"..col.."", {
	    description =S("Spotlight ")..metaldesc.."",
        tiles = {
		"farettow_"..col..".png"
		
},                         
	drawtype = "mesh",
	mesh="faretto_s.obj",
	alpha = 160,
	selection_box = S_C_box,
	collision_box = S_C_box,
	light_source = minetest.LIGHT_MAX,
	paramtype = "light",
	paramtype2 = 'facedir',
	walkable = true,
	pointable = true,
	diggable = true,
	drop = "",
	drowning = 1,
	sunlight_propagates = true,
	post_effect_color = {a = 103, r = 30, g = 60, b = 90},
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3, not_in_creative_inventory=0},
	
	
})        

----------------------------------
                                               
    
     minetest.register_node("nodeu:faretto_"..col.."", {
	    description =S("Block whit spotlight")..metaldesc.." ",
        tiles = {
		"scalaa_"..col..".png^farettow_"..col..".png",
		"scalaa_"..col..".png",
		"scalaa_"..col..".png",
		"scalaa_"..col..".png",
		"scalaa_"..col..".png",
		"scalaa_"..col..".png"
	},                         
	drawtype = "nodebox",
	alpha = 160,
	light_source = minetest.LIGHT_MAX,
	paramtype = "light",
	walkable = true,
	pointable = true,
	diggable = true,
	drop = "",
	drowning = 1,
	sunlight_propagates = true,
	post_effect_color = {a = 103, r = 30, g = 60, b = 90},
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3, not_in_creative_inventory=0},
	
	
})

end
