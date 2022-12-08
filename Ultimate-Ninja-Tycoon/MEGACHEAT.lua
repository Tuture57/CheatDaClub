_G.playerNom = game.Players.LocalPlayer

function leeQuest()
	for i,v in ipairs(game.workspace:GetChildren()) do
		if v.Name == "Quest" and math.round(v["Left Arm"].Position.X) == -177 then
			v.ClickPart.QuestTake.QuestTake.Accept.RemoteEvent:FireServer()
		end
	end	
end

function atk()
	for i,v in ipairs(game.workspace:GetChildren()) do
		if v.Name == _G.playerNom.Name then
			return v
		end
	end	
end

--import de la lib
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
--crée la fenetre
local Window = Library.CreateLib("MEGACHEAT", "DarkTheme")


--crée l'onglet Tab
local Tab = Window:NewTab("Test")
--crée la section Section
local Section = Tab:NewSection("Aboulghoustah")

--crée un bouton pour Section
Section:NewButton("Spawn", "tp au spawn", function()
    --tp au spawn
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1.80600682e-06, 23.2327003, 0.00354306004, 0.99999994, -1.15680221e-09, 0.00040722033, 1.17060173e-09, 1, -3.38868951e-08, -0.00040722033, 3.38873711e-08, 0.99999994)
end)

--crée un bouton pour Section
Section:NewButton("Tp lee", "tp a lee", function()
    --tp a Lee
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-177.23674, 1542.15015, 2583.11646, 1.37090683e-06, 6.10373681e-05, -1, 0.00238051452, 0.999997139, 6.10405114e-05, 0.999997199, -0.00238051475, 1.25169754e-06)
end)

--crée un bouton pour Section
Section:NewButton("Lee Quest", "prend la quete de lee", function()
	--Prendre la quete Lee
	leeQuest()
end)	

--crée un toggle bouton pour Section
Section:NewToggle("ToggleText", "auto farm lee", function(state)
	if state then
		_G.state = true
		a = true
		while a do --and  _G.playerNom.Character.Humanoid.Health>=0 do
			wait()
			if game.Players.LocalPlayer.Backpack:FindFirstChild("1st Susanoo") then
				game.Players.LocalPlayer.Backpack["1st Susanoo"].Parent = game:GetService("Workspace")[_G.playerNom.name]
			end
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace["Rock Lee"].Head.CFrame
			local itsme = atk()
			itsme["1st Susanoo"].punch:FireServer()
			itsme["1st Susanoo"].RemoteEvent:FireServer()
		end
	else
		_G.state = false
		a= false
	end
end)
