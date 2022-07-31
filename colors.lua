
-- get Boilerplate for Translations
local S = nodeu.S
local path = nodeu.path
local Color_list = {
	{ S("Red Color"),"red"},
	{ S("Orange Color"), "orange"},
    { S("Grey Color"), "grey"},
	{ S("Yellow Color"), "yellow"},
	{ S("Green Color"), "green"},
	{ S("Blue Color"), "blue"},
	{ S("Violet Color"), "violet"},
	{ S("Black Color"), "black"},
	{ S("White Color"), "white"},
	{ S("Cyan Color"), "cyan"},
}

for i in ipairs(Color_list) do
	local Colordesc = Color_list[i][1]
	local color = Color_list[i][2]
    
  minetest.register_craftitem("nodeu:boccetta", {
	description = S("small bottle"),
	inventory_image = "boccetta.png",
})   
 
minetest.register_craftitem("nodeu:colors_"..color.."", {
	description = Colordesc.."",
	inventory_image = "colors_"..color..".png",
}) 
end
