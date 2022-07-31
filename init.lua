
nodeu = {}       -- A global Object for the mod
nodeu.path = minetest.get_modpath("nodeu") 
local path = minetest.get_modpath("nodeu")


local S
if(minetest.get_translator) then
   S = minetest.get_translator(minetest.get_current_modname())

else
    S = function ( s ) return s end

end

nodeu.S = S


if minetest.get_modpath("letters") then
dofile(path.."/letters.lua")
end






dofile(path.."/portau.lua")
dofile(path.."/scala_metal.lua")
dofile(path.."/ringhiere.lua")
dofile(path.."/scaletta.lua")
dofile(path.."/craft.lua")
dofile(path.."/colors.lua")

