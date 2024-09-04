dofile_once( "data/scripts/lib/utilities.lua" )

-- all functions below are optional and can be left out

--[[

function OnModPreInit()
	print("Mod - OnModPreInit()") -- First this is called for all mods
end

function OnModInit()
	print("Mod - OnModInit()") -- After that this is called for all mods
end

function OnModPostInit()
	print("Mod - OnModPostInit()") -- Then this is called for all mods
end

function OnPlayerSpawned( player_entity ) -- This runs when player entity has been created
	GamePrint( "OnPlayerSpawned() - Player entity id: " .. tostring(player_entity) )
end

function OnWorldInitialized() -- This is called once the game world is initialized. Doesn't ensure any world chunks actually exist. Use OnPlayerSpawned to ensure the chunks around player have been loaded or created.
	GamePrint( "OnWorldInitialized() " .. tostring(GameGetFrameNum()) )
end

function OnWorldPreUpdate() -- This is called every time the game is about to start updating the world
	GamePrint( "Pre-update hook " .. tostring(GameGetFrameNum()) )
end

function OnWorldPostUpdate() -- This is called every time the game has finished updating the world
	GamePrint( "Post-update hook " .. tostring(GameGetFrameNum()) )
end

]]--

-- init.lua
-- This script initializes the NoitaWandTemplate mod

ModLuaFileAppend("data/scripts/perks/perk_list.lua", "mods/NoitaPerkTemplate/files/perk_list.lua")

-- NOTE: If in init.lua, do this *after* the ModLuaFileAppend line and after
-- the player has spawned, for instance in the OnPlayerSpawned callback
dofile_once("data/scripts/perks/perk.lua")
function OnPlayerSpawned(player_entity)
    -- Simply spawn the entity in world at the player's location
    local x, y = EntityGetTransform(player_entity)
    local perk = perk_spawn(x, y, "MY_CUSTOM_PERK")
    -- To pick up the perk instantly, you can continue:
    -- perk_pickup(perk, player_entity, EntityGetName(perk), false, false)
end

