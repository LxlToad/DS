local count = 0
local enemy = ENEMY
pcall(function() pos = game:GetService("Workspace").Main.Live[enemy].HumanoidRootPart.Position end)

local function killEnemy()
    local tp = game:GetService("Workspace").Main.Live[enemy].HumanoidRootPart.CFrame
    if game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame ~= tp - tp.LookVector * 5 then
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = tp - tp.LookVector * 5
    end
    wait(0.18)
    pos = game:GetService("Workspace").Main.Live[enemy].HumanoidRootPart.Position
    count=count+1 
    local args = {
    [1] = {
        ["Victim"] = workspace:WaitForChild("Main"):WaitForChild("Live"):WaitForChild(enemy),
        ["VictimPosition"] = pos,
        ["CurrentHeavy"] = 1,
        ["LocalInfo"] = {
            ["Flying"] = true
        },
        ["CurrentLight"] = 1,
        ["CurrentLightCombo"] = 1,
        ["Type"] = "Light",
        ["AnimSet"] = "SickleOfSorrow"
        }
    }

    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("TryAttack"):FireServer(unpack(args))
end
while pos ~= nil do
   local success, errorMsg =  pcall(killEnemy)
    if  not success then break end
end
print("Done!")
