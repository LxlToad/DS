local plr = tostring(game:GetService("Players").LocalPlayer)

local npc = tostring(game:GetService("Workspace").Main.Live[plr].Data.LockedOn.Value)
local npcTP = game:GetService("Workspace").Main.Live[npc].HumanoidRootPart.Position


local count = 0
local pos = game:GetService("Workspace").Main.Live[npc].HumanoidRootPart.Position

while pos ~= nil do
    local tp = game:GetService("Workspace").Main.Live[npc].HumanoidRootPart.CFrame
    if game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame ~= tp + tp.LookVector * 5 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = tp + tp.LookVector * 5
    end
    wait(0.0001)
    pos = game:GetService("Workspace").Main.Live[npc].HumanoidRootPart.Position
    count=count+1 
    local args = {
    [1] = {
        ["Victim"] = workspace:WaitForChild("Main"):WaitForChild("Live"):WaitForChild(npc),
        ["Type"] = "Heavy",
        ["CurrentHeavy"] = 2,
        ["LocalInfo"] = {
            ["Flying"] = false
        },
        ["CurrentLight"] = 1,
        ["CurrentLightCombo"] = 1,
        ["VictimPosition"] = pos,
        ["AnimSet"] = "Broly"
        }
    }

    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("TryAttack"):FireServer(unpack(args))
end
