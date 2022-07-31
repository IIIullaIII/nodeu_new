-- get Boilerplate for Translations
local S = nodeu.S
local path = nodeu.path

local Portau_list = {
	{ S("Red DoorU"), "red"},
	{ S("Orange DoorU"), "orange"},
    { S("Cyan DoorU"), "cyan"},
	{ S("Yellow DoorU"), "yellow"},
	{ S("Green DoorU"), "green"},
	{ S("Blue DoorU"), "blue"},
	{ S("Violet DoorU"), "violet"},
	{ S("Black DoorU"), "black"},
	{ S("White DoorU"), "white"},
	{ S("Grey DoorU"), "grey"},
}

for i in ipairs(Portau_list) do
	local portaudesc = Portau_list[i][1]
	local colour = Portau_list[i][2]
    
   minetest.register_node("nodeu:portau_"..colour.."", {
	    description =portaudesc,
	    drawtype = "mesh",
		mesh = "portau2.obj",
	    tiles = {"portau_"..colour..".png",
	    },	    
        --inventory_image = "nodeu_p_"..colour..".png",
	    
        --wield_image  = {"nodeu_p_"..colour..".png",
	   -- },
	    paramtype = "light",
	    paramtype2 = "facedir",
	    sunlight_propagates = true,
	    light_source = 12,
	    walkable = false,
	    selection_box = {
	        type = "fixed",
            --fixed = { -0.5, 1.48, 0.35, 0.5,2.0, 0.5},
	        fixed = { -2, 1.45, 0.35, 2,2.0, 0.5 },
	    },
		groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3,not_in_creative_inventory=1},
		--sounds = default.node_sound_wood_defaults(),
        drop = "nodeu:portau_"..colour.."_ch",        
		on_rightclick = function(pos, node, clicker)
	        node.name = "nodeu:portau_"..colour.."_ch"
	        minetest.set_node(pos, node)
	                minetest.sound_play("portau_op", {
	to_player = "",
	gain = 2.0,
})
	    end,
	})


minetest.register_node("nodeu:portau_"..colour.."_ch", {
	    description = portaudesc.."_ch",
	    drawtype = "mesh",
		mesh = "portau.obj",
	    tiles = {"portau_"..colour..".png",
	    },
        inventory_image = "nodeu_p_"..colour..".png",
	    
        wield_image  = {"nodeu_p_"..colour..".png",
	    },
	    paramtype = "light",
	    paramtype2 = "facedir",
	    light_source = 12,
	    sunlight_propagates = true,
	   -- walkable = true,
        collision_box = {
	        type = "fixed",
            fixed = { -0.5, -0.5, 0.35, 0.5,1.5, 0.5}},
	    selection_box = {
	        type = "fixed",
            fixed = { -0.5, -0.5, 0.35, 0.5,1.5, 0.5}
	      --fixed = { -0.5, 0.35, -0.5, 0.5,1.5, 0.5},
	    },--                          largdx  h
		groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3, not_in_creative_inventory=0},
		--sounds = default_dig_cracky(),
		drop = "nodeu:portau_"..colour.."_ch",
		on_rightclick = function(pos, node, clicker)
	        node.name = "nodeu:portau_"..colour..""
	        minetest.set_node(pos, node)
	        minetest.sound_play("portau_ch", {
	to_player = "",
	gain = 2.0,
})
	    end,
	})

	
	
end
