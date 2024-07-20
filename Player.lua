local Players = game:GetService("Players")
local ReplicatedStorate = game:GetService("ReplicatedStorage")


local SaveManager = require(ReplicatedStorage:WaitForChild("SaveManager"))



-- 
local function SaveProgress(character)
    local position = character:FindFirstChild("HumanoidRootPart").Position
    SaveManager.saveData(character,position)
end


local function onPlayerAdded(player)
	player.CharacterRemoving:Connect(saveProgress)
end


Players.PlayerAdded:Connect(onPlayerAdded)