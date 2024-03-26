local function pikkonFarm()
    local count = 0
    local pos = game:GetService("Workspace").Main.Live.Pikkon.HumanoidRootPart.Position

    while pos ~= nil do
        local tp = game:GetService("Workspace").Main.Live.Pikkon.HumanoidRootPart.CFrame
        if game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame ~= tp + tp.LookVector * 5 then
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = tp + tp.LookVector * 5
        end
        wait(0.18)
        pos = game:GetService("Workspace").Main.Live.Pikkon.HumanoidRootPart.Position
        count=count+1 
        local args = {
        [1] = {
            ["Victim"] = workspace:WaitForChild("Main"):WaitForChild("Live"):WaitForChild("Pikkon"),
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
end

local function setup()
    local check = game:GetService("Players").LocalPlayer.QuestRemoteEvents:GetChildren()
    local world = ""
    for _,v in pairs(check) do
        if v.Name == "Daily_Shadow_Otherworld" then
            world = "otherworld"
            break
        else
            world = "earth"
        end
    end

    if world == "earth" then
        workspace:WaitForChild("WorldPortals"):WaitForChild("Otherworld"):WaitForChild("Activate"):FireServer()
        wait(10)
    else
        loadstring(game:HttpGet("https://raw.githubusercontent.com/LxlToad/DS/main/fly.lua"))()
    end

    wait(1)

    local args = {
        [1] = {
            [1] = {
                ["Mode"] = "LegendarySuperSaiyan"
            },
            [2] = "P",
            [3] = "UsedTransform",
            [4] = "\31"
        }
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("dataRemoteEvent"):FireServer(unpack(args))    
    wait(2)
    local args = {
        [1] = {
            [1] = {
                [1] = "\1",
                [2] = {
                    ["ID"] = "Kaioken",
                    ["Action"] = "Fire",
                    ["Params"] = {}
                }
            },
            [2] = "d"
        }
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("dataRemoteEvent"):FireServer(unpack(args))
    wait(2)    
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12710.6943, 906.934753, -1268.13867, -0.94708544, 0, 0.320981562, 0, 1, 0, -0.320981562, 0, -0.94708544)
end






repeat wait() until game:IsLoaded()
wait(10)

pcall(setup)
wait(5)
local success, errorMsg = pcall(pikkonFarm)
if success then
    print("Success")
else
    print("Error: ".. errorMsg)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12710.6943, 906.934753, -1268.13867, -0.94708544, 0, 0.320981562, 0, 1, 0, -0.320981562, 0, -0.94708544)
end
wait(10)
workspace:WaitForChild("WorldPortals"):WaitForChild("Earth"):WaitForChild("Activate"):FireServer()
