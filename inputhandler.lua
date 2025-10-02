local players = game:GetService("Players")
local localPlayer = players.LocalPlayer

local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()

local uis = game:GetService("UserInputService")

local abilityHandler = script:WaitForChild("AbilityHandler") 
local abilityHandlerBF = abilityHandler:WaitForChild("Function")

uis.InputBegan:Connect(function(input, gpe)
	if gpe then return end 

	local keyToSlot = {
		[Enum.KeyCode.Q] = "Q",
		[Enum.KeyCode.E] = "E",
		[Enum.KeyCode.R] = "R",
		[Enum.KeyCode.F] = "F",
	}

	local slot = keyToSlot[input.KeyCode]

	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		slot = "M1"
	end

	if slot then
		abilityHandlerBF:Invoke(slot)
	end
end)




