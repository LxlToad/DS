local card = ""
if CARD == "GP" then
    card = "100 GP"
elseif CARD == "Zeni" then
    card = "50000 Zeni"
elseif CARD == "Senzu" then
    card = "Senzu Bean"
elseif CARD == "Enchant" then
    card = "Rare Enchant Fragment"
end

function cardGame()
    local args = {
        [1] = {
            [1] = {
                ["MinigameID"] = "CardGame",
                ["Payload"] = {
                    ["Method"] = "Start"
                }
            },
            [2] = "\4"
        }
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("dataRemoteEvent"):FireServer(unpack(args))
    wait(5)
    for i = 1, 18 do
        local args = {
            [1] = {
                [1] = {
                    ["MinigameID"] = "CardGame",
                    ["Payload"] = {
                        ["Method"] = "Flip",
                        ["Selected"] = i
                    }
                },
                [2] = "\4"
            }
        }

        game:GetService("ReplicatedStorage"):WaitForChild("dataRemoteEvent"):FireServer(unpack(args))
        wait(1)
    end

    local cards = workspace.Camera:GetChildren()
    local count = 0
    for _,v in pairs(cards) do
        if v:isA("MeshPart") then
            if v.SurfaceGui.Frame.TextLabel.Text == card or v.SurfaceGui.Frame.TextLabel.Text == "250 GP" then
                local args = {
                    [1] = {
                        [1] = {
                            ["MinigameID"] = "CardGame",
                            ["Payload"] = {
                                ["Method"] = "Flip",
                                ["Selected"] = tonumber(v.Name)
                            }
                        },
                        [2] = "\4"
                    }
                }
                game:GetService("ReplicatedStorage"):WaitForChild("dataRemoteEvent"):FireServer(unpack(args))
                count = count+1         
                wait(1)
            end
        end
    end
    if count < 2 then
        local args = {
            [1] = {
                [1] = {
                    ["MinigameID"] = "CardGame",
                    ["Payload"] = {
                        ["Method"] = "Flip",
                        ["Selected"] = 19
                    }
                },
                [2] = "\4"
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("dataRemoteEvent"):FireServer(unpack(args))
        wait(1)
        local args = {
            [1] = {
                [1] = {
                    ["MinigameID"] = "CardGame",
                    ["Payload"] = {
                        ["Method"] = "Flip",
                        ["Selected"] = 20
                    }
                },
                [2] = "\4"
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("dataRemoteEvent"):FireServer(unpack(args))
    end
    wait(8)
end


local success, errorMessage = pcall(cardGame)
if success then
    print("Finished!")
else
    print("Function call failed with error: " .. errorMessage)
end


