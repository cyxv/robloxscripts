_G.theme = "Midnight"

local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local window = lib.CreateLib("Clicker Simulator", _G.theme)

local bignumber = tostring(9.e+250)
local eggModule = require(game:GetService("ReplicatedStorage")["EggModule"]).Eggs
local player = game.Players.LocalPlayer

local autofarm = window:NewTab("Autofarm")

local clickingsection = autofarm:NewSection("Clicking")

_G.autoclickertoggle = false
_G.rebirthtoggle = false
local autoclicker = clickingsection:NewToggle("AutoClicker", "Updates every second. (9CPS)", function(state)
    _G.autoclickertoggle = state
end)

local table = {
	["manual"] = {
		[bignumber] = 9
	}
}

spawn(function()
    while wait(1/9) do
        if _G.autoclickertoggle then
            game:GetService("ReplicatedStorage").Events.Client.emitClicks:FireServer()
        end
    end
end)
spawn(function()
    while wait(1) do
        if _G.autoclickertoggle then
            game:GetService("ReplicatedStorage").Clickerr:InvokeServer(table)
        end
    end
end)
spawn(function()
    while wait(1) do
        if _G.rebirthtoggle then
            game:GetService("ReplicatedStorage").Events.Client.requestRebirth:FireServer(9.e+500, false, false)
        end
    end
end)

local rebirthsection = autofarm:NewSection("Rebirth")

local autorebirth = rebirthsection:NewToggle("Auto Rebirth", "the funny", function(state)
    _G.rebirthtoggle = state
end)

local eggstab = window:NewTab("Eggs")

local autoopensec = eggstab:NewSection("Auto Open")

local function disableEggAnim()
    if player.PlayerGui:FindFirstChild("eggUI") then
        player.PlayerGui["eggUI"]:Remove()
    end
end

local disableanimbutton = autoopensec:NewButton("Disable Egg Animation", "Does what it says.", function()
    disableEggAnim()
end)

local function openEgg(eggname)
    table = {
        ["Egg"] = workspace.Eggs[eggname],
	    ["petsBG"] = game:GetService("Players").LocalPlayer.PlayerGui.eggOpenUI.moverBG.background.petsTemplate.background,
	    ["active"] = true,
	    ["Order"] = eggModule[eggname].Order,
	    ["detector"] = workspace.Eggs[eggname].Detector.Detector,
	    ["Island"] = eggModule[eggname].Island,
	    ["eggName"] = eggname,
	    ["frame"] = game:GetService("Players").LocalPlayer.PlayerGui.eggOpenUI.moverBG.background.petsTemplate,
	    ["cost"] = eggModule[eggname].Cost
    }
    game:GetService("ReplicatedStorage").Bindable.Client.eggOpen.openEggEvent:Fire(false, table, false)
    wait()
    game:GetService("ReplicatedStorage").Bindable.Client.eggAnimationCompleted:Fire(false, false, eggname)
end

local function getAllEggs()
    the = {}
    for _,v in pairs(eggModule) do
        the[#the+1] = v.Name
    end
    return the
end

local currentEgg = ""

local eggdropdown = autoopensec:NewDropdown("Select Egg", "The e g g", getAllEggs(), function(currentOption)
    currentEgg = currentOption
end)

local openeggbutton = autoopensec:NewButton("Open Egg", "retard", function()
    openEgg(currentEgg)
end)

local misctab = window:NewTab("Misc")

local teleportsection = misctab:NewSection("Teleports")

local zonenames = {}
for _,v in pairs(require(game.ReplicatedStorage.PortalModule)) do
    zonenames[#zonenames+1] = v.Name
end

local currentLocation = ""
local tpdropdown = teleportsection:NewDropdown("Location", "obviously", zonenames, function(currentOption)
    currentLocation = currentOption
end)

local tpbutton = teleportsection:NewButton("Teleport", "teleports you", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(workspace.Zones[currentLocation].teleport.CFrame.X, (workspace.Zones[currentLocation].teleport.CFrame.Y) + 1, workspace.Zones[currentLocation].teleport.CFrame.Z)
end)
