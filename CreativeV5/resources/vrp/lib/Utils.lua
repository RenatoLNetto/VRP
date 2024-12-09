-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
SERVER = IsDuplicityVersion()
-----------------------------------------------------------------------------------------------------------------------------------------
-- CLASSWEATHER
-----------------------------------------------------------------------------------------------------------------------------------------
function ClassWeather(Type)
	local Weather = "Limpo"

	if Type == "EXTRASUNNY" then
		Weather = "Ensolarado"
	elseif Type == "CLEAR" then
		Weather = "Limpo"
	elseif Type == "CLOUDS" then
		Weather = "Nublado"
	elseif Type == "SMOG" then
		Weather = "Poluído"
	elseif Type == "FOGGY" then
		Weather = "Enevoado"
	elseif Type == "OVERCAST" then
		Weather = "Nublado"
	elseif Type == "RAIN" then
		Weather = "Chuvoso"
	elseif Type == "THUNDER" then
		Weather = "Tempestuoso"
	elseif Type == "CLEARING" then
		Weather = "Instável"
	elseif Type == "NEUTRAL" then
		Weather = "Neutro"
	elseif Type == "SNOW" then
		Weather = "Nevando"
	elseif Type == "BLIZZARD" then
		Weather = "Nevasca"
	elseif Type == "SNOWLIGHT" then
		Weather = "Nevasca"
	elseif Type == "XMAS" then
		Weather = "Nevando"
	elseif Type == "HALLOWEEN" then
		Weather = "Apocalíptico"
	end

	return Weather
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- DISCATEGORY
-----------------------------------------------------------------------------------------------------------------------------------------
function ClassCategory(Number)
	local Level = 1

	if Number >= 250 and Number <= 500 then
		Level = 2
	elseif Number >= 501 and Number <= 1000 then
		Level = 3
	elseif Number >= 1001 and Number <= 2000 then
		Level = 4
	elseif Number >= 2001 and Number <= 3500 then
		Level = 5
	elseif Number >= 3501 and Number <= 5000 then
		Level = 6
	elseif Number >= 5001 and Number <= 7500 then
		Level = 7
	elseif Number >= 7501 and Number <= 10000 then
		Level = 8
	elseif Number >= 10001 and Number <= 15000 then
		Level = 9
	elseif Number >= 15001 then
		Level = 10
	end

	return Level
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- RANDCOLOR
-----------------------------------------------------------------------------------------------------------------------------------------
function RandColor()
	return math.random(255)
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- SANGUINE
-----------------------------------------------------------------------------------------------------------------------------------------
function Sanguine(Number)
	local Types = { "A+","B+","A-","B-" }
	return Types[Number]
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- TABLE.MAXN
-----------------------------------------------------------------------------------------------------------------------------------------
function table.maxn(Table)
	local Number = 0

	for Index,_ in pairs(Table) do
		local Next = tonumber(Index)
		if Next and Next > Number then
			Number = Next
		end
	end

	return Number
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- COUNTTALBE
-----------------------------------------------------------------------------------------------------------------------------------------
function CountTable(Table)
	local Number = 0

	for _,v in pairs(Table) do
		Number = Number + 1
	end

	return Number
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- MODULE
-----------------------------------------------------------------------------------------------------------------------------------------
local modules = {}
function module(Resource,patchs)
	if not patchs then
		patchs = Resource
		Resource = "vrp"
	end

	local key = Resource..patchs
	local checkModule = modules[key]
	if checkModule then
		return checkModule
	else
		local code = LoadResourceFile(Resource,patchs..".lua")
		if code then
			local floats = load(code,Resource.."/"..patchs..".lua")
			if floats then
				local resAccept,resUlts = xpcall(floats,debug.traceback)
				if resAccept then
					modules[key] = resUlts
					return resUlts
				end
			end
		end
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- WAIT
-----------------------------------------------------------------------------------------------------------------------------------------
local function wait(self)
	local rets = Citizen.Await(self.p)
	if not rets then
		if self.r then
			rets = self.r
		end
	end

	return table.unpack(rets,1,table.maxn(rets))
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- ARETURN
-----------------------------------------------------------------------------------------------------------------------------------------
local function areturn(self,...)
	self.r = {...}
	self.p:resolve(self.r)
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- ASYNC
-----------------------------------------------------------------------------------------------------------------------------------------
function async(func)
	if func then
		Citizen.CreateThreadNow(func)
	else
		return setmetatable({ wait = wait, p = promise.new() },{ __call = areturn })
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- PARSEINT
-----------------------------------------------------------------------------------------------------------------------------------------
function parseInt(Value)
	local Result = 0
	local Number = tonumber(Value)

	if Number and Number > 0 then
		Result = math.floor(Number)
	end

	return Result
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- SANITIZESTRING
-----------------------------------------------------------------------------------------------------------------------------------------
local sanitize_tmp = {}
function sanitizeString(str,strchars,allow_policy)
	local r = ""
	local chars = sanitize_tmp[strchars]
	if not chars then
		chars = {}
		local size = string.len(strchars)
		for i = 1,size do
			local char = string.sub(strchars,i,i)
			chars[char] = true
		end

		sanitize_tmp[strchars] = chars
	end

	size = string.len(str)
	for i = 1,size do
		local char = string.sub(str,i,i)
		if (allow_policy and chars[char]) or (not allow_policy and not chars[char]) then
			r = r..char
		end
	end

	return r
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- SPLITSTRING
-----------------------------------------------------------------------------------------------------------------------------------------
--[[function splitString(Full, Symbol)
    local Table = {}

    -- Verifique se Full não é nil e é uma string
    if type(Full) ~= "string" then
        print("Erro: 'Full' não é uma string válida.")
        return Table -- Retorna uma tabela vazia
    end

    -- Se o símbolo não for fornecido, usa o padrão "-"
    if not Symbol then
        Symbol = "-"
    end

    -- Executa o gmatch apenas se Full for uma string válida
    for match in string.gmatch(Full, "([^"..Symbol.."]+)") do
        Table[#Table + 1] = match
    end

    return Table
end]]
function splitString(Full, Symbol)
    local Table = {}

    -- Verifique se Full não é nil e é uma string
    if type(Full) ~= "string" then
        print("Erro: 'Full' não é uma string válida. Valor de Full:", tostring(Full))  -- Exibe o valor de Full para depuração
		print(debug.traceback())  -- Mostra a pilha de chamadas para identificar onde foi chamado
		return Table -- Retorna uma tabela vazia
    end

    -- Se o símbolo não for fornecido, usa o padrão "-"
    if not Symbol then
        Symbol = "-"
    end

    -- Executa o gmatch apenas se Full for uma string válida
    for match in string.gmatch(Full, "([^"..Symbol.."]+)") do
        Table[#Table + 1] = match
    end

    return Table
end

--[[function splitString(Full,Symbol)
	local Table = {}

	if not Symbol then
		Symbol = "-"
	end

	for Full in string.gmatch(Full,"([^"..Symbol.."]+)") do -- 182
		Table[#Table + 1] = Full
	end

	return Table
end]]
-----------------------------------------------------------------------------------------------------------------------------------------
-- SPLITONE 
-----------------------------------------------------------------------------------------------------------------------------------------
function SplitOne(Name, Symbol)
    -- Verifica se 'Name' é uma string válida
    if type(Name) ~= "string" then
        print("Erro: 'Name' não é uma string válida. Valor de Name:", tostring(Name))
        return nil -- Retorna nil para evitar que o código continue com um valor inválido
    end

    -- Se 'Symbol' não for fornecido, usa o padrão "-"
    if not Symbol then
        Symbol = "-"
    end

    -- Retorna a primeira parte da string dividida
    return splitString(Name, Symbol)[1]
end
 
--[[function SplitOne(Name,Symbol)
	if not Symbol then
		Symbol = "-"
	end
	return splitString(Name,Symbol)[1]
end]]
-----------------------------------------------------------------------------------------------------------------------------------------
-- SPLITTWO
-----------------------------------------------------------------------------------------------------------------------------------------
function SplitTwo(Name,Symbol)
	if not Symbol then
		Symbol = "-"
	end

	return splitString(Name,Symbol)[2]
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- MATHLEGTH
-----------------------------------------------------------------------------------------------------------------------------------------
function mathLength(Number)
	return math.ceil(Number * 100) / 100
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- PARSEFORMAT
-----------------------------------------------------------------------------------------------------------------------------------------
function parseFormat(Value)
	local Value = parseInt(Value)
	local Left,Number,Right = string.match(Value,"^([^%d]*%d)(%d*)(.-)$")
	return Left..(Number:reverse():gsub("(%d%d%d)","%1."):reverse())..Right
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- COMPLETETIMERS
-----------------------------------------------------------------------------------------------------------------------------------------
function CompleteTimers(Seconds)
	local Days = math.floor(Seconds / 86400)
	Seconds = Seconds - Days * 86400
	local Hours = math.floor(Seconds / 3600)
	Seconds = Seconds - Hours * 3600
	local Minutes = math.floor(Seconds / 60)
	Seconds = Seconds - Minutes * 60

	if Days > 0 then
		return string.format("<b>%d Dias</b>, <b>%d Horas</b>, <b>%d Minutos</b>",Days,Hours,Minutes)
	elseif Hours > 0 then
		return string.format("<b>%d Horas</b>, <b>%d Minutos</b> e <b>%d Segundos</b>",Hours,Minutes,Seconds)
	elseif Minutes > 0 then
		return string.format("<b>%d Minutos</b> e <b>%d Segundos</b>",Minutes,Seconds)
	elseif Seconds > 0 then
		return string.format("<b>%d Segundos</b>",Seconds)
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- MINIMALTIMERS
-----------------------------------------------------------------------------------------------------------------------------------------
function MinimalTimers(Seconds)
	local Days = math.floor(Seconds / 86400)
	Seconds = Seconds - Days * 86400
	local Hours = math.floor(Seconds / 3600)
	Seconds = Seconds - Hours * 3600
	local Minutes = math.floor(Seconds / 60)
	Seconds = Seconds - Minutes * 60

	if Days > 0 then
		return string.format("%d Dias, %d Horas",Days,Hours)
	elseif Hours > 0 then
		return string.format("%d Horas, %d Minutos",Hours,Minutes)
	elseif Minutes > 0 then
		return string.format("%d Minutos",Minutes)
	elseif Seconds > 0 then
		return string.format("%d Segundos",Seconds)
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- BONES
-----------------------------------------------------------------------------------------------------------------------------------------
local Bones = {
	[11816] = "Pelvis",
	[58271] = "Coxa Esquerda",
	[63931] = "Panturrilha Esquerda",
	[14201] = "Pe Esquerdo",
	[2108] = "Dedo do Pe Esquerdo",
	[65245] = "Pe Esquerdo",
	[57717] = "Pe Esquerdo",
	[46078] = "Joelho Esquerdo",
	[51826] = "Coxa Direita",
	[36864] = "Panturrilha Direita",
	[52301] = "Pe Direito",
	[20781] = "Dedo do Pe Direito",
	[35502] = "Pe Direito",
	[24806] = "Pe Direito",
	[16335] = "Joelho Direito",
	[23639] = "Coxa Direita",
	[6442] = "Coxa Direita",
	[57597] = "Espinha Cervical",
	[23553] = "Espinha Toraxica",
	[24816] = "Espinha Lombar",
	[24817] = "Espinha Sacral",
	[24818] = "Espinha Cocciana",
	[64729] = "Escapula Esquerda",
	[45509] = "Braco Esquerdo",
	[61163] = "Antebraco Esquerdo",
	[18905] = "Mao Esquerda",
	[18905] = "Mao Esquerda",
	[26610] = "Dedo Esquerdo",
	[4089] = "Dedo Esquerdo",
	[4090] = "Dedo Esquerdo",
	[26611] = "Dedo Esquerdo",
	[4169] = "Dedo Esquerdo",
	[4170] = "Dedo Esquerdo",
	[26612] = "Dedo Esquerdo",
	[4185] = "Dedo Esquerdo",
	[4186] = "Dedo Esquerdo",
	[26613] = "Dedo Esquerdo",
	[4137] = "Dedo Esquerdo",
	[4138] = "Dedo Esquerdo",
	[26614] = "Dedo Esquerdo",
	[4153] = "Dedo Esquerdo",
	[4154] = "Dedo Esquerdo",
	[60309] = "Mao Esquerda",
	[36029] = "Mao Esquerda",
	[61007] = "Antebraco Esquerdo",
	[5232] = "Antebraco Esquerdo",
	[22711] = "Cotovelo Esquerdo",
	[10706] = "Escapula Direita",
	[40269] = "Braco Direito",
	[28252] = "Antebraco Direito",
	[57005] = "Mao Direita",
	[58866] = "Dedo Direito",
	[64016] = "Dedo Direito",
	[64017] = "Dedo Direito",
	[58867] = "Dedo Direito",
	[64096] = "Dedo Direito",
	[64097] = "Dedo Direito",
	[58868] = "Dedo Direito",
	[64112] = "Dedo Direito",
	[64113] = "Dedo Direito",
	[58869] = "Dedo Direito",
	[64064] = "Dedo Direito",
	[64065] = "Dedo Direito",
	[58870] = "Dedo Direito",
	[64080] = "Dedo Direito",
	[64081] = "Dedo Direito",
	[28422] = "Mao Direita",
	[6286] = "Mao Direita",
	[43810] = "Antebraço Direito",
	[37119] = "Antebraço Direito",
	[2992] = "Cotovelo Direito",
	[39317] = "Pescoco",
	[31086] = "Cabeca",
	[12844] = "Cabeca",
	[65068] = "Rosto"
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- BONE
-----------------------------------------------------------------------------------------------------------------------------------------
function Bone(Number)
	return Bones[Number] or false
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- BLOCKITEM
-----------------------------------------------------------------------------------------------------------------------------------------
local BlockItem = {
	["mushroomteaplus"] = true,
	["mushroomtea"] = true,
	["nigirizushi"] = true,
	["sushi"] = true,
	["cupcake"] = true,
	["milkshake"] = true,
	["cappuccino"] = true,
	["applelove"] = true,
	["cheese"] = true,
	["burgershot1"] = true,
	["burgershot2"] = true,
	["burgershot3"] = true,
	["burgershot4"] = true,
	["pizzathis1"] = true,
	["pizzathis2"] = true,
	["pizzathis3"] = true,
	["pizzathis4"] = true,
	["uwucoffee1"] = true,
	["uwucoffee2"] = true,
	["uwucoffee3"] = true,
	["uwucoffee4"] = true,
	["beanmachine1"] = true,
	["beanmachine2"] = true,
	["beanmachine3"] = true,
	["beanmachine4"] = true,
	["octopus"] = true,
	["shrimp"] = true,
	["carp"] = true,
	["codfish"] = true,
	["catfish"] = true,
	["goldenfish"] = true,
	["horsefish"] = true,
	["tilapia"] = true,
	["pacu"] = true,
	["pirarucu"] = true,
	["tambaqui"] = true,
	["milkbottle"] = true,
	["guarananatural"] = true,
	["water"] = true,
	["coffee"] = true,
	["coffeemilk"] = true,
	["cola"] = true,
	["tacos"] = true,
	["fries"] = true,
	["soda"] = true,
	["apple"] = true,
	["orange"] = true,
	["strawberry"] = true,
	["coffee2"] = true,
	["grape"] = true,
	["tange"] = true,
	["banana"] = true,
	["guarana"] = true,
	["acerola"] = true,
	["passion"] = true,
	["tomato"] = true,
	["mushroom"] = true,
	["sugar"] = true,
	["cookies"] = true,
	["orangejuice"] = true,
	["tangejuice"] = true,
	["grapejuice"] = true,
	["strawberryjuice"] = true,
	["bananajuice"] = true,
	["acerolajuice"] = true,
	["passionjuice"] = true,
	["bread"] = true,
	["ketchup"] = true,
	["spaghetti"] = true,
	["cannedsoup"] = true,
	["canofbeans"] = true,
	["meat"] = true,
	["fishfillet"] = true,
	["marshmallow"] = true,
	["cookedfishfillet"] = true,
	["cookedmeat"] = true,
	["hamburger"] = true,
	["hamburger2"] = true,
	["onionrings"] = true,
	["chickenfries"] = true,
	["pizzamozzarella"] = true,
	["pizzamushroom"] = true,
	["pizzabanana"] = true,
	["pizzachocolate"] = true,
	["calzone"] = true,
	["hotdog"] = true,
	["donut"] = true,
	["chocolate"] = true,
	["sandwich"] = true,
	["absolut"] = true,
	["chandon"] = true,
	["dewars"] = true,
	["hennessy"] = true
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- BLOCKCHEST
-----------------------------------------------------------------------------------------------------------------------------------------
function BlockChest(Item)
	local Split = splitString(Item)
	local Item = Split[1]

	if BlockItem[Item] then
		return true
	end

	return false
end