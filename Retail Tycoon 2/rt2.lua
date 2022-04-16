local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wally2", true))()

-- Car Mods (THIS IS A GIANT FUCKING MESS I KNOW, i tried making it less lines but nothing worked so enjoy this gigantic mess)
local carmodswindow = lib:CreateWindow("Car Mods")

local maincarmods = carmodswindow:Section("Main Mods")
local carmaxspeed = carmodswindow:Box("MaxSpeed", {
    flag = "maxspeed";
    type = "number";
}, function(new, old, enter)
    workspace.PlayerVehicles["Vehicle_"..game:GetService("Players").LocalPlayer.Name].Config["MaxSpeed"].Value = tonumber(new)
end)
local carmaxspeedrev = carmodswindow:Box("MaxSpeedRev", {
    flag = "maxspeedrev";
    type = "number";
}, function(new, old, enter)
    workspace.PlayerVehicles["Vehicle_"..game:GetService("Players").LocalPlayer.Name].Config["MaxSpeedRev"].Value = tonumber(new)
end)
local carautobrakespeed = carmodswindow:Box("AutoBrakeSpeed", {
    flag = "autobrakespeed";
    type = "number";
}, function(new, old, enter)
    workspace.PlayerVehicles["Vehicle_"..game:GetService("Players").LocalPlayer.Name].Config["AutoBrakeSpeed"].Value = tonumber(new)
end)
local cartorque = carmodswindow:Box("Torque", {
    flag = "torque";
    type = "number";
}, function(new, old, enter)
    workspace.PlayerVehicles["Vehicle_"..game:GetService("Players").LocalPlayer.Name].Config["Torque"].Value = tonumber(new)
end)
local carsidedrag = carmodswindow:Box("SideDrag", {
    flag = "sidedrag";
    type = "number";
}, function(new, old, enter)
    workspace.PlayerVehicles["Vehicle_"..game:GetService("Players").LocalPlayer.Name].Config["SideDrag"].Value = tonumber(new)
end)
local carmaxturnangle = carmodswindow:Box("MaxTurnAngle", {
    flag = "maxturnangle";
    type = "number";
}, function(new, old, enter)
    workspace.PlayerVehicles["Vehicle_"..game:GetService("Players").LocalPlayer.Name].Config["MaxTurnAngle"].Value = tonumber(new)
end)
local carsteerupdatetime = carmodswindow:Box("SteerUpdateTime", {
    flag = "steerupdatetime";
    type = "number";
}, function(new, old, enter)
    workspace.PlayerVehicles["Vehicle_"..game:GetService("Players").LocalPlayer.Name].Config["SteerUpdateTime"].Value = tonumber(new)
end)
local carbrakepower = carmodswindow:Box("BrakePower", {
    flag = "brakepower";
    type = "number";
}, function(new, old, enter)
    workspace.PlayerVehicles["Vehicle_"..game:GetService("Players").LocalPlayer.Name].Config["BrakePower"].Value = tonumber(new)
end)
local carpower = carmodswindow:Box("Power", {
    flag = "power";
    type = "number";
}, function(new, old, enter)
    workspace.PlayerVehicles["Vehicle_"..game:GetService("Players").LocalPlayer.Name].Config["Power"].Value = tonumber(new)
end)
local carsteerresettime = carmodswindow:Box("SteerResetTime", {
    flag = "steerresettime";
    type = "number";
}, function(new, old, enter)
    workspace.PlayerVehicles["Vehicle_"..game:GetService("Players").LocalPlayer.Name].Config["SteerResetTime"].Value = tonumber(new)
end)

local maincarmods = carmodswindow:Section("Suspension")
local carp = carmodswindow:Box("P", {
    flag = "carp";
    type = "number";
}, function(new, old, enter)
    workspace.PlayerVehicles["Vehicle_"..game:GetService("Players").LocalPlayer.Name].Config.Suspension["P"].Value = tonumber(new)
end)
local cari = carmodswindow:Box("I", {
    flag = "cari";
    type = "number";
}, function(new, old, enter)
    workspace.PlayerVehicles["Vehicle_"..game:GetService("Players").LocalPlayer.Name].Config.Suspension["I"].Value = tonumber(new)
end)
local card = carmodswindow:Box("D", {
    flag = "card";
    type = "number";
}, function(new, old, enter)
    workspace.PlayerVehicles["Vehicle_"..game:GetService("Players").LocalPlayer.Name].Config.Suspension["D"].Value = tonumber(new)
end)
local carmid = carmodswindow:Box("Mid", {
    flag = "carmid";
    type = "number";
}, function(new, old, enter)
    workspace.PlayerVehicles["Vehicle_"..game:GetService("Players").LocalPlayer.Name].Config.Suspension["Mid"].Value = tonumber(new)
end)
local carmax = carmodswindow:Box("Max", {
    flag = "carmax";
    type = "number";
}, function(new, old, enter)
    workspace.PlayerVehicles["Vehicle_"..game:GetService("Players").LocalPlayer.Name].Config.Suspension["Max"].Value = tonumber(new)
end)

local creditsinfowindow = lib:CreateWindow("Credits and Info")
creditsinfowindow:Section("Script by cyxv")
creditsinfowindow:Section("Use Rctrl to toggle GUI")
