table.insert(Config.scriptsConfig, {

    levelConfig = {
		webhookLevelUp = "",  -- Webhook onde sairá todos os players que passaram de level
		webhookLevelRewards = "",  -- Webhook onde sairá todos os prêmios recebidos pelos players
		webhookLevelSalary = "",  -- Webhook onde sairá todos os salarios recebidos pelos players

		enableMigration = false,  -- Defina como (true) para ativar a migração do antigo banco de dados e (false) para desativar.
		getIdOnlyAfterSpawn = false,  -- Defina como (true) para obter id somente após o spawn, ultil para servidores com multi caracter onde o player pode ter varios ids.

		logoDesactiveActive = 'iron:desactivelogo',  -- Evento para esconder a hud.
		logoActive = 'iron:activelogo',  -- Evento para mostrar a hud novamente.

		commandPermission = { "owner.permissao","admin.permissao","mod.permissao","suporte.permissao" },  -- Defina as permissoes que terão acesso ao comando (/levelcheck)
		
		clientEvents = {  -- Adicione eventos do client, esses eventos serão acionados a cada up.

		},

		serverEvents = {  -- Adicione eventos do server, esses eventos serão acionados a cada up.

		},

		salaryMode = true,  -- Defina true para ativar o sistema de salario. OBS: esse salario sera contado quantos minutos dp level o player estava em serviço e entregue no final do level.
		salary = {
			["Enfermeiro(a)"] = { onServiceGroup = "ParamedicoI", outServiceGroup = "PaisanaParamedicoI", payment = 10000 },
			["Medico(a)"] = { onServiceGroup = "ParamedicoII", outServiceGroup = "PaisanaParamedicoII", payment = 15000 },
			["Diretoria"] = { onServiceGroup = "ParamedicoIII", outServiceGroup = "PaisanaParamedicoIII", payment = 18750 },
			["Diretor(a)"] = { onServiceGroup = "Paramedicolider", outServiceGroup = "PaisanaParamedicolider", payment = 22500 },

			["POLICIAI"] = { onServiceGroup = "PoliciaI", outServiceGroup = "PaisanaPoliciaI", payment = 6250 },
			["POLICIAII"] = { onServiceGroup = "PoliciaII", outServiceGroup = "PaisanaPoliciaII", payment = 11250 },
			["POLICIAIII"] = { onServiceGroup = "PoliciaIII", outServiceGroup = "PaisanaPoliciaIII", payment = 15000 },
			["SUPERINTENDENTE"] = { onServiceGroup = "Policialider", outServiceGroup = "PaisanaPolicialider", payment = 18750 },
			
			["FBI"] = { onServiceGroup = "FBI", outServiceGroup = "PaisanaFBI", payment = 16250 },
			["FBI-Diretor"] = { onServiceGroup = "FBIlider", outServiceGroup = "PaisanaFBIlider", payment = 10000 },
			
			["Mecanico-LosSantos"] = { onServiceGroup = "Mecanicols", outServiceGroup = "PaisanaMecanicols", payment = 2500 },
			["Mecanico-LosSantos-Lider"] = { onServiceGroup = "Mecanicolslider", outServiceGroup = "PaisanaMecanicolslider", payment = 3750 },
			
			["Mecanico-SportRace"] = { onServiceGroup = "Mecanicosr", outServiceGroup = "PaisanaMecanicosr", payment = 2500 },
			["Mecanico-SportRace-Lider"] = { onServiceGroup = "Mecanicosrlider", outServiceGroup = "PaisanaMecanicosrlider", payment = 3750 },
			
			["Mecanico-Bennys"] = { onServiceGroup = "Mecanicobn", outServiceGroup = "PaisanaMecanicobn", payment = 2500 },
			["Mecanico-Bennys-Lider"] = { onServiceGroup = "Mecanicobnlider", outServiceGroup = "PaisanaMecanicobnlider", payment = 3750 },
			
			["Mecanico-Beekers"] = { onServiceGroup = "Mecanicobe", outServiceGroup = "PaisanaMecanicobe", payment = 2500 },
			["Mecanico-Beekers-Lider"] = { onServiceGroup = "Mecanicobelider", outServiceGroup = "PaisanaMecanicobelider", payment = 3750 },

			["Ministro"] = { onServiceGroup = "Ministro", outServiceGroup = "", payment = 15000 },
			["Juiz"] = { onServiceGroup = "Juiz", outServiceGroup = "", payment = 12500 },
			["Promotor"] = { onServiceGroup = "Promotor", outServiceGroup = "", payment = 10000 },
			["Advogado"] = { onServiceGroup = "Advogado", outServiceGroup = "", payment = 6250 },

			["Bombeiro"] = { onServiceGroup = "Bombeiro", outServiceGroup = "PaisanaBombeiro", payment = 10000 },
			["Bombeiro-Lider"] = { onServiceGroup = "Bombeirolider", outServiceGroup = "PaisanaBombeirolider", payment = 15000 },

			["VIP-Start"] = { onServiceGroup = "Start", outServiceGroup = "", payment = 1000 },
			["VIP-STANDARD"] = { onServiceGroup = "Standard", outServiceGroup = "", payment = 2500 },
			["VIP-ADVANCED"] = { onServiceGroup = "Advanced", outServiceGroup = "", payment = 5000 },
			["VIP-SUPREME"] = { onServiceGroup = "Supreme", outServiceGroup = "", payment = 10000 },
			["VIP-DELUXE"] = { onServiceGroup = "Deluxe", outServiceGroup = "", payment = 15000 },
			["VIP-ALPHA"] = { onServiceGroup = "Alpha", outServiceGroup = "", payment = 18750 },
			["VIP-ALPHA-DELUXE"] = { onServiceGroup = "Alphadeluxe", outServiceGroup = "", payment = 31250 },

			["BOOSTER-x1"] = { onServiceGroup = "Booster", outServiceGroup = "", payment = 625 },
			["BOOSTER-x2"] = { onServiceGroup = "Booster2", outServiceGroup = "", payment = 1250 },
			["BOOSTER-x3"] = { onServiceGroup = "Booster3", outServiceGroup = "", payment = 1875 },
			
			["Prefeitura"] = { onServiceGroup = "Suporte", outServiceGroup = "", payment = 1500 },
			["Prefeitura"] = { onServiceGroup = "Mod", outServiceGroup = "", payment = 2000 },
			["Prefeitura"] = { onServiceGroup = "Admin", outServiceGroup = "", payment = 2500 },
			["Prefeitura"] = { onServiceGroup = "Owner", outServiceGroup = "", payment = 3000 },
		},

		randomCars = {  -- Adicione o nome de spawn dos carros nesta lista, será escolhido um carro aleatório pelo sistema como premiação para os players.
			"bmwi8",
			"bmwm5f90",
			"19ramdonk",
			"ferrariitalia",
			"lamborghinihuracan",
			"p1",
			"nissangtr",
			"nissantitan17",
			"panamera",
			"lancerevolution9",
			"hondafk8",
		},

		prizesList = {  -- Crie as premiações de cada level desejado abaixo.
			{
				curLevel = 10,  -- Level em que a premiação será dada.
				randomCar = true,  -- Defina true para dar um carro aleatório da lista (randomCars) ou false para desativar a opção.
				group = "Standard",  -- Grupo que o player irá receber ao chegar no level especificado.
				--money = 1000000,  -- dinheiro que o player irá receber ao chegar no level especificado.
				--specifyCars = {"tezeract","zentorno"},  -- Adicione o nome de spawn dos carros que o player irá receber ao chegar no level especificado.
				--itens = {  -- Adicione itens a esta lista para o player receber ao chegar no level especificado.
				--	{item = 'maconha', value = 50},
				--	{item = 'dinheirosujo', value = 1000000},
				--},

				-----Fivem Store-----
				fStore = true,  -- Caso tenha o script da fivem store ative esta opção para carros e grupos serem removidos automaticamente após os dias especificados abaixo.
				days = 1,  -- Defina os dias para os players perderem os carros e grupos. (Apenas com a opção acima ativa.)

			},
			{
				curLevel = 500,  -- Level em que a premiação será dada.
				randomCar = true,  -- Defina true para dar um carro aleatório da lista (randomCars) ou false para desativar a opção.
				group = "Standard",  -- Grupo que o player irá receber ao chegar no level especificado.
				--money = 1000000,  -- dinheiro que o player irá receber ao chegar no level especificado.
				--specifyCars = {"Ferrariitalia","zentorno"},  -- Adicione o nome de spawn dos carros que o player irá receber ao chegar no level especificado.
				--itens = {  -- Adicione itens a esta lista para o player receber ao chegar no level especificado.
				--	{item = 'maconha', value = 50},
				--	{item = 'dinheirosujo', value = 1000000},
				--},

				-----Fivem Store-----
				fStore = true,  -- Caso tenha o script da fivem store ative esta opção para carros e grupos serem removidos automaticamente após os dias especificados abaixo.
				days = 15,  -- Defina os dias para os players perderem os carros e grupos. (Apenas com a opção acima ativa.)

			},
			{
				curLevel = 1000,  -- Level em que a premiação será dada.
				randomCar = true,  -- Defina true para dar um carro aleatório da lista (randomCars) ou false para desativar a opção.
				group = "Standard",  -- Grupo que o player irá receber ao chegar no level especificado.
				--money = 1000000,  -- dinheiro que o player irá receber ao chegar no level especificado.
				--specifyCars = {"Ferrariitalia","zentorno"},  -- Adicione o nome de spawn dos carros que o player irá receber ao chegar no level especificado.
				--itens = {  -- Adicione itens a esta lista para o player receber ao chegar no level especificado.
				--	{item = 'maconha', value = 50},
				--	{item = 'dinheirosujo', value = 1000000},
				--},

				-----Fivem Store-----
				fStore = true,  -- Caso tenha o script da fivem store ative esta opção para carros e grupos serem removidos automaticamente após os dias especificados abaixo.
				days = 30,  -- Defina os dias para os players perderem os carros e grupos. (Apenas com a opção acima ativa.)

			},
			{
				curLevel = 2000,  -- Level em que a premiação será dada.
				randomCar = true,  -- Defina true para dar um carro aleatório da lista (randomCars) ou false para desativar a opção.
				group = "Standard",  -- Grupo que o player irá receber ao chegar no level especificado.
				--money = 1000000,  -- dinheiro que o player irá receber ao chegar no level especificado.
				--specifyCars = {"Ferrariitalia","zentorno"},  -- Adicione o nome de spawn dos carros que o player irá receber ao chegar no level especificado.
				--itens = {  -- Adicione itens a esta lista para o player receber ao chegar no level especificado.
				--	{item = 'maconha', value = 50},
				--	{item = 'dinheirosujo', value = 1000000},
				--},

				-----Fivem Store-----
				fStore = true,  -- Caso tenha o script da fivem store ative esta opção para carros e grupos serem removidos automaticamente após os dias especificados abaixo.
				days = 30,  -- Defina os dias para os players perderem os carros e grupos. (Apenas com a opção acima ativa.)

			},
			{
				curLevel = 3000,  -- Level em que a premiação será dada.
				randomCar = true,  -- Defina true para dar um carro aleatório da lista (randomCars) ou false para desativar a opção.
				group = "Standard",  -- Grupo que o player irá receber ao chegar no level especificado.
				--money = 1000000,  -- dinheiro que o player irá receber ao chegar no level especificado.
				--specifyCars = {"Ferrariitalia","zentorno"},  -- Adicione o nome de spawn dos carros que o player irá receber ao chegar no level especificado.
				--itens = {  -- Adicione itens a esta lista para o player receber ao chegar no level especificado.
				--	{item = 'maconha', value = 50},
				--	{item = 'dinheirosujo', value = 1000000},
				--},

				-----Fivem Store-----
				fStore = true,  -- Caso tenha o script da fivem store ative esta opção para carros e grupos serem removidos automaticamente após os dias especificados abaixo.
				days = 30,  -- Defina os dias para os players perderem os carros e grupos. (Apenas com a opção acima ativa.)

			},
			{
				curLevel = 4000,  -- Level em que a premiação será dada.
				randomCar = true,  -- Defina true para dar um carro aleatório da lista (randomCars) ou false para desativar a opção.
				group = "Standard",  -- Grupo que o player irá receber ao chegar no level especificado.
				--money = 1000000,  -- dinheiro que o player irá receber ao chegar no level especificado.
				--specifyCars = {"Ferrariitalia","zentorno"},  -- Adicione o nome de spawn dos carros que o player irá receber ao chegar no level especificado.
				--itens = {  -- Adicione itens a esta lista para o player receber ao chegar no level especificado.
				--	{item = 'maconha', value = 50},
				--	{item = 'dinheirosujo', value = 1000000},
				--},

				-----Fivem Store-----
				fStore = true,  -- Caso tenha o script da fivem store ative esta opção para carros e grupos serem removidos automaticamente após os dias especificados abaixo.
				days = 30,  -- Defina os dias para os players perderem os carros e grupos. (Apenas com a opção acima ativa.)

			},
			{
				curLevel = 5000,  -- Level em que a premiação será dada.
				randomCar = true,  -- Defina true para dar um carro aleatório da lista (randomCars) ou false para desativar a opção.
				group = "Standard",  -- Grupo que o player irá receber ao chegar no level especificado.
				--money = 1000000,  -- dinheiro que o player irá receber ao chegar no level especificado.
				--specifyCars = {"Ferrariitalia","zentorno"},  -- Adicione o nome de spawn dos carros que o player irá receber ao chegar no level especificado.
				--itens = {  -- Adicione itens a esta lista para o player receber ao chegar no level especificado.
				--	{item = 'maconha', value = 50},
				--	{item = 'dinheirosujo', value = 1000000},
				--},

				-----Fivem Store-----
				fStore = true,  -- Caso tenha o script da fivem store ative esta opção para carros e grupos serem removidos automaticamente após os dias especificados abaixo.
				days = 30,  -- Defina os dias para os players perderem os carros e grupos. (Apenas com a opção acima ativa.)

			},

		},
	},

	levelLanguagePTBR = {  -- Você pode alterar cada texto do script por aqui!
		commands = {
			level = "nivel",
			levelCheck = "vernivel",
		},

		webhook = {
			passaport = "[Passaporte]:",
			levelUp = "[Chegou ao nível]:",
			salaryPay = "[Recebeu seu salario de]:",
			salaryNotPay = "[Não trabalhou ou não possui emprego!]",
			Jobs = "[Dos empregos]:",
			date = "[Data]:",
			hour = "[Hora]:",
			rewardsPassaport = "Passaporte:",
			rewardsEarned = "[Ganhou]",
			rewardsRandomVehicle = "Veiculo aleatório:",
			rewardsGroup = "Grupo:",
			rewardsVehicle = "Veiculo específico:",
			rewardsMoney = "Dinheiro:",
			rewardsItem = "Item:",
			rewardsFor = "Por",
			rewardsDays = "Dias",
			rewardsLevel = "Por alcançar o level",
		},

		chat = {
			reward = "Recompensa",
			YouWon = "Você ganhou:",
			rewardLevel = "por chegar ao nível:",
		},

		notifys = {
			getLevelP1 = "O nível do passaporte: <b>",
			getLevelP2 = "</b> é: <b>",
			getLevelP3 = ", XP:",
			getLevelPFinal = "</b>.",
			getLevelError1 = "Este passaporte não esta online.",
			getLevelError2 = "Você deve especificar um passaporte.",
			salary = "Seu salario caiu na conta! Valor recebido:",
			salaryJobs = "Empregos:",
		},

		console = {
			migratedPlayerId = "Id:",
			migratedPlayer = "Teve seu nível migrado para o novo sistema!",
			migratedPlayerSeconds = "nível em segundos:",
			startLevelMensage1 = "Sistema de premiação não identificado, Criando...",
			startLevelMensage2 = "Sistema de premiação criado no banco de dados!",
			startLevelError = "Erro no sistema de premiação relogue! Se persistir contate a equipe DEV!!",
		},
	},

	levelLanguageENUS = {  -- You can change the script texts here!
		commands = {
			level = "level",
			levelCheck = "levelCheck",
		},

		webhook = {
			passaport = "[passaport]:",
			levelUp = "[Has reached the level]:",
			salaryPay = "[Received his salary from]:",
			salaryNotPay = "[Has not worked or has no job!]",
			Jobs = "[From jobs]:",
			date = "[Date]:",
			hour = "[Hour]:",
			rewardsPassaport = "Passport:",
			rewardsEarned = "[won]",
			rewardsRandomVehicle = "random vehicle:",
			rewardsGroup = "Group:",
			rewardsVehicle = "Specific vehicle:",
			rewardsMoney = "Money:",
			rewardsItem = "Item:",
			rewardsFor = "Per",
			rewardsDays = "Days",
			rewardsLevel = "for reaching the level",
		},

		chat = {
			reward = "Reward",
			YouWon = "You won:",
			rewardLevel = "for reach the level:",
		},

		notifys = {
			getLevelP1 = "The Passport Level: <b>",
			getLevelP2 = "</b> is: <b>",
			getLevelP3 = ", XP:",
			getLevelPFinal = "</b>.",
			getLevelError1 = "This passport is not online.",
			getLevelError2 = "You must specify a passport.",
			salary = "Your salary has dropped into your account! value received:",
			salaryJobs = "Jobs:",
		},

		console = {
			migratedPlayerId = "Id:",
			migratedPlayer = "Had your level migrated to the new system!",
			migratedPlayerSeconds = "level in seconds:",
			startLevelMensage1 = "Unidentified reward system, Creating...",
			startLevelMensage2 = "Awards system created in the database!",
			startLevelError = "reconnect please, reward system error! If it persists, contact the DEV team!!",
		},
	},
})