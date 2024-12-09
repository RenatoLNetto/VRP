-----------------------------------------------------------------------------------------------------------------------------------------
-- GLOBALSTATE
-----------------------------------------------------------------------------------------------------------------------------------------
GlobalState["Blackout"] = 0
-----------------------------------------------------------------------------------------------------------------------------------------
-- LOCALPLAYERS
-----------------------------------------------------------------------------------------------------------------------------------------
LocalPlayer["state"]:set("Route",0,false)
LocalPlayer["state"]:set("Name","",false)
LocalPlayer["state"]:set("Passport",0,false)
LocalPlayer["state"]:set("Rope",false,false)
LocalPlayer["state"]:set("Cancel",false,true)
LocalPlayer["state"]:set("Active",false,false)
LocalPlayer["state"]:set("Handcuff",false,true)
LocalPlayer["state"]:set("Commands",false,true)
LocalPlayer["state"]:set("Spectate",false,false)
LocalPlayer["state"]:set("Invisible",false,false)
LocalPlayer["state"]:set("Invincible",false,false)
LocalPlayer["state"]:set("usingPhone",false,false)
LocalPlayer["state"]:set("Safezone",false,true)
LocalPlayer["state"]:set("Player",GetPlayerServerId(PlayerId(-1)),false)

LocalPlayer["state"]:set("Admin",false,false)
LocalPlayer["state"]:set("Police",false,false)
LocalPlayer["state"]:set("Rota",false,false)
LocalPlayer["state"]:set("PoliciaMilitar",false,false)
LocalPlayer["state"]:set("BAEP",false,false)
LocalPlayer["state"]:set("PoliciaCivil",false,false)
LocalPlayer["state"]:set("Exercito",false,false)
LocalPlayer["state"]:set("Paramedico",false,false)
LocalPlayer["state"]:set("Mecanico",false,false)

LocalPlayer["state"]:set("Buttons",false,true)
LocalPlayer["state"]:set("Cassino",false,false)
LocalPlayer["state"]:set("Race",false,false)
LocalPlayer["state"]:set("Target",false,false)

--
LocalPlayer["state"]:set("Premium",false,false)
-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP:ACTIVE
-----------------------------------------------------------------------------------------------------------------------------------------
