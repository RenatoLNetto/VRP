-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
tvRP = {}
-----------------------------------------------------------------------------------------------------------------------------------------
-- TUNNER/PROXY
-----------------------------------------------------------------------------------------------------------------------------------------
Proxy.addInterface("vRP",tvRP)
Tunnel.bindInterface("vRP",tvRP)
vRPS = Tunnel.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local Blipmin = false
local Information = false
-----------------------------------------------------------------------------------------------------------------------------------------
-- CLOSESTPEDS
-----------------------------------------------------------------------------------------------------------------------------------------
function tvRP.ClosestPeds(Radius)
	local Selected = {}
	local Ped = PlayerPedId()
	local Radius = Radius + 0.0001
	local Coords = GetEntityCoords(Ped)
	local GamePool = GetGamePool("CPed")
	for _,Entity in pairs(GamePool) do
		local Index = NetworkGetPlayerIndexFromPed(Entity)
		if Index and IsPedAPlayer(Entity) and NetworkIsPlayerConnected(Index) then
			if #(Coords - GetEntityCoords(Entity)) <= Radius then
				Selected[#Selected + 1] = GetPlayerServerId(Index)
			end
		end
	end
	return Selected
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- CLOSESTPED
-----------------------------------------------------------------------------------------------------------------------------------------
function tvRP.ClosestPed(Radius)
	local Selected = false
	local Ped = PlayerPedId()
	local Radius = Radius + 0.0001
	local Coords = GetEntityCoords(Ped)
	local GamePool = GetGamePool("CPed")
	for _,Entity in pairs(GamePool) do
		local Index = NetworkGetPlayerIndexFromPed(Entity)
		if Index and Entity ~= PlayerPedId() and IsPedAPlayer(Entity) and NetworkIsPlayerConnected(Index) then
			local EntityCoords = GetEntityCoords(Entity)
			local EntityDistance = #(Coords - EntityCoords)
			if EntityDistance < Radius then
				Selected = GetPlayerServerId(Index)
				Radius = EntityDistance
			end
		end
	end
	return Selected
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- GETPLAYERS
-----------------------------------------------------------------------------------------------------------------------------------------
function GetPlayers()
	local Selected = {}
	local GamePool = GetGamePool("CPed")
	for _,Entity in pairs(GamePool) do
		local Index = NetworkGetPlayerIndexFromPed(Entity)
		if Index and IsPedAPlayer(Entity) and NetworkIsPlayerConnected(Index) then
			Selected[Entity] = GetPlayerServerId(Index)
		end
	end
	return Selected
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- PLAYERS
-----------------------------------------------------------------------------------------------------------------------------------------
function tvRP.Players()
	return GetPlayers()
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- BLIPADMIN
-----------------------------------------------------------------------------------------------------------------------------------------
function tvRP.BlipAdmin()
	Blipmin = not Blipmin
	while Blipmin do
		for Entitys,v in pairs(GetPlayers()) do
			if Entity(Entitys)["state"]["Passport"] then
				DrawText3D(GetEntityCoords(Entitys),"~o~S:~w~ "..v.."     ~o~I:~w~ "..Entity(Entitys)["state"]["Passport"].."     ~g~H:~w~ "..GetEntityHealth(Entitys).."     ~y~A:~w~ "..GetPedArmour(Entitys),0.275)
			end
		end
		Wait(0)
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- PLAYSOUND
-----------------------------------------------------------------------------------------------------------------------------------------
function tvRP.PlaySound(Dict,Name)
	PlaySoundFrontend(-1,Dict,Name,false)
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- PASSPORTENALBLE
-----------------------------------------------------------------------------------------------------------------------------------------
function PassportEnable()
    if UsableF7 then
        if not Information and not IsPauseMenuActive() then
            Information = true
            while Information do
                local Ped = PlayerPedId()
                local Coords = GetEntityCoords(Ped)
                for Entitys,_ in pairs(GetPlayers()) do
                    local OtherCoords = GetEntityCoords(Entitys)
                    if HasEntityClearLosToEntity(Ped,Entitys,17) and #(Coords - OtherCoords) <= 5 then
                        DrawText3D(OtherCoords,"~w~"..Entity(Entitys)["state"]["Passport"],0.45)
                    end
                end
                Wait(0)
            end
        end
    end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- PASSPORTDISABLE
-----------------------------------------------------------------------------------------------------------------------------------------
function PassportDisable()
	Information = false
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- REGISTERCOMMAND
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("+Information",PassportEnable)
RegisterCommand("-Information",PassportDisable)
RegisterKeyMapping("+Information","Visualizar passaportes.","keyboard","F7")
-----------------------------------------------------------------------------------------------------------------------------------------
-- DRAWTEXT3D
-----------------------------------------------------------------------------------------------------------------------------------------
function DrawText3D(Coords,Text,Weight)
	local onScreen,x,y = World3dToScreen2d(Coords["x"],Coords["y"],Coords["z"] + 1.10)

	if onScreen then
		SetTextFont(4)
		SetTextCentre(true)
		SetTextProportional(1)
		SetTextScale(0.35,0.35)
		SetTextColour(255,255,255,150)

		SetTextEntry("STRING")
		AddTextComponentString(Text)
		EndTextCommandDisplayText(x,y)

		local Width = string.len(Text) / 160 * Weight
		DrawRect(x,y + 0.0125,Width,0.03,15,15,15,175)
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- 
-----------------------------------------------------------------------------------------------------------------------------------------
--[[AddStateBagChangeHandler("SetDiscord",nil,function(Name,Key,Value)
	SetDiscordAppId(1184307808640974939)
	SetDiscordRichPresenceAsset("base")
	SetDiscordRichPresenceAssetText("SANTOS RP")
	SetDiscordRichPresenceAssetSmall("developer")
	SetDiscordRichPresenceAssetSmallText("Renato")
	SetDiscordRichPresenceAction(0,"Jogar","fivem://connect/cfx.re/join/k4x6o7")
	SetDiscordRichPresenceAction(1,"Social","")
	SetRichPresence(LocalPlayer["state"]["Passport"].." - "..LocalPlayer["state"]["Name"].."\n "..Value.." Jogadores Conectados")
end)]]

AddStateBagChangeHandler("SetDiscord",nil,function(Name,Key,Value)
	SetDiscordAppId(1296207888863334421)
	SetDiscordRichPresenceAsset("logo-santos-foto")
	SetDiscordRichPresenceAssetText("SANTOS RP")
	SetDiscordRichPresenceAssetSmall("dev")
	SetDiscordRichPresenceAssetSmallText("SANTOS GROUP")
	SetDiscordRichPresenceAction(0,"Jogar","fivem://connect/cfx.re/join/k4x6o7")
	SetDiscordRichPresenceAction(1,"Social","https://x.com/")
	SetRichPresence(LocalPlayer["state"]["Passport"].." - "..LocalPlayer["state"]["Name"].."\n "..Value.." Jogadores Conectados")
end)

local Weapons = {
    [GetHashKey("WEAPON_PISTOL")] = "WEAPON_PISTOL",
    [GetHashKey("WEAPON_PISTOL_MK2")] = "WEAPON_PISTOL_MK2",
    [GetHashKey("WEAPON_COMBATPISTOL")] = "WEAPON_COMBATPISTOL",
    [GetHashKey("WEAPON_APPISTOL")] = "WEAPON_APPISTOL",
    [GetHashKey("WEAPON_HEAVYPISTOL")] = "WEAPON_HEAVYPISTOL",
    [GetHashKey("WEAPON_REVOLVER")] = "WEAPON_REVOLVER",
    [GetHashKey("WEAPON_MICROSMG")] = "WEAPON_MICROSMG",
    [GetHashKey("WEAPON_SMG")] = "WEAPON_SMG",
    [GetHashKey("WEAPON_ASSAULTSMG")] = "WEAPON_ASSAULTSMG",
    [GetHashKey("WEAPON_CARBINERIFLE")] = "WEAPON_CARBINERIFLE",
    [GetHashKey("WEAPON_CARBINERIFLE_MK2")] = "WEAPON_CARBINERIFLE_MK2",
    [GetHashKey("WEAPON_ADVANCEDRIFLE")] = "WEAPON_ADVANCEDRIFLE",
    [GetHashKey("WEAPON_SPECIALCARBINE")] = "WEAPON_SPECIALCARBINE",
    [GetHashKey("WEAPON_SPECIALCARBINE_MK2")] = "WEAPON_SPECIALCARBINE_MK2",
    [GetHashKey("WEAPON_BULLPUPRIFLE")] = "WEAPON_BULLPUPRIFLE",
    [GetHashKey("WEAPON_BULLPUPRIFLE_MK2")] = "WEAPON_BULLPUPRIFLE_MK2",
    [GetHashKey("WEAPON_HEAVYRIFLE")] = "WEAPON_HEAVYRIFLE",
    [GetHashKey("WEAPON_PUMPSHOTGUN")] = "WEAPON_PUMPSHOTGUN",
    [GetHashKey("WEAPON_PUMPSHOTGUN_MK2")] = "WEAPON_PUMPSHOTGUN_MK2",
    [GetHashKey("WEAPON_SAWNOFFSHOTGUN")] = "WEAPON_SAWNOFFSHOTGUN",
    [GetHashKey("WEAPON_ASSAULTSHOTGUN")] = "WEAPON_ASSAULTSHOTGUN",
    [GetHashKey("WEAPON_BULLPUPSHOTGUN")] = "WEAPON_BULLPUPSHOTGUN",
    [GetHashKey("WEAPON_STUNGUN")] = "WEAPON_STUNGUN",
    [GetHashKey("WEAPON_FLAREGUN")] = "WEAPON_FLAREGUN",
    [GetHashKey("WEAPON_GADGET_PISTOL")] = "WEAPON_GADGET_PISTOL",
    [GetHashKey("WEAPON_MARKSMANRIFLE")] = "WEAPON_MARKSMANRIFLE",
    [GetHashKey("WEAPON_MARKSMANRIFLE_MK2")] = "WEAPON_MARKSMANRIFLE_MK2",
    [GetHashKey("WEAPON_HEAVYSNIPER")] = "WEAPON_HEAVYSNIPER",
    [GetHashKey("WEAPON_HEAVYSNIPER_MK2")] = "WEAPON_HEAVYSNIPER_MK2",
    [GetHashKey("WEAPON_REMOTESNIPER")] = "WEAPON_REMOTESNIPER",
    [GetHashKey("WEAPON_GRENADE")] = "WEAPON_GRENADE",
    [GetHashKey("WEAPON_STICKYBOMB")] = "WEAPON_STICKYBOMB",
    [GetHashKey("WEAPON_PROXIMITYMINE")] = "WEAPON_PROXIMITYMINE",
    [GetHashKey("WEAPON_SNOWBALL")] = "WEAPON_SNOWBALL",
    [GetHashKey("WEAPON_FLARE")] = "WEAPON_FLARE",
    [GetHashKey("WEAPON_BZGAS")] = "WEAPON_BZGAS",
    [GetHashKey("WEAPON_MOLOTOV")] = "WEAPON_MOLOTOV",
    [GetHashKey("WEAPON_JERRYCAN")] = "WEAPON_JERRYCAN",
    [GetHashKey("WEAPON_FIREEXTINGUISHER")] = "WEAPON_FIREEXTINGUISHER",
    [GetHashKey("WEAPON_HATCHET")] = "WEAPON_HATCHET",
    [GetHashKey("WEAPON_KNIFE")] = "WEAPON_KNIFE",
    [GetHashKey("WEAPON_MACHETE")] = "WEAPON_MACHETE",
    [GetHashKey("WEAPON_SWITCHBLADE")] = "WEAPON_SWITCHBLADE",
    [GetHashKey("WEAPON_CROWBAR")] = "WEAPON_CROWBAR",
    [GetHashKey("WEAPON_GOLFCLUB")] = "WEAPON_GOLFCLUB",
    [GetHashKey("WEAPON_BAT")] = "WEAPON_BAT",
    [GetHashKey("WEAPON_BASEBALLBAT")] = "WEAPON_BASEBALLBAT",
    [GetHashKey("WEAPON_DAGGER")] = "WEAPON_DAGGER",
    [GetHashKey("WEAPON_BOTTLE")] = "WEAPON_BOTTLE",
    [GetHashKey("WEAPON_MUSKET")] = "WEAPON_MUSKET",
    [GetHashKey("WEAPON_FIREWORK")] = "WEAPON_FIREWORK",
    [GetHashKey("WEAPON_RAILGUN")] = "WEAPON_RAILGUN",
    [GetHashKey("WEAPON_HAMMER")] = "WEAPON_HAMMER",
    [GetHashKey("WEAPON_AXE")] = "WEAPON_AXE",
    [GetHashKey("WEAPON_CARABINE_RIFLE")] = "WEAPON_CARABINE_RIFLE",
    [GetHashKey("WEAPON_CARABINE_RIFLE_MK2")] = "WEAPON_CARABINE_RIFLE_MK2",
    [GetHashKey("WEAPON_LMG")] = "WEAPON_LMG",
    [GetHashKey("WEAPON_TASER")] = "WEAPON_TASER",
    [GetHashKey("WEAPON_COMBATMG")] = "WEAPON_COMBATMG",
    [GetHashKey("WEAPON_COMBATMG_MK2")] = "WEAPON_COMBATMG_MK2",
    [GetHashKey("WEAPON_MINIGUN")] = "WEAPON_MINIGUN",
    [GetHashKey("WEAPON_GRENADELAUNCHER")] = "WEAPON_GRENADELAUNCHER",
    [GetHashKey("WEAPON_GRENADELAUNCHER_SMOKE")] = "WEAPON_GRENADELAUNCHER_SMOKE",
    [GetHashKey("WEAPON_RPG")] = "WEAPON_RPG",
    [GetHashKey("WEAPON_HOMINGLAUNCHER")] = "WEAPON_HOMINGLAUNCHER",
    [GetHashKey("WEAPON_COMPACTLAUNCHER")] = "WEAPON_COMPACTLAUNCHER",
    [GetHashKey("WEAPON_FLAREGUN")] = "WEAPON_FLAREGUN",
    [GetHashKey("WEAPON_AUTOSHOTGUN")] = "WEAPON_AUTOSHOTGUN",
    [GetHashKey("WEAPON_BULLPUPSHOTGUN")] = "WEAPON_BULLPUPSHOTGUN",
    [GetHashKey("WEAPON_PUMPSHOTGUN")] = "WEAPON_PUMPSHOTGUN",
    [GetHashKey("WEAPON_SNIPERRIFLE")] = "WEAPON_SNIPERRIFLE",
    [GetHashKey("WEAPON_SNIPERRIFLE_MK2")] = "WEAPON_SNIPERRIFLE_MK2",
    [GetHashKey("WEAPON_MG")] = "WEAPON_MG",
    [GetHashKey("WEAPON_HAMMER")] = "WEAPON_HAMMER",
    [GetHashKey("WEAPON_PETROLCAN")] = "WEAPON_PETROLCAN",
    [GetHashKey("WEAPON_STUNGUN")] = "WEAPON_STUNGUN",
    [GetHashKey("WEAPON_PIPEBOMB")] = "WEAPON_PIPEBOMB"
}

-- Função para dar armas ao jogador
function tvRP.giveWeapons(wp_table)
    local playerPed = PlayerPedId()

    for _, weapon in ipairs(wp_table) do
        local weaponHash = GetHashKey(weapon.name)
        GiveWeaponToPed(playerPed, weaponHash, weapon.ammo, false, false)
    end
end

-- Função para pegar as armas do jogador
function tvRP.getWeapons()
    local playerPed = PlayerPedId()
    local weapons = {}

    for hash, name in pairs(Weapons) do
        if HasPedGotWeapon(playerPed, hash, false) then
            local ammo = GetAmmoInPedWeapon(playerPed, hash)
            table.insert(weapons, {
                hash = hash,
                name = name,
                ammo = ammo
            })
        end
    end

    return weapons
end
