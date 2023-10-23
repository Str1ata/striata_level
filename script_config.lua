table.insert(Config.scriptsConfig, {

    levelConfig = {
		itensImages = "http://0.0.0.0/inventory/",  -- Link de imagens do seu inventario
		vehiclesImages = "http://0.0.0.0/vehicles/",  -- Link de imagens dos seus veiculos

		webhookLevelUp = "",  -- Webhook onde sairá todos os players que passaram de level.
		webhookLevelRewards = "",  -- Webhook onde sairá todos os prêmios recebidos pelos players.
		webhookLevelRewardsExpiration = "",  -- Webhook onde sairá todos os prêmios expirados dos players.
		webhookLevelSalary = "",  -- Webhook onde sairá todos os salarios recebidos pelos players.

		expirationSystem = true,  -- Defina como (true) para habilitar o sistema de expiração, esse sistema ira verificar as datas dos prêmios e os removera caso esteja expirada.
		timeCheckExpiration = 1,  -- Defina como o tempo em horas que o script ira verificar os prêmios expirados.

		rewardNotifyTime = 60,  -- Defina o tempo da notificação que mostra os prêmios em segundos.

		logoDesactiveActive = 'iron:desactivelogo',  -- Evento para esconder a hud.
		logoActive = 'iron:activelogo',  -- Evento para mostrar a hud novamente.

		commandPermission = { "owner.permissao","admin.permissao","mod.permissao","suporte.permissao" },  -- Defina as permissões que terão acesso ao comando (/vernivel)
		
		clientEvents = {  -- Adicione eventos do client, esses eventos serão acionados a cada up.

		},

		serverEvents = {  -- Adicione eventos do server, esses eventos serão acionados a cada up.

		},

		whiteListSystem = true,  -- Defina true para ativar ou false para desativar o sistema de white list.
		whiteListMode = "Questions",  -- Modos: "Standard" : ( apenas clique para liberar) | "Questions" : (Perguntas com % de acertos para ser aprovado)
		whiteListPercent = 60,  -- Porcentagem que o jogador deve acertar das perguntas para ser aprovado.
		whiteListTimeToNew = 10,  -- Tempo em minutos para realizar o teste novamente caso reprovado.
		whiteListQuestions = {  -- Defina as perguntas aqui!
			[1] = {
				["Question"] = "O que é power-gaming?",
				["Response"] = 3,
				["Questions"] = {
					[1] = "É o poder do jogo.",
					[2] = "É Matar alguém sem motivo.",
					[3] = "É Fazer algo que não é possível na vida real e abusar da fisica do jogo.",
					[4] = "É sair do servidor em quanto está participando de uma ação."
				}
			},
			[2] = {
				["Question"] = "O que é combat logging?",
				["Response"] = 4,
				["Questions"] = {
					[1] = "É matar alguém ao entrar no servidor.",
					[2] = "É matar alguém sem motivo.",
					[3] = "É matar alguém atropelado.",
					[4] = "É sair do servidor em quanto está participando de uma ação."
				}
			}
		},

		--? Segue a ordem dos parâmetros retornados pelo evento abaixo:
		---@param user_id id unico do player
		---@param identity tabela com a informações do player {name,lastName,age,document,phone}
		---@param status de white list true caso tenha passado ou false caso tenha reprovado 
		---@param points pontos feito no questionário
		whiteListEventInfo = "striata:whiteList:inform",  -- Este evento será acionado quando um player terminar sua white list, informando se o mesmo passou ou reprovou e qual sua pontuação, tambem é entregue o nome e o id.
		
		whiteListSqlInfos = {  -- Insira aqui as informações do seu banco de dados utilizado para whitelist.
			dataTable = "vrp_users",  -- Nome da tabela usada para whitelist.
			idColumn = "id",  -- Nome da coluna com o id do player.
			whiteListColumn = "whitelisted", -- Nome da coluna com o estado de aprovação do player na whitelist.
			aproveState = true,  -- Estado de aprovado na coluna de aprovação.
			reproveState = false  -- Estado de reprovado na coluna de aprovação.
		},
		whiteListButtons = {  -- Adicione até 6 botões ao menu de whitelist.
			[1] = {
				enable = true,
				title = "Regras",
				img = "https://media.discordapp.net/attachments/753086574710882457/1164190722069643264/icons8-rules-96.png",
				url = ""
			},
			[2] = {
				enable = true,
				title = "Instagran",
				img = "https://media.discordapp.net/attachments/753086574710882457/1164179512347590788/instagram.png",
				url = ""
			},
			[3] = {
				enable = true,
				title = "Discord",
				img = "https://media.discordapp.net/attachments/753086574710882457/1164179512620240966/discord.png",
				url = "https://discord.gg/DAdDZv6A5G"
			},
			[4] = {
				enable = true,
				title = "Top Boost discord",
				img = "https://media.discordapp.net/attachments/753086574710882457/1164235639672295424/banner_by_slimarts.png",
				url = "https://discord.gg/top-boost"
			},
			[5] = {
				enable = false,
				title = "",
				img = "",
				url = ""
			},
			[6] = {
				enable = true,
				title = "Striata Shop discord",
				img = "https://media.discordapp.net/attachments/753086574710882457/1164185305323147315/2160x2160_.png",
				url = "https://discord.gg/DAdDZv6A5G"
			},
		},

		salaryMode = true,  -- Defina true para ativar o sistema de salário. OBS: esse salário será contado quantos minutos do nível o player estava em serviço e entregue no up do nível.
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

		prizesList = {  -- Crie as premiações de cada nível desejado abaixo.
			{
				curLevel = 0,  -- Level em que a premiação será dada. (Caso esteja 0 o premio sera dado ao entrar no servidor pela primeira vez!)
				randomCar = false,  -- Defina true para dar um carro aleatório da lista (randomCars) ou false para desativar a opção.
				group = "cidadao",  -- Grupo que o player irá receber ao chegar no nível especificado.
				money = 5000,  -- dinheiro que o player irá receber ao chegar no nível especificado.
				specifyCars = {"faggio"},  -- Adicione o nome de spawn dos carros que o player irá receber ao chegar no nível especificado.
				-- playerChoice = {  -- Adicione itens e veículos para serem escolhidos pelo jogador. 
				-- 	itensAmout = 3,
				-- 	itens = {
				-- 		{item = 'celular', amount = 1},
				-- 		{item = 'radio', amount = 1},
				-- 		{item = 'mochila', amount = 3},
				-- 		{item = 'roupas', amount = 1},
				-- 	},
				-- 	vehiclesAmout = 2,
				-- 	vehicles = {"bmwi8","bmwm5f90","19ramdonk","ferrariitalia","lamborghinihuracan","p1","nissangtr","nissantitan17","panamera","lancerevolution9","hondafk8"}
				-- },
				itens = {  -- Adicione itens a esta lista para o player receber ao chegar no nível especificado.
					{item = 'agua', amount = 1},
					{item = 'hamburguer', amount = 1},
				},

				---Expiração-----
				expiration = false,  -- Defina como (true) para ativar. Esta opção ira remover carros e grupos automaticamente após os dias especificados abaixo.
				days = 1,  -- Defina os dias para os players perderem os carros e grupos. (Apenas com a opção acima ativa.)

			},
			{
				curLevel = 0,  -- Level em que a premiação será dada. (Caso esteja 0 o premio sera dado ao entrar no servidor pela primeira vez!)
				randomCar = false,  -- Defina true para dar um carro aleatório da lista (randomCars) ou false para desativar a opção.
				-- group = "cidadao",  -- Grupo que o player irá receber ao chegar no nível especificado.
				-- money = 5000,  -- dinheiro que o player irá receber ao chegar no nível especificado.
				-- specifyCars = {"faggio"},  -- Adicione o nome de spawn dos carros que o player irá receber ao chegar no nível especificado.
				playerChoice = {  -- Adicione itens e veículos para serem escolhidos pelo jogador. 
					itensAmout = 2,
					itens = {
						{item = 'celular', amount = 1},
						{item = 'radio', amount = 1},
						{item = 'mochila', amount = 3},
						{item = 'roupas', amount = 1},
					},
					vehiclesAmout = 1,
					vehicles = {"bmwi8","bmwm5f90","19ramdonk","ferrariitalia","lamborghinihuracan","p1","nissangtr","nissantitan17","panamera","lancerevolution9","hondafk8"}
				},
				-- itens = {  -- Adicione itens a esta lista para o player receber ao chegar no nível especificado.
				-- 	{item = 'agua', amount = 1},
				-- 	{item = 'hamburguer', amount = 1},
				-- },

				---Expiração-----
				expiration = true,  -- Defina como (true) para ativar. Esta opção ira remover carros e grupos automaticamente após os dias especificados abaixo.
				days = 1,  -- Defina os dias para os players perderem os carros e grupos. (Apenas com a opção acima ativa.)

			},
			{
				curLevel = 5,  -- Level em que a premiação será dada. (Caso esteja 0 o premio sera dado ao entrar no servidor pela primeira vez!)
				-- randomCar = true,  -- Defina true para dar um carro aleatório da lista (randomCars) ou false para desativar a opção.
				-- group = "Standard",  -- Grupo que o player irá receber ao chegar no nível especificado.
				permissions = {"police.permissao","FBI.permissao"},  -- Restrinja o premio para apenas quem tiver a permissão especificada aqui.
				money = 10000,  -- dinheiro que o player irá receber ao chegar no nível especificado.
				--specifyCars = {"tezeract","zentorno"},  -- Adicione o nome de spawn dos carros que o player irá receber ao chegar no nível especificado.
				--itens = {  -- Adicione itens a esta lista para o player receber ao chegar no nível especificado.
				--	{item = 'maconha', amount = 50},
				--	{item = 'dinheirosujo', amount = 1000000},
				--},

				---Expiração-----
				-- expiration = true,  -- Defina como (true) para ativar. Esta opção ira remover carros e grupos automaticamente após os dias especificados abaixo.
				-- days = 1,  -- Defina os dias para os players perderem os carros e grupos. (Apenas com a opção acima ativa.)

			},
			{
				curLevel = 10,  -- Level em que a premiação será dada. (Caso esteja 0 o premio sera dado ao entrar no servidor pela primeira vez!)
				randomCar = true,  -- Defina true para dar um carro aleatório da lista (randomCars) ou false para desativar a opção.
				group = "Standard",  -- Grupo que o player irá receber ao chegar no nível especificado.
				--money = 1000000,  -- dinheiro que o player irá receber ao chegar no nível especificado.
				--specifyCars = {"tezeract","zentorno"},  -- Adicione o nome de spawn dos carros que o player irá receber ao chegar no nível especificado.
				--itens = {  -- Adicione itens a esta lista para o player receber ao chegar no nível especificado.
				--	{item = 'maconha', amount = 50},
				--	{item = 'dinheirosujo', amount = 1000000},
				--},

				---Expiração-----
				expiration = true,  -- Defina como (true) para ativar. Esta opção ira remover carros e grupos automaticamente após os dias especificados abaixo.
				days = 1,  -- Defina os dias para os players perderem os carros e grupos. (Apenas com a opção acima ativa.)

			},
			{
				curLevel = 280,  -- Level em que a premiação será dada. (Caso esteja 0 o premio sera dado ao entrar no servidor pela primeira vez!)
				randomCar = true,  -- Defina true para dar um carro aleatório da lista (randomCars) ou false para desativar a opção.
				group = "Supreme",  -- Grupo que o player irá receber ao chegar no nível especificado.
				money = 666,  -- dinheiro que o player irá receber ao chegar no nível especificado.
				specifyCars = {"adder","furia"},  -- Adicione o nome de spawn dos carros que o player irá receber ao chegar no nível especificado.
				itens = {  -- Adicione itens a esta lista para o player receber ao chegar no nível especificado.
					{item = 'maconha', amount = 50},
					{item = 'dinheirosujo', amount = 1000000},
				},

				---Expiração-----
				expiration = true,  -- Defina como (true) para ativar. Esta opção ira remover carros e grupos automaticamente após os dias especificados abaixo.
				days = 1,  -- Defina os dias para os players perderem os carros e grupos. (Apenas com a opção acima ativa.)

			},
			{
				curLevel = 500,  -- Level em que a premiação será dada. (Caso esteja 0 o premio sera dado ao entrar no servidor pela primeira vez!)
				randomCar = true,  -- Defina true para dar um carro aleatório da lista (randomCars) ou false para desativar a opção.
				group = "Standard",  -- Grupo que o player irá receber ao chegar no nível especificado.
				--money = 1000000,  -- dinheiro que o player irá receber ao chegar no nível especificado.
				--specifyCars = {"Ferrariitalia","zentorno"},  -- Adicione o nome de spawn dos carros que o player irá receber ao chegar no nível especificado.
				--itens = {  -- Adicione itens a esta lista para o player receber ao chegar no nível especificado.
				--	{item = 'maconha', amount = 50},
				--	{item = 'dinheirosujo', amount = 1000000},
				--},

				---Expiração-----
				expiration = true,  -- Defina como (true) para ativar. Esta opção ira remover carros e grupos automaticamente após os dias especificados abaixo.
				days = 15,  -- Defina os dias para os players perderem os carros e grupos. (Apenas com a opção acima ativa.)

			},
			{
				curLevel = 1000,  -- Level em que a premiação será dada. (Caso esteja 0 o premio sera dado ao entrar no servidor pela primeira vez!)
				randomCar = true,  -- Defina true para dar um carro aleatório da lista (randomCars) ou false para desativar a opção.
				group = "Standard",  -- Grupo que o player irá receber ao chegar no nível especificado.
				--money = 1000000,  -- dinheiro que o player irá receber ao chegar no nível especificado.
				--specifyCars = {"Ferrariitalia","zentorno"},  -- Adicione o nome de spawn dos carros que o player irá receber ao chegar no nível especificado.
				--itens = {  -- Adicione itens a esta lista para o player receber ao chegar no nível especificado.
				--	{item = 'maconha', amount = 50},
				--	{item = 'dinheirosujo', amount = 1000000},
				--},

				---Expiração-----
				expiration = true,  -- Defina como (true) para ativar. Esta opção ira remover carros e grupos automaticamente após os dias especificados abaixo.
				days = 30,  -- Defina os dias para os players perderem os carros e grupos. (Apenas com a opção acima ativa.)

			},
			{
				curLevel = 2000,  -- Level em que a premiação será dada. (Caso esteja 0 o premio sera dado ao entrar no servidor pela primeira vez!)
				randomCar = true,  -- Defina true para dar um carro aleatório da lista (randomCars) ou false para desativar a opção.
				group = "Standard",  -- Grupo que o player irá receber ao chegar no nível especificado.
				--money = 1000000,  -- dinheiro que o player irá receber ao chegar no nível especificado.
				--specifyCars = {"Ferrariitalia","zentorno"},  -- Adicione o nome de spawn dos carros que o player irá receber ao chegar no nível especificado.
				--itens = {  -- Adicione itens a esta lista para o player receber ao chegar no nível especificado.
				--	{item = 'maconha', amount = 50},
				--	{item = 'dinheirosujo', amount = 1000000},
				--},

				---Expiração-----
				expiration = true,  -- Defina como (true) para ativar. Esta opção ira remover carros e grupos automaticamente após os dias especificados abaixo.
				days = 30,  -- Defina os dias para os players perderem os carros e grupos. (Apenas com a opção acima ativa.)

			},
			{
				curLevel = 3000,  -- Level em que a premiação será dada. (Caso esteja 0 o premio sera dado ao entrar no servidor pela primeira vez!)
				randomCar = true,  -- Defina true para dar um carro aleatório da lista (randomCars) ou false para desativar a opção.
				group = "Standard",  -- Grupo que o player irá receber ao chegar no nível especificado.
				--money = 1000000,  -- dinheiro que o player irá receber ao chegar no nível especificado.
				--specifyCars = {"Ferrariitalia","zentorno"},  -- Adicione o nome de spawn dos carros que o player irá receber ao chegar no nível especificado.
				--itens = {  -- Adicione itens a esta lista para o player receber ao chegar no nível especificado.
				--	{item = 'maconha', amount = 50},
				--	{item = 'dinheirosujo', amount = 1000000},
				--},

				---Expiração-----
				expiration = true,  -- Defina como (true) para ativar. Esta opção ira remover carros e grupos automaticamente após os dias especificados abaixo.
				days = 30,  -- Defina os dias para os players perderem os carros e grupos. (Apenas com a opção acima ativa.)

			},
			{
				curLevel = 4000,  -- Level em que a premiação será dada. (Caso esteja 0 o premio sera dado ao entrar no servidor pela primeira vez!)
				randomCar = true,  -- Defina true para dar um carro aleatório da lista (randomCars) ou false para desativar a opção.
				group = "Standard",  -- Grupo que o player irá receber ao chegar no nível especificado.
				--money = 1000000,  -- dinheiro que o player irá receber ao chegar no nível especificado.
				--specifyCars = {"Ferrariitalia","zentorno"},  -- Adicione o nome de spawn dos carros que o player irá receber ao chegar no nível especificado.
				--itens = {  -- Adicione itens a esta lista para o player receber ao chegar no nível especificado.
				--	{item = 'maconha', amount = 50},
				--	{item = 'dinheirosujo', amount = 1000000},
				--},

				---Expiração-----
				expiration = true,  -- Defina como (true) para ativar. Esta opção ira remover carros e grupos automaticamente após os dias especificados abaixo.
				days = 30,  -- Defina os dias para os players perderem os carros e grupos. (Apenas com a opção acima ativa.)

			},
			{
				curLevel = 5000,  -- Level em que a premiação será dada. (Caso esteja 0 o premio sera dado ao entrar no servidor pela primeira vez!)
				randomCar = true,  -- Defina true para dar um carro aleatório da lista (randomCars) ou false para desativar a opção.
				group = "Standard",  -- Grupo que o player irá receber ao chegar no nível especificado.
				--money = 1000000,  -- dinheiro que o player irá receber ao chegar no nível especificado.
				--specifyCars = {"Ferrariitalia","zentorno"},  -- Adicione o nome de spawn dos carros que o player irá receber ao chegar no nível especificado.
				--itens = {  -- Adicione itens a esta lista para o player receber ao chegar no nível especificado.
				--	{item = 'maconha', amount = 50},
				--	{item = 'dinheirosujo', amount = 1000000},
				--},

				---Expiração-----
				expiration = true,  -- Defina como (true) para ativar. Esta opção ira remover carros e grupos automaticamente após os dias especificados abaixo.
				days = 30,  -- Defina os dias para os players perderem os carros e grupos. (Apenas com a opção acima ativa.)

			},

		},
	},

	levelLanguagePTBR = {  -- Você pode alterar cada texto do script por aqui!
		commands = {
			level = "nivel",
			levelCheck = "vernivel",
			rewards = "premios"
		},

		webhook = {
			passaport = "[Passaporte]:",
			levelUp = "[Chegou ao nível]:",
			salaryPay = "[Recebeu seu salário de]:",
			salaryNotPay = "[Não trabalhou ou não possui emprego!]",
			Jobs = "[Dos empregos]:",
			date = "[Data]:",
			hour = "[Hora]:",
			rewardsPassaport = "Passaporte:",
			rewardsEarned = "[Ganhou]",
			rewardsRescued = "[Resgatou]",
			rewardsRandomVehicle = "Veiculo aleatório:",
			rewardsGroup = "Grupo:",
			rewardsVehicle = "Veiculo específico:",
			rewardsMoney = "Dinheiro:",
			rewardsItem = "Item:",
			rewardsFor = "Por",
			rewardsDays = "Dias",
			rewardsLevel = "Por alcançar o nível",
			rewardsExpiration = "[Sistema de expiração]",
			hadHis = "Teve o seu",
			vehicle = "Veiculo:",
			group = "Grupo:",
			Expired = "Expirado."
		},

		chat = {
			reward = "Recompensa",
			YouWon = "Você ganhou:",
			rewardLevel = "por chegar ao nível:",
			fristReward = "por jogar em nosso servidor continue assim e receba mais prêmios!"
		},

		notifys = {
			getLevelP1 = "O nível do passaporte: <b>",
			getLevelP2 = "</b> é: <b>",
			getLevelP3 = ", XP:",
			getLevelPFinal = "</b>.",
			getLevelError1 = "Este passaporte não está online.",
			getLevelError2 = "Você deve especificar um passaporte.",
			salary = "Seu salário caiu na conta! Valor recebido:",
			salaryJobs = "Empregos:",
			noReward = "Sem prêmios!",
			vehicle = "Veiculo:",
			group = "Grupo:",
			expireDate = "Expira em:",
			day = "Dia:",
			month = "Mês:",
			year = "Ano:",
			minute = "Minuto:",
			hour = "Hora:",
			redeemedThePrizes = "Você resgatou os prêmios!",
			NeedMarkPrizes = "Você deve selecionar o número de prêmios especificados!",
			NeedMarkAllQuestions = "Por favor, responda a todas as questões antes de finalizar o questionário."
		},

		console = {
			startLevelMensage1 = "Sistema de premiação não identificado, Criando...",
			startLevelMensage2 = "Sistema de premiação criado no banco de dados!",
			startLevelError = "Erro no sistema de premiação relogue! Se persistir contate a equipe DEV!!"
		},

		nui = {
			whiteListError = "Erro ao obter sua aprovação na whitelist, contate a staff!",
			welcomeToServer = "Bem-vindo a striata shop!",
			TakeTheQuiz = "Responda o questionário abaixo!",
			clickToAproved = "Clique aqui para ser aprovado!",
			clickToStart = "Clique aqui para iniciar o questionário!",
			clickToFinish = "Clique aqui para finalizar o questionário!",
			wait = "Aguade um momento...",
			aproved = "Você foi aprovado",
			reproved = "Você foi reprovado, leia as regras e tente novamente!",
			newAtempt = "Você pode tentar novamente em",
			minutes = "minutos"
		}
	},

	levelLanguageENUS = {  -- You can change the script texts here!
		commands = {
			level = "level",
			levelCheck = "checklevel",
			rewards = "rewards"
		},

		webhook = {
			passaport = "[Passport]:",
			levelUp = "[Reached level]:",
			salaryPay = "[Received salary of]:",
			salaryNotPay = "[Did not work or does not have a job!]",
			Jobs = "[From jobs]:",
			date = "[Date]:",
			hour = "[Hour]:",
			rewardsPassaport = "Passport:",
			rewardsEarned = "[Earned]",
			rewardsRescued = "[Rescued]",
			rewardsRandomVehicle = "Random vehicle:",
			rewardsGroup = "Group:",
			rewardsVehicle = "Specific vehicle:",
			rewardsMoney = "Money:",
			rewardsItem = "Item:",
			rewardsFor = "For",
			rewardsDays = "Days",
			rewardsLevel = "For reaching level",
			rewardsExpiration = "[Expiration system]",
			hadHis = "Had his",
			vehicle = "Vehicle:",
			group = "Group:",
			Expired = "Expired."
		},
		
		chat = {
			reward = "Reward",
			YouWon = "You won:",
			rewardLevel = "for reaching level:",
			fristReward = "for playing on our server, keep it up and receive more rewards!"
		},

		notifys = {
			getLevelP1 = "The level of the passport: <b>",
			getLevelP2 = "</b> is: <b>",
			getLevelP3 = ", XP:",
			getLevelPFinal = "</b>.",
			getLevelError1 = "This passport is not online.",
			getLevelError2 = "You must specify a passport.",
			salary = "Your salary has been deposited! Amount received:",
			salaryJobs = "Jobs:",
			noReward = "No rewards!",
			vehicle = "Vehicle:",
			group = "Group:",
			expireDate = "Expires on:",
			day = "Day:",
			month = "Month:",
			year = "Year:",
			minute = "Minute:",
			hour = "Hour:",
			redeemedThePrizes = "You have redeemed the prizes!",
			NeedMarkPrizes = "You must select the specified number of prizes!",
			NeedMarkAllQuestions = "Please answer all questions before finishing the questionnaire."
		},

		console = {
			startLevelMensage1 = "Unidentified reward system, Creating...",
			startLevelMensage2 = "Reward system created in the database!",
			startLevelError = "Error in the reward system, please relog! If it persists, contact the DEV team!!",
		},

		nui = {
			whiteListError = "Error obtaining your whitelist approval, contact staff!",
			welcomeToServer = "Welcome to striata shop!",
			TakeTheQuiz = "Answer the questionnaire below!",
			clickToAproved = "Click here to be approved!",
			clickToStart = "Click here to start the questionnaire!",
			clickToFinish = "Click here to finish the questionnaire!",
			wait = "Please wait...",
			aproved = "You have been approved",
			reproved = "You have been disapproved, read the rules and try again!",
			newAtempt = "You can try again in",
			minutes = "minutes"
		},
	}

})

-- {"level":335220,"timeOfService":[{"service":"Prefeitura","time":8}]}