-----------------------------------------------------------------------------------------------------------------------------------------
-- GROUPS
-----------------------------------------------------------------------------------------------------------------------------------------
Groups = {
	["Admin"] = {
		["Parent"] = {
			["Admin"] = true
		},
		["Hierarchy"] = { "Administrador","Moderador","Suporte" },
		["Service"] = {}
	},
	["player.blips"] = {
		["Parent"] = {
			["Admin"] = true,
			["Moderator"] = true,
			["Suporte"] = true,
			["Police"] = true,
			["PoliciaMilitar"] = true,
			["Rota"] = true,
			["BAEP"] = true,
			["PoliciaCivil"] = true,
			["Exercito"] = true,
			["Paramedic"] = true,
			["player.blips"] = true
		},
		["Hierarchy"] = { "Administrador","Moderador","Suporte" },
		["Service"] = {}
	},
	["player.noclip"] = {
		["Parent"] = {
			["Admin"] = true,
			["Moderator"] = true,
			["Suporte"] = true,
			["player.noclip"] = true
		},
		["Hierarchy"] = { "Administrador","Moderador","Suporte" },
		["Service"] = {}
	},
	["player.teleport"] = {
		["Parent"] = {
			["Admin"] = true,
			["Moderator"] = true,
			["Suporte"] = true,
			["player.teleport"] = true
		},
		["Hierarchy"] = { "Administrador","Moderador","Suporte" },
		["Service"] = {}
	},
	["player.secret"] = {		
		["Parent"] = {
			["Admin"] = true,
			["Moderator"] = true,
			["Suporte"] = true,
			["player.secret"] = true
		},
		["Hierarchy"] = { "Administrador","Moderador","Suporte" },
		["Service"] = {}
	},
	["player.spec"] = {
		["Parent"] = {
			["Admin"] = true,
			["Moderator"] = true,
			["Suporte"] = true,
			["player.spec"] = true
		},
		["Hierarchy"] = { "Administrador","Moderador","Suporte" },
		["Service"] = {}
	},
	["spec.permissao"] = {
		["Parent"] = {
			["Admin"] = true,
			["Moderator"] = true,
			["Suporte"] = true,
			["spec.permissao"] = true
		},
		["Hierarchy"] = { "Administrador","Moderador","Suporte" },
		["Service"] = {}
	},
	["player.wall"] = {
		["Parent"] = {
			["Admin"] = true,
			["Moderator"] = true,
			["Suporte"] = true,
			["player.wall"] = true
		},
		["Hierarchy"] = { "Administrador","Moderador","Suporte" },
		["Service"] = {}
	},
	["mqcu.permissao"] = {
		["Parent"] = {
			["Admin"] = true,
			["Moderator"] = true,
			["Suporte"] = true,
			["mqcu.permissao"] = true
		},
		["Hierarchy"] = { "Administrador","Moderador","Suporte" },
		["Service"] = {}
	},
	["player.som"] = {
		["Parent"] = {
			["Admin"] = true,
			["Moderator"] = true,
			["Suporte"] = true,
			["Favela"] = true,
			["Infinity"] = true,
			["Metralha"] = true,
			["Foguetao"] = true,
			["Magnata"] = true,
			["player.som"] = true
		},
		["Hierarchy"] = { "Administrador","Moderador","Suporte" },
		["Service"] = {}
	},
	["Premium"] = {
		["Parent"] = {
			["Premium"] = true
		},
		["Hierarchy"] = { "Platina","Ouro","Prata","Bronze" },
		["Salary"] = { 2500,2250,2000,1750 },
		["Service"] = {}
	},
	--[["Premium"] = {
		["Parent"] = {
			["Bronze"] = true,
			["Prata"] = true,
			["Ouro"] = true,
			["Platina"] = true,
			["Favela"] = true,
			["Infinity"] = true,
			["Metralha"] = true,
			["Foguetao"] = true,
			["Magnata"] = true,
		},
		["Hierarchy"] = {},
		["Salary"] = {},
		["Service"] = {}
	},]]
	["VIPBasico"] = {
		["Parent"] = {
			["VIPLatao"] = true,
		},
		["Hierarchy"] = {},
		["Salary"] = {},
		["Service"] = {}
	},
	["VIPLatao"] = {
		["Parent"] = {
			["VIPLatao"] = true
		},
		["Hierarchy"] = { "VIPLatao" },
		["Salary"] = { 500 },
		["Service"] = {}
	},
	["Bronze"] = {
		["Parent"] = {
			["Bronze"] = true
		},
		["Hierarchy"] = { "Bronze" },
		["Salary"] = { 150 },
		["Service"] = {}
	},
	["Prata"] = {
		["Parent"] = {
			["Prata"] = true
		},
		["Hierarchy"] = { "Prata" },
		["Salary"] = { 300 },
		["Service"] = {}
	},
	["Ouro"] = {
		["Parent"] = {
			["Ouro"] = true
		},
		["Hierarchy"] = { "Ouro" },
		["Salary"] = { 350 },
		["Service"] = {}
	},
	["Platina"] = {
		["Parent"] = {
			["Platina"] = true
		},
		["Hierarchy"] = { "Platina" },
		["Salary"] = { 400 },
		["Service"] = {}
	},
	["Favela"] = {
		["Parent"] = {
			["Favela"] = true
		},
		["Hierarchy"] = { "Favela" },
		["Salary"] = { 450 },
		["Service"] = {}
	},
	["Infinity"] = {
		["Parent"] = {
			["Infinity"] = true
		},
		["Hierarchy"] = { "Infinity" },
		["Salary"] = { 550 },
		["Service"] = {}
	},
	["Metralha"] = {
		["Parent"] = {
			["Metralha"] = true
		},
		["Hierarchy"] = { "Metralha" },
		["Salary"] = { 700 },
		["Service"] = {}
	},
	["Foguetao"] = {
		["Parent"] = {
			["Foguetao"] = true
		},
		["Hierarchy"] = { "Foguetao" },
		["Salary"] = { 900 },
		["Service"] = {}
	},
	["Magnata"] = {
		["Parent"] = {
			["Magnata"] = true
		},
		["Hierarchy"] = { "Magnata" },
		["Salary"] = { 1100 },
		["Service"] = {}
	},

	["Police"] = {
		["Parent"] = {
			["Police"] = true,
			["Rota"] = true, -- Coronel,Tenente-Coronel,Major,Capitao,Primeiro tenente,Segundo tenente,Aspirante,Sub-Tenente,Primeiro sargento,Segundo sargento,terceiro sargento,cabo,soldado,aluno
			["PoliciaMilitar"] = true, --Coronel,Tenente-Coronel,Major,Capitao,Primeiro tenente,Segundo tenente,Aspirante,Sub-Tenente,Primeiro sargento,Segundo sargento,terceiro sargento,cabo,soldado,aluno
			["ForçaTatica"] = true, --Coronel,Tenente-Coronel,Major,Capitao,Primeiro tenente,Segundo tenente,Aspirante,Sub-Tenente,Primeiro sargento,Segundo sargento,terceiro sargento,cabo,soldado,aluno
			["BAEP"] = true, -- Coronel,Tenente-Coronel,Major,Capitao,Primeiro tenente,Segundo tenente,Aspirante,Sub-Tenente,Primeiro sargento,Segundo sargento,terceiro sargento,cabo,soldado,
			["PoliciaCivil"] = true, -- Coronel,Tenente-Coronel,Major,Capitao,Primeiro tenente,Segundo tenente,Aspirante,Sub-Tenente,Primeiro sargento,Segundo sargento,terceiro sargento,cabo,soldado,aluno
			["Exercito"] = true -- Marechal,General de Exercito,General de Divisao,General de Brigada,Coronel,Tenente-Coronel,Major,Capitao,Primeiro tenente,Segundo tenente,Aspirante,Sub-Tenente,Primeiro sargento,Segundo sargento,terceiro sargento,cabo,soldado,soldado-ev
		},
		["Hierarchy"] = { "Police" },
		["Salary"] = { 10000,8000,7000,4000,3500,3000,2500 }, 
		["Service"] = {}
	},
	["Rota"] = {
		["Parent"] = {
			["Rota"] = true
		},
		["Hierarchy"] = { "Coronel","Tenente-Coronel","Major","Capitao","Primeiro-Tenente","Segundo-Tenente","Aspirante","Sub-Tenente","Primeiro-Sargento","Segundo-Sargento","Terceiro-Sargento","Cabo","Soldado" },
		["Salary"] = { 14800,12300,10800,9750,8600,7500,2900,6300,5750,5200,4600,4000,3000 },
		["Service"] = {},
		["Type"] = "Work"
	},
	["PoliciaMilitar"] = {
		["Parent"] = {
			["PoliciaMilitar"] = true
		},
		["Hierarchy"] = { "Coronel","Tenente-Coronel","Major","Capitao","Primeiro-Tenente","Segundo-Tenente","Aspirante","Sub-Tenente","Primeiro-Sargento","Segundo-Sargento","Terceiro-Sargento","Cabo","Soldado","Aluno" },
		["Salary"] = { 14500,12000,10500,9450,8300,7200,2600,6000,5450,4900,4300,3700,2650,1800 },
		["Service"] = {},
		["Type"] = "Work"
	},
	["ForçaTatica"] = {
		["Parent"] = {
			["ForçaTatica"] = true
		},
		["Hierarchy"] = { "Coronel","Tenente-Coronel","Major","Capitao","Primeiro-Tenente","Segundo-Tenente","Aspirante","Sub-Tenente","Primeiro-Sargento","Segundo-Sargento","Terceiro-Sargento","Cabo","Soldado","Aluno" },
		["Salary"] = { 2500,2250,2000 },
		["Service"] = {},
		["Type"] = "Work"
	},
	["BAEP"] = {
		["Parent"] = {
			["BAEP"] = true
		},
		["Hierarchy"] = { "Coronel","Tenente-Coronel","Major","Capitao","Primeiro-Tenente","Segundo-Tenente","Aspirante","Sub-Tenente","Primeiro-Sargento","Segundo-Sargento","Terceiro-Sargento","Cabo","Soldado","Aluno" },
		["Salary"] = { 2500,2250,2000 },
		["Service"] = {},
		["Type"] = "Work"
	},
	["PoliciaCivil"] = {
		["Parent"] = {
			["PoliciaCivil"] = true
		},
		["Hierarchy"] = { "Delegado-Geral","Delegado","Investigador","Escrivão","Perito-criminal","Agente" },
		["Salary"] = { 14500,12000,10500,8000,6000,5000 },
		["Service"] = {},
		["Type"] = "Work"
	},
	["Exercito"] = {
		["Parent"] = {
			["Exercito"] = true
		},
		["Hierarchy"] = { "Marechal","General de Exercito","General de Divisao","General de Brigada","Coronel","Tenente-Coronel","Major","Capitao","Primeiro-Tenente","Segundo-Tenente","Aspirante","Sub-Tenente","Primeiro-Sargento","Segundo-Sargento","Terceiro-Sargento","Cabo","Soldado","Soldado-ev" },
		["Salary"] = { 2500,2250,2000 },
		["Service"] = {},
		["Type"] = "Work"
	},
	["Paramedic"] = {
		["Parent"] = {
			["Paramedic"] = true
		},
		["Hierarchy"] = { "Diretor-Geral","Diretor","Medico","Residente","Enfermeiro-Chefe","Enfermeiro-Geral","Enfermeiro" },--
		["Salary"] = { 14500,12000,10500,6000,5450,4900,3700 },
		["Service"] = {},
		["Type"] = "Work"
	},
	["Emergency"] = {
		["Parent"] = {
			["Police"] = true,
			["Paramedic"] = true,
			["Rota"] = true,
			["PoliciaMilitar"] = true, 
			["Força-Tatica"] = true,
			["BAEP"] = true, 
			["PoliciaCivil"] = true,
			["Exercito"] = true
			
		},
		["Hierarchy"] = { "Chefe" },
		["Service"] = {}
	},

	["Mechanic"] = {
		["Parent"] = {
			["AutoSport"] = true,
			["EastCustoms"] = true,
		},
		["Hierarchy"] = { "Membro" },
		["Service"] = {}
	},
	["AutoSport"] = {
		["Parent"] = {
			["AutoSport"] = true
		},
		["Hierarchy"] = { "CEO","Gerente","Sub-Gerente","Mecanico Avançado","Mecanico","Aprendiz" },
		["Salary"] = { 14500,12000,10000,8000,6500,5000 },
		["Service"] = {},
		["Type"] = "Work"
	},
	["EastCustoms"] = {
		["Parent"] = {
			["EastCustoms"] = true
		},
		["Hierarchy"] = { "Chefe","Gerente","Membro" },
		["Salary"] = { 3500,3250,3000 },
		["Service"] = {},
		["Type"] = "Work"
	},

	["FastFood"] = {
		["Parent"] = {
			["BurgerShot"] = true,
			["CluckinBell"] = true,
		},
		["Hierarchy"] = { "Membro" },
		["Service"] = {}
	},
	["BurgerShot"] = {
		["Parent"] = {
			["BurgerShot"] = true
		},
		["Hierarchy"] = { "Chefe","Gerente","Funcionário" },
		["Service"] = {},
		["Type"] = "Work"
	},
	["CluckinBell"] = {
		["Parent"] = {
			["CluckinBell"] = true
		},
		["Hierarchy"] = { "Chefe","Gerente","Funcionário" },
		["Service"] = {},
		["Type"] = "Work"
	},

	
	["Buff"] = {
		["Parent"] = {
			["Buff"] = true
		},
		["Hierarchy"] = { "Chefe" },
		["Salary"] = { 2250 },
		["Service"] = {}
	},

	["Ilegal"] = { -- LAVAGEM
		["Parent"] = {
			["MoneyLaundry"] = true,
			["MoneyLaundry2"] = true,
			["Fac2"] = true,
			["Fac4"] = true,

		},
	},
	["Ilegal2"] = { -- ARMAS
		["Parent"] = {
			["Weapons"] = true,
			["Weapons2"] = true,
			["Fac8"] = true,
			["Fac9"] = true,
			["Fac13"] = true,
		},
	},
	["Ilegal3"] = { -- Munição
		["Parent"] = {
			["Ammos"] = true,
			["Ammos2"] = true,
			["Fac3"] = true,
			["Fac5"] = true,
			["Fac12"] = true,
		},
	},
	["Ilegal4"] = { -- Contrabando
		["Parent"] = {
			["Smuggling"] = true,
			["Smuggling2"] = true,
			["Fac1"] = true,
			["Fac6"] = true,
			["Fac7"] = true,
			["Fac10"] = true,
			["Fac11"] = true,
			["Fac14"] = true,

		},
	},


	["Fac1"] = {
		["Parent"] = {
			["Fac1"] = true
		},
		["Hierarchy"] = { "Chefe","Gerente","Membro" },
		["Service"] = {},
		["Type"] = "Work"
	},
	["Fac2"] = {
		["Parent"] = {
			["Fac2"] = true
		},
		["Hierarchy"] = { "Chefe","Gerente","Membro" },
		["Service"] = {},
		["Type"] = "Work"
	},
	["Fac3"] = {
		["Parent"] = {
			["Fac3"] = true
		},
		["Hierarchy"] = { "Chefe","Gerente","Membro" },
		["Service"] = {},
		["Type"] = "Work"
	},
	["Fac4"] = {
		["Parent"] = {
			["Fac4"] = true
		},
		["Hierarchy"] = { "Chefe","Gerente","Membro" },
		["Service"] = {},
		["Type"] = "Work"
	},
	["Fac5"] = {
		["Parent"] = {
			["Fac5"] = true
		},
		["Hierarchy"] = { "Chefe","Gerente","Membro" },
		["Service"] = {},
		["Type"] = "Work"
	},
	["Fac6"] = {
		["Parent"] = {
			["Fac6"] = true
		},
		["Hierarchy"] = { "Chefe","Gerente","Membro" },
		["Service"] = {},
		["Type"] = "Work"
	},
	["Fac7"] = {
		["Parent"] = {
			["Fac7"] = true
		},
		["Hierarchy"] = { "Chefe","Gerente","Membro" },
		["Service"] = {},
		["Type"] = "Work"
	},
	["Fac8"] = {
		["Parent"] = {
			["Fac8"] = true
		},
		["Hierarchy"] = { "Chefe","Gerente","Membro" },
		["Service"] = {},
		["Type"] = "Work"
	},
	["Fac9"] = {
		["Parent"] = {
			["Fac9"] = true
		},
		["Hierarchy"] = { "Chefe","Gerente","Membro" },
		["Service"] = {},
		["Type"] = "Work"
	},
	["Fac10"] = {
		["Parent"] = {
			["Fac10"] = true
		},
		["Hierarchy"] = { "Chefe","Gerente","Membro" },
		["Service"] = {},
		["Type"] = "Work"
	},
	["Fac11"] = {
		["Parent"] = {
			["Fac11"] = true
		},
		["Hierarchy"] = { "Chefe","Gerente","Membro" },
		["Service"] = {},
		["Type"] = "Work"
	},
	["Fac12"] = {
		["Parent"] = {
			["Fac12"] = true
		},
		["Hierarchy"] = { "Chefe","Gerente","Membro" },
		["Service"] = {},
		["Type"] = "Work"
	},
	["Fac13"] = {
		["Parent"] = {
			["Fac13"] = true
		},
		["Hierarchy"] = { "Chefe","Gerente","Membro" },
		["Service"] = {},
		["Type"] = "Work"
	},
	["Fac14"] = {
		["Parent"] = {
			["Fac14"] = true
		},
		["Hierarchy"] = { "Chefe","Gerente","Membro" },
		["Service"] = {},
		["Type"] = "Work"
	},
	
	["MoneyLaundry"] = {
		["Parent"] = {
			["MoneyLaundry"] = true
		},
		["Hierarchy"] = { "Chefe","Sub-Chefe","Gerente","Conselheiro","Membro" },
		["Service"] = {},
		["Type"] = "Work"
	},
	["MoneyLaundry2"] = {
		["Parent"] = {
			["MoneyLaundry2"] = true
		},
		["Hierarchy"] = { "Chefe","Sub-Chefe","Gerente","Conselheiro","Membro" },
		["Service"] = {},
		["Type"] = "Work"
	},

	["Weapons"] = {
		["Parent"] = {
			["Weapons"] = true
		},
		["Hierarchy"] = { "Chefe","Sub-Chefe","Gerente","Conselheiro","Membro" },
		["Service"] = {},
		["Type"] = "Work"
	},
	["Weapons2"] = {
		["Parent"] = {
			["Weapons2"] = true
		},
		["Hierarchy"] = { "Chefe","Sub-Chefe","Gerente","Conselheiro","Membro" },
		["Service"] = {},
		["Type"] = "Work"
	},

	["Ammos"] = {
		["Parent"] = {
			["Ammos"] = true
		},
		["Hierarchy"] = { "Chefe","Sub-Chefe","Gerente","Conselheiro","Membro" },
		["Service"] = {},
		["Type"] = "Work"
	},
	["Ammos2"] = {
		["Parent"] = {
			["Ammos2"] = true
		},
		["Hierarchy"] = { "Chefe","Sub-Chefe","Gerente","Conselheiro","Membro" },
		["Service"] = {},
		["Type"] = "Work"
	},

	["Smuggling"] = {
		["Parent"] = {
			["Smuggling"] = true
		},
		["Hierarchy"] = { "Chefe","Sub-Chefe","Gerente","Conselheiro","Membro" },
		["Service"] = {},
		["Type"] = "Work"
	},
	["Smuggling2"] = {
		["Parent"] = {
			["Smuggling2"] = true
		},
		["Hierarchy"] = { "Chefe","Sub-Chefe","Gerente","Conselheiro","Membro" },
		["Service"] = {},
		["Type"] = "Work"
	},
}