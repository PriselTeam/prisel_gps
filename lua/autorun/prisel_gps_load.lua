Prisel = Prisel or {}

Prisel.GPS = Prisel.GPS or {}

local function Include(f) return include("prisel_gps/"..f) end
local function AddLuaFile(f) return AddCSLuaFile("prisel_gps/"..f) end
local function IncludeAdd(f) return Include(f), AddLuaFile(f) end

IncludeAdd("config.lua")

if SERVER then
    AddLuaFile("client/cl_functions.lua")
elseif CLIENT then
    IncludeAdd("client/cl_functions.lua")
end
